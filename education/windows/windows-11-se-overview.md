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

## Enable federated sign-in on devices

Before you can sign-in with a federated IdP, your devices must be configured with different policies. Follow the instructions below to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

To configure federated sign-in using Microsoft Intune, use a custom profile.

1. Sign in to the <a href="https://endpoint.microsoft.com/" target="_blank">Microsoft Endpoint Manager admin center</a> and [create a profile with custom settings][MEM-1]
1. Specify a **Name**, **Description**, and use the values for each policy in the following table:

    | Policy |
    |--------|
    | <ul type="circle"><li> OMA-URI: **`./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
    | <ul type="circle"><li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Data type: **String** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
    | <ul type="circle"><li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
    | <ul type="circle"><li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Data type: **String** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|
    | <ul type="circle"><li> OMA-URI: **`./Vendor/MSFT/SharedPC/EnableSharedPCMode`** </li><li>Data type: **Boolean** </li><li>Value: **False**</li>|

    :::image type="content" source="images/edu-federated-authentication-settings-intune.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/edu-federated-authentication-settings.png" border="true":::

1. Assign the custom policy to the security groups that will receive the settings

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure federated sign-in using a provisioning package, use the following settings:

    | Runtime setting |
    |--------|
    | <ul type="circle"><li> Path: **`FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Value: **Enabled**</li>|
    | <ul type="circle"><li> Path: **`Policies/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
    | <ul type="circle"><li> Path: **`Policies/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
    | <ul type="circle"><li> Path: **`Policies/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|
    | <ul type="circle"><li> Path: **`SharedPC/EnableSharedPCMode`** </li><li>Value: **False**</li>|

    :::image type="content" source="images/edu-federated-authentication-settings-ppkg.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/edu-federated-authentication-settings.png" border="true":::

#### [:::image type="icon" source="images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

To configure federated sign-in using a group policy object, use the following settings:

    :::row:::
      :::column span="1":::
          OMA-URI:
      :::column-end:::
      :::column span="3":::
          **`./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`**
      :::column-end:::
    :::row-end:::
    :::row:::
      :::column span="1":::
          Data type:
          Value:
      :::column-end:::
      :::column span="3":::
          **Integer**
      :::column-end:::
    :::row-end:::
    :::row:::
      :::column span="1":::
          Value:
      :::column-end:::
      :::column span="3":::
          **1**
      :::column-end:::
    :::row-end:::

    :::row:::
      :::column span="1":::
          OMA-URI:
      :::column-end:::
      :::column span="3":::
          **`./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`**
      :::column-end:::
    :::row-end:::
    :::row:::
      :::column span="1":::
          Data type:
          Value:
      :::column-end:::
      :::column span="3":::
          **Integer**
      :::column-end:::
    :::row-end:::
    :::row:::
      :::column span="1":::
          Value:
      :::column-end:::
      :::column span="3":::
          **1**
      :::column-end:::
    :::row-end:::

    | Policy |
    |--------|
    | <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
    | <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Data type: **String** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
    | <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
    | <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Data type: **String** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|
    | <li> OMA-URI: **`./Vendor/MSFT/SharedPC/EnableSharedPCMode`** </li><li>Data type: **Boolean** </li><li>Value: **False**</li>|

---


## Related articles

- [Tutorial: deploy and manage Windows devices in a school][EDUWIN-2]

[INT-1]: /intune-education/what-is-intune-for-education

[EDUWIN-1]: /education/windows/tutorial-school-deployment/configure-device-apps
[EDUWIN-2]: /education/windows/tutorial-school-deployment/

[WIN-1]: /windows/whats-new/windows-11-requirements
