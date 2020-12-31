#pull base image
FROM fedora

WORKDIR /zap
RUN dnf update -y
RUN dnf install -y git nodejs npm python gcc-c++
RUN git clone https://github.com/zapproject/zap-oracle-template.git
COPY Responder.ts /zap/zap-oracle-template/Oracle/
WORKDIR /zap/zap-oracle-template 
RUN npm install node-binance-api bluebird coingecko-api
RUN npm install
CMD ["npm","start"]