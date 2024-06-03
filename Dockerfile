FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python2 python3 pip r-base r-base-dev

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

CMD ["sh", "-c", "tail -f /dev/null"]