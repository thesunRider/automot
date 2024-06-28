cd build/
rm -rf *
xc8 --chip=16F676 ../test.c ../lib/TinyRF_TX.c
