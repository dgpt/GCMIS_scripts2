@echo off
REM Date Created: 09/07/12
REM Date Revision: 12/11/13 by Spencer Miller
REM Notes: This batch queries all Domestic domain controllers for a user specified computer name. The asterix is the wildcard.

:start
if "%1" == "" goto end
Echo 		50CENT
dsquery computer -name *%1* -s 50CENT.DOMESTIC.GUITARCENTER.COM 
Echo 		DMC
dsquery computer -name *%1* -s DMC.DOMESTIC.GUITARCENTER.COM 
Echo 		ICET
dsquery computer -name *%1* -s ICET.DOMESTIC.GUITARCENTER.COM 
Echo 		JAYZ
dsquery computer -name *%1* -s JAYZ.DOMESTIC.GUITARCENTER.COM 
Echo 		KRSONE
dsquery computer -name *%1* -s KRSONE.DOMESTIC.GUITARCENTER.COM 
Echo 		KURUPT
dsquery computer -name *%1* -s KURUPT.DOMESTIC.GUITARCENTER.COM 
Echo 		LILJON
dsquery computer -name *%1* -s LILJON.DOMESTIC.GUITARCENTER.COM 
ping -n 1 127.0.0.1>NUL
shift
goto start
:end
