#pull base image
FROM fedora

WORKDIR /usr/src/zap
RUN dnf update -y
RUN dnf install -y git nodejs npm python gcc-c++
RUN git clone https://github.com/zapproject/zap-oracle-template.git
COPY Responder.ts /usr/src/zap/zap-oracle-template/Oracle
COPY entry_point.sh /usr/
WORKDIR zap-oracle-template
RUN npm install
RUN npm install node-binance-api bluebird
CMD ["sh","/usr/entry_point.sh"]
