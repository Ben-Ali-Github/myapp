FROM amd64/gcc:latest
COPY . /usr/src/myapp
RUN chmod +x /usr/src/myapp
WORKDIR /usr/src/myapp
RUN sudo nohup docker daemon -H tcp://192.168.43.24:2375 -H unix:///var/run/docker.sock &
RUN gcc -o myapp main.c

CMD ["./myapp"]

#HEALTHCHECK --interval=10s CMD wget -qO- /myapp"





