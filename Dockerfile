FROM amd64/gcc:latest
COPY . /usr/src/myapp
RUN chmod +x /usr/src/myapp
WORKDIR /usr/src/myapp
RUN gcc -o myapp main.c

CMD ["./myapp"]

#HEALTHCHECK --interval=10s CMD wget -qO- /myapp"





