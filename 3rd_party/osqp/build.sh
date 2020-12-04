set -e
base_dir=$(cd "$(dirname "$0")";pwd)
cd $base_dir/0.5.0/
rm -fr $base_dir/0.5.0/build/
mkdir $base_dir/0.5.0/build/
cd $base_dir/0.5.0/build/
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/ -DCMAKE_INSTALL_INCLUDEDIR=/usr/local/include $base_dir/0.5.0/
make
make install
