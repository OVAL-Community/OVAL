# This docker file builds a container which contains a fit environment
# to build the documentation
# Build it with docker build .
# Run it with docker run -it -v ./:/data <image ID built>
FROM python:3.9

WORKDIR /data/guidelines

COPY ./tools/requirements.txt /data/requirements.txt
COPY ./guidelines/requirements.txt /data/requirements2.txt

RUN pip install --upgrade pip && \
    pip install -r /data/requirements.txt && \
    pip install -r /data/requirements2.txt


CMD ["make", "dirhtml"]
