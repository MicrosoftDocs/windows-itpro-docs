---
title: Appendix information sent to Microsoft during activation
description: Learn about the information sent to Microsoft during activation.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.service: windows-client
ms.subservice: itpro-fundamentals
ms.localizationpriority: medium
ms.date: 03/29/2024
ms.topic: reference
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Appendix: Information sent to Microsoft during activation

> [!TIP]
>
> Looking for information on retail activation?
>
> - [Activate Windows](https://support.microsoft.com/windows/activate-windows-c39005d4-95ee-b91e-b399-2820fda32227).
> - [Product activation for Windows](https://support.microsoft.com/windows/product-activation-for-windows-online-support-telephone-numbers-35f6a805-1259-88b4-f5e9-b52cccef91a0).

When a computer running a currently supported version of Windows is activated, the following information is sent to Microsoft:

- The Microsoft product code (a five-digit code that identifies the Windows product being activated).

- A channel ID or site code that identifies how the Windows product was originally obtained. For example, a channel ID or site code identifies whether the product was:

  - Originally purchased from a retail store.
  - Obtained as an evaluation copy.
  - Obtained through a volume licensing program.
  - Preinstalled by a computer manufacturer.

- The date of installation and whether the installation was successful.

- Information that helps confirm that the Windows product key isn't altered.

- Computer make and model.

- Version information for the operating system and software.

- Region and language settings.

- A unique number called a *globally unique identifier* (GUID), which is assigned to the computer.

- Product key (hashed) and product ID.

- BIOS name, revision number, and revision date.

- Volume serial number (hashed) of the hard disk drive.

- The result of the activation check.

    This result includes error codes and the following information about any activation exploits and related malicious or unauthorized software that was found or disabled:

  - The identifier of the activation exploit.

  - The current state of the activation exploit, such as cleaned or quarantined.

  - Computer manufacturer's identification.

  - The file name and hash of the activation exploit in addition to a hash of related software components that might indicate the presence of an activation exploit.

- The name and a hash of the contents of the computer's startup instructions file.

- If the Windows license is on a subscription basis, information about how the subscription works.

Standard computer information is also sent, but the computer's IP address is only kept temporarily.

## Use of information

Microsoft uses the information to confirm a properly licensed copy of the software. Microsoft doesn't use the information to contact individual consumers.

For more information, see [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement).
