cmake_minimum_required(VERSION 2.8)

add_executable(NfcPost main.c Mifare.c GetSerial.c TapPost.c GetJsonNow.c BlinkOk.c  BuzzIt.c timeStrNow.c LogTap.c)

include_directories (
	"${PROJECT_SOURCE_DIR}/wiringPi"
	"${PROJECT_SOURCE_DIR}/NxpRdLib_PublicRelease/intfs"
    "${PROJECT_SOURCE_DIR}/NxpRdLib_PublicRelease/types"
    "${PROJECT_SOURCE_DIR}/NxpRdLib_PublicRelease/comps/phpalSli15693/src/Sw"
)

target_link_libraries(NfcPost ${PROJECT_SOURCE_DIR}/NxpRdLib_PublicRelease/build/libnxprd.a curl uuid bcm2835 wiringPi libconfuse.a)
