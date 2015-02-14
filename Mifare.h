#pragma once
/*******************************************************************************
*
*
*******************************************************************************/

#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdint.h>

/* Configuration Headers */
/* Controls build behavior of components */
#include <ph_NxpBuild.h>
/* Status code definitions */
#include <ph_Status.h>

/* Reader Library Headers */
/* Generic ISO14443-3A Component of
 * Reader Library Framework */
#include <phpalI14443p3a.h>
/* Generic ISO14443-4 Component of
 * Reader Library Framework */
#include <phpalI14443p4.h>
/* Generic ISO14443-4A Component of
 * Reader Library Framework */
#include <phpalI14443p4a.h>
/* Generic MIFARE(R) Ultralight Application
 * Component of Reader Library Framework */
#include <phalMful.h>
#include <phalMfc.h>
/* Generic KeyStore Component of
 * Reader Library Framework */
/* In that example we don't use any
 * key. But we need the key components
 * for some function calls and you maight
 * need it when using crypto with
 * Ultralight-C cards. */
#include <phKeyStore.h>
#include <phpalSli15693.h>
#include <phpalSli15693_Sw.h>
#include <phpalFelica.h>
#include <phpalI14443p3b.h>

#define UID_BUFFER_SIZE 20
#define UID_ASCII_BUFFER_SIZE ((UID_BUFFER_SIZE * 2) + 1)

typedef struct {
    phbalReg_R_Pi_spi_DataParams_t balReader;
    phhalHw_Rc523_DataParams_t hal;
    phpalI14443p4_Sw_DataParams_t I14443p4;
    phpalMifare_Sw_DataParams_t palMifare;
    phpalI14443p3a_Sw_DataParams_t I14443p3a;
    phalMful_Sw_DataParams_t alMful;
    uint8_t bHalBufferReader[0x40];
} nfc_data;

typedef struct {
    char errBuf[100];
    char asciiBuffer[UID_ASCII_BUFFER_SIZE];
    nfc_data data; 
} Mifare;

int Mifare_init(Mifare *self);
int Mifare_select(Mifare *self);
