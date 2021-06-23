---
title: Language Pack Management  CSP
description: Language Pack Management CSP allows a direct way to provision language packs remotely in Windows 10.
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 06/22/2021
---

# Language Pack Management CSP


Language Pack Management CSP allows a direct way to provision language packs remotely in Windows 10. A separate CSP exists to allow provisioning of optional Features On Demand (FOD) which include handwriting recognition, text-to-speech, etc. associated with a language. device management tools like Intune can use management commands remotely to devices to configure language related settings.

Device context
1. Enumerate installed languages with GET command on the "InstalledLanguges" node:

Sample command
**GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages**
**GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages /zh-CN/Providers**
**GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages /ja-JP/Providers**   

The nodes under “InstalledLanguages” are the language tags of the installed languages. The “providers” node under language tag is the bit map representation of either "language pack (features)" or "LXPs". 1 indicates the language pack installed is a System Language Pack (non-LXP), “2” stands for LXPs installed. “3” stands for both installed.

2. Install language pack features with EXECUTE command on the "StartInstall" node of the language

Sample command

**ADD./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/**
**EXECUTE./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/StartInstallation**

The installation is an asynchronous operation. IT admin can query the ‘Status’ node by using the following commands: 

**GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/Status**
**GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/ErrorCode**

Status: 0 – not started; 1 – in process; 2 – succeeded; 3 – failed. ErrorCode is a HRESULT that could help diagnosis if the installation failed
> [!NOTE]
> If the IT administration has not set the policy of blocking cleanup of unused language packs, then this command will fail.  

3. Delete installed Language with the DELETE command on the installed language tag. The delete command is a fire and forget operation. The deletion will run in background. IT admin can query the installed language later and resend the command if needed.

Sample command
**DELETE ./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages /zh-CN (Delete command)**

4. Get/Set System Preferred UI Language with GET or REPLACE command on the "SystemPreferredUILanguages" Node

Sample command
**./Device/Vendor/MSFT/LanguagePackManagement/LanguageSettings/SystemPreferredUILanguages**



 

 






