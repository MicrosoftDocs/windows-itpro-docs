---
title: Clear the Internet Explorer cache from a command line
description: Introduces command-line commands and a sample batch file for clearing the IE cache.
audience: ITPro
manager: msmets
author: ramakoni1
ms.author: ramakoni
ms.reviewer: ramakoni, DEV_Triage
ms.prod: internet-explorer
ms.technology:
ms.topic: kb-support
ms.custom: CI=111026
ms.localizationpriority: Normal
# localization_priority: medium
# ms.translationtype: MT
ms.date: 01/23/2020
---
# How to clear Internet Explorer cache by using the command line

This article outlines the procedure to clear the Internet Explorer cache by using the command line.

## Command line commands to clear browser cache

1. Delete history from the Low folder  
   `del /s /q C:\Users\\%username%\AppData\Local\Microsoft\Windows\History\low\* /ah`

2. Delete history  
   `RunDll32.exe InetCpl.cpl, ClearMyTracksByProcess 1`

3. Delete cookies  
   `RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2`

4. Delete temporary internet files  
   `RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8`

5. Delete form data  
   `RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16`

6. Delete stored passwords  
   `RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32`

7. Delete all  
   `RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255`

8. Delete files and settings stored by add-ons  
   `InetCpl.cpl,ClearMyTracksByProcess 4351`

If you upgraded from a previous version of Internet Explorer, you have to use the following commands to delete the files from older versions:  
`RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 9`

Command to reset Internet Explorer settings:  
`Rundll32.exe inetcpl.cpl ResetIEtoDefaults`

## Sample batch file to clear Internet Explorer cache files

A sample batch file is available that you can use to clear Internet Explorer cache files and other items. You can download the file from [https://msdnshared.blob.core.windows.net/media/2017/09/ClearIE_Cache.zip](https://msdnshared.blob.core.windows.net/media/2017/09/ClearIE_Cache.zip).

The batch file offers the following options:

- Delete Non-trusted web History (low-level hidden cleanup)
- Delete History
- Delete Cookies
- Delete Temporary Internet Files
- Delete Form Data
- Delete Stored Passwords
- Delete All
- Delete All "Also delete files and settings stored by add-ons"
- Delete IE10 and IE9 Temporary Internet Files
- Resets IE Settings
- EXIT

**Contents of the batch file**

```dos
@echo off
# This sample script is not supported under any Microsoft standard support program or service. 
# The sample script is provided AS IS without warranty of any kind. Microsoft further disclaims 
# all implied warranties including, without limitation, any implied warranties of merchantability 
# or of fitness for a particular purpose. The entire risk arising out of the use or performance of 
# the sample scripts and documentation remains with you. In no event shall Microsoft, its authors, 
# or anyone else involved in the creation, production, or delivery of the scripts be liable for any 
# damages whatsoever (including, without limitation, damages for loss of business profits, business 
# interruption, loss of business information, or other pecuniary loss) arising out of the use of or 
# inability to use the sample scripts or documentation, even if Microsoft has been advised of the 
# possibility of such damages

:home
cls
COLOR 00
echo Delete IE History
echo Please select the task you wish to run.
echo Pick one:
echo.
echo  1. Delete History
echo  2. Delete Cookies
echo  3. Delete Temporary Internet Files
echo  4. Delete Form Data
echo  5. Delete Stored Passwords
echo  6. Delete All
echo  7. Delete All "Also delete files and settings stored by add-ons"
echo  8. Delete IE10 and 9 Temporary Internet Files
echo  9. Reset IE Settings
echo  00. EXIT
:choice
Echo Hit a number [1-10] and press enter.
set /P CH=[1-10]

if "%CH%"=="1" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
if "%CH%"=="2" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
if "%CH%"=="3" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
if "%CH%"=="4" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
if "%CH%"=="5" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
if "%CH%"=="6" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
if "%CH%"=="7" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351
if "%CH%"=="8" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 9
if "%CH%"=="9" set x=rundll32.exe inetcpl.cpl ResetIEtoDefaults
if "%CH%"=="00" goto quit

%x%

goto Home
:quit
```
