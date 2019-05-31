---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Reference about the command-line options for the IExpress Wizard.
author: lomayor
ms.prod: ie11
ms.assetid: aa16d738-1067-403c-88b3-bada12cf9752
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: IExpress Wizard command-line options (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


**Applies to:**
- Windows Server 2008 R2 with SP1

# IExpress Wizard command-line options
Use command-line options with the IExpress Wizard (IExpress.exe) to control your Internet Explorer custom browser package extraction process. 

These command-line options work with IExpress:<br>
`Ie11setup <IExpress options> /c:"ie11wzd <Internet Explorer options>"`

|Parameter |Action                                                                                      |
|----------|--------------------------------------------------------------------------------------------|
|`/q`   |Specifies quiet mode, hiding all of the prompts, while files are being extracted. This option won’t suppress prompts during Setup. |
|`/q:u` |Specifies user-quiet mode, letting some of the progress and error messages appear to the employee. |
|`/q:a` |Specifies administrator-quiet mode, hiding all of the progress and error messages from the employee. |
|`/t:<path>` |Specifies where to store your extracted files. |
|`/c:` |Extracts all of the files without installing them. If `t:/<path>` isn’t used, you’ll be prompted for a storage folder. |
|`/c:<path>` |Specifies the UNC path and name of the Setup .inf or .exe file. |
|`/r:n` |Never restarts the computer after installation. |
|`/r:a` |Always restarts the computer after installation. |
|`/r:s` |Restarts the computer after installation without prompting the employee. |

For more information, see [Command-line switches for IExpress software update packages](https://go.microsoft.com/fwlink/p/?LinkId=317973).

## Related topics
- [IExpress Wizard for Windows Server 2008 R2 with SP1](iexpress-wizard-for-win-server.md)
- [Internet Explorer Setup command-line options and return codes](ie-setup-command-line-options-and-return-codes.md)

