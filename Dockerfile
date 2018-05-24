FROM python:2.7

RUN pip install prometheus_client requests

ADD monitor.py /monitor.py

ENTRYPOINT [ "/monitor.py", "/dev/hidraw0" ]
