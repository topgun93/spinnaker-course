#!/bin/bash

set -e

curl -O https://raw.githubusercontent.com/spinnaker/halyard/master/install/debian/InstallHalyard.sh
#sudo bash InstallHalyard.sh --user ubuntu
sudo bash InstallHalyard.sh
#curl -fsSL get.docker.com -o get-docker.sh
#sh get-docker.sh
#sudo usermod -aG docker ubuntu
#sudo docker run -p 127.0.0.1:9090:9000 -d --name minio1 -v /mnt/data:/data -v /mnt/config:/root/.minio minio/minio server /data

#sudo apt-get -y install jq apt-transport-https

#MINIO_SECRET_KEY=`echo $(sudo docker exec minio1 cat /data/.minio.sys/config/config.json) |jq -r '.credential.secretKey'`
#MINIO_ACCESS_KEY=`echo $(sudo docker exec minio1 cat /data/.minio.sys/config/config.json) |jq -r '.credential.accessKey'`

#echo $MINIO_SECRET_KEY | hal config storage s3 edit --endpoint http://127.0.0.1:9090 \
#    --access-key-id $MINIO_ACCESS_KEY \
#    --secret-access-key

echo $2 | hal config storage s3 edit --bucket $3 \
    --root-folder $4 \
    --access-key-id $1 \
    --secret-access-key

hal config storage edit --type s3

