FROM phusion/baseimage
MAINTAINER Yoshua Wuyts <i@yoshuawuyts.com>

# Setup worker user
RUN useradd -m -p secret worker  
RUN chsh -s /bin/bash worker  
RUN su - worker -c "touch ~/.bash_profile"

# Install nvm
RUN su - worker -c "curl https://raw.github.com/creationix/nvm/master/install.sh | sh"  
RUN su - worker -c "echo '[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM' > .profile"

# Install node
RUN su - worker -c "nvm install 0.11"  
RUN su - worker -c "nvm alias default 0.11"

# Start the shell as the worker user
#
# Usage: docker run -t -i $IMAGE
CMD su - worker  

# Install postgres
# ENV PG_VERSION 9.2
# ENV PASS {.......}

# RUN

# Expose ports

expose 8080
expose 443