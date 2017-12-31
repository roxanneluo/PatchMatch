BUILD_DIR=build

SRC_DIR=source
SRCS=$(wildcard $(SRC_DIR)/*.cpp) $(wildcard $(SRC_DIR)/*.c)

INCS=include
INC_FLAGS=$(addprefix -I,$(INCS))

LIBS=opencv_core  opencv_imgproc  opencv_highgui  opencv_imgcodecs
LD_FLAGS=$(addprefix -l,$(LIBS))

main:
	mkdir -p $(BUILD_DIR) 
	g++ $(SRCS) $(INC_FLAGS) $(LD_FLAGS)  -o $(BUILD_DIR)/patchmatch.out 

clean:
	rm -rf $(BUILD_DIR)
