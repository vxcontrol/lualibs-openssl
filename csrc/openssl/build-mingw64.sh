[ `uname` = Linux ] && { export X="--cross-compile-prefix=x86_64-w64-mingw32-"; }
P=mingw64 C="mingw64 -fPIC $X" ./build-mingw.sh
