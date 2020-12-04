set -e
base_dir=$(cd "$(dirname "$0")";pwd)
cd $base_dir/2.2.2
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/usr/local/ .
make -j4
make install
