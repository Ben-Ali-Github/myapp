FROM amd64/gcc:latest
COPY . /usr/src/myapp
RUN chmod +x /usr/src/myapp
WORKDIR /usr/src/myapp
RUN gcc -o myapp main.c
VOLUME /var/run/docker.sock:/var/run/docker.sock  

EXPOSE 8080
ENV DB db
ENV SERVICE_NAME demo
CMD ["./myapp"]

#HEALTHCHECK --interval=10s CMD wget -qO- /myapp"





