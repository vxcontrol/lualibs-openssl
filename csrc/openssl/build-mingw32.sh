[ `uname` = Linux ] && { export X="--cross-compile-prefix=i686-w64-mingw32-"; }
P=mingw32 C="mingw -fPIC $X" ./build-mingw.sh
