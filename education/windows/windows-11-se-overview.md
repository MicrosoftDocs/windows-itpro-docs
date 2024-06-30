---
title: Windows 11 SE Overview
description: Learn about Windows 11 SE, and the apps that are included with the operating system.
ms.topic: overview
ms.date: 01/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
ms.collection:
  - education
  - tier1
---

# Windows 11 SE Overview

Windows 11 SE is an edition of Windows designed for education. Windows SE runs on web-first devices that use essential education apps, and it comes with Microsoft Office 365 preinstalled (subscription sold separately).

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
|`Win32`| `Win32` applications are Windows classic applications that might require installation |⛔| If users try to install or execute `Win32` applications that aren't allowed to run, they fail.|
|Universal Windows Platform (UWP)/Store apps |UWP apps are commonly obtained from the Microsoft Store and might require installation |⛔|If users try to install or execute UWP applications that haven't been allowed to run, they fail.|

> [!IMPORTANT]
> If there are specific `Win32` or UWP applications that you want to allow, work with Microsoft to get them enabled. For more information, see [Add your own applications](#add-your-own-applications).

## Applications included in Windows 11 SE

The following table lists all the applications included in Windows 11 SE and the pinning to either the Start menu or to the taskbar.

| App name                     | App type | Pinned to Start? | Pinned to taskbar? |
|:-----------------------------|:--------:|:----------------:|:------------------:|
| Alarm & Clock                | UWP      |                  |                    |
| Calculator                   | UWP      | ✅               |                    |
| Camera                       | UWP      | ✅               |                    |
| Microsoft Edge               | `Win32`  | ✅               | ✅                  |
| Excel                        | `Win32`  | ✅               |                    |
| Feedback Hub                 | UWP      |                  |                    |
| File Explorer                | `Win32`  |                  | ✅                 |
| FlipGrid                     | PWA      |                  |                    |
| Get Help                     | UWP      |                  |                    |
| Media Player                 | UWP      | ✅               |                    |
| Maps                         | UWP      |                  |                    |
| Minecraft: Education Edition | UWP      |                  |                    |
| Movies & TV                  | UWP      |                  |                    |
| News                         | UWP      |                  |                    |
| Notepad                      | `Win32`  |                  |                    |
| OneDrive                     | `Win32`  |                  |                    |
| OneNote                      | `Win32`  | ✅               |                    |
| Outlook                      | PWA      | ✅               |                    |
| Paint                        | `Win32`  | ✅               |                    |
| Photos                       | UWP      |                  |                    |
| PowerPoint                   | `Win32`  | ✅               |                    |
| Settings                     | UWP      | ✅               |                    |
| Snip & Sketch                | UWP      |                  |                    |
| Sticky Notes                 | UWP      |                  |                    |
| Teams                        | `Win32`  | ✅               |                    |
| To Do                        | UWP      |                  |                    |
| Whiteboard                   | UWP      | ✅               |                    |
| Word                         | `Win32`  | ✅               |                    |

## Available applications

The following applications can also run on Windows 11 SE, and can be deployed using Intune for Education. For more information, see [Configure applications with Microsoft Intune][EDUWIN-1].

| Application                               | Supported version | App Type | Vendor                                    |
|-------------------------------------------|-------------------|----------|-------------------------------------------|
| `3d builder`                              | 18.0.1931.0       | `Win32`    | `Microsoft`                               |
| `Absolute Software Endpoint Agent`        | 7.20.0.1          | `Win32`    | `Absolute Software Corporation`           |
| `AirSecure`                               | 8.0.0             | `Win32`    | `AIR`                                     |
| `Alertus Desktop`                         | 5.4.48.0          | `Win32`    | `Alertus technologies`                    |
| `AristotleK12 Borderless Classroom `      | 3.0.11.           | `Win32`    | `Sergeant Laboratories`                   |
| `AristotleK12 Analytics `                 | 10.0.6            | `Win32`    | `Sergeant Laboratories`                   |
| `AristotleK12 Network filter`             | 3.1.10            | `Win32`    | `Sergeant Laboratories`                   |
| `Bluebook`                                | 0.9.203            | `Win32`    | `Collegeboard`                           |
| `Brave Browser`                           | 106.0.5249.119    | `Win32`    | `Brave`                                   |
| `Bulb Digital Portfolio`                  | 0.0.7.0           | `Store`  | `Bulb`                                    |
| `CA Secure Browser`                       | 15.0.0            | `Win32`    | `Cambium Development`                     |
| `Cisco Umbrella`                          | 3.0.466.0         | `Win32`    | `Cisco`                                   |
| `CKAuthenticator`                         | 3.6+              | `Win32`    | `ContentKeeper`                           |
| `Class Policy`                            | 116.0.0           | `Win32`    | `Class Policy`                            |
| `Classroom.cloud`                         | 1.40.0004         | `Win32`    | `NetSupport`                              |
| `Clipchamp`                               | 2.5.2.            | `Store`  | `Microsoft`                               | 
| `CoGat Secure Browser`                    | 11.0.0.19         | `Win32`    | `Riverside Insights`                      |
| `ColorVeil`                               | 4.0.0.175         | `Win32`    | `East-Tec`                                | 
| `ContentKeeper Cloud`                     | 9.01.45           | `Win32`    | `ContentKeeper Technologies`              |
| `DigiExam`                                | 14.1.0            | `Win32`    | `Digiexam`                                |
| `Digital Secure testing browser`          | 15.0.0            | `Win32`    | `Digiexam`                                |
| `Dolphin Guide Connect`                   | 1.27              | `Win32`    | `Dolphin Guide Connect`                   |
| `Dragon Professional Individual`          | 16.00.200.121       | `Win32`    | `Nuance Communications`                   |
| `DRC INSIGHT Online Assessments`          | 14.0.0.0          | `Store`  | `Data recognition Corporation`              |
| `Duo from Cisco`                          | 6.3.0            | `Win32`    | `Cisco`                                   |
| `Dyknow`                                  | 7.9.13.7          | `Win32`    | `Dyknow`                                  |
| `e-Speaking Voice and Speech recognition` | 4.4.0.11          | `Win32`    | `e-speaking`                              |
| `EasyReader`                              | 10.0.4.498        | `Win32`    | `Dolphin Computer Access`                 |
| `Easysense 2`                             | 1.32.0001         | `Win32`    | `Data Harvest`                            |
| `Epson iProjection`                       | 3.31              | `Win32`    | `Epson`                                   |
| `ESET Endpoint Security`                  | 10.1.2046.0       | `Win32`    | `ESET`                                    |
| `ESET Remote Administrator Agent`         | 10.0.1126.0       | `Win32`    | `ESET`                                    |
| `eTests`                                  | 4.0.25            | `Win32`    | `CASAS`                                   |
| `Exam Writepad`                           | 24.4.1.1200      | `Win32`    | `Sheldnet`                                |
| `FirstVoices Keyboard`                    | 15.0.270          | `Win32`    | `SIL International`                       |
| `FortiClient`                             | 7.2.0.4034+       | `Win32`    | `Fortinet`                                |
| `Free NaturalReader`                      | 16.1.2            | `Win32`    | `Natural Soft`                            |
| `Ghotit Real Writer & Reader`             | 10.14.2.3         | `Win32`    | `Ghotit Ltd`                              |
| `GoGuardian`                              | 1.4.4             | `Win32`    | `GoGuardian`                              |
| `Google Chrome`                           | 110.0.5481.178    | `Win32`    | `Google`                                  |
| `GuideConnect`                            | 1.24              | `Win32`    | `Dolphin Computer Access`                 |
| `Illuminate Lockdown Browser`             | 2.0.5             | `Win32`    | `Illuminate Education`                    |
| `Immunet`                                 | 7.5.8.21178       | `Win32`    | `Immunet`                                 |
| `Impero Backdrop Client`                  | 5.0.151           | `Win32`    | `Impero Software`                         |
| `IMT Lazarus`                             | 2.86.0            | `Win32`    | `IMTLazarus`                              |
| `Inprint`                                 | 3.7.6             | `Win32`    | `Inprint`                                 |
| `Inspiration 10`                          | 10.11             | `Win32`    | `TechEdology Ltd`                         |
| `Instashare`                              | 1.3.13.0            | `Win32`    | `Instashare`                            |
| `JAWS for Windows`                        | 2024.2312.53      | `Win32`    | `Freedom Scientific`                      |
| `Kite Student Portal`                     | 9.0.0.0           | `Win32`    | `Dynamic Learning Maps`                   |
| `Keyman`                                  | 16.0.142          | `Win32`    | `SIL International`                       |
| `Kortext`                                 | 2.3.433.0         | `Store`  | `Kortext`                                 |
| `Kurzweil 3000 Assistive Learning`        | 20.13.0000        | `Win32`    | `Kurzweil Educational Systems`            |
| `LanSchool Classic`                       | 9.1.0.46          | `Win32`    | `Stoneware, Inc.`                         |
| `LanSchool Air`                           | 2.0.13312         | `Win32`    | `Stoneware, Inc.`                         |
| `Lexibar`                                 | 3.07.02           | `Win32`    | `Lexibar`                                 |
| `LGfL HomeProtect`                        | 8.3.44.11         | `Win32`    | `LGFL`                                    |
| `Lightspeed Smart Agent`                  | 1.9.1             | `Win32`    | `Lightspeed Systems`                      |
| `Lightspeed Classroom`                    | 3.4.5.0           | `Win32`    | `Lightspeed Systems`                      |
| `Lightspeed Filter Agent`                 | 2.5.2             | `Win32`    | `Lightspeed Systems`                      |
| `Lightspeed Digital`                      | 3.12.3.11         | `Win32`    | `Lightspeed Systems`                      |
| `Linewize Authentication agent `          |1.4.1              | `Win32`    | `Linewize`                                |
| `MetaMoJi ClassRoom`                      | 3.12.4.0          | `Store`    | `MetaMoJi Corporation`                    |
| `Microsoft Connect`                       | 10.0.22000.1      | `Store`    | `Microsoft`                               |
| `Mind+ Desktop`                           | 1.8.0             | `Win32`    | `Mind+Desktop`                            |
| `Mozilla Firefox`                         | 116.0.2           | `Win32`    | `Mozilla`                                 |
| `Mobile Plans`                            | 5.1911.3171.0     | `Store`    | `Microsoft Corporation`                   |
| `Musescore`                               | 4.1.1.232071203   | `Win32`    | `Musescore`                               |
| `NAPLAN`                                  | 5.2.2             | `Win32`    | `NAP`                                     |
| `Netref Student`                          | 23.1.0            | `Win32`    | `NetRef`                                  |
| `NetSupport DNA`                          | 4.80.0000         | `Win32`    | `NetSupport`                              |
| `NetSupport Manager`                      | 14.00.0012        | `Win32`    | `NetSupport`                              |
| `NetSupport Notify`                       | 5.10.1.223        | `Win32`    | `NetSupport`                              |
| `NetSupport School`                       | 14.00.0012        | `Win32`    | `NetSupport`                              |
| `NextUp Talker`                           | 1.0.49            | `Win32`    | `NextUp Technologies`                     |
| `Netsweeper Workstation Agent`            | 4.50.54.54        | `Win32`    | `Netsweeper`                              |
| `NonVisual Desktop Access`                | 2023.3            | `Win32`    | `NV Access`                               |
| `NWEA Secure Testing Browser`             | 5.4.387.0         | `Win32`    | `NWEA`                                    |
| `PC Talker Neo`                           | 2209              | `Win32`    | `Kochi System Development`                |
| `PC Talker Neo Plus`                      | 2209              | `Win32`    | `Kochi System Development`                |
| `PaperCut`                                | 22.0.6            | `Win32`    | `PaperCut Software International Pty Ltd` |
| `Pearson TestNav`                         | 1.11.3            | `Store`    | `Pearson`                                 |
| `Project Monarch Outlook`                 | 1.2023.831.400    | `Store`    | `Microsoft`                               |
| `Questar Secure Browser`                  | 5.0.5.536         | `Win32`    | `Questar, Inc`                            |
| `ReadAndWriteForWindows`                  | 12.0.78           | `Win32`    | `Texthelp Ltd.`                           |
| `Remote Desktop client (MSRDC)`           | 1.2.4487.0        | `Win32`    | `Microsoft`                               |
| `Remote Help`                             | 5.0.1311.0        | `Win32`    | `Microsoft`                               |
| `Respondus Lockdown Browser`              | 2.1.1.05          | `Win32`    | `Respondus`                               |
| `Safe Exam Browser`                       | 3.5.0.544         | `Win32`    | `Safe Exam Browser`                       |
|`SchoolYear`                               | 3.7.10            | `Win32`    |`SchoolYear`                               |
|`School Manager`                           | 3.6.10-1149       | `Win32`    |`Linewize`                                 |
|`Schoolnet Secure Tester`                  |  2.1.0            | `Win32`    |`School Net`                               |
|`Scratch`                                  | 3.0               | `Win32`    |`MIT`                                      |
| `Senso.Cloud`                             |2021.11.15.0       | `Win32`    | `Senso.Cloud`                             |
| `Skoolnext`                               | 2.19              | `Win32`    | `Skool.net`                               |
| `Smoothwall Monitor`                      | 2.9.2             | `Win32`    | `Smoothwall Ltd`                          |
| `SuperNova Magnifier & Screen Reader`     | 22.04             | `Win32`    | `Dolphin Computer Access`                 |
| `SuperNova Magnifier & Speech`            | 21.03             | `Win32`    | `Dolphin Computer Access`                 |
| `Snapplify`                               | 6.9.7             | `Win32`    | `Snapplify`                               |
|`TX Secure Browser`                        | 16.0.0            | `Win32`    | `Cambium Development`                     |
| `VitalSourceBookShelf`                    | 10.2.26.0         | `Win32`    | `VitalSource Technologies Inc`            |
|`WA Secure Browser`                        | 16.0.0            | `Win32`    | `Cambium Development`                     |
| `Winbird`                                 | 19                | `Win32`    | `Winbird Co., Ltd.`                       |
| `WordQ`                                   | 5.4.29            | `Win32`    | `WordQ`                                   |
| `Windows SEB`                             | 3.4.0             | `Win32`    | `Illinois Stateboard of Education`        |
| `Windows Notepad`                         | 12.0.78           | `Store`    | `Microsoft Corporation`                   |
| `Zoom`                                    | 5.12.8 (10232)    | `Win32`    | `Zoom`                                    |
| `ZoomText Fusion`                         | 2024.2403.1.400  | `Win32`    | `Freedom Scientific`                      |
| `ZoomText Magnifier/Reader`               | 2024.2402.66.400  | `Win32`    | `Freedom Scientific`                      |

## Add your own applications

If the applications you need aren't in the [available applications list](#available-applications), you can submit an application request at [aka.ms/eduapprequest](https://aka.ms/eduapprequest). Anyone from a school district can submit the request. In the form, sign in with your school account, such as `user@contoso.edu`. We'll update you using this email account.

Microsoft reviews every app request to make sure each app meets the following requirements:

- Apps can be any native Windows app type, such as a Microsoft Store app, `Win32` app, `.MSIX`, `.APPX`, and more
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

## Related articles

- [Tutorial: deploy and manage Windows devices in a school][EDUWIN-2]

[INT-1]: /intune-education/what-is-intune-for-education

[EDUWIN-1]: /education/windows/tutorial-school-deployment/configure-device-apps
[EDUWIN-2]: /education/windows/tutorial-school-deployment/

[WIN-1]: /windows/whats-new/windows-11-requirements
