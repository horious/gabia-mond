FROM debian:stretch-slim

RUN apt update && apt install -y wget gnupg2
RUN wget http://monrepo.gabia.com/repo/debian/gabiarepo.gpg -O - |apt-key add -
RUN wget http://monrepo.gabia.com/repo/debian/gabiamon-repo_1.0.0-1_all.deb
RUN dpkg -i gabiamon-repo_1.0.0-1_all.deb
RUN apt update && apt install -y gabia-mond

CMD ["--start"]
ENTRYPOINT ["/usr/local/gabia_mond/bin/gabia_mond"]
