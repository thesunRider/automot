cd build/
rm -rf *
xc8 --chip=16F676 ../main.c ../lib/TinyRF_TX.c ../lib/TinyRF.c
