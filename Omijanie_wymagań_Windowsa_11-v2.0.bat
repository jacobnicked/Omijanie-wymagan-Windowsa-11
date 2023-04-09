{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww25100\viewh15220\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 @echo off\
set "params=%*"\
cd /d "%~dp0" && ( if exist "%temp%\\getadmin.vbs" delete "%temp%\\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\\getadmin.vbs" && "%temp%\\getadmin.vbs" && exit /B )\
title Omijanie wymaga\uc0\u324  Windowsa 11 - v2.0\
echo =============================================\
echo =              Omijanie wymaga\uc0\u324  Windowsa 11 - v2.0             =\
echo =============================================\
echo = Utworzony przez Jacob Nicked on 9 kwietnia 2023 roku =\
echo =============================================\
echo -\
echo Witaj, %username%! \
echo -\
echo Te narz\uc0\u281 dzie sprawi, \u380 e Tw\'f3j komputer b\u281 dzie w stanie zosta\u263  zaktualizowany do Windowsa 11 lub wycofa\u263  wprowadzone zmiany.\
echo Wpisz \'93tak\'94, je\uc0\u347 li chcesz, aby Tw\'f3j niewspierany PC by\u322  w stanie zosta\u263  zaktualizowany do Windowsa 11 lub \'93nie\'94, je\u347 li nie chcesz.\
echo Je\uc0\u347 li chcesz wycofa\u263  wprowadzone zmiany, wpisz \'93cofnij\'94.\
echo -\
echo Te narz\uc0\u281 dzie modyfikuje rejestr, co oznacza, \u380 e system operacyjny zostanie zmodyfikowany.\
echo Nie powinno ono uszkodzi\uc0\u263  Twojego PC, ale je\u347 li jednak si\u281  to zdarzy, NIE jestem za to odpowiedzialny - u\u380 ywasz tego narz\u281 dzia na w\u322 asn\u261  odpowiedzialno\u347 \u263 .\
echo -\
echo Wpisz odpowied\uc0\u378 :\
set/p \'93odpowiedz="\
\
if %odpowiedz%==tak goto tak\
if %odpowiedz%==no goto no\
if %odpowiedz%==cofnij goto cofnij\
\
	:tak\
	echo -\
    reg add HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassTPMCheck /t REG_DWORD /d 1 /f\
    reg add HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassRAMCheck /t REG_DWORD /d 1 /f\
    reg add HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassSecureBootCheck /t REG_DWORD /d 1 /f\
    reg add HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassCPUCheck /t REG_DWORD /d 1 /f\
    reg add HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\MoSetup\\ /v AllowUpgradesWithUnsupportedTPMOrCPU /t REG_DWORD /d 1 /f\
	echo -\
    echo Tw\'f3j komputer mo\uc0\u380 e teraz by\u263  zaktualizowany do Windowsa 11! Naci\u347 nij dowolny klawisz, aby wyj\u347 \u263  z programu.\
	pause > nul\
	exit\
\
	:no \
	exit\
\
	:cofnij\
	echo -\
    reg delete HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassTPMCheck /f\
    reg delete HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassRAMCheck /f\
    reg delete HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassSecureBootCheck /f\
    reg delete HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\LabConfig\\ /v BypassCPUCheck /f\
    reg delete HKEY_LOCAL_MACHINE\\SYSTEM\\Setup\\MoSetup\\ /v AllowUpgradesWithUnsupportedTPMOrCPU /f\
	echo -\
    echo Tw\'f3j komputer nie mo\uc0\u380 e ju\u380  by\u263  zaktualizowany do Windowsa 11. Naci\u347 nij dowolny klawisz, aby wyj\u347 \u263  z programu.\
	pause > nul\
	exit}