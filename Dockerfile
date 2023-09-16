FROM ubuntu:latest

WORKDIR /app

COPY requirements.txt requirements.txt
RUN set -xe && \
    apt-get update -y &&  \
    apt-get install python3-pip -y &&  \
    pip install -r requirements.txt

COPY . .

CMD ["python3", "manage.py", "runserver", "9999"]

#ENTRYPOINT ["top", "-b"]