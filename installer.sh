#!/bin/bash

# confirm URL
VERSION=$1
if [[ $VERSION =~ [1-9]+\.[0-9]+\.[0-9] ]]; then
        GIT_DIR=git-$VERSION
        GIT_TAR=$GIT_DIR.tar.gz
        URL="https://mirrors.edge.kernel.org/pub/software/scm/git/$GIT_TAR"
else
        echo -e "Usage:\t $0 <MAJOR>.<MINOR>.<PATCH>"
        echo -e "e.g.)\t $0 2.29.2"
        exit 1
fi

# install wget for downloading git
yum install -y wget

# confirm installation
wget -q --spider $URL
if [ $? = 0 ]; then
        echo "install git version $VERSION"
else
        echo "something seems wrong with URL: $URL"
        exit 1
fi

# install dependencies
yum install -y \
        curl-devel \
        expat-devel \
        gettext-devel \
        openssl-devel \
        perl-devel \
        zlib-devel \
        gcc \
        make

# download and install git
mkdir -p /usr/local/src
cd /usr/local/src
wget https://mirrors.edge.kernel.org/pub/software/scm/git/${GIT_TAR}
tar xf ${GIT_TAR}
rm -f ${GIT_TAR}

cd ${GIT_DIR}
make prefix=/usr/local all
make prefix=/usr/local install

# completion notice
git version > /dev/null && echo "$(git version) was successfully installed"
