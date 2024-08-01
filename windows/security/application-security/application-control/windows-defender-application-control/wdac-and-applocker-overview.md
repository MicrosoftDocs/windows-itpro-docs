---
title: WDAC and AppLocker Overview
description: Compare Windows application control technologies.
ms.localizationpriority: medium
ms.date: 01/03/2024
ms.topic: conceptual
---

# Windows Defender Application Control and AppLocker Overview

> [!NOTE]
> Some capabilities of Windows Defender Application Control (WDAC) are only available on specific Windows versions. Learn more about the [WDAC feature availability](feature-availability.md).

Windows 10 and Windows 11 include two technologies that can be used for application control, depending on your organization's specific scenarios and requirements: Windows Defender Application Control (WDAC) and AppLocker.

## Windows Defender Application Control

WDAC was introduced with Windows 10 and allows organizations to control which drivers and applications are allowed to run on their Windows clients. It was designed as a security feature under the [servicing criteria](https://www.microsoft.com/msrc/windows-security-servicing-criteria), defined by the Microsoft Security Response Center (MSRC).

WDAC policies apply to the managed computer as a whole and affects all users of the device. WDAC rules can be defined based on:

- Attributes of the codesigning certificate(s) used to sign an app and its binaries
- Attributes of the app's binaries that come from the signed metadata for the files, such as Original Filename and version, or the hash of the file
- The reputation of the app as determined by Microsoft's [Intelligent Security Graph](design/use-wdac-with-intelligent-security-graph.md)
- The identity of the process that initiated the installation of the app and its binaries ([managed installer](design/configure-authorized-apps-deployed-with-a-managed-installer.md))
- The [path from which the app or file is launched](design/select-types-of-rules-to-create.md#more-information-about-filepath-rules) (beginning with Windows 10 version 1903)
- The process that launched the app or binary

> [!NOTE]
> WDAC was originally released as part of Device Guard and called configurable code integrity. Device Guard and configurable code integrity are no longer used except to find where to deploy WDAC policy via Group Policy.

### WDAC System Requirements

WDAC policies can be created and applied on any client edition of Windows 10 or Windows 11, or on Windows Server 2016 and higher. WDAC policies can be deployed via a Mobile Device Management (MDM) solution, for example, Intune; a management interface such as Configuration Manager; or a script host such as PowerShell. Group Policy can also be used to deploy WDAC policies, but is limited to single-policy format policies that work on Windows Server 2016 and 2019.

For more information on which individual WDAC features are available on specific WDAC builds, see [WDAC feature availability](feature-availability.md).

## AppLocker

AppLocker was introduced with Windows 7, and allows organizations to control which applications are allowed to run on their Windows clients. AppLocker helps to prevent end-users from running unapproved software on their computers but doesn't meet the servicing criteria for being a security feature.

AppLocker policies can apply to all users on a computer, or to individual users and groups. AppLocker rules can be defined based on:

- Attributes of the codesigning certificate(s) used to sign an app and its binaries.
- Attributes of the app's binaries that come from the signed metadata for the files, such as Original Filename and version, or the hash of the file.
- The path from which the app or file is launched.

AppLocker is also used by some features of WDAC, including [managed installer](/windows/security/application-security/application-control/windows-defender-application-control/design/configure-authorized-apps-deployed-with-a-managed-installer) and the [Intelligent Security Graph](/windows/security/application-security/application-control/windows-defender-application-control/design/use-wdac-with-intelligent-security-graph).

### AppLocker System Requirements

AppLocker policies can only be configured on and applied to devices that are running on the supported versions and editions of the Windows operating system. For more info, see [Requirements to Use AppLocker](applocker/requirements-to-use-applocker.md).
AppLocker policies can be deployed using Group Policy or MDM.

## Choose when to use WDAC or AppLocker

Generally, customers who are able to implement application control using WDAC, rather than AppLocker, should do so. WDAC is undergoing continual improvements, and is getting added support from Microsoft management platforms. Although AppLocker continues to receive security fixes, it isn't getting new feature improvements.

However, in some cases, AppLocker might be the more appropriate technology for your organization. AppLocker is best when:

- You have a mixed Windows operating system (OS) environment and need to apply the same policy controls to Windows 10 and earlier versions of the OS.
- You need to apply different policies for different users or groups on shared computers.
- You don't want to enforce application control on application files such as DLLs or drivers.

AppLocker can also be deployed as a complement to WDAC to add user or group-specific rules for shared device scenarios, where it's important to prevent some users from running specific apps. As a best practice, you should enforce WDAC at the most restrictive level possible for your organization, and then you can use AppLocker to further fine-tune the restrictions.
