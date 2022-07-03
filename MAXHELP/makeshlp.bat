@echo off
REM $Header:   P:/PVCS/MAX/MAXHELP/MAKESHLP.SRV   1.0   06 Sep 1995 14:22:02   HENRY  $
REM Makeshlp.src - C preprocessor input for MAKESHLP.BAT
REM Copyright (C) 1995 Qualitas, Inc.  GNU General Public License version 3.

REM -- Ensure help output directory exists
vdir -c hlp

REM -- First make map file from resource.h
xc /r hlp\setup.hmc hlp\_setup.hm

REM Makehelp subroutine - generate help map file for a single project
REM %1 is the relative path of the RESOURCE.H file to process.
REM %2 is a prefix for symbols
REM %3 is a hex prefix for mappings (0x000, 0x008, 0x010, 0x018, etc.)

rem echo. >>hlp\_Setup.hm
rem echo. >>hlp\_Setup.hm
rem echo 
rem echo. >>hlp\_Setup.hm
rem echo 
rem makehm ID_,ID_,0 IDM_,IDM_,0 %MAXROOT%include\sethelp.h >>hlp\_Setup.hm
rem echo. >>hlp\_QDSetup.hm

REM -- Extract sections we need from QDSETUP.HPJ
%MAXROOT%tools\getsect SETUP.hpj windows >hlp\SETUP.win
%MAXROOT%tools\getsect SETUP.hpj config	 >hlp\SETUP.cfg
%MAXROOT%tools\getsect SETUP.hpj map	 >hlp\SETUP.hm

REM -- Make help for setup
call %MAXROOT%tools\hcp _setup.hpj

echo.
