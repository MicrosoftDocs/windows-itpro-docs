---
title: What is Windows 11 SE
description: Learn more about Windows 11 SE, and the apps that are included with the operating system. Read about the features IT professionals and administrators should know about Windows 11 SE, including adding your own apps.
ms.reviewer: 
manager: dougeby
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: mandia
author: MandiOhlinger
ms.localizationpriority: medium
ms.topic: article
---

**10.19.2021 status: Per iroliver@microsoft.com**:

From: Iris Oliver <Iris.Oliver@microsoft.com>
Sent: Tuesday, October 19, 2021 6:46 PM
To: Mandi Ohlinger <Mandi.Ohlinger@microsoft.com>; Anson Ho <ansonho@microsoft.com>; Kirsten Rue <Kirsten.Rue@microsoft.com>; Liz Cox <Elizabeth.Cox@microsoft.com>; Doug Eby <dougeby@microsoft.com>; Heidi Payne <heidip@microsoft.com>; Laura Newsad <Laura.Newsad@microsoft.com>
Cc: Kate O'Leary <kateol@microsoft.com>; Matt McGinnis <Matt.McGinnis@microsoft.com>; Teebah Alsaleh (CELA) <tealsa@microsoft.com>
Subject: Re: IT Admin documentation needs for Windows SE

Hi everyone!

I am closing the loop on the first entry in the table. We confirmed today that we do not need this article by 11/9. We can resume work on it in December/January timeframe, if that works for the group, and I can re-engage then. Also - we would probably not write a new article. The plan would be to just amend the one here: [Windows Privacy Compliance Guide - Windows Privacy](https://docs.microsoft.com/windows/privacy/windows-10-and-privacy-compliance).

# Windows 11 SE overview, and what admins should know

**Applies to**:

- Windows 11 SE

Windows 11 SE is a new edition of Windows that's designed for education. It runs on web-first devices that use essential education apps, and comes preinstalled with Microsoft Office 365.

For education customers seeking cost-effective devices, Microsoft Windows 11 SE is a great choice. Windows 11 SE includes the following benefits:

- A simplified and secure experience for students, with a focus on students in grades 4-8. Students focus on learning, and student privacy is prioritized.
- Admins can remotely manage Windows 11 SE devices using modern management, including [Microsoft Endpoint Manager](/mem/endpoint-manager-overview).
- It's built for low-cost computers, and automates & limits the app experience. For example, it's designed to only run essential apps, and limits the number of apps that can be snapped.

## Get Windows 11 SE

Windows 11 SE is preinstalled on devices from OEMs, and is available to everyone. The OEM installs Windows 11 SE, and makes the devices available for you to purchase. For a list of some OEMs, see [INSERT LINK TO OEMS]().

## Available apps

If your school district has a Microsoft account manager, then you can add apps created by your app developers. For more information, see [INSERT LINK TO GETTING ACCOUNT MANAGERS FOR SCHOOL DISTRICTS, IF IT EXISTS?]().

If you want to deploy more apps to your Windows 11 SE devices, you can use Endpoint Manager. For more information, see [ADD LINK TO LAURA'S ARTICLE]().

### Native apps

The following apps are automatically enabled to run on Windows 11 SE:

---
| Application | Min Version | Vendor |
| --- | --- | --- |
| Read and Write | 12.0.71 | Texthelp Systems Ltd. |
| Dragon Assistant | 3.2.98.061 | Nuance Communications |
| Dragon Professional Individual | 15.00.100  | Nuance Communications |
| e-Speaking Voice and Speech recognition | 4.4.0.8 | e-speaking |
| Free NaturalReader | 16.1.2 | Natural Soft |
| Jaws for Windows | 2022.2109.84 ILM | Freedom Scientific |
| NextUp Talker | 1.0.49 | NextUp Technologies, LLC. |
| NonVisual Desktop Access | 2021.2 | NV Access |
| SuperNova Magnifier & Screen Reader | 20.03 | Dolphin Computer Access |
| SuperNova Magnifier & Speech | 20.03 | Dolphin Computer Access |
| Text Aloud | 4.0.64 | Nextup.com |
| Zoomtext Fusion by AiSquared | 2022.2109.10 | ORF Fusion |
| ZoomText Magnifier/Reader | 2022.2109.25ILM | AI Squared |

---

### Allowed apps

| App type | Allowed |
| --- | --- |
| Apps that run in a browser | ✔️ <br/><br/> Apps that run in a browser, like Progressive Web Apps (PWA) and Web apps, can run on Windows 11 SE without any changes or limitations. |
| Apps that require installation | ❌<br/><br/> Apps that require an installation, including Microsoft Store apps and Win32 apps can't be installed. If students try to install these apps, the installation fails. If there are specific installation-type of apps you want to allow, then you can add them to an exception list. For more information, see [NEED LINK](). |

## Next steps

Insert article links to other Windows 11 SE articles:

- How-to deploy app using Intune/Endpoint Manager --> CAT PM will write
- Error list --> PM will send error list, what errors mean, and resolutions
- Article about Intune & SE --> Liz and Laura are writing
- Support.com article --> Iris is writing?
