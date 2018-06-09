git pull
sudo docker build . -t hellophp:v1
sudo docker run --rm -d -p 80:80 --name hello1 hellophp:v1

read -rsp $'Press any key to continue...\n' -n1 key
docker stop hello1

read -rsp $'Press any key to continue...\n' -n1 key
sudo docker run --rm -it -p 80:80 --name hello1 hellophp:v1 sh
docker ps -a
