FROM mcr.microsoft.com/devcontainers/java:1-17-bookworm

USER root
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y --no-install-recommends maven \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

USER vscode
