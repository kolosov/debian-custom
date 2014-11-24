#!/bin/sh

ROOT_PATH=`pwd`
MD5_SYS_DIR="${ROOT_PATH}/build"
MD5_FILE='md5_log'

echo "Calculate md5"

echo "MD5_SYS_DIR=$MD5_SYS_DIR"

#find -type f  | xargs md5sum > md_log
#find $ROOT_PATH -path $EXCLUDE_DIR -prune -o -type f -print | sort | xargs md5sum |gawk '{print $2,$1}' > $MD5_FILE
echo "find $ROOT_PATH -path $MD5_SYS_DIR -prune -o -type f -print | xargs md5sum |gawk '{print $2,$1}'|sort > $MD5_FILE"
find $ROOT_PATH -path $MD5_SYS_DIR -prune -o -type f -print | xargs md5sum |gawk '{print $2,$1}'|sort > $MD5_FILE

echo "Done"
