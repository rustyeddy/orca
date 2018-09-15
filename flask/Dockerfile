FROM alpine:3.5

RUN apk add --update py2-pip

COPY requirements.txt /srv/
RUN pip install --no-cache-dir -r /srv/requirements.txt

COPY app.py /srv/
COPY templates/index.html /srv/templates

EXPOSE 5000
#CMD ["python", "/srv/app.py"]
CMD ["/bin/sh"]
