## Using Docker official Ubuntu image and installing boto3
FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y

RUN apt-get install -y python3-pip && pip3 install boto3

WORKDIR /project_dir

# Will keep containers running
ENTRYPOINT ["tail", "-f", "/dev/null"]