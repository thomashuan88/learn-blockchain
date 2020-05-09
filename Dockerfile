FROM node:12

SHELL ["/bin/bash"]
ARG HOST_UID=1000
ARG USERNAME=thomas
# ENV HUID=${HOST_UID}

RUN useradd -u ${HOST_UID} ${USERNAME}

USER thomas
COPY ./app /usr/src/app
WORKDIR /usr/src/app


# FROM busybox
# ARG HOST_UID=1000
# RUN adduser -D -H -u ${HOST_UID} -s /bin/sh npm
# USER npm
# RUN echo "i'm $(whoami) and have uid: ${HOST_UID}"

# version: '2'
# services:
#   foo:
#     build:
#       context: .
#       args:
#         HOST_UID: ${UID}