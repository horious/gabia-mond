# gabia-mond

가비아 sms agent docker container

```
docker build . -t gabia-mond
docker run -d --pid=host --net=host --restart=always -v /dev/mapper:/dev/mapper --name gabia-mond 
```
최초 1회 userkey 등록하기 위해 bash 진입
`docker exec -it gabia-mond bash`

userkey 등록
`#/usr/local/gabia_mond/bin/gabia_mond --start --userkey` 

