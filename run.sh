nvcc -O3 exec.cu -o main

# ncu --set detailed -f -o prof ./main 64 256 14 14 256 3 3 1 1 1 1
# b c h w k r s u v p q

# test dat
./main 64 256 14 14 256 3 3 1 1 1 1
./main 256 192 14 14 192 3 3 1 1 1 1
./main 16 256 26 26 512 3 3 1 1 1 1
./main 32 256 14 14 256 3 3 1 1 1 1
./main 2 1280 16 16 1280 3 3 1 1 1 1
./main 2 960 64 64 32 3 3 1 1 1 1

# delete the file
rm main