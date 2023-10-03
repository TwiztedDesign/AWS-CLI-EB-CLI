FROM python:3.12

ENV AWSCLI_VERSION='2.13.23'

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip3 install --upgrade pip

RUN pip3 install PyYAML==5.3.1

RUN pip3 install awsebcli cryptography

RUN pip3 --no-cache-dir install awscli 
#$==${AWSCLI_VERSION}

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
