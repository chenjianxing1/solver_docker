set -e
base_dir=$(cd "$(dirname "$0")";pwd)
rm -fr $base_dir/3.3.90/build/
mkdir $base_dir/3.3.90/build/
cd $base_dir/3.3.90/build/
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/ $base_dir/3.3.90/
make -j4               # Where "4" is the number of cores on your machine
make install           # install the libararies
