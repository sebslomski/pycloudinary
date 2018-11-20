FROM python:3.7-alpine

WORKDIR /app

# Flush logs immediately
ENV PYTHONUNBUFFERED=1

COPY ./ /app

RUN python setup.py install

ENV CLOUDINARY_URL=cloudinary://apikey:apisecret@cloudname

CMD python setup.py test
