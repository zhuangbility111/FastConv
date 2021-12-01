#CXX = /tmp/ndk-jtmeng/aarch64-linux-android/bin/clang++  
#CXX = /home/jtmeng/software/Android-NDK/android-ndk-r21b/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang++

OS = $(shell uname -s)

# CXX_SRC = ./winoF63/winoF63.cpp ./winoF63/TensorGEMM.cpp
CXX_SRC = ./utility/helper.cpp ./utility/common.cpp ConvTest.cpp
# CXX_SRC += ./im2col/NEON/neon_gemm_kernel.cpp ./im2col/NEON/neon_gemm_pack.cpp ./convLayer/im2colConv.cpp
CXX_SRC += ./im2col/SVE/sve_gemm_kernel_no_packa.cpp ./im2col/SVE/sve_gemm_kernel.cpp ./im2col/SVE/sve_gemm_pack.cpp ./convLayer/im2colConv.cpp
# CXX_SRC += ./winoF63ZC/TensorGEMMZC.cpp ./winoF63ZC/winoF63ZC.cpp ./convLayer/winoF63ConvZC.cpp

ifeq ($(OS), ANDROID)
	CXX = /home/jtmeng/software/Android-NDK/android-ndk-r21b/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang++
	CXX_FLAGS = -std=c++11 $(DEFS) -Wno-format -I$(PWD) -O3	-march=armv8-a -fopenmp
# CXX_FLAGS+= --target=aarch64-none-linux-android21 --gcc-toolchain=/home/jtmeng/software/Android-NDK/android-ndk-r21b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/jtmeng/software/Android-NDK/android-ndk-r21b/toolchains/llvm/prebuilt/linux-x86_64/sysroot -march=armv8-a
	LD_FLAGS  = -pie -pthread -fopenmp -static-libstdc++ -static-openmp
else ifeq ($(OS), Darwin)
	CXX = clang++
	CXX_FLAGS = -std=c++11 $(DEFS) -Wno-format -I$(PWD) -O3 -Xpreprocessor -fopenmp -march=armv8-a
	LD_FLAGS  = -pie -pthread -Xpreprocessor -fopenmp -lomp
else
#	CXX = g++
#	CXX_FLAGS = -std=c++11 $(DEFS) -Wno-format -I$(PWD) -O3 -march=armv8.2-a+sve -fPIC -fopenmp
#	LD_FLAGS  = -pie -pthread -fopenmp

#	CXX = FCC
#	CXX_FLAGS = -std=c++11 $(DEFS) -I$(PWD) -Nclang -Ofast -ffj-zfill -ffj-swp -ffj-prefetch-cache-level=all -Nlibomp -mcpu=a64fx
#	LD_FLAGS  = -Nclang -Ofast -ffj-zfill -ffj-swp -ffj-prefetch-cache-level=all -Nlibomp -mcpu=a64fx

#	CXX = FCC
#	CXX_FLAGS = -std=c++11 $(DEFS) -I$(PWD) -Kfast -Kzfill=18 -Kswp -Kopenmp -Nlibomp -Kprefetch_cache_level=all -Kprefetch_sequential=soft -Kprefetch_line=9 -Kprefetch_line_L2=70 -Nlst=t
#	LD_FLAGS  = -Kfast -Kzfill=18 -Kswp -Kopenmp -Nlibomp -Kprefetch_cache_level=all -Kprefetch_sequential=soft -Kprefetch_line=9 -Kprefetch_line_L2=70

	CXX = FCC
	CXX_FLAGS = -std=c++11 $(DEFS) -I$(PWD) -Kfast -Kopenmp -Nlibomp -Kprefetch_stride=soft -Kprefetch_indirect -Kprefetch_cache_level=all -Kprefetch_sequential=soft -Kprefetch_line=2 -Kprefetch_line_L2=19 -Kzfill=9 -Kswp
	LD_FLAGS  = -Kfast -Kopenmp -Nlibomp

#	CXX = FCC
#	CXX_FLAGS = -std=c++11 $(DEFS) -I$(PWD) -Kfast -Kopenmp -Nlibomp -Kswp
#	LD_FLAGS  = -Kfast -Kopenmp -Nlibomp 
endif

# DIRS = $(shell find . -maxdepth 3 -type d)
# CXX_SRC = $(foreach dir, $(DIRS), $(wildcard $(dir)/*.cpp))

EXEC = winograd_dev
OBJ_DIR = ./obj
OBJ = $(patsubst %.cpp, $(OBJ_DIR)/%.o, $(CXX_SRC))

all: dir $(OBJ) 
#	$(CXX) $(DEFS) $(LD_FLAGS) $(OBJ_DIR)/*.o $(OBJ_DIR)/convLayer/*.o  $(OBJ_DIR)/utility/*.o $(OBJ_DIR)/winoF63/*.o $(OBJ_DIR)/im2col/*.o $(OBJ_DIR)/winoF63ZC/*.o -o $(EXEC)
	$(CXX) $(DEFS) $(LD_FLAGS) $(OBJ) -o $(EXEC)

$(OBJ): $(OBJ_DIR)/%.o: %.cpp
	$(CXX) -c $(CXX_FLAGS) $(DEFS) $< -o $@

dir: 
	mkdir -p $(OBJ_DIR)
	mkdir -p $(OBJ_DIR)/convLayer
	mkdir -p $(OBJ_DIR)/utility
#	mkdir -p $(OBJ_DIR)/winoF63
#	mkdir -p $(OBJ_DIR)/im2col/NEON
	mkdir -p $(OBJ_DIR)/im2col/SVE
#	mkdir -p $(OBJ_DIR)/winoF63ZC

clean:
	rm -rf $(EXEC) $(OBJ_DIR)
