#pull base image
FROM fedora

WORKDIR /usr/src/zap
RUN dnf update -y
RUN dnf install -y git nodejs npm python gcc-c++
RUN git clone https://github.com/zapproject/zap-oracle-template.git
WORKDIR zap-oracle-template
COPY Config.json /usr/src/zap/zap-oracle-template/Oracle
RUN npm install node-binance-api bluebird
RUN npm install
CMD ["npm","start"]
