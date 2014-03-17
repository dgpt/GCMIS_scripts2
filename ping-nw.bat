@echo off
set _PRE_MSG=_________________
:start
if "%1" == "" goto end
echo %_PRE_MSG%
echo %1 ROUTER
ping gc%1-rtr
echo %_PRE_MSG%
echo %1 SWITCH 1
ping gc%1-sw1
echo %_PRE_MSG%
echo %1 SWITCH 2
ping gc%1-sw2
echo %_PRE_MSG%
echo %1 FIREWALL
ping gc%1-fw
echo %_PRE_MSG%
echo %1 PACKETSHAPER
ping gc%1-ps
echo %_PRE_MSG%
echo %1 ACCESS POINT 1
ping gc%1-ap1
echo %_PRE_MSG%
echo %1 ACCESS POINT 2
ping gc%1-ap2
echo %_PRE_MSG%
echo %1 ACCESS POINT 3
ping gc%1-ap3
echo %_PRE_MSG%
echo %1 ACCESS POINT 4
ping gc%1-ap4
shift
goto start
:end
