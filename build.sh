#!/bin/sh
set -e
apt-get update
apt-get install -y --no-install-recommends imagemagick texlive nodejs inkscape openjdk-7-jdk calibre unzip epubcheck zip texlive-latex-recommended ghostscript texlive-xetex texlive-generic-recommended
ln -s /usr/bin/nodejs /usr/bin/node
cd /tmp
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar xfj phantomjs-2.1.1-linux-x86_64.tar.bz2
mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin
gem install softcover
softcover check
