---
title: Intune Connector (preview) requirements
description: Intune Connector (preview) issue workaround
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: low
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
ms.date: 11/13/2018
---


# Intune Connector (preview) language requirements

**Applies to: Windows 10**

Microsoft has released a [preview for Intune connector for Active Directory](https://docs.microsoft.com/intune/windows-autopilot-hybrid) that enables user-driven [Hybrid Azure Active Directory join](user-driven-hybrid.md) for Windows Autopilot.

In this preview version of the Intune Connector, you might receive an error message indicating a setup failure with the following error code and message:

0x80070658 - Error applying transforms. Verify that the specified transform paths are valid.

See the following example:

![Connector error](images/connector-fail.png)

This error can be resolved by ensuring that your Active Directory domain controller has one of the following language packs installed:

en-US<br>
cs-CZ<br>
da-DK<br>
de-DE<br>
el-GR<br>
es-ES<br>
fi-FI<br>
fr-FR<br>
hu-HU<br>
it-IT<br>
ja-JP<br>
ko-KR<br>
nb-NO<br>
nl-NL<br>
pl-PL<br>
pt-BR<br>
ro-RO<br>
ru-RU<br>
sv-SE<br>
tr-TR<br>
zh-CN<br>
zh-TW

This solution is a workaround and will be fully resolved in a future release of the Intune Connector.

Note: It is not required to change the default display language. Only ensure that at least one of the listed languages are installed. 

Install additional [language packs](https://docs.microsoft.com/windows-hardware/manufacture/desktop/language-packs-and-windows-deployment#span-idgetlanguagepacksandlipsspanspan-idgetlanguagepacksandlipsspanspan-idgetlanguagepacksandlipsspanwhere-to-get-language-packs-and-lips) under **Settings > Time & language > Region and language > Add a language** (under Options).