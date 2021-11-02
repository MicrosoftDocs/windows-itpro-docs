---
title: What is Windows 11 SE
description: Learn more about Windows 11 SE, and the apps that are included with the operating system. Read about the features IT professionals and administrators should know about Windows 11 SE. Add and deploy your apps using Microsoft Intune for Education.
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

# Windows 11 SE for Education

**Applies to**:

- Windows 11 SE
- Microsoft Intune for Education

Windows 11 SE is a new edition of Windows that's designed for education. It runs on web-first devices that use essential education apps, and comes with Microsoft Office 365 preinstalled.

For education customers seeking cost-effective devices, Microsoft Windows 11 SE is a great choice. Windows 11 SE includes the following benefits:

- A simplified and secure experience for students, with a focus on students in grades 4-8. Students focus on learning. Student privacy is prioritized.
- Admins remotely manage Windows 11 SE devices using [Microsoft Intune for Education](/intune-education/what-is-intune-for-education).
- It's built for low-cost computers.
- It has a curated app experience, and is designed to only run essential education apps.

## Get Windows 11 SE

Windows 11 SE is only available preinstalled on devices from OEMs. The OEM installs Windows 11 SE, and makes the devices available for you to purchase. For example, you'll be able to purchase Microsoft Surface devices with Windows 11 SE already installed.

## Available apps

Windows 11 SE comes with some preinstalled apps. The following apps can also run on Windows 11 SE, and are deployed using the [Intune for Education portal](https://intuneeducation.portal.azure.com). For more information on adding and deploying education apps, see [Add apps in Intune for Education](/intune-education/add-desktop-apps-edu).

---
| Application | Min version | Vendor |
| --- | --- | --- |
| Chrome | 95.0.4638.54 | Google |
| Dragon Assistant | 3.2.98.061 | Nuance Communications |
| Dragon Professional Individual | 15.00.100  | Nuance Communications |
| e-Speaking Voice and Speech recognition | 4.4.0.8 | e-speaking |
| Free NaturalReader | 16.1.2 | Natural Soft |
| Jaws for Windows | 2022.2109.84 ILM | Freedom Scientific |
| Kite Student Portal | 8.0.1 | Dynamic Learning Maps |
| NextUp Talker | 1.0.49 | NextUp Technologies, LLC. |
| NonVisual Desktop Access | 2021.2 | NV Access |
| Read and Write | 12.0.71 | Texthelp Systems Ltd. |
| SuperNova Magnifier & Screen Reader | 20.03 | Dolphin Computer Access |
| SuperNova Magnifier & Speech | 20.03 | Dolphin Computer Access |
| Text Aloud | 4.0.64 | Nextup.com |
| Zoom | 5.8.3 (1581) | Zoom Inc |
| Zoomtext Fusion by AiSquared | 2022.2109.10 | ORF Fusion |
| ZoomText Magnifier/Reader | 2022.2109.25ILM | AI Squared |

---

### Allowed apps

| App type | Allowed |
| --- | --- |
| Apps that run in a browser | ✔️ <br/><br/> Apps that run in a browser, like Progressive Web Apps (PWA) and Web apps, can run on Windows 11 SE without any changes or limitations. |
| Apps that require installation | ❌<br/><br/> Apps that require an installation, including Microsoft Store apps and Win32 apps can't be installed. If students try to install these apps, the installation fails. <br/><br/>If there are specific installation-type of apps you want to allow, then work with Microsoft to get them added. For more information, see [Add your own apps](#add-your-own-apps) (in this article). |

### Add your own apps

If the apps you need aren't shown in the [available apps list](#available-apps) (in this article), then you can submit an application request at [aka.ms/eduapprequest](https://aka.ms/eduapprequest). Anyone from a school district can submit the request. In the form, sign in with your school account, such as `user@contoso.edu`. We'll update you using this email account.

Microsoft reviews every app request to make sure each app meets the following requirements:

- Apps can be any native Windows app type, such as a Microsoft Store app, Win32 app, `.MSIX`, `.APPX`, and more.

- Apps must be in one of the following app categories:​
  - Content Filtering apps​
  - Test Taking solutions​
  - Accessibility tools
  - Classroom communication apps​
  - Essential diagnostics, management, and supportability apps

- Apps must meet the performance [requirements of Windows 11](/windows/whats-new/windows-11-requirements).

- Apps must meet the following security requirements:
  - All app binaries are code-signed​.
  - All files include the `OriginalFileName` in the resource file header​.
  - All kernel drivers are WHQL-signed.

- Apps don't have an equivalent web application​.

- Apps can't invoke any processes that can be used to jailbreak a device, automate jailbreaks, or present a security risk. For example, processes such as Reg.exe, CBE.exe, CMD.exe, and KD.exe are blocked on Windows 11 SE.

If the app meets the requirements, Microsoft works with the Independent Software Vendor (ISV) to test the app, and make sure the app works as expected on Windows 11 SE.

When the app is ready, Microsoft will update you. Then, you add the app to the [Intune for Education portal](https://intuneeducation.portal.azure.com), and [assign](/intune-education/assign-apps) it to your Windows 11 SE devices. For more information on adding and deploying education apps, see [Add apps in Intune for Education](/intune-education/add-desktop-apps-edu).

### 0x87D300D9 error with an app

When you deploy an app using Intune for Education, you may get a `0x87D300D9` error code with a `Failed` state in the [Intune for Education portal](https://intuneeducation.portal.azure.com). If you have an app that fails with this error, then:

- Make sure the app is on the [available apps list](#available-apps) (in this article). Or, make sure your app is [approved for Windows 11 SE](#add-your-own-apps) (in this article).
- If the app is approved, then it's possible the app is packaged wrong. For more information, see [Add your own apps](#add-your-own-apps) (in this article) and [Add apps in Intune for Education](/intune-education/add-desktop-apps-edu).
- If the app isn't approved, then it won't run on Windows 11 SE. To get apps approved, see [Add your own apps](#add-your-own-apps) (in this article). Or, use an app that runs in a web browser, such as a web app or PWA.

## Next steps

Insert article links to other Windows 11 SE articles:

- How-to deploy app using Intune/Endpoint Manager --> CAT PM will write
- [Use Intune for Education to manage devices running Windows 11 SE](/intune-education/windows-11-se-overview) --> Liz and Laura are writing
- Support.com article --> Iris is writing?
