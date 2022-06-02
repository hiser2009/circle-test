FROM ubuntu:jammy-20220428

RUN apt-get -y install nginx-full && apt-get install curl -y && apt-get install curl -y

COPY index.html style.css 

STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
