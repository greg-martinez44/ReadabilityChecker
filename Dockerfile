FROM alpine:3.10

COPY entrypoint.sh /entrypoint.sh

COPY check_readability.py /check_readability.py

COPY requirements.txt /requirements.txt

ENTRYPOINT []
