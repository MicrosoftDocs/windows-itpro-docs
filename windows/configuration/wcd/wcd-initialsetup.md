---
title: InitialSetup (Windows 10)
description: This section describes the InitialSetup setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
---

# InitialSetup (Windows Configuration Designer reference)

Use to set the name of the Windows mobile device.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| DeviceName |   | X |  |  |  |

In **DeviceName**, enter a name for the device. If **DeviceName** is set to an asterisk (*) or is an empty string, a random device name will be generated.

**DeviceName** is a string with a maximum length of 15 bytes of content:

- **DeviceName** can use ASCII characters (1 byte each) and/or multi-byte characters such as Kanji, so long as you do not exceed 15 bytes of content.
- **DeviceName** cannot use spaces or any of the following characters: { | } ~ [ \ ] ^ ' : ; < = > ? @ ! " # $ % ` ( ) + / . , * &, or contain any spaces.
- **DeviceName** cannot use some non-standard characters, such as emoji.

