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

# Windows 11 SE overview, and what admins should know

**Applies to**:

- Windows 11 SE

Windows 11 SE is a new edition of Windows that's designed for education. It runs on web-first devices that use essential education apps, and comes preinstalled with Microsoft Office 365.

For education customers seeking cost-effective devices, Microsoft Windows 11 SE is a great choice. Windows 11 SE includes the following benefits:

- A simplified and secure experience for students, with a focus on students in grades 4-8. Students focus on learning. Student privacy is prioritized.
- Admins remotely manage Windows 11 SE devices using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune). For more specific information, see [ADD LINK TO LAURA'S ARTICLE]().
- It's built for low-cost computers, and automates & limits the app experience. For example, it's designed to only run essential apps, and limits the number of apps that can be snapped.

## Get Windows 11 SE

Windows 11 SE is preinstalled on devices from OEMs, and is available to everyone. The OEM installs Windows 11 SE, and makes the devices available for you to purchase.

## Available apps

Windows 11 SE comes with some preinstalled apps. The following apps are automatically installed and enabled to run on Windows 11 SE:

---
| Application | Min Version | Vendor |
| --- | --- | --- |
| Dragon Assistant | 3.2.98.061 | Nuance Communications |
| Dragon Professional Individual | 15.00.100  | Nuance Communications |
| e-Speaking Voice and Speech recognition | 4.4.0.8 | e-speaking |
| Free NaturalReader | 16.1.2 | Natural Soft |
| Jaws for Windows | 2022.2109.84 ILM | Freedom Scientific |
| NextUp Talker | 1.0.49 | NextUp Technologies, LLC. |
| NonVisual Desktop Access | 2021.2 | NV Access |
| Read and Write | 12.0.71 | Texthelp Systems Ltd. |
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
| Apps that require installation | ❌<br/><br/> Apps that require an installation, including Microsoft Store apps and Win32 apps can't be installed. If students try to install these apps, the installation fails. <br/><br/>If there are specific installation-type of apps you want to allow, then add them to an exception list. For more information, see [Add your own apps](#add-your-own-apps) (in this article). |

### Add your own apps

If your apps aren't shown in the [Allowed apps list](#allowed-apps) (in this article), then you can submit an application request at [aka.ms/eduapprequest](aka.ms/eduapprequest). Be sure to sign in with your school account, such as `user@contoso.edu`.

If your school district has a Microsoft account manager, then contact your account manager to add other apps, or apps created by your app developers.

These apps are automatically added to an exception list in your Intune organization tenant. To deploy and manage apps on your Windows 11 SE devices, you must use the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431). For more specific information, see [ADD LINK TO LAURA'S ARTICLE]().

These apps:

- Can be any native Windows app type, such as a Microsoft Store app, Win32 app, `.MSIX`, `.APPX`, and more.

- Must be in the following app categories:​
  - Content Filtering apps​
  - Test Taking solutions​
  - Accessibility tool apps
  - Effective classroom communication apps​
  - Essential diagnostics, management, and supportability apps

- Must meet the performance requirements of Windows 11. For more specific information, see [Windows 11 requirements](/windows/whats-new/windows-11-requirements).

- Must meet minimum security requirements, such as:
  - All app binaries are code-signed​.
  - All files include the `OriginalFileName` in the resource file header​.
  - All kernel drivers are WHQL-signed.

- Must have an installer, and don't have an equivalent web application​.

- Must not invoke any processes that can be used to jailbreak a device, automate jailbreaks, or present a security risk. For example, processes such as Reg.exe, CBE.exe, CMD.exe, and KD.exe are blocked on Windows 11 SE.

## 0x87D300D9 error with an app

When you deploy an app using Endpoint Manager, you may get a `0x87D300D9` error code with a `Failed` state in the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431). If you have an app that fails with this error, then:

- Make sure your app is on the app exception list in your Intune tenant organization. For more information, see [ADD LINK TO LAURA'S ARTICLE]().
- If the app is on the exception list, then it's possible the app is packaged wrong. For more requirements, see [Add your own apps](#add-your-own-apps) (in this article).
- If the app isn't on the exception list, then it won't run on Windows 11 SE. To get apps on the exception list, see [Add your own apps](#add-your-own-apps) (in this article). Or, use an app that runs in a web browser, such as a web app or PWA.

## Next steps

Insert article links to other Windows 11 SE articles:

- How-to deploy app using Intune/Endpoint Manager --> CAT PM will write
- Article about Intune & SE --> Liz and Laura are writing
- Support.com article --> Iris is writing?
