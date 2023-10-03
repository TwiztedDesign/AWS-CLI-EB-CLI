FROM python:3.12

ENV AWSCLI_VERSION='2.13.23'

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip3 install --upgrade pip

RUN pip3 install PyYAML==5.3.1

RUN pip3 install cryptography awsebcli

#RUN pip3 --no-cache-dir install awscli 
#$==${AWSCLI_VERSION}

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
