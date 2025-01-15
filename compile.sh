chmod +x bootstrap
./bootstrap
chmod +x configure
./configure
make

# on matlab console
# mex -v cddmex.c .libs/libcdd.a

# Download GMP
wget https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz
tar xf gmp-6.3.0.tar.xz
cd gmp-6.3.0
./configure
make
make check
make install
cd ..
# rm gmp-6.3.0.tar.xz
# rm -rf gmp-6.3.0.tar.xz

# on matlab console
# mex -v -I/usr/local/include -L/usr/local/lib -L.libs/ -DGMPRATIONAL cddgmpmex.c .libs/libcddgmp.a /usr/local/lib/libgmp.a