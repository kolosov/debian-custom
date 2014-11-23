#!/bin/sh

echo "Calculate md5"
find -type f  | xargs md5sum > md_log
echo "Done"
