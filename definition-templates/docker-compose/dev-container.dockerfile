# Debian and Ubuntu based images are supported. Alpine images are not yet supported.
FROM ubuntu:1804

# Install common tools developers typically will need
RUN apt-get update \
	&& apt-get install -y git

# *****************************************************
# * Add steps for installing needed dependencies here *
# ****************************************************

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/*

