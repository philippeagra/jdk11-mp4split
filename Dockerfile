FROM adoptopenjdk/openjdk11:alpine

RUN wget -q -O /etc/apk/keys/alpine@unified-streaming.com.rsa.pub \
    http://stable.apk.unified-streaming.com/alpine@unified-streaming.com.rsa.pub && \
    echo https://stable.apk.unified-streaming.com/target/repo >> /etc/apk/repositories && \
    apk --update add mp4split==1.9.6-r0
