FROM land007/node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN cd /node_ && git clone https://github.com/justadudewhohacks/face-api.js.git
RUN cd /node_/face-api.js/ && npm i
RUN cd /node_/face-api.js/examples/examples-nodejs/ && npm i

#docker stop tfjs ; docker rm tfjs ; docker run -it --privileged --name tfjs land007/face-api.js:latest
