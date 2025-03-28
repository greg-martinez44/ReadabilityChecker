FROM python:3.12

COPY --chmod=755 entrypoint.sh /entrypoint.sh

COPY check_readability.py /check_readability.py

COPY requirements.txt /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
