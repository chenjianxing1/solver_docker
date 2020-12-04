set -e
base_dir=$(cd "$(dirname "$0")";pwd)
rm -fr $base_dir/output
cd $base_dir/1.8.1
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/usr/local/ .
cd $base_dir/1.8.1/googletest
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/usr/local/ .
make -j2
cp *.so /usr/local/lib
cp include/* /usr/local/include/ -r

cd $base_dir/1.8.1/googlemock
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/usr/local/ .
make -j2
cp *.so /usr/local/lib
cp include/* /usr/local/include/ -r
