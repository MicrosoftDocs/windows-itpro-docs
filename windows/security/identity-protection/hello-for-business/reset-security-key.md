---
title: Reset-security-key 
description: Windows�10 enables users to sign in to their device using a security key. How to reset a security key
keywords: FIDO2, security key, CTAP, Microsoft-compatible security key
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 11/14/2018
---
# How to reset a Microsoft-compatible security key? 
> [!Warning]
> Some information relates to pre-released product that may change before it is commercially released.  Microsoft makes no warranties, express or implied, with respect to the information provided here. 

>[!IMPORTANT]
>This operation will wipe everything from your security key and reset it to factory defaults.</br> **All data and credentials will be cleared.** 


A [Microsoft-compatible security key](https://docs.microsoft.com/en-us/windows/security/identity-protection/hello-for-business/microsoft-compatible-security-key) can be reset via Settings app ( Settings > Accounts > Sign-in options > Security key  ).
</br>
Follow the instructions in the Settings app and look for specific instructions based on your security key manufacturer below:


|Security key manufacturer</br> | Reset instructions </br> |
| --- | --- | 
|Yubico | **USB:** Remove and re-insert the security key. When the LED on the security key begins flashing, touch the metal contact  <br> **NFC:** Tap the security key on the reader <br>|
|Feitian | Touch the blinking fingerprint sensor twice to reset the key|
|HID | Tap the card on the reader twice to reset it |

>[!NOTE]
>The steps to reset your security key may vary based on the security key manufacturer.</br>
>If your security key is not listed here, please reach out to your security key manufacturer for reset instructions.
