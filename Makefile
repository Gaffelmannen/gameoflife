SRC_DIR=src
BUILD_DIR=build/debug
CC=clang++
SRC_FILES=$(wildcard $(SRC_DIR)/*.cpp)
OBJ_NAME=life
INCLUDE_PATHS=-Iinclude
LIBRARY_PATHS=-Llib -Llib/SDL2 -Llib/GL -Llib/glm
COMPILER_FLAGS=-std=c++17 -Wall -O0 -g -arch arm64
LINKER_FLAGS=-lsdl2 -framework OpenGL -lglew

.PHONY : clean all

default: clean all

all :
	$(CC) $(COMPILER_FLAGS) $(LINKER_FLAGS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(SRC_FILES) -o $(BUILD_DIR)/$(OBJ_NAME)

clean :
	rm -r -f $(BUILD_DIR)/*