FROM uphold/litecoin-core:0.18.1

# Update packages
RUN apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# prepare working folder permissions to be run by litecoin user.
RUN mkdir -p /home/litecoin/.litecoin && chown litecoin:litecoin -R /home/litecoin/

# Set standard user
USER litecoin

# Adding some flags to the default run entrypoint
CMD [ "-printtoconsole", "-regtest=1"]