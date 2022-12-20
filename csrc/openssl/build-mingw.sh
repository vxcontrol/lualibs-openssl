[ "$P" ] || exit 1
cd src || exit 1

make clean
./Configure $C shared
make -j4

d=../luapower/bin/$P
cp -f libeay32.dll        $d/libeay32.dll
cp -f libcrypto.a         $d/
cp -f libcrypto.dll.a     $d/
cp -f ssleay32.dll        $d/ssleay32.dll
cp -f libssl.a            $d/
cp -f libssl.dll.a        $d/

cd ..
./copy-headers.sh
