FROM ubuntu
ADD X-Wardrobe-Server.tar.gz /
ADD gopath.tar.gz /
ADD go1.12.7.linux-amd64.tar.gz /usr/local/
ENV GOPATH /gopath
ENV GOROOT /usr/local/go
ENV PATH $PATH:$GOPATH/bin:$GOROOT/bin
WORKDIR /X-Wardrobe-Server
EXPOSE 8080
CMD ./runner.sh