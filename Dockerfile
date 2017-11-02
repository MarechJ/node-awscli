FROM node:6.10.0
LABEL maintainer="maresh"
LABEL description="Basic Docker image with Node and AWS CLI for CI"

RUN mkdir -p /dir
ADD dependencies.sh test.js /dir/
WORKDIR /dir
RUN  chmod +x ./dependencies.sh
RUN ./dependencies.sh

CMD /bin/bash
