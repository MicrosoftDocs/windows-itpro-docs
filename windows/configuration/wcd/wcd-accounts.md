---
title: Accounts (Windows 10)
description: This section describes the account settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# Accounts (Windows Configuration Designer reference)

Use these settings to join a device to an Active Directory domain or an Azure Active Directory tenant, or to add local user accounts to the device.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [Azure](#azure) | X | X | X | X |  |
| [ComputerAccount](#computeraccount) | X |   | X |   |  X |
| [Users](#users) | X |  | X | X |  |


## Azure

The **Azure > Authority** and **Azure > BPRT** settings for bulk Azure Active Directory (Azure AD) enrollment can only be configured using one of the provisioning wizards. After you get a bulk token for Azure AD enrollment in a wizard, you can switch to the advanced editor to configure additional provisioning settings. For information about using the wizards, see:

- [Instructions for desktop wizard](../provisioning-packages/provision-pcs-for-initial-deployment.md)
- [Instructions for the mobile wizard](../mobile-devices/provisioning-configure-mobile.md)
- [Instructions for the kiosk wizard](../kiosk-single-app.md#wizard)

## ComputerAccount

Specifies the settings you can configure when joining a device to a domain, including the computer name and the account to use for joining the computer to the domain.

>[!NOTE]
>If you want to create a provisioning package that joins a device to Active Directory AND sets `HideOobe`, and you want to apply that package during OOBE, we also recommend setting the `ComputerName` and creating a local admin account in the provisioning package.

| Setting | Value | Description |
| --- | --- | --- |
| Account | string  | Account to use to join computer to domain  |
| AccountOU | Enter the full path for the organizational unit. For example: OU=testOU,DC=domain,DC=Domain,DC=com.  | Name of organizational unit for the computer account  |
| ComputerName | On desktop PCs, this setting specifies the DNS hostname of the computer (Computer Name) up to 63 characters. Use `%RAND:x%` to generate x number of random digits in the name, where x must be a number less than 63. For domain-joined computers, the unique name must use `%RAND:x%`. Use `%SERIAL%` to generate the name with the `computer's` serial number embedded. If the serial number exceeds the character limit, it will be truncated from the beginning of the sequence. The character restriction limit does not count the length of the macros, `%RAND:x%` and `%SERIAL%`. This setting is supported only in Windows 10, version 1803 and later. To change this setting in Windows 10, version 1709 and earlier releases, use the **ComputerName** setting under **Accounts**. | Specifies the name of the Windows device (computer name on PCs)  |
| DomainName | string (cannot be empty) | Specify the name of the domain that the device will join  |
| Password | string (cannot be empty) | Corresponds to the password of the user account that's authorized to join the computer account to the domain.  |

## Users

Use these settings to add local user accounts to the device.

| Setting | Value | Description |
| --- | --- | --- |
| UserName | string (cannot be empty)  | Specify a name for the local user account  |
| HomeDir | string (cannot be empty) | Specify the path of the home directory for the user |
| Password | string (cannot be empty)  | Specify the password for the user account |
| UserGroup | string (cannot be empty) | Specify the local user group for the user |
