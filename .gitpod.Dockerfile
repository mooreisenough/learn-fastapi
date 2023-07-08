FROM gitpod/workspace-full:latest

SHELL ["/bin/bash", "-c"]

RUN sudo apt-get update \
    && sudo apt-get clean \
    && sudo rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* 

# That Gitpod install pyenv for me? no, thanks
WORKDIR /home/gitpod/
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN rm .pyenv -Rf
RUN rm .gp_pyenv.d -Rf
RUN curl https://pyenv.run | bash


RUN pyenv update && pyenv install 3.11.1 && pyenv global 3.11.1

# remove PIP_USER environment
USER gitpod
RUN if ! grep -q "export PIP_USER=no" "$HOME/.bashrc"; then printf '%s\n' "export PIP_USER=no" >> "$HOME/.bashrc"; fi
RUN echo "" >> $HOME/.bashrc
RUN echo "unset DATABASE_URL" >> $HOME/.bashrc
RUN echo "export DATABASE_URL" >> $HOME/.bashrc