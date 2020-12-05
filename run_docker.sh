BASE_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd )

echo  $BASE_DIR
docker run -p 32212:22   -v $BASE_DIR:/root/  -it chenjianxing1/solver_img:0.0.2

