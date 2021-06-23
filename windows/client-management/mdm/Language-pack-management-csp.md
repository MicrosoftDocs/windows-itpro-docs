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


The Language Pack Management CSP allows a direct way to provision language packs remotely in Windows 10. A separate CSP exists to provision optional Features On Demand (FOD) which include handwriting recognition, text-to-speech, etc. associated with a language. Device management tools such as Intune can use management commands remotely to devices to configure language related settings.

1. List the installed languages with GET command on the "InstalledLanguges" node. For example:

```
GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages
GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages /zh-CN/Providers
GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages /ja-JP/Providers   
```

The nodes under **InstalledLanguages** are the language tags of the installed languages. The **providers** node under language tag is the bit map representation of either **language pack (features)** or **LXPs**. The value of **1** indicates the language pack installed is a System Language Pack (non-LXP), **2** indidcates that the LXP is installed. **3** indicates that both are installed.

2. Install language pack features with the EXECUTE command on the **StartInstall** node of the language. For example, 

```
**ADD./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/**
**EXECUTE./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/StartInstallation**
```

The installation is an asynchronous operation. You can query the **Status** node by using the following commands: 

```
**GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/Status**
**GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/ErrorCode**
```

Return value definitions are:

- 0 – Not started 
- 1 – In process 
- 2 – Succeeded 
- 3 – Failed. ErrorCode is a HRESULT that could help you diagnose the issue and why installation failed

> [!NOTE]
> If the IT administrator has not set the policy of blocking cleanup of unused language packs, then this command will fail.  

3. Delete installed Language with the DELETE command on the installed language tag. The deletion will run in background, and admins can query the installed language later and resend the command if needed.

Sample command
```
**DELETE ./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages /zh-CN (Delete command)**
```

4. Get/Set System Preferred UI Language with GET or REPLACE command on the "SystemPreferredUILanguages" Node

Sample command
```
**./Device/Vendor/MSFT/LanguagePackManagement/LanguageSettings/SystemPreferredUILanguages**
```



 

 






