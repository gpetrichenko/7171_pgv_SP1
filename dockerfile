FROM ubuntu
COPY sp1.sh .
COPY jpg.jpg
RUN apt-get update && apt-get install -y \
    imagemagick nano curl --no-install-recommends
RUN chmod ugo+x sp1.sh
CMD ./sp1.sh
