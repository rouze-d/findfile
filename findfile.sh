#!/bin/bash

# --- internet check
#ping -c 1 www.google.com  
#if [ "$?" != 0 ];then
#    clear
#    cat<<"EOT" | lolcat -p 0.3
#
#  ┳━┓  o  ┏┓┓  ┳━┓    ┳━┓  o  ┳    ┳━┓
#  ┣━   ┃  ┃┃┃  ┃ ┃    ┣━   ┃  ┃    ┣━ 
#  ┇    ┇  ┇┗┛  ┇━┛    ┇    ┇  ┇━┛  ┻━┛
#EOT
#    echo ""
#    echo " Error Run This Script"
#    echo " You Need Internet Connection"
#    echo ""
#    exit 1
#fi
# ---

YELLOW=$(tput setaf 3)
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
GGG=$(tput setaf 5)
CYN=$(tput setaf 7)
BOLD=$(tput bold)
STAND=$(tput sgr 0)



U="$2"


if [ -z $U ]; then
    echo "
  ┳━┓  o  ┏┓┓  ┳━┓    ┳━┓  o  ┳    ┳━┓
  ┣━   ┃  ┃┃┃  ┃ ┃    ┣━   ┃  ┃    ┣━ 
  ┇    ┇  ┇┗┛  ┇━┛    ┇    ┇  ┇━┛  ┻━┛" | lolcat -p 0.7
    echo -e "                                by-$BOLD rouze_d$STAND"
    echo -e "$BLUE try to find file include:"
    echo -e " log, modifed, backup, ssistant's workstation, etc... $STAND"
    echo " bash $0 --url https://www.target.com"
    exit
fi


rm -f test.lst dorkfile.lst


cat<<"EOT" | lolcat -p 0.3

  ┳━┓  o  ┏┓┓  ┳━┓    ┳━┓  o  ┳    ┳━┓
  ┣━   ┃  ┃┃┃  ┃ ┃    ┣━   ┃  ┃    ┣━ 
  ┇    ┇  ┇┗┛  ┇━┛    ┇    ┇  ┇━┛  ┻━┛
EOT
echo -e "                           by-$BOLD rouze_d$STAND"
#sleep 0.2 && echo -e "$BOLD$RED FindFile $STAND"
echo -e "$BLUE try to find file include:"
echo -e " log, modifed, backup, ssistant's workstation, etc... $STAND"
#echo -e " "
#echo -e " Input Full URL Target : \c"
#read U
#echo -e "$RED$BOLD Clack 'Enter' to Continue $STAND\c"
#read enter
echo ""

#-----
# domain dork search

domain=$(echo $U | cut -d '/' -f 3 |cut -d '.' -f 2,3,4,5)

# -------- dirb

echo -e ".ext~ " >> test.lst
echo -e ".ext.swp" >> test.lst
echo -e "~" >> test.lst
echo -e "_" >> test.lst
echo -e ".0" >> test.lst
echo -e "%00" >> test.lst
echo -e "%01" >> test.lst
echo -e ".1" >> test.lst
echo -e ".2" >> test.lst
echo -e "%20-%20Copy." >> test.lst
echo -e "%20%28copy%29." >> test.lst
echo -e "%20copy." >> test.lst
echo -e "%23" >> test.lst
echo -e "~admin" >> test.lst
echo -e ".arc" >> test.lst
echo -e ".bac" >> test.lst
echo -e ".back" >> test.lst
echo -e "~backup" >> test.lst
echo -e "~backup." >> test.lst
echo -e "-backup" >> test.lst
echo -e "-backup." >> test.lst
echo -e ".~backup" >> test.lst
echo -e ".~backup." >> test.lst
echo -e ".-backup" >> test.lst
echo -e ".-backup." >> test.lst
echo -e "_bak" >> test.lst
echo -e "-bak" >> test.lst
echo -e ".bak" >> test.lst
echo -e ".bak.sql" >> test.lst
echo -e ".bak.sql.bz2" >> test.lst
echo -e ".bak.sql.gz" >> test.lst
echo -e ".bak.sql.tar.gz" >> test.lst
echo -e ".bakup" >> test.lst
echo -e ".bck" >> test.lst
echo -e "~bin" >> test.lst
echo -e ".bk" >> test.lst
echo -e "-bkp." >> test.lst
echo -e ".bkp" >> test.lst
echo -e ".bzr" >> test.lst
echo -e "composer.lock" >> test.lst
echo -e ".conf" >> test.lst
echo -e ".copy" >> test.lst
echo -e "Copy_" >> test.lst
echo -e ".cs" >> test.lst
echo -e ".csproj" >> test.lst
echo -e "CVS" >> test.lst
echo -e ".cvsignore" >> test.lst
echo -e "~database" >> test.lst
echo -e ".default" >> test.lst
echo -e "~dmr1" >> test.lst
echo -e ".DS_Store" >> test.lst
echo -e ".edu.my" >> test.lst
echo -e "error_log" >> test.lst
echo -e "file.zip" >> test.lst
echo -e ".file.zip" >> test.lst
echo -e ".git" >> test.lst
echo -e ".gitignore" >> test.lst
echo -e ".hg" >> test.lst
echo -e "htaccess" >> test.lst
echo -e "~.htaccess" >> test.lst
echo -e ".htaccess" >> test.lst
echo -e ".HTACCESS" >> test.lst
echo -e ".htcfk.t6c" >> test.lst
echo -e "~htpasswd" >> test.lst
echo -e ".htpasswrd" >> test.lst
echo -e ".git" >> test.lst
echo -e ".idea" >> test.lst
echo -e ".inc" >> test.lst
echo -e "_localhost.swo" >> test.lst
echo -e "log" >> test.lst
echo -e "~log" >> test.lst
echo -e "logs" >> test.lst
echo -e "~logs" >> test.lst
echo -e "logs.txt" >> test.lst
echo -e ".lst" >> test.lst
echo -e ".my" >> test.lst
echo -e ".my-bkp." >> test.lst
echo -e ".my.swp" >> test.lst
echo -e ".my.tar" >> test.lst
echo -e "~nobody/etc/passwd" >> test.lst
echo -e ".nsx" >> test.lst
echo -e "_old" >> test.lst
echo -e ".old" >> test.lst
echo -e ".org" >> test.lst
echo -e ".orig" >> test.lst
echo -e ".original" >> test.lst
echo -e "passwd" >> test.lst
echo -e "~passwd" >> test.lst
echo -e ".passwd" >> test.lst
echo -e "passwrd" >> test.lst
echo -e "~passwrd" >> test.lst
echo -e "phpinfo.php" >> test.lst
echo -e ".rar" >> test.lst
echo -e "robots.txt" >> test.lst
echo -e "Robots.txt" >> test.lst
echo -e "ROBOTS.txt" >> test.lst
echo -e "~root" >> test.lst
echo -e "~root/" >> test.lst
echo -e ".sav" >> test.lst
echo -e ".save" >> test.lst
echo -e ".saved" >> test.lst
echo -e ".sql" >> test.lst
echo -e ".sql.gz" >> test.lst
echo -e "~stat" >> test.lst
echo -e "stats" >> test.lst
echo -e "~stats" >> test.lst
echo -e ".svn" >> test.lst
echo -e ".svnignore" >> test.lst
echo -e ".swo" >> test.lst
echo -e ".swp" >> test.lst
echo -e "~sys" >> test.lst
echo -e ".tar" >> test.lst
echo -e ".tar.gz" >> test.lst
echo -e "~temp" >> test.lst
echo -e ".temp" >> test.lst
echo -e ".tmp" >> test.lst
echo -e ".tpl" >> test.lst
echo -e ".txt" >> test.lst
echo -e ".vb" >> test.lst
echo -e ".zip" >> test.lst
echo -e "boot.iniv" >> test.lst
echo -e "config.dat" >> test.lst
echo -e "webserevr.ini" >> test.lst
echo -e "autoexec.bat" >> test.lst
echo -e "etc/passwd" >> test.lst
echo -e "passwd" >> test.lst
echo -e "win.ini" >> test.lst

url1=`echo -e $U | cut -d '/' -f 3 | cut -d '.' -f 2,3,4,5`
echo -e "$url1.0">> test.lst
echo -e "$url1.1">> test.lst
echo -e "$url1.2">> test.lst
echo -e "$url1%20-%20Copy.">> test.lst
echo -e "$url1%20%28copy%29.">> test.lst
echo -e "$url1%20copy.">> test.lst
echo -e "$url1%23">> test.lst
echo -e "$url1~admin">> test.lst
echo -e "$url1.arc">> test.lst
echo -e "$url1.bac">> test.lst
echo -e "$url1.back">> test.lst
echo -e "$url1~backup">> test.lst
echo -e "$url1~backup.">> test.lst
echo -e "$url1-backup">> test.lst
echo -e "$url1-backup.">> test.lst
echo -e "$url1.~backup">> test.lst
echo -e "$url1.~backup.">> test.lst
echo -e "$url1.-backup">> test.lst
echo -e "$url1.-backup.">> test.lst
echo -e "$url1.bak">> test.lst
echo -e "$url1.bak.sql">> test.lst
echo -e "$url1.bak.sql.bz2">> test.lst
echo -e "$url1.bak.sql.gz">> test.lst
echo -e "$url1.bak.sql.tar.gz">> test.lst
echo -e "$url1.bakup">> test.lst
echo -e "$url1.bck">> test.lst
echo -e "$url1~bin">> test.lst
echo -e "$url1-bkp.">> test.lst
echo -e "$url1.bkp">> test.lst
echo -e "$url1.conf">> test.lst
echo -e "$url1\aCopy_">> test.lst
echo -e "$url1.cs">> test.lst
echo -e "$url1.csproj">> test.lst
echo -e "$url1~database">> test.lst
echo -e "$url1~dmr1">> test.lst
echo -e "$url1.my">> test.lst
echo -e "$url1\aerror_log">> test.lst
echo -e "$url1\ahtaccess">> test.lst
echo -e "$url1~.htaccess">> test.lst
echo -e "$url1.htaccess">> test.lst
echo -e "$url1~htpasswd">> test.lst
echo -e "$url1.htpasswrd">> test.lst
echo -e "$url1.inc">> test.lst
echo -e "$url1\alog">> test.lst
echo -e "$url1~log">> test.lst
echo -e "$url1\alogs">> test.lst
echo -e "$url1~logs">> test.lst
echo -e "$url1\alogs.txt">> test.lst
echo -e "$url1.lst">> test.lst
echo -e "$url1.my">> test.lst
echo -e "$url1.my-bkp.">> test.lst
echo -e "$url1.my.swp">> test.lst
echo -e "$url1.my.tar">> test.lst
echo -e "$url1~nobody/etc/passwd">> test.lst
echo -e "$url1.nsx">> test.lst
echo -e "$url1.old">> test.lst
echo -e "$url1.orig">> test.lst
echo -e "$url1.original">> test.lst
echo -e "$url1\apasswd">> test.lst
echo -e "$url1~passwd">> test.lst
echo -e "$url1.passwd">> test.lst
echo -e "$url1\apasswrd">> test.lst
echo -e "$url1~passwrd">> test.lst
echo -e "$url1\aphpinfo.php">> test.lst
echo -e "$url1.rar">> test.lst
echo -e "$url1\a.robots.txt">> test.lst
echo -e "$url1\a.Robots.txt">> test.lst
echo -e "$url1\a.ROBOTS.txt">> test.lst
echo -e "$url1~root">> test.lst
echo -e "$url1~root/">> test.lst
echo -e "$url1.sav">> test.lst
echo -e "$url1.save">> test.lst
echo -e "$url1.saved">> test.lst
echo -e "$url1.sql">> test.lst
echo -e "$url1.sql.gz">> test.lst
echo -e "$url1~stat">> test.lst
echo -e "$url1\astats">> test.lst
echo -e "$url1~stats">> test.lst
echo -e "$url1.swo">> test.lst
echo -e "$url1.swp">> test.lst
echo -e "$url1~sys">> test.lst
echo -e "$url1.tar">> test.lst
echo -e "$url1.tar.gz">> test.lst
echo -e "$url1~temp">> test.lst
echo -e "$url1.temp">> test.lst
echo -e "$url1.tmp">> test.lst
echo -e "$url1.tpl">> test.lst
echo -e "$url1.txt">> test.lst
echo -e "$url1.vb">> test.lst
echo -e "$url1.zip">> test.lst
echo -e "Copy_(2)_of_$url1" >> test.lst
echo -e "Copy_of_$url1" >> test.lst
echo -e "%20-%20Copy.$url1" >> test.lst
echo -e "_$url1" >> test.lst
echo -e "~$url1" >> test.lst
echo -e "~%24$url1" >> test.lst
echo -e "].1$url1" >> test.lst
echo -e "Copy_(1)_of_$url1" >> test.lst
echo -e "Copy%20$url1" >> test.lst

url2=`echo -e  $U | cut -d '/' -f 3`
echo -e "$url2.0">> test.lst
echo -e "$url2.1">> test.lst
echo -e "$url2.2">> test.lst
echo -e "$url2%20-%20Copy.">> test.lst
echo -e "$url2%20%28copy%29.">> test.lst
echo -e "$url2%20copy.">> test.lst
echo -e "$url2%23">> test.lst
echo -e "$url2~admin">> test.lst
echo -e "$url2.arc">> test.lst
echo -e "$url2.bac">> test.lst
echo -e "$url2.back">> test.lst
echo -e "$url2~backup">> test.lst
echo -e "$url2~backup.">> test.lst
echo -e "$url2-backup">> test.lst
echo -e "$url2-backup.">> test.lst
echo -e "$url2.~backup">> test.lst
echo -e "$url2.~backup.">> test.lst
echo -e "$url2.-backup">> test.lst
echo -e "$url2.-backup.">> test.lst
echo -e "$url2.bak">> test.lst
echo -e "$url2.bak.sql">> test.lst
echo -e "$url2.bak.sql.bz2">> test.lst
echo -e "$url2.bak.sql.gz">> test.lst
echo -e "$url2.bak.sql.tar.gz">> test.lst
echo -e "$url2.bakup">> test.lst
echo -e "$url2.bck">> test.lst
echo -e "$url2~bin">> test.lst
echo -e "$url2-bkp.">> test.lst
echo -e "$url2.bkp">> test.lst
echo -e "$url2.conf">> test.lst
echo -e "$url2\aCopy_">> test.lst
echo -e "$url2.cs">> test.lst
echo -e "$url2.csproj">> test.lst
echo -e "$url2~database">> test.lst
echo -e "$url2~dmr1">> test.lst
echo -e "$url2.my">> test.lst
echo -e "$url2\aerror_log">> test.lst
echo -e "$url2\ahtaccess">> test.lst
echo -e "$url2~.htaccess">> test.lst
echo -e "$url2.htaccess">> test.lst
echo -e "$url2~htpasswd">> test.lst
echo -e "$url2.htpasswrd">> test.lst
echo -e "$url2.inc">> test.lst
echo -e "$url2\alog">> test.lst
echo -e "$url2~log">> test.lst
echo -e "$url2\alogs">> test.lst
echo -e "$url2~logs">> test.lst
echo -e "$url2\alogs.txt">> test.lst
echo -e "$url2.lst">> test.lst
echo -e "$url2.my">> test.lst
echo -e "$url2.my-bkp.">> test.lst
echo -e "$url2.my.swp">> test.lst
echo -e "$url2.my.tar">> test.lst
echo -e "$url2~nobody/etc/passwd">> test.lst
echo -e "$url2.nsx">> test.lst
echo -e "$url2.old">> test.lst
echo -e "$url2.orig">> test.lst
echo -e "$url2.original">> test.lst
echo -e "$url2\apasswd">> test.lst
echo -e "$url2~passwd">> test.lst
echo -e "$url2.passwd">> test.lst
echo -e "$url2\apasswrd">> test.lst
echo -e "$url2~passwrd">> test.lst
echo -e "$url2\aphpinfo.php">> test.lst
echo -e "$url2.rar">> test.lst
echo -e "$url2\a.robots.txt">> test.lst
echo -e "$url2\a.Robots.txt">> test.lst
echo -e "$url2\a.ROBOTS.txt">> test.lst
echo -e "$url2~root">> test.lst
echo -e "$url2~root/">> test.lst
echo -e "$url2.sav">> test.lst
echo -e "$url2.save">> test.lst
echo -e "$url2.saved">> test.lst
echo -e "$url2.sql">> test.lst
echo -e "$url2.sql.gz">> test.lst
echo -e "$url2~stat">> test.lst
echo -e "$url2\astats">> test.lst
echo -e "$url2~stats">> test.lst
echo -e "$url2.swo">> test.lst
echo -e "$url2.swp">> test.lst
echo -e "$url2~sys">> test.lst
echo -e "$url2.tar">> test.lst
echo -e "$url2.tar.gz">> test.lst
echo -e "$url2~temp">> test.lst
echo -e "$url2.temp">> test.lst
echo -e "$url2.tmp">> test.lst
echo -e "$url2.tpl">> test.lst
echo -e "$url2.txt">> test.lst
echo -e "$url2.my">> test.lst
echo -e "$url2.vb">> test.lst
echo -e "$url2.zip">> test.lst
echo -e "Copy_(2)_of_$url2" >> test.lst
echo -e "Copy_of_$url2" >> test.lst
echo -e "%20-%20Copy.$url2" >> test.lst
echo -e "_$url2" >> test.lst
echo -e "~$url2" >> test.lst
echo -e "~%24$url2" >> test.lst
echo -e "].1$url2" >> test.lst
echo -e "Copy_(1)_of_$url2" >> test.lst
echo -e "Copy%20$url2" >> test.lst

url3=`echo -e $U | cut -d '/' -f 3 | cut -d '.' -f 2`
echo -e "$url3~" >> test.lst
echo -e "$url3\a_" >> test.lst
echo -e "$url3.0" >> test.lst
echo -e "$url3%00" >> test.lst
echo -e "$url3%01" >> test.lst
echo -e "$url3.1" >> test.lst
echo -e "$url3.2" >> test.lst
echo -e "$url3%20-%20Copy." >> test.lst
echo -e "$url3%20%28copy%29." >> test.lst
echo -e "$url3%20copy." >> test.lst
echo -e "$url3%23" >> test.lst
echo -e "$url3~admin" >> test.lst
echo -e "$url3.arc" >> test.lst
echo -e "$url3.bac" >> test.lst
echo -e "$url3.back" >> test.lst
echo -e "$url3~backup" >> test.lst
echo -e "$url3~backup." >> test.lst
echo -e "$url3-backup" >> test.lst
echo -e "$url3-backup." >> test.lst
echo -e "$url3.~backup" >> test.lst
echo -e "$url3.~backup." >> test.lst
echo -e "$url3.-backup" >> test.lst
echo -e "$url3.-backup." >> test.lst
echo -e "$url3\a_bak" >> test.lst
echo -e "$url3-bak" >> test.lst
echo -e "$url3.bak" >> test.lst
echo -e "$url3.bak.sql" >> test.lst
echo -e "$url3.bak.sql.bz2" >> test.lst
echo -e "$url3.bak.sql.gz" >> test.lst
echo -e "$url3.bak.sql.tar.gz" >> test.lst
echo -e "$url3.bakup" >> test.lst
echo -e "$url3.bck" >> test.lst
echo -e "$url3~bin" >> test.lst
echo -e "$url3.bk" >> test.lst
echo -e "$url3-bkp." >> test.lst
echo -e "$url3.bkp" >> test.lst
echo -e "$url3.bzr" >> test.lst
echo -e "$url3\acomposer.lock" >> test.lst
echo -e "$url3.conf" >> test.lst
echo -e "$url3.copy" >> test.lst
echo -e "$url3\aCopy_" >> test.lst
echo -e "$url3.cs" >> test.lst
echo -e "$url3.csproj" >> test.lst
echo -e "$url3\aCVS" >> test.lst
echo -e "$url3.cvsignore" >> test.lst
echo -e "$url3~database" >> test.lst
echo -e "$url3.default" >> test.lst
echo -e "$url3~dmr1" >> test.lst
echo -e "$url3.DS_Store" >> test.lst
echo -e "$url3.edu.my" >> test.lst
echo -e "$url3\aerror_log" >> test.lst
echo -e "$url3.git" >> test.lst
echo -e "$url3.gitignore" >> test.lst
echo -e "$url3.hg" >> test.lst
echo -e "$url3\ahtaccess" >> test.lst
echo -e "$url3~.htaccess" >> test.lst
echo -e "$url3.htaccess" >> test.lst
echo -e "$url3.htcfk.t6c" >> test.lst
echo -e "$url3~htpasswd" >> test.lst
echo -e "$url3.htpasswrd" >> test.lst
echo -e "$url3.idea" >> test.lst
echo -e "$url3.inc" >> test.lst
echo -e "$url3\a_localhost.swo" >> test.lst
echo -e "$url3\alog" >> test.lst
echo -e "$url3~log" >> test.lst
echo -e "$url3\alogs" >> test.lst
echo -e "$url3~logs" >> test.lst
echo -e "$url3\alogs.txt" >> test.lst
echo -e "$url3.lst" >> test.lst
echo -e "$url3.my" >> test.lst
echo -e "$url3.my-bkp." >> test.lst
echo -e "$url3.my.swp" >> test.lst
echo -e "$url3.my.tar" >> test.lst
echo -e "$url3~nobody/etc/passwd" >> test.lst
echo -e "$url3.nsx" >> test.lst
echo -e "$url3\a_old" >> test.lst
echo -e "$url3.old" >> test.lst
echo -e "$url3.org" >> test.lst
echo -e "$url3.orig" >> test.lst
echo -e "$url3.original" >> test.lst
echo -e "$url3\apasswd" >> test.lst
echo -e "$url3~passwd" >> test.lst
echo -e "$url3.passwd" >> test.lst
echo -e "$url3\apasswrd" >> test.lst
echo -e "$url3~passwrd" >> test.lst
echo -e "$url3\aphpinfo.php" >> test.lst
echo -e "$url3.rar" >> test.lst
echo -e "$url3\arobots.txt" >> test.lst
echo -e "$url3\aRobots.txt" >> test.lst
echo -e "$url3\aROBOTS.txt" >> test.lst
echo -e "$url3~root" >> test.lst
echo -e "$url3~root/" >> test.lst
echo -e "$url3.sav" >> test.lst
echo -e "$url3.save" >> test.lst
echo -e "$url3.saved" >> test.lst
echo -e "$url3.sql" >> test.lst
echo -e "$url3.sql.gz" >> test.lst
echo -e "$url3~stat" >> test.lst
echo -e "$url3\astats" >> test.lst
echo -e "$url3~stats" >> test.lst
echo -e "$url3.svn" >> test.lst
echo -e "$url3.svnignore" >> test.lst
echo -e "$url3.swo" >> test.lst
echo -e "$url3.swp" >> test.lst
echo -e "$url3~sys" >> test.lst
echo -e "$url3.tar" >> test.lst
echo -e "$url3.tar.gz" >> test.lst
echo -e "$url3~temp" >> test.lst
echo -e "$url3.temp" >> test.lst
echo -e "$url3.tmp" >> test.lst
echo -e "$url3.tpl" >> test.lst
echo -e "$url3.txt" >> test.lst
echo -e "$url3.my" >> test.lst
echo -e "$url3.vb" >> test.lst
echo -e "$url3.zip" >> test.lst
echo -e "Copy_(2)_of_$url3" >> test.lst
echo -e "Copy_of_$url3" >> test.lst
echo -e "%20-%20Copy.$url3" >> test.lst
echo -e "_$url3" >> test.lst
echo -e "~$url3" >> test.lst
echo -e "~%24$url3" >> test.lst
echo -e "].1$url3" >> test.lst
echo -e "Copy_(1)_of_$url3" >> test.lst
echo -e "Copy%20$url3" >> test.lst



wfuzz -c -z file,test.lst --sc 200,401,403 $U/FUZZ


echo "
Here Tips How Bypassed Some '403' Directory
site.com/secret     ==> 403
site.com/secret$YELLOW/$STAND   ==> 200
site.com/secret$YELLOW/.$STAND  ==> 200
site.com/secret$YELLOW//$STAND   ==> 200
site.com/secret$YELLOW/./$STAND  ==> 200
"


echo -e ""
echo -e "
 ▄▄▄▄    ▄▄▄▄  ▄▄▄▄▄  ▄    ▄
 █   ▀▄ ▄▀  ▀▄ █   ▀█ █  ▄▀ 
 █    █ █    █ █▄▄▄▄▀ █▄█   
 █    █ █    █ █   ▀▄ █  █▄ 
 █▄▄▄▀   █▄▄█  █    ▀ █   ▀▄
" | lolcat -p 0.7

echo -e "$STAND\n$RED$BOLD Klik Enter for Continue find file.. \c$STAND"
read enter

rm -f dorkfile.lst

# -------- googfile
echo -e "
ans
csv
conf
ext
db
doc
docx
git
gz
ini
log
lwp
mdb
mw
odp
ods
pdf
ppt
pptx
ps
rar
rtf
sdb
sig
sql
tar
tif
ttif
txt
swp
wdb
wk
wki
wks
wku
wps
wri
xls
xlsx
xml
zip
" >> dorkfile.lst

#--
#omm=$(echo -e "https://duckduckgo.com/?q=filetype:pdf+site:$domain&t=k_")
#lynx $omm -force_secure -dump -listonly >> result.lst
#--

echo "
++++++++++++++
  DUCKDUCKGO
++++++++++++++
"
for x in `cat dorkfile.lst`
do
echo -e "DuckDuckGo find $x file on $domain"
timeout 10 lynx "https://duckduckgo.com/?q=filetype:$x+site:$domain&t=opera&ia=web" -force_secure -dump -listonly | grep -iE '\.'$x | cut -d '=' -f 3,4,5,6,7
done

echo "
++++++++++++++
     BING
++++++++++++++
"
for x in `cat dorkfile.lst`
do
echo -e "Bing find $x file on $domain"
timeout 10 lynx "https://www.bing.com/search?q=filetype:$x+site:$domain&go=Submit&qs=ds&form=QBLH" -force_secure -dump -listonly | cut -d '.' -f 2,3,4,5,6,7,8,9 | grep -iE '\.'$x
done

echo "
++++++++++++++
    GOOGLE
++++++++++++++
"
for x in `cat dorkfile.lst`
do
echo -e "Google find $x file on $domain"
timeout 10 lynx "https://www.google.com/search?client=firefox-b-d&q=filetype:$x+site:$domain" -force_secure -dump -listonly | grep -iE '\.'$x | cut -d '=' -f 2,3,4,5,6
done


#cat result1.lst | grep -iE '\.'$x | cut -d '=' -f 3,4,5,6,7
#cat result2.lst | cut -d '.' -f 2,3,4,5,6,7,8,9 | grep -iE '\.'$x
#cat result3.lst | grep -iE '\.'$x | cut -d '=' -f 2,3,4,5,6
rm -f result1.lst result2.lst result3.lst test.lst dorkfile.lst

echo ""
echo -e "$BOLD$GREEN Have A Nice Day$STAND"
