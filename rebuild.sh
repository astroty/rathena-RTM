export CFLAGS="-march=native -mtune=native -O3 -pipe -fno-plt -fexceptions -Wp,-D_FORTIFY_SOURCE=2 -Wformat -Werror=format-security -fstack-clash-protection -fcf-protection -fopenmp -pthread" 
export CXXFLAGS="$CFLAGS -Wp,-D_GLIBCXX_ASSERTIONS" 
export LDFLAGS="-Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now,-lgomp,-lpthread"
./configure
make clean
make -j8 server
