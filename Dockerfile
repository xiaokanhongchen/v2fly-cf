FROM alpine

ENV CONFIG=https://gist.githubusercontent.com/xiaokanhongchen/abf2f52a223d915e01c017abbbef2354/raw/4a383f809bdd8c06c5bf8b9cbdaefada16dc6a00/config.json

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -c https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip && \
    chmod 700 v2ray v2ctl
    
CMD ./v2ray -config $CONFIG
