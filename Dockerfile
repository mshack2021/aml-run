FROM ghcr.io/marvinbuss/aml-docker:1.25.0

LABEL maintainer="azure/gh-aml"

COPY /code /code
RUN pip install pandas
ENV DOTNET_SYSTEM_NET_HTTP_USESOCKETSHTTPHANDLER=0
ENTRYPOINT ["/code/entrypoint.sh"]
