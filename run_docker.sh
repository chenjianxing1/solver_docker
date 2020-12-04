BASE_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd )

echo  $BASE_DIR
docker run  -v $BASE_DIR:/root/  -it solver_img:0.0.1 

