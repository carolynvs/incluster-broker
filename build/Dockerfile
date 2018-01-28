FROM golang:1.9

ENV USE_DOCKER=false

WORKDIR /tmp

# Install Helm
RUN curl -sLO https://kubernetes-helm.storage.googleapis.com/helm-v2.8.0-linux-amd64.tar.gz
RUN tar -zxvf helm-v2.8.0-linux-amd64.tar.gz
RUN mv linux-amd64/helm /usr/local/bin/

# Install Draft
RUN curl -sLO https://azuredraft.blob.core.windows.net/draft/draft-v0.10.0-linux-amd64.tar.gz
RUN tar -zxvf draft-v0.10.0-linux-amd64.tar.gz
RUN mv linux-amd64/draft /usr/local/bin/

WORKDIR /go/src/github.com/carolynvs/incluster-broker
