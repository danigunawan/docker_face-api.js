FROM land007/node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN apt-get install -y python
RUN apt-get install -y build-essential

RUN cd /node_ && git clone https://github.com/justadudewhohacks/face-api.js.git
RUN . $HOME/.nvm/nvm.sh && cd /node_/face-api.js/ && npm i
RUN . $HOME/.nvm/nvm.sh && cd /node_/face-api.js/examples/examples-nodejs/ && npm i
RUN . $HOME/.nvm/nvm.sh && npm install -g ts-node && npm install -g typescript

RUN . $HOME/.nvm/nvm.sh && cd /node_/face-api.js/examples/examples-nodejs && tsc faceDetection.ts && tsc faceRecognition.ts && tsc faceLandmarkDetection.ts && tsc faceRecognition.ts
RUN . $HOME/.nvm/nvm.sh && cd /node_/face-api.js/examples/examples-nodejs && node faceDetection.js && node faceLandmarkDetection.js && node faceRecognition.js

#docker stop face-api.js ; docker rm face-api.js ; docker run -it --privileged --name face-api.js land007/face-api.js:latest
