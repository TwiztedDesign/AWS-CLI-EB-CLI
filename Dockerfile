FROM python:3

ENV AWSCLI_VERSION='1.18.69'

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install awsebcli cryptography==3.3.1

RUN pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
