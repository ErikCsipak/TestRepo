# Git és Nano dockerfile
# Ubuntu LTS alap image
FROM ubuntu

# Ne kérdezzen interaktív kérdéseket
ENV DEBIAN_FRONTEND=noninteractive

# Csomaglista frissítés + git és nano telepítés
# -y ahhoz kell, hogy ne promptoljon nekünk semmit. Nem szabad, hogy megszakadjona  docker process
RUN apt-get update && \
    apt-get install -y git nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Alapértelmezett parancs
CMD ["/bin/bash"]

#docker build -t ubuntu-git-nano . -> imaget buildelünk
#docker run -it --name ubuntu-git-nano-container ubuntu-git-nanols -> containert futtatunk az imageből
#docker ps -s -> listázza a futó konténereket


