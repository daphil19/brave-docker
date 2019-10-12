FROM centos:8

RUN dnf update -y

# install brave at root level
RUN dnf install 'dnf-command(config-manager)' -y
RUN dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
RUN rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
RUN dnf install brave-browser -y

# create user to run docker
RUN useradd -ms /bin/bash brave

USER brave
WORKDIR /home/brave


CMD ["brave-browser" , "--no-sandbox"]
