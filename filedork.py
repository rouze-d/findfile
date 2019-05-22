#!/usr/bin/env python
#Inspire on goofile Coded by Thomas (G13) Richards <- Big Special Thanks. God Bless You.


import string
import httplib
import sys
import re
import getopt
import os

OREN = '\033[33m'
GREEN = '\033[32m'
WHITE = '\033[0m'
RED = '\033[91m'
BLUE = '\033[94m'
SysCls = 'clear'



global result
result =[]

def usage():
 print ""
 print "       -d: domain name (ex: devbank.com) or country code (ex: MY for [Malaysia]) for random target"
 print "       -f: filetype (ans,csv,doc,docx,log,lwp,mw,odp,ods,pdf,ppt,pptx,ps,tif,ttif,txt,rtf,sdb,wdb,wk,wki,wks,wku,wps,wri,xls,xlsx)\n"
# print "       -i: index of /*directory (admin,adminsator,adminator,administrators,secret,file,log,etc....)\n"
 print " example:./getfile -d devbank.com -f txt\n"# -i admin\n" 
 sys.exit()

def run(dmn,file):

	h = httplib.HTTP('www.google.com')
	h.putrequest('GET',"/search?num=500&q=site:"+dmn+"+filetype:"+file)
	#h.putrequest('GET',"/search?num=500000&q=site:"+dmn+"+filetype:"+file+"&start=10&end=50000")
    #h.putrequyest('GET',"/search?num=50000&q=site:"+dmn+"+filetype:"+file+"&start=1")
	h.putheader('Host', 'www.google.com')
	h.putheader('User-agent', 'Mozilla/5.0 (compatible; Googlebot/2.1; + http://www.google.com/bot.html)')
    #h.putheader('Referrer', 'www.google.com')
	h.putheader('Referrer', 'www."+dmn+"')
	h.endheaders()
	returncode, returnmsg, headers = h.getreply()
	data=h.getfile().read()
	data=re.sub('<b>','',data)
        for e in ('>','=','<','\\','(',')','"','http',':','//'):
		data = string.replace(data,e,' ')
	r1 = re.compile('[-_.a-zA-Z0-9.-_]*'+'\.'+file)	
	res = r1.findall(data) 
	return res 
	

def search(argv):
	global limit
	limit = 50000
	if len(sys.argv) < 2: 
		usage() 
	try :
	      opts, args = getopt.getopt(argv,"d:f:")
 
	except getopt.GetoptError:
  	     	usage()
		sys.exit()
	
	for opt,arg in opts :
    	   	if opt == '-f' :
			file=arg
		elif opt == '-d':
			dmn=arg
                #if opt == '-i' :
		#elif opt == '-i' :
                        #tir=arg
	
        print ""
	print " Searching "+GREEN+""+file+""+WHITE+" file on "+BLUE+"G"+RED+"o"+OREN+"o"+BLUE+"g"+GREEN+"l"+RED+"e"+WHITE+" dork in "+GREEN+""+dmn+"" +WHITE+" "
	print " ========================================================================================================="


	cant = 0

	while cant < limit:
		res = run(dmn,file)
		for x in res:
			if result.count(x) == 0:
        			result.append(x)
		cant+=5000
			

	print "\n Files found:"
	print " ====================\n"
	t=0
	if result==[]:
		print " No results were found"
	else:
		for x in result:
#			x= re.sub('<li class="first">','',x)
#			x= re.sub('</li>','',x)
			x= re.sub('<cite class="_Rm">','',x)
			x= re.sub('</cite>','',x)
			print x
			t+=1
	print " ====================\n"
	

if __name__ == "__main__":
        try: search(sys.argv[1:])
	except KeyboardInterrupt:
		print " Search interrupted by user.."
	except:
		sys.exit()
