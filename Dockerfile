FROM alpine:3.10

COPY check_readability.py /check_readability.py

ENTRYPOINT ["/check_readability.py"]
