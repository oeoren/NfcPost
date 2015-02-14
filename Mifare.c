#include "Mifare.h"

int Mifare_init(Mifare *self) {

    phStatus_t status;

    /* Initialize the Reader BAL (Bus Abstraction Layer) component */
    status = phbalReg_R_Pi_spi_Init(&self->data.balReader, sizeof(phbalReg_R_Pi_spi_DataParams_t));
    if (PH_ERR_SUCCESS != status)
    {
        sprintf(self->errBuf, "SPI Init failed: %04x", status);
        return -1;
    }

    status = phbalReg_OpenPort(&self->data.balReader);
    if (PH_ERR_SUCCESS != status)
    {
        sprintf(self->errBuf, "OpenPort failed: %04x", status);
        return -1;
    }

    /* we have a board with PN512,
    * but on the software point of view,
    * it's compatible to the RC523 */
    status = phhalHw_Rc523_Init(&self->data.hal,
        sizeof(phhalHw_Rc523_DataParams_t),
        &self->data.balReader,
        0,
        &self->data.bHalBufferReader[0],
        sizeof(self->data.bHalBufferReader),
        &self->data.bHalBufferReader[0],
        sizeof(self->data.bHalBufferReader));

    if (PH_ERR_SUCCESS != status)
    {
        sprintf(self->errBuf, "Rc523_Init failed: %04x", status);
        return -1;
    }

    /* Set the HAL configuration to SPI */
    status = phhalHw_SetConfig(&self->data.hal, PHHAL_HW_CONFIG_BAL_CONNECTION,
        PHHAL_HW_BAL_CONNECTION_SPI);
    if (PH_ERR_SUCCESS != status)
    {
        sprintf(self->errBuf, "SetConfig failed: %04x", status);
        return -1;
    }

    /* Initialize the 14443-3A PAL (Protocol Abstraction Layer) component */
    PH_CHECK_SUCCESS_FCT(status, phpalI14443p3a_Sw_Init(&self->data.I14443p3a,
        sizeof(phpalI14443p3a_Sw_DataParams_t), &self->data.hal));

    /* Initialize the 14443-4 PAL component */
    PH_CHECK_SUCCESS_FCT(status, phpalI14443p4_Sw_Init(&self->data.I14443p4,
        sizeof(phpalI14443p4_Sw_DataParams_t), &self->data.hal));

    /* Initialize the Mifare PAL component */
    PH_CHECK_SUCCESS_FCT(status, phpalMifare_Sw_Init(&self->data.palMifare,
        sizeof(phpalMifare_Sw_DataParams_t), &self->data.hal, &self->data.I14443p4));

    /* Initialize Ultralight(-C) AL component */
    PH_CHECK_SUCCESS_FCT(status, phalMful_Sw_Init(&self->data.alMful,
        sizeof(phalMful_Sw_DataParams_t), &self->data.palMifare, NULL, NULL, NULL));

    return 0;
}

phStatus_t Mifare_activate_card(phpalI14443p3a_Sw_DataParams_t *I14443p3a, uint8_t byteBuffer[], uint8_t *byteBufferSize)
{
    uint8_t bSak;
    uint8_t bMoreCardsAvailable;

    /* Activate the communication layer part 3
    * of the ISO 14443A standard. */
    return phpalI14443p3a_ActivateCard(I14443p3a,
        NULL, 0x00, byteBuffer, byteBufferSize, &bSak, &bMoreCardsAvailable);
}

int Mifare_select(Mifare *self)
{
    uint8_t byteBufferSize = UID_BUFFER_SIZE;
    uint8_t byteBuffer[UID_BUFFER_SIZE];

    uint8_t pAtqa[2];
    phStatus_t status;

    uint8_t bSak;
    uint8_t bMoreCardsAvailable;

    /* reset the IC  */
    phhalHw_Rc523_Cmd_SoftReset(&self->data.hal);

    /* Reset the RF field */
    if ((status = phhalHw_FieldReset(&self->data.hal)) != PH_ERR_SUCCESS) {
		sprintf(self->errBuf, "FieldReset command failed: %04x", status);
		return -1;
    }

    /* Apply the type A protocol settings
    * and activate the RF field. */
    if ((status = phhalHw_ApplyProtocolSettings(&self->data.hal, PHHAL_HW_CARDTYPE_ISO14443A)) != PH_ERR_SUCCESS) {
		sprintf(self->errBuf, "ApplyProtocolSettings command failed: %04x", status);
		return -1;
    }

    /* Empty the pAtqa */
    memset(pAtqa, '\0', 2);

    if ((status = phpalI14443p3a_RequestA(&self->data.I14443p3a, pAtqa)) != PH_ERR_SUCCESS) {
		sprintf(self->errBuf, "RequestA command failed: %04x", status);
		return -1;
    }

    /* Reset the RF field */
    if ((status = phhalHw_FieldReset(&self->data.hal)) != PH_ERR_SUCCESS) {
		sprintf(self->errBuf, "FieldReset command failed: %04x", status);
		return -1;
    }
    /* Activate the communication layer part 3 of the ISO 14443A standard. */
    if ( phpalI14443p3a_ActivateCard(&self->data.I14443p3a, NULL, 0x00, byteBuffer, &byteBufferSize, &bSak, &bMoreCardsAvailable) == PH_ERR_SUCCESS) {
        // Card is present, return it as a python object.
        uint8_t i;
//        char asciiBuffer[UID_ASCII_BUFFER_SIZE];

        if (byteBufferSize + 1 > UID_ASCII_BUFFER_SIZE) {
            // Truncate if we got back too much data
            byteBufferSize = UID_ASCII_BUFFER_SIZE - 1;
        }

        for (i = 0; i < byteBufferSize; i++) {
            sprintf(&(self->asciiBuffer[2 * i]), "%02X", byteBuffer[i]);
        }
		
        return 0;
    }

    return 1;
}
/*
PyObject *Mifare_read_block(Mifare *self, PyObject *args)
{
    const size_t bufferSize = PHAL_MFUL_READ_BLOCK_LENGTH;
    uint8_t data[bufferSize];
    uint8_t blockIdx;
    phStatus_t status;

    if (!PyArg_ParseTuple(args, "b", &blockIdx)) {
        return NULL;
    }

    status = phalMful_Read(&self->data.alMful, blockIdx, data);

    if (status != PH_ERR_SUCCESS) {
        return PyErr_Format(ReadError, "Read failed: %04x", status);
    }

#if PY_MAJOR_VERSION >= 3
    return Py_BuildValue("y#", data, bufferSize);
#else
    return Py_BuildValue("s#", data, bufferSize);
#endif
}

PyObject *Mifare_write_block(Mifare *self, PyObject *args)
{
    uint16_t status;
    uint8_t blockIdx;
    uint8_t *data;
    int dataLen;

#if PY_MAJOR_VERSION >= 3
    if (!PyArg_ParseTuple(args, "by#", &blockIdx, &data, &dataLen)) {
#else
    if (!PyArg_ParseTuple(args, "bs#", &blockIdx, &data, &dataLen)) {
#endif
        return NULL;
    }

    if ((status = phalMful_Write(&self->data.alMful, blockIdx, data)) != 0) {
        return PyErr_Format(WriteError, "Write failed: %04x", status);
    }

    Py_RETURN_NONE;
}
*/
