################################################################################
#
# Base Debian installation
#
################################################################################

FROM yoshuawuyts/base
MAINTAINER Yoshua Wuyts <i@yoshuawuyts.com>

################################################################################
#
# Node.js
#
################################################################################

RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN /bin/bash -c "source /.nvm/nvm.sh && nvm install 0.11 && \
    nvm default 0.11 && \
    ln -s /.nvm/v0.11.13/bin/node /usr/bin/node && \
    ln -s /.nvm/v0.11.13/bin/npm /usr/bin/npm"
