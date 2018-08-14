#!/bin/bash
#set -xv
##~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
#                                        #
#           GetSUM hash cracker          #
#             Written by ${LG}MTK${NC}             #
#----------------------------------------#
#     Created by Open Source shared      #
#            as Open source              #
#             www.mtk911.cf		 #
#                                        #
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~##

#MIT License
#
#Copyright (c) 2018 Muhammad Talha Khan
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

#DISCLAIMER 

#This software/script/application/thing is provided as is, without warranty of any kind. Use of this software/script/application/thing is entirely at #your own risk. Creator of this software/script/application/thing is not responsible for any direct or indirect damage to your own or defiantly someone else's property resulting from the use of this software/script/application/thing.

#because colors
R='\033[0;31m'
G='\033[0;32m'
B='\033[0;34m'
Y='\033[1;33m'
LG='\033[1;32m'
BW='\033[1;37m'
UW='\033[4;37m'
RB='\033[41m'
NC='\033[0m'


control_c()
# Catch the ctrl+c
{
  echo '' 
  echo -ne "Ctrl+c detected falling back\\n"
  exec "$0"
  main_man
}
 
# trap keyboard interrupt (control-c)
trap control_c SIGINT

sha_1() {
echo -ne "Enter SHA1 hash: "
read -r  hash_sha1
cat '/usr/share/wordlists/nmap.lst' | while read -r PEND
do
echo "$PEND:$(echo -n "$PEND" | sha1sum | awk '{print $1}')" | grep "$hash_sha1"
done

sleep 3
echo ''
main_man
}


sha_224() {
echo -ne "Enter SHA224 hash: "
read -r  hash_sha224
cat '/usr/share/wordlists/nmap.lst' | while read -r PEND
do
echo "$PEND:$(echo -n "$PEND" | sha224sum | awk '{print $1}')" | grep "$hash_sha224"
done

sleep 3
echo ''
main_man
}

sha_256() {
echo -ne "Enter SHA256 hash: "
read -r  hash_sha256
cat '/usr/share/wordlists/nmap.lst' | while read -r PEND
do
echo "$PEND:$(echo -n "$PEND" | sha256sum | awk '{print $1}')" | grep "$hash_sha256"
done

sleep 3
echo ''
main_man
}


sha_384() {
echo -ne "Enter SHA384 hash: "
read -r  hash_sha384
cat '/usr/share/wordlists/nmap.lst' | while read -r PEND
do
echo "$PEND:$(echo -n "$PEND" | sha384sum | awk '{print $1}')" | grep "$hash_sha384"
done

sleep 3
echo ''
main_man
}


sha_512() {
echo -ne "Enter SHA512 hash: "
read -r  hash_sha512
cat '/usr/share/wordlists/nmap.lst' | while read -r PEND
do
echo "$PEND:$(echo -n "$PEND" | sha512sum | awk '{print $1}')" | grep "$hash_sha512"
done

sleep 3
echo ''
main_man
}


md_5() {
echo -ne "Enter md5 hash: "
read -r  hash_md5
cat '/usr/share/wordlists/nmap.lst' | while read -r PEND
do
echo "$PEND:$(echo -n "$PEND" | md5sum | awk '{print $1}')" | grep "$hash_md5"
done

sleep 3
echo ''
main_man
}

gen_hash() {
clear
echo -ne "Type string you want to hash: "
read -r  get_string
echo -ne "\\n"${Y}"SHA1 ${NC}= " $(echo -n "$get_string" | sha1sum)"\\n\\n"

echo -ne ${Y}"MD5${NC} = " $(echo -n "$get_string" | md5sum)"\\n\\n"

echo -ne ${Y}"SHA224 ${NC}= " $(echo -n "$get_string" | sha224sum)"\\n\\n"

echo -ne ${Y}"SHA256 ${NC}= " $(echo -n "$get_string" | sha256sum)"\\n\\n"

echo -ne ${Y}"SHA384 ${NC}= " $(echo -n "$get_string" | sha384sum)"\\n\\n"

echo -ne ${Y}"SHA512 ${NC}= " $(echo -n "$get_string" | sha512sum) "\\n\\n\\n"

echo -ne ${G}"Press any key to proceed....."${NC}
read -n 1 -s
}

hash_id() {
clear
echo -ne "Type your hash: "
read -r  get_hash

dank=$(echo -n "$get_hash" | wc -c)

if [ "$dank" == '32' ]; then
echo -ne "\\nHash type ${G}MD5${NC}""\\n\\n"

elif [ "$dank" == '40' ]; then
echo -ne "\\nHash type ${G}SHA1${NC}""\\n\\n"

elif [ "$dank" == '56' ]; then
echo -ne "\\nHash type ${G}SHA224${NC}""\\n\\n"

elif [ "$dank" == '64' ]; then
echo -ne "\\nHash type ${G}SHA256${NC}""\\n\\n"

elif [ "$dank" == '96' ]; then
echo -ne "\\nHash type ${G}SHA384${NC}""\\n\\n"

elif [ "$dank" == '128' ]; then
echo -ne "\\nHash type ${G}SHA512${NC}""\\n\\n"

else
echo -ne "\\nHash type${R} Unknown${NC}""\\n\\n"
fi
echo -ne ${G}"Press any key to proceed....."${NC}
read -n 1 -s
}

#Say_something_smart
abo_ut () {
clear
echo ""
echo ""
echo -ne "               
 _______  _______  _______  _______  __   __  __   __ 
|       ||       ||       ||       ||  | |  ||  |_|  |
|    ___||    ___||_     _||  _____||  | |  ||       |
|   | __ |   |___   |   |  | |_____ |  |_|  ||       |
|   ||  ||    ___|  |   |  |_____  ||       ||       |
|   |_| ||   |___   |   |   _____| ||       || ||_|| |
|_______||_______|  |___|  |_______||_______||_|   |_|                                                    
              
                             
       ${G}GetSUM${NC} created in the office because it was getting pretty boring.
            Valuable feedback and suggestions are always welcome 
                 @ ${R}root@mtk911.cf${NC} or ${R}http://fb.com/MTK911${NC}"

echo ""
echo ""
echo ""
echo ""
echo ""
sleep 5
main_man
}

banner () {
echo -ne "


${R}                          MTKMTKMTKMTKMTKMTKMTKMTKMTKM${NC}
                            010011010101010001001011
${R}                          MTKMTKMTKMTKMTKMTKMTKMTKMTKM${NC}

                                                                          
${B}    M${NC}T${B}K                                  ${Y}M${NC}T${Y}K          ${NC}
${B}    M${NC}T${B}K M${NC}T${B}KM                        MT${NC}K${B}  ${Y}M${NC}T${Y}K          ${NC}   
${B}    M${NC}T${B}K M${NC}T${B}KMT                     MT${NC}K${B}MT  ${Y}M${NC}T${Y}K          ${NC}   
${B}    M${NC}T${B}K   M${NC}T${B}KMK                  MT${NC}K${B}MT   ${Y}M${NC}T${Y}K     M${NC}T${Y}K  ${NC}  
${B}    M${NC}T${B}K    M${NC}T${B}KMM                MT${NC}K${B}MT    ${Y}M${NC}T${Y}K    M${NC}T${Y}K   ${NC} 
${B}    M${NC}T${B}K     M${NC}T${B}KMT              MT${NC}K${B}MT     ${Y}M${NC}T${Y}K  M${NC}T${Y}KM    ${NC} 
${B}    M${NC}T${B}K       M${NC}T${B}KK            MT${NC}K${B}M       ${Y}M${NC}T${Y}K M${NC}T${Y}KMT    ${NC} 
${B}    M${NC}T${B}K         M${NC}T${B}K          M${NC}T${B}K         ${Y}M${NC}T${Y}K   M${NC}T${Y}KMT  ${NC} 
${B}    M${NC}T${B}K          M${NC}T${B}K        M${NC}T${B}K          ${Y}M${NC}T${Y}K      M${NC}T${Y}K ${NC}  
${B}    M${NC}T${B}K            M${NC}T${B}K    M${NC}T${B}K            ${Y}M${NC}T${Y}K          ${NC}
${B}    M${NC}T${B}K                                  ${Y}M${NC}T${Y}K          ${NC}   
${B}    M${NC}T${B}K                                  ${Y}M${NC}T${Y}K          ${NC}   
                                                            
                                                                                         
"
echo "SWYgeW91IGNhbiBzZWUgdGhpcyB0aGF0IG1lYW5zIHlvdSBhY3R1YWxseSBjYXJlIHdoYXQgeW91J3JlIHJ1bm5pbmcgb24geW91ciBjb21wdXRlciB3aGF0IHNlZW1zIHRvIGJlIHNvbWV0aGluZyB5b3UganVzdCBkb3dubG9hZGVkIGZyb20gYSByYW5kb20gZ3V5cyByZXBvc2l0b3J5IG92ZXIgdGhlIGludGVybmV0LiBGb3IgdGhhdCB5b3UgaGF2ZSBlYXJuZWQgbXkgcmVzcGVjdC4=" | base64 --decode
exit
}

#Emergency exit here
sh_exit () {
clear
echo "        Calculating the hash one password at a time"
echo -ne "
##~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
#                                        #
#           GetSUM hash cracker          #
#             Written by ${LG}MTK${NC}             #
#----------------------------------------#
#     Created by Open Source shared      #
#            as Open source              #
#    ${R}www.mtk911.cf${NC} | ${R}root[at]mtk911.cf${NC}   #
#                                        #
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~##

"

exit
}
while getopts ':^' catch; do
 case "$catch" in

  ^)
   banner 
   ;;

 esac
done



#FRONT_END
main_man(){
clear
echo ""
echo ""
echo -ne "

 _______  _______  _______  _______  __   __  __   __ 
|       ||       ||       ||       ||  | |  ||  |_|  |
|    ___||    ___||_     _||  _____||  | |  ||       |
|   | __ |   |___   |   |  | |_____ |  |_|  ||       |
|   ||  ||    ___|  |   |  |_____  ||       ||       |
|   |_| ||   |___   |   |   _____| ||       || ||_|| |
|_______||_______|  |___|  |_______||_______||_|   |_|                                                    
                             
     ${R} +-----------------------------------------+${NC}
     ${R} |${NC}  ${Y}1${NC}.  Crack SHA1                         ${R}|${NC}
     ${R} |${NC}  ${Y}2${NC}.  Crack SHA224                       ${R}|${NC}
     ${R} |${NC}  ${Y}3${NC}.  Crack SHA256                       ${R}|${NC}
     ${R} |${NC}  ${Y}4${NC}.  Crack SHA384                       ${R}|${NC}
     ${R} |${NC}  ${Y}5${NC}.  Crack SHA512                       ${R}|${NC}
     ${R} |${NC}  ${Y}6${NC}.  Crack MD5                          ${R}|${NC}
     ${R} |${NC}  ${Y}7${NC}.  Genrate Hash                       ${R}|${NC}
     ${R} |${NC}  ${Y}8${NC}.  Hash Identifier(Experimental)      ${R}|${NC}
     ${R} |${NC}  ${Y}0${NC}.  About GetSUM                       ${R}|${NC}
     ${R} |${NC}  ${R}q${NC}.  Quit                               ${R}|${NC}
     ${R} +-----------------------------------------+${NC}
"

read -r -p "[-] (Your choice?):" choice
case $choice in
1) sha_1 ;;
2) sha_224;;
3) sha_256 ;;
4) sha_384;;
5) sha_512;;
6) md_5 ;;
7) gen_hash;;
8) hash_id;;
0) abo_ut ;;
q|Q) sh_exit ;;
*) echo -ne ${RB}${UW}"\"$choice\"${NC} is not a valid choice"\\n; sleep 2; clear ;;
esac
main_man
}
main_man
