#!/bin/sh

set -e

echo "BAMBOO_VERSION: $BAMBOO_VERSION"
echo "BAMBOO_HOME:    $BAMBOO_HOME"

mkdir -p $BAMBOO_HOME

BAMBOO_DIR=/opt/atlassian-bamboo-$BAMBOO_VERSION

if [ -d $BAMBOO_DIR ]; then
  echo "-> Bamboo $BAMBOO_VERSION already found at $BAMBOO_DIR. Skipping download."
else
  BAMBOO_TARBALL_URL=http://downloads.atlassian.com/software/bamboo/downloads/atlassian-bamboo-$BAMBOO_VERSION.tar.gz
  BAMBOO_TARBALL_PATH=/tmp/atlassian-bamboo.tar.gz
  wget --progress=dot:giga $BAMBOO_TARBALL_URL -O $BAMBOO_TARBALL_PATH
  mkdir /opt
  tar xzf $BAMBOO_TARBALL_PATH -C /opt
  rm -f $BAMBOO_TARBALL_PATH
fi

echo "-> Running Bamboo server ..."
$BAMBOO_DIR/bin/catalina.sh run
