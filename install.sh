#! /bin/sh

( cd /tmp/ && \
git clone --depth 1 https://github.com/Logicer16/pam-watchid.git && \
cd "$(basename "$_" .git)" && CLONE_SUCCESS="true" && \
make $1
# cleanup
[[ "$CLONE_SUCCESS" == "true" ]] && TMP=`pwd -P` && cd "`dirname $TMP`" && rm -rf "./`basename $TMP`" && unset TMP
)
