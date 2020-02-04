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
ms.custom: CI=111020
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

```console
@echo off
::  AxelR Test Batch
::  tested on Windows 8 + IE10, Windows7 + IE9

:home
cls
COLOR 00
echo Delete IE History
echo Please select the task you wish to run.
echo Pick one:
echo.
echo  1. Delete Non-trusted web History(low level hidden clean up)
echo  2. Delete History
echo  3. Delete Cookies
echo  4. Delete Temporary Internet Files
echo  5. Delete Form Data
echo  6. Delete Stored Passwords
echo  7. Delete All
echo  8. Delete All "Also delete files and settings stored by add-ons"
echo  9. Delete IE10 and 9 Temporary Internet Files
echo  10. Reset IE Settings
echo  77. EXIT
:choice
Echo Hit a number [1-10] and press enter.
set /P CH=[1-10]

if "%CH%"=="1" set x=del /s /q C:\Users\%username%\AppData\Local\Microsoft\Windows\History\low\* /ah
if "%CH%"=="2" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
if "%CH%"=="3" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
if "%CH%"=="4" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
if "%CH%"=="5" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
if "%CH%"=="6" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
if "%CH%"=="7" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
if "%CH%"=="8" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351
if "%CH%"=="9" set x=RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 9
if "%CH%"=="10" set x=rundll32.exe inetcpl.cpl ResetIEtoDefaults
if "%CH%"=="77" goto quit

%x%

goto Home

::Temporary Internet Files > Delete files - To delete copies of web pages, images, and media
::that  are saved for faster viewing.
::Cookies > Delete cookies - To delete cookies, which are files that are stored on your computer by
::websites to save preferences such as login information.
::History > Delete history - To delete the history of the websites you have visited.
::Form data > Delete forms - To delete all the saved information that you have typed into
::forms.
::Passwords > Delete passwords - To delete all the passwords that are automatically filled in
::when you log on to a website that you've previously visited.
::Delete all - To delete all of these listed items in one operation.

::enter below in search/run to see Low  history dir if exists
::C:\Users\%username%\AppData\Local\Microsoft\Windows\History\low

::Delete all low (untrusted history) very hidden
::this will clean any unlocked  files under the dir and not delete the dir structure
::del /s /q low\* /ah ::del /s /q C:\Users\%username%\AppData\Local\Microsoft\Windows\History\low\* /ah

goto Home
:quit
```
