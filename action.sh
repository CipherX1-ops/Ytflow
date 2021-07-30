branch=master
git clone -b $branch https://github.com/CipherX1-ops/YouTubedl /root/CipherX1-ops
cp yt/.env /root/CipherX1-ops/.env
cd /root/CipherX1-ops
docker build . --rm --force-rm --compress --pull --file Dockerfile -t yt
docker run --privileged --env-file .env --rm -i yt
