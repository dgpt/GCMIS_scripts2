@echo off
REM Date Created: 10/01/12
REM Date Revision: 12/11/13 by Spencer Miller
REM Notes: This batch queries all Retail domain controllers for a user specified computer name. The asterix is the wildcard.

:start
if "%1" == "" goto end
Echo HAMMER
dsquery computer -name *%1* -s HAMMER.RETAIL.GUITARCENTER.COM 
Echo MOTORHEAD
dsquery computer -name *%1* -s MOTORHEAD.RETAIL.GUITARCENTER.COM 
Echo TUNER
dsquery computer -name *%1* -s TUNER.RETAIL.GUITARCENTER.COM 
ping -n 1 127.0.0.1>NUL
shift
goto start
:end
