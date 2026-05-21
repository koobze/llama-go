CGO_LDFLAGS='-lcublas -lcudart -L/usr/local/cuda/lib64/' LIBRARY_PATH=. C_INCLUDE_PATH=. LD_LIBRARY_PATH=. go build ./examples/simple
