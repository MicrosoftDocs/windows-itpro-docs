---
title: Windows 11 SE Overview
description: Learn more about Windows 11 SE, and the apps that are included with the operating system. Read about the features IT professionals and administrators should know about Windows 11 SE. Add and deploy your apps using Microsoft Intune for Education.
ms.prod: windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.collection: education
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/12/2022
ms.reviewer: 
manager: aaroncz
appliesto:
- ✅ <b>Windows 11 SE</b>
---

# Windows 11 SE Overview

Windows 11 SE is an edition of Windows that's designed for education. Windows SE runs on web-first devices that use essential education apps, and it comes with Microsoft Office 365 preinstalled (subscription sold separately).

For education customers seeking cost-effective devices, Microsoft Windows 11 SE is a great choice. Windows 11 SE includes the following benefits:

- A simplified and secure experience for students, where student privacy is prioritized. With a curated allowlist of applications maintained by Microsoft, Windows SE is designed to only run essential education apps
- IT admin can remotely manage Windows 11 SE devices using [Microsoft Intune for Education][INT-1]
- It's built for low-cost devices

:::image type="content" source="./images/windows-11-se.png" alt-text="Screenshot of Windows 11 SE showing Start menu and taskbar with default layout" border="false":::

## Get Windows 11 SE

Windows 11 SE is only available preinstalled on devices from OEMs. OEMs install Windows 11 SE, and make the devices available for you to purchase. For example, you can purchase Microsoft Surface SE devices with Windows 11 SE already installed.

## Application types

The following table lists the different application types available in Windows operating systems, detailing which application types are enabled in Windows 11 SE.

| App type | Description | Enabled | Note|
| --- | --- | :---: | ---|
|Progressive Web Apps (PWAs) | PWAs are web-based applications that can run in a browser and that can be installed as standalone apps. |✅|PWAs are enabled by default in Windows 11 SE.|
| Web apps | Web apps are web-based applications that run in a browser. | ✅ | Web apps are enabled by default in Windows 11 SE. |
|Win32| Win32 applications are Windows classic applications that may require installation |⛔| If users try to install or execute Win32 applications that haven't been allowed to run, they'll fail.|
|Universal Windows Platform (UWP)/Store apps |UWP apps are commonly obtained from the Microsoft Store and may require installation |⛔|If users try to install or execute UWP applications that haven't been allowed to run, they'll fail.|

> [!IMPORTANT]
> If there are specific Win32 or UWP applications that you want to allow, work with Microsoft to get them enabled. For more information, see [Add your own applications](#add-your-own-applications).

## Applications included in Windows 11 SE

The following table lists all the applications included in Windows 11 SE and the pinning to either the Start menu or to the taskbar.

| App name                     | App type | Pinned to Start? | Pinned to taskbar? |
|:-----------------------------|:--------:|:----------------:|:------------------:|
| Alarm & Clock                | UWP      |                  |                    |
| Calculator                   | UWP      | ✅              |                    |
| Camera                       | UWP      | ✅              |                    |
| Microsoft Edge               | Win32    | ✅              | ✅                 |
| Excel                        | Win32    | ✅              |                    |
| Feedback Hub                 | UWP      |                  |                    |
| File Explorer                | Win32    |                  | ✅                |
| FlipGrid                     | PWA      |                  |                    |
| Get Help                     | UWP      |                  |                    |
| Groove Music                 | UWP      | ✅              |                    |
| Maps                         | UWP      |                  |                    |
| Minecraft: Education Edition | UWP      |                  |                    |
| Movies & TV                  | UWP      |                  |                    |
| News                         | UWP      |                  |                    |
| Notepad                      | Win32    |                  |                    |
| OneDrive                     | Win32    |                  |                    |
| OneNote                      | Win32    | ✅              |                    |
| Outlook                      | PWA      | ✅              |                    |
| Paint                        | Win32    | ✅              |                    |
| Photos                       | UWP      |                  |                    |
| PowerPoint                   | Win32    | ✅              |                    |
| Settings                     | UWP      | ✅              |                    |
| Snip & Sketch                | UWP      |                  |                    |
| Sticky Notes                 | UWP      |                  |                    |
| Teams                        | Win32    | ✅              |                    |
| To Do                        | UWP      |                  |                    |
| Whiteboard                   | UWP      | ✅              |                    |
| Word                         | Win32    | ✅              |                    |

## Available applications

The following applications can also run on Windows 11 SE, and can be deployed using Intune for Education. For more information, see [Configure applications with Microsoft Intune][EDUWIN-1]

| Application                             | Supported version | App Type | Vendor                       |
|-----------------------------------------|-------------------|----------|------------------------------|
| AirSecure                               | 8.0.0             | Win32    | AIR                          |
| Alertus Desktop                         | 5.4.44.0          | Win32    | Alertus technologies         |
| Brave Browser                           | 1.34.80           | Win32    | Brave                        |
| Bulb Digital Portfolio                  | 0.0.7.0           | Store    | Bulb                         |
| Cisco Umbrella                          | 3.0.110.0         | Win32    | Cisco                        |
| CKAuthenticator                         | 3.6               | Win32    | Content Keeper               |
| Class Policy                            | 114.0.0           | Win32    | Class Policy                 |
| Classroom.cloud                         | 1.40.0004         | Win32    | NetSupport                   |
| CoGat Secure Browser                    | 11.0.0.19         | Win32    | Riverside Insights           |
| Dragon Professional Individual          | 15.00.100         | Win32    | Nuance Communications        |
| DRC INSIGHT Online Assessments          | 12.0.0.0          | Store    | Data recognition Corporation |
| Duo from Cisco                          | 2.25.0            | Win32    | Cisco                        |
| e-Speaking Voice and Speech recognition | 4.4.0.8           | Win32    | e-speaking                   |
| eTests                                  | 4.0.25            | Win32    | CASAS                        |
| FortiClient                             | 7.0.1.0083        | Win32    | Fortinet                     |
| Free NaturalReader                      | 16.1.2            | Win32    | Natural Soft                 |
| Ghotit                                  | 10.14.2.3         | Win32    | Ghotit Ltd                   |
| GoGuardian                              | 1.4.4             | Win32    | GoGuardian                   |
| Google Chrome                           | 102.0.5005.115    | Win32    | Google                       |
| Illuminate Lockdown Browser             | 2.0.5             | Win32    | Illuminate Education         |
| Immunet                                 | 7.5.0.20795       | Win32    | Immunet                      |
| Impero Backdrop Client                  | 4.4.86            | Win32    | Impero Software              |
| JAWS for Windows                        | 2022.2112.24      | Win32    | Freedom Scientific           |
| Kite Student Portal                     | 8.0.3.0           | Win32    | Dynamic Learning Maps        |
| Kortext                                 | 2.3.433.0         | Store    | Kortext                      |
| Kurzweil 3000 Assistive Learning        | 20.13.0000        | Win32    | Kurzweil Educational Systems |
| LanSchool                               | 9.1.0.46          | Win32    | Stoneware                    |
| Lightspeed Smart Agent                  | 1.9.1             | Win32    | Lightspeed Systems           |
| MetaMoJi ClassRoom                      | 3.12.4.0          | Store    | MetaMoJi Corporation         |
| Microsoft Connect                       | 10.0.22000.1      | Store    | Microsoft                    |
| Mozilla Firefox                         | 99.0.1            | Win32    | Mozilla                      |
| NAPLAN                                  | 2.5.0             | Win32    | NAP                          |
| Netref Student                          | 22.2.0            | Win32    | NetRef                       |
| NetSupport Manager                      | 12.01.0011        | Win32    | NetSupport                   |
| NetSupport Notify                       | 5.10.1.215        | Win32    | NetSupport                   |
| NetSupport School                       | 14.00.0011        | Win32    | NetSupport                   |
| NextUp Talker                           | 1.0.49            | Win32    | NextUp Technologies          |
| NonVisual Desktop Access                | 2021.3.1          | Win32    | NV Access                    |
| NWEA Secure Testing Browser             | 5.4.356.0         | Win32    | NWEA                         |
| Pearson TestNav                         | 1.10.2.0          | Store    | Pearson                      |
| Questar Secure Browser                  | 4.8.3.376         | Win32    | Questar, Inc                 |
| ReadAndWriteForWindows                  | 12.0.60.0         | Win32    | Texthelp Ltd.                |
| Remote Desktop client (MSRDC)           | 1.2.3213.0        | Win32    | Microsoft                    |
| Remote Help                             | 3.8.0.12          | Win32    | Microsoft                    |
| Respondus Lockdown Browser              | 2.0.9.00          | Win32    | Respondus                    |
| Safe Exam Browser                       | 3.3.2.413         | Win32    | Safe Exam Browser            |
| Secure Browser                          | 14.0.0            | Win32    | Cambium Development          |
| Senso.Cloud                             | 2021.11.15.0      | Win32    | Senso.Cloud                  |
| SuperNova Magnifier & Screen Reader     | 21.02             | Win32    | Dolphin Computer Access      |
| Zoom                                    | 5.9.1 (2581)      | Win32    | Zoom                         |
| ZoomText Fusion                         | 2022.2109.10      | Win32    | Freedom Scientific           |
| ZoomText Magnifier/Reader               | 2022.2109.25      | Win32    | Freedom Scientific           |

## Add your own applications

If the applications you need aren't in the [available applications list](#available-applications), then you can submit an application request at [aka.ms/eduapprequest](https://aka.ms/eduapprequest). Anyone from a school district can submit the request. In the form, sign in with your school account, such as `user@contoso.edu`. We'll update you using this email account.

Microsoft reviews every app request to make sure each app meets the following requirements:

- Apps can be any native Windows app type, such as a Microsoft Store app, Win32 app, `.MSIX`, `.APPX`, and more
- Apps must be in one of the following app categories:
  - Content Filtering apps
  - Test Taking solutions
  - Assistive technologies
  - Classroom communication apps
  - Essential diagnostics, management, and supportability apps
- Apps must meet the performance [requirements of Windows 11][WIN-1]
- Apps must meet the following security requirements:
  - All app binaries are code-signed
  - All files include the `OriginalFileName` in the resource file header
  - All kernel drivers are WHQL-signed
- Apps don't have an equivalent web application
- Apps can't invoke any processes that can be used to jailbreak a device, automate jailbreaks, or present a security risk. For example, processes such as Reg.exe, CBE.exe, CMD.exe, and KD.exe are blocked on Windows 11 SE

If the app meets the requirements, Microsoft works with the Independent Software Vendor (ISV) to test the app, and make sure the app works as expected on Windows 11 SE.

When the app is ready, Microsoft will update you. Then, you add the app to the Intune for Education portal, and assign it to your Windows 11 SE devices.

For more information on Intune requirements for adding education apps, see [Configure applications with Microsoft Intune][EDUWIN-1].

### 0x87D300D9 error with an app

When you deploy an app using Intune for Education, you may get a `0x87D300D9` error code with a `Failed` state in the [Intune for Education portal](https://intuneeducation.portal.azure.com). If you have an app that fails with this error, then:

- Make sure the app is on the [available applications list](#available-applications). Or, make sure your app is [approved for Windows 11 SE](#add-your-own-applications)
- If the app is approved, then it's possible the app is packaged wrong. For more information, see [Add your own apps](#add-your-own-applications) and [Configure applications with Microsoft Intune][EDUWIN-1]
- If the app isn't approved, then it won't run on Windows 11 SE. To get apps approved, see [Add your own apps](#add-your-own-applications). Or, use an app that runs in a web browser, such as a web app or PWA

To access the Settings application during OOBE on a  Windows 11 SE device, press <kbd>Shift</kbd>+<kbd>F10</kbd>, then select the accessibility icon <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path d="M6.75001 3.25C6.75001 2.55964 7.30966 2 8.00001 2C8.69037 2 9.25001 2.55964 9.25001 3.25C9.25001 3.94036 8.69037 4.5 8.00001 4.5C7.30966 4.5 6.75001 3.94036 6.75001 3.25ZM8.00001 1C6.75737 1 5.75001 2.00736 5.75001 3.25C5.75001 3.42769 5.77061 3.60057 5.80955 3.76638L4.1981 3.11531C3.38523 2.78689 2.45661 3.17707 2.12226 3.98751C1.78682 4.8006 2.17658 5.72824 2.9921 6.05773L5 6.86897L5 9.25304L3.18661 12.6635C2.77397 13.4396 3.06858 14.4032 3.84463 14.8158C4.62069 15.2285 5.58431 14.9339 5.99695 14.1578L8.00028 10.3901L10.0037 14.158C10.4163 14.934 11.3799 15.2286 12.156 14.816C12.9321 14.4034 13.2267 13.4397 12.814 12.6637L11 9.252V6.86897L13.0079 6.05773C13.8234 5.72824 14.2132 4.80059 13.8777 3.98751C13.5434 3.17707 12.6148 2.78689 11.8019 3.11531L10.1905 3.76636C10.2294 3.60055 10.25 3.42768 10.25 3.25C10.25 2.00736 9.24265 1 8.00001 1ZM3.04668 4.36889C3.17149 4.06635 3.52005 3.91989 3.82349 4.04249L7.25078 5.42721C7.73138 5.62138 8.2686 5.62138 8.74921 5.42721L12.1765 4.04249C12.4799 3.91989 12.8285 4.06635 12.9533 4.36889C13.077 4.66879 12.9341 5.00902 12.6333 5.13055L10.6254 5.94179C10.2474 6.09449 10 6.46133 10 6.86897V9.252C10 9.41571 10.0402 9.57692 10.1171 9.72147L11.9311 13.1332C12.0844 13.4216 11.9749 13.7797 11.6865 13.9331C11.3981 14.0864 11.04 13.9769 10.8866 13.6885L8.88322 9.92064C8.50711 9.21327 7.49344 9.21326 7.11733 9.92064L5.114 13.6883C4.96065 13.9768 4.60252 14.0863 4.31411 13.9329C4.02569 13.7795 3.9162 13.4214 4.06955 13.133L5.88295 9.72251C5.9598 9.57796 6 9.41675 6 9.25304V6.86897C6 6.46133 5.75256 6.09449 5.3746 5.94179L3.3667 5.13055C3.06591 5.00902 2.92295 4.66879 3.04668 4.36889Z" fill="#212121" />
</svg> on the bottom-right corner of the screen.

## Related articles

- [Tutorial: deploy and manage Windows devices in a school][EDUWIN-2]

[INT-1]: /intune-education/what-is-intune-for-education

[EDUWIN-1]: /education/windows/tutorial-school-deployment/configure-device-apps
[EDUWIN-2]: /education/windows/tutorial-school-deployment/

[WIN-1]: /windows/whats-new/windows-11-requirements
