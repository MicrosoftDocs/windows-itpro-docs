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
| ComputerName | Specify a unique name for the domain-joined computers using %RAND:x%, where x is an integer less than 15 digits long, or using %SERIAL% characters in the name.</br></br>ComputerName is a string with a maximum length of 15 bytes of content:</br></br>- ComputerName can use ASCII characters (1 byte each) and/or multi-byte characters such as Kanji, so long as you do not exceed 15 bytes of content.</br></br>- ComputerName cannot use spaces or any of the following characters: \{ &#124; \} ~ \[ \\ \] ^ ' : ; < = > ? @ ! " \# $ % ` \( \) + / . , \* &, or contain any spaces.</br></br>- ComputerName cannot use some non-standard characters, such as emoji.</br></br>Computer names that cannot be validated through the DnsValidateName function cannot be used, for example, computer names that only contain numbers (0-9). For more information, see the [DnsValidateName function](https://go.microsoft.com/fwlink/?LinkId=257040). | Specifies the name of the Windows device (computer name on PCs)  |
| DomainName | string (cannot be empty) | Specify the name of the domain that the device will join  |
| Password | string (cannot be empty) | Corresponds to the password of the user account that's authorized to join the computer account to the domain.  |

## Users

Use these settings to add local user accounts to the device.

| Setting | Value | Description |
| --- | --- | --- |
| UserName | string (cannot be empty)  | Specify a name for the local user account  |
| HomeDir | string (cannot be ampty) | Specify the path of the home directory for the user |
| Password | string (cannot be empty)  | Specify the password for the user account |
| UserGroup | string (cannot be empty) | Specify the local user group for the user |
