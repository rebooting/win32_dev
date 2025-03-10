FROM mcr.microsoft.com/devcontainers/typescript-node:22
ARG USERNAME=node
ARG USER_UID=1000
ARG USER_GID=1000
ARG USERNAME=node

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    mingw-w64 \
    cmake \   
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoremove -y