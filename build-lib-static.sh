LIBRARY_PATH=. C_INCLUDE_PATH=. BUILD_TYPE=cublas CUDA_ARCHITECTURES="75;80;86;89;120" CMAKE_ARGS="-DBUILD_SHARED_LIBS=OFF -DGGML_CUDA_FORCE_LIB_STATIC=ON -DCUDAToolkit_ROOT=/usr/local/cuda-12 -DCUDAToolkit_INCLUDE_DIR=/usr/local/cuda-12/include -DCMAKE_CUDA_COMPILER=/usr/local/cuda-12/bin/nvcc" make libbinding.a
rm ../llama-go-bins/static/*
mv *.a ../llama-go-bins/static/
ls -al ../llama-go-bins/static/
