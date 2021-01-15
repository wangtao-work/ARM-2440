
SET(CMAKE_C_COMPILER /work/tools/gcc-3.4.5-glibc-2.3.6/bin/arm-linux-gcc)
SET(CMAKE_CXX_COMPILER /work/tools/gcc-3.4.5-glibc-2.3.6/bin/arm-linux-g++)
#SET(CMAKE_C_COMPILER /home/wangtao/tools/arm-2014.05/bin/arm-none-linux-gnueabi-gcc)
#SET(CMAKE_C_XX_COMPILER /home/wangtao/tools/arm-2014.05/bin/arm-none-linux-gnueabi-g++)
SET(CMAKE_SYSTEM_NAME linux)
PROJECT(main)
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
ENABLE_LANGUAGE(ASM)
SET(CMAKE_C_FLAGS "-nostdlib")
SET(CMAKE_CXX_FLAGS "-nostdlib")

set (SOURCES
	led_on.S
main.c
	)

ADD_EXECUTABLE(main ${SOURCES})
