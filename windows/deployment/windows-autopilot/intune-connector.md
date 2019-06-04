---
title: Intune Connector (preview) requirements
description: Intune Connector (preview) issue workaround
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: low
ms.sitesec: library
ms.pagetype: deploy
author: dulcemontemayor
ms.author: dolmont
ms.date: 11/26/2018
ms.reviewer: 
manager: dansimp
ms.collection: M365-modern-desktop
ms.topic: article
---


# Intune Connector (preview) language requirements

**Applies to: Windows 10**

Microsoft has released a [preview for Intune connector for Active Directory](https://docs.microsoft.com/intune/windows-autopilot-hybrid) that enables user-driven [Hybrid Azure Active Directory join](user-driven-hybrid.md) for Windows Autopilot.

In this preview version of the Intune Connector, you might receive an error message indicating a setup failure with the following error code and message:

**0x80070658 - Error applying transforms. Verify that the specified transform paths are valid.**

An [example](#example) of the error message is displayed at the bottom of this topic. 

This error can be resolved by ensuring that the member server where Intune Connector is running has one of the following language packs installed and configured to be the default keyboard layout:

|  |  |  |  |  |  |  |  |  |  |  | 
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| en-US | cs-CZ | da-DK | de-DE | el-GR | es-ES | fi-FI | fr-FR | hu-HU | it-IT | ja-JP |
| ko-KR | nb-NO | nl-NL | pl-PL | pt-BR | ro-RO | ru-RU | sv-SE | tr-TR | zh-CN | zh-TW |

>[!NOTE]
>After installing the Intune Connector, you can restore the keyboard layout to its previous settings.<br>
>This solution is a workaround and will be fully resolved in a future release of the Intune Connector.

To change the default keyboard layout:

1. Click **Settings > Time & language > Region and language** 
2. Select one of the languages listed above and choose **Set as default**.

If the language you need isn't listed, you can add additional languages by selecting **Add a language**.

## Example

The following is an example of the error message that can be displayed if one of the listed languages is not used during setup:

![Connector error](images/connector-fail.png)


