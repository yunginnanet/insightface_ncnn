CXX = g++
COMMON = `pkg-config --cflags opencv4`
LIB = ../ncnn/lib/libncnn.a
LIB += `pkg-config --libs opencv4`
INCLUDE = -I../ncnn/include
COMMON += -fopenmp -pthread -std=c++11
DEPS = $(wildcard *.h)
OBJ = base.o mtcnn.o arcface.o
all : main
main : main.cpp $(OBJ)
	$(CXX) $(COMMON) $(INCLUDE) $^ -o $@ $(LIB)
%.o : %.cpp $(DEPS)
	$(CXX) $(COMMON) $(INCLUDE) -c $< -o $@
.PHONY : clean
clean :
	rm -rf $(OBJ) main
