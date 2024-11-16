# This docker file builds a container which contains a fit environment
# to build the documentation
# Build it with docker build .
# Run it with docker run -it -v ./:/github/workspace <image ID built>
# Optionally set the GH_WORKSPACE variable to the mounting place above.

FROM python:3.9

ARG GH_WORKSPACE=/github/workspace
WORKDIR ${GH_WORKSPACE}/guidelines

COPY ./tools/requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip && \
    pip install -r /tmp/requirements.txt

CMD ["make", "dirhtml"]
