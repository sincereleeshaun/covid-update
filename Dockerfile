FROM ubuntu:18.04
LABEL maintainer="sincereleeshaun sincereleeshaun@gmail.com"
EXPOSE 8080
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Singapore

RUN apt-get update
RUN apt-get install -y nodejs npm
RUN apt-get install sudo
ENV USER root
RUN npm install -g express-generator
RUN npm install express --save
RUN useradd -ms /bin/bash user
COPY get_update.js /home/user/get_update.js
COPY start.sh /home/user/start.sh
RUN chmod a+x /home/user/start.sh
USER user
WORKDIR /home/user

CMD ["sh","/home/user/start.sh"]
