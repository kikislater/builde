SRC_DIR=/srv/src
if [ "$2" = "--adb" ]; then
   rm /root/userscripts/before.sh 2>/dev/null
   ANDROIDVERSION=$(echo $1| cut -d'-' -f 2)
   ANDROIDVERSION=${ANDROIDVERSION^^}
   printf "\
#!/bin/bash\n 
sed -i -e 's/eng/userdebug/g' $SRC_DIR/$ANDROIDVERSION/vendor/lineage/config/common.mk\n\n" > /root/userscripts/before.sh
   chmod 755 /root/userscripts/before.sh
fi

