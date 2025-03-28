FROM python:3.12

COPY --from=pandoc/minimal:2.19.2 /pandoc /usr/bin/pandoc

COPY --chmod=755 entrypoint.sh /entrypoint.sh

COPY check_readability.py /check_readability.py

COPY requirements.txt /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
