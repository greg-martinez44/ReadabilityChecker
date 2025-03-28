FROM python:3.12

COPY --from=/usr/bin/pandoc /user/bin/pandoc

COPY --chmod=755 entrypoint.sh /entrypoint.sh

COPY check_readability.py /check_readability.py

COPY requirements.txt /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
