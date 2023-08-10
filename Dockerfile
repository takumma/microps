FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    iproute2 \
    iputils-ping \
    netcat-openbsd \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

# ARG USERNAME=user
# ARG GROUPNAME=user
# ARG UID=1000
# ARG GID=1000
# ARG PASSWORD=user
# RUN groupadd -g $GID $GROUPNAME && \
#     useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME && \
#     echo $USERNAME:$PASSWORD | chpasswd && \
#     echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# USER $USERNAME

COPY . /app
RUN make /app


