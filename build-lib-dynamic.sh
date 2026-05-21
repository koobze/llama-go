LIBRARY_PATH=. C_INCLUDE_PATH=.  BUILD_TYPE=cublas CUDA_ARCHITECTURES="120" CMAKE_ARGS="-DCUDAToolkit_ROOT=/usr/local/cuda-12 -DCUDAToolkit_INCLUDE_DIR=/usr/local/cuda-12/include -DCMAKE_CUDA_COMPILER=/usr/local/cuda-12/bin/nvcc" make libbinding.a
rm ../llama-go-bins/dynamic/*
mv *.a ../llama-go-bins/dynamic/
mv *.so ../llama-go-bins/dynamic/
cd ../llama-go-bins/dynamic/
for f in *.so; do ln -s "$f" "$f.0"; done
cd -

ls -al ../llama-go-bins/dynamic/
