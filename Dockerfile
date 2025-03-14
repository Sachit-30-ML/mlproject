FROM python:3.12.4-slim-bookworm
WORKDIR /application
COPY . /application

RUN apt update -y && apt install awscli -y

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
CMD ["python3", "application.py"]