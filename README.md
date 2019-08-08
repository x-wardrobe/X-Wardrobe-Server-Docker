# X-Wardrobe-Server docker builder and runner

**Note:you should make sure have the docker installed**
## STEP 1 Create a work directory
```shell
mkdir workspace
cd workspace
```
clone the X-Wardrobe-Server source code
```shell
git clone https://github.com/x-wardrobe/X-Wardrobe-Server.git
```
## STEP 2 Compress X-Wardrobe-Server and gopath
```shell
tar -cvf X-Wardrobe-Server.tar.gz X-Wardrobe-Server
tar -cvf gopath.tar.gz gopath
```
## STEP 3 Download golang and palce it in workspace folder
the offical web is https://golang.org/
## STEP 4 Build docker image
```shell
docker build -f Dockerfile -t xwardrobe:1.0 .
```

## STEP 5 Execute run_xwardrobe.sh script to boot the xwardrobe:1.0 and mysql containers
```shell
./run_xwardrobe.sh
```

## STEP 6 After the containers boot up successfully , execute command
```shell
docker exec -i x-mysql sh -c 'exec mysql -uroot -p"mysql1234"' < $PWD/xwardrobe_user0.sql
```
to dumps the mysql datebase

**note:make sure the containers of xwardrobe:1.0 and mysql is running and mysql has completed initialization**
