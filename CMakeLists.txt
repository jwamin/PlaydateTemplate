cmake_minimum_required(VERSION 3.14)
set(CMAKE_C_STANDARD 11)

set(CMAKE_CONFIGURATION_TYPES "Debug;Release")
set(CMAKE_XCODE_GENERATE_SCHEME TRUE)

# Game Name Customization
set(PLAYDATE_GAME_NAME Exposure)
set(PLAYDATE_GAME_DEVICE Exposure_DEVICE)

project(${PLAYDATE_GAME_NAME} C ASM)

if (TOOLCHAIN STREQUAL "armgcc")
	add_executable(${PLAYDATE_GAME_DEVICE} main.c)
else()
	add_library(${PLAYDATE_GAME_NAME} SHARED main.c )
endif()

set(SDK ${PROJECT_SOURCE_DIR}/playdate)
include(${SDK}/C_API/buildsupport/playdate_game.cmake)

