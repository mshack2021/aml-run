FROM ghcr.io/marvinbuss/aml-docker:1.25.0

LABEL maintainer="azure/gh-aml"

COPY /code /code
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pandas
ENTRYPOINT ["/code/entrypoint.sh"]
