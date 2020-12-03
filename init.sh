set -e

function build_third_party() {
    cd $1/
    bash build.sh
    cd -
    echo 'Build '$1' successed.'
}

function prepare() {
    build_third_party protobuf
    build_third_party gflags
    build_third_party googletest
    build_third_party eigen
    echo 'Pre-requirement Prepared Succeed!'
}

prepare

