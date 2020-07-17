---
title: Common mistakes to avoid when defining exclusions
description: Avoid common mistakes when defining exclusions for Microsoft Defender Antivirus scans.
keywords: exclusions, files, extension, file type, folder name, file name, scans
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: 
manager: dansimp
---

# Common mistakes to avoid when defining exclusions
You can define an exclusion list for items that you don't want Microsoft Defender Antivirus to scan. Such excluded items could contain threats that make your device vulnerable. 
See [Configure and validate exclusions for Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md) for more information.

This article describes some common mistakes that you should avoid when defining exclusions from Microsoft Defender Antivirus scans. 

## Excluding certain trusted items
There are certain files, file types, folders, or processes that you should not exclude from scanning even though you trust them to be not malicious. Refer to the following section for items that you should not exclude from scanning.

**Do not add exclusions for the following folder locations:**

- %systemdrive%
- C:
- C:\
- C:\*
- %ProgramFiles%\Java
- C:\Program Files\Java
- %ProgramFiles%\Contoso\
- C:\Program Files\Contoso\
- %ProgramFiles(x86)%\Contoso\
- C:\Program Files (x86)\Contoso\
- C:\Temp
- C:\Temp\
- C:\Temp\*
- C:\Users\
- C:\Users\*
- C:\Users\<UserProfileName>\AppData\Local\Temp\
- C:\Users\<UserProfileName>\AppData\LocalLow\Temp\
- C:\Users\<UserProfileName>\AppData\Roaming\Temp\
- %Windir%\Prefetch
- C:\Windows\Prefetch
- C:\Windows\Prefetch\
- C:\Windows\Prefetch\*
- %Windir%\System32\Spool
- C:\Windows\System32\Spool
- C:\Windows\System32\CatRoot2
- %Windir%\Temp
- C:\Windows\Temp
- C:\Windows\Temp\
- C:\Windows\Temp\*

**Do not add exclusions for the following file extensions:**  
- .7zip
- .bat
- .bin
- .cab
- .cmd
- .com
- .cpl
- .dll
- .exe
- .fla
- .gif
- .gz
- .hta
- .inf
- .java
- .jar
- .job
- .jpeg
- .jpg
- .js
- .ko
- .ko.gz
- .msi
- .ocx
- .png
- .ps1
- .py
- .rar
- .reg
- .scr
- .sys
- .tar
- .tmp
- .url
- .vbe
- .vbs
- .wsf
- .zip

**Do not add exclusions for the following processes:**  
- AcroRd32.exe
- bitsadmin.exe
- excel.exe
- iexplore.exe
- java.exe
- outlook.exe
- psexec.exe
- powerpnt.exe
- powershell.exe
- schtasks.exe
- svchost.exe
- wmic.exe
- winword.exe
- wuauclt.exe
- addinprocess.exe
- addinprocess32.exe
- addinutil.exe
- bash.exe
- bginfo.exe[1]
- cdb.exe
- csi.exe
- dbghost.exe
- dbgsvc.exe
- dnx.exe
- fsi.exe
- fsiAnyCpu.exe
- kd.exe
- ntkd.exe
- lxssmanager.dll
- msbuild.exe[2]
- mshta.exe
- ntsd.exe
- rcsi.exe
- system.management.automation.dll
- windbg.exe

## Using just the file name in the exclusion list
A malware may have the same name as that of the file that you trust and want to exclude from scanning. Therefore, to avoid excluding a potential malware from scanning, use a fully qualified path to the file that you want to exclude instead of using just the file name. For example, if you want to exclude **Filename.exe** from scanning, use the complete path to the file, such as **C:\program files\contoso\Filename.exe**.

## Using a single exclusion list for multiple server workloads
Do not use a single exclusion list to define exclusions for multiple server workloads. Split the exclusions for different application or service workloads into multiple exclusion lists. For example, the exclusion list for your IIS Server workload must be different from the exclusion list for your SQL Server workload.

## Using incorrect environment variables as wildcards in the file name and folder path or extension exclusion lists
Microsoft Defender Antivirus Service runs in system context using the LocalSystem account, which means it gets information from the system environment variable, and not from the user environment variable. Use of environment variables as a wildcard in exclusion lists is limited to system variables and those applicable to processes running as an NT AUTHORITY\SYSTEM account. Therefore, do not use user environment variables as wildcards when adding Microsoft Defender Antivirus folder and process exclusions. See the table under [System environment variables](configure-extension-file-exclusions-microsoft-defender-antivirus.md#system-environment-variables) for a complete list of system environment variables.
See [Use wildcards in the file name and folder path or extension exclusion lists](configure-extension-file-exclusions-microsoft-defender-antivirus.md#use-wildcards-in-the-file-name-and-folder-path-or-extension-exclusion-lists) for information on how to use wildcards in exclusion lists.

## Related topics

- [Configure and validate exclusions in Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions based on file extension and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)
- [Configure Microsoft Defender Antivirus exclusions on Windows Server](configure-server-exclusions-microsoft-defender-antivirus.md)
