# This docker file builds a container which contains a fit environment
# to build the documentation
# Build it with docker build .
# Run it with 'docker run -it -v <OVAL src dir>:/github/workspace <image ID built>'

FROM python:2.7

ARG GH_WORKSPACE=/github/workspace

RUN --mount=type=bind,source=requirements.txt,target=/tmp/requirements.txt \
    pip install --upgrade pip && \
    pip install -r /tmp/requirements.txt

WORKDIR ${GH_WORKSPACE}
CMD ["/bin/sh", "-c", "cd guidelines && make dirhtml"]
