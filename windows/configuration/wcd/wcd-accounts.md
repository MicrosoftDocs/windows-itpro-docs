---
title: Accounts
description: This section describes the account settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.topic: reference
ms.date: 01/25/2024
---

# Accounts (Windows Configuration Designer reference)

Use these settings to join a device to an Active Directory domain or a Microsoft Entra tenant, or to add local user accounts to the device.

## Applies to

| Setting groups | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| [Azure](#azure) | ✅ | ✅ | ✅ |  |
| [ComputerAccount](#computeraccount) | ✅ | ✅ |   |  ✅ |
| [Users](#users) | ✅ | ✅ | ✅ |  |

## Azure

The **Azure > Authority** and **Azure > BPRT** settings for bulk Microsoft Entra enrollment can only be configured using one of the provisioning wizards. After you get a bulk token for Microsoft Entra enrollment in a wizard, you can switch to the advanced editor to configure more provisioning settings. For information about using the wizards, see:

- [Instructions for desktop wizard](../provisioning-packages/provision-pcs-for-initial-deployment.md)
- [Instructions for the kiosk wizard](../kiosk-single-app.md#wizard)

## ComputerAccount

Specifies the settings you can configure when joining a device to a domain, including the computer name and the account to use for joining the computer to the domain.

>[!NOTE]
>If you want to create a provisioning package that joins a device to Active Directory AND sets `HideOobe`, and you want to apply that package during OOBE, we also recommend setting the `ComputerName` and creating a local admin account in the provisioning package.

| Setting | Value | Description |
| --- | --- | --- |
| Account | String  | Account to use to join computer to domain  |
| AccountOU | Enter the full path for the organizational unit. For example: OU=testOU,DC=domain,DC=Domain,DC=com.  | Name of organizational unit for the computer account  |
| ComputerName | On desktop PCs, this setting specifies the DNS hostname of the computer (Computer Name) up to 63 characters. Use `%RAND:x%` to generate x number of random digits in the name, where x must be a number less than 61. For domain-joined computers, the unique name must use `%RAND:x%`. Use `%SERIAL%` to generate the name with the `computer's` serial number embedded. If the serial number exceeds the character limit, it will be truncated from the beginning of the sequence. The character restriction limit doesn't count the length of the macros, including `%RAND:x%` and `%SERIAL%`. This setting is supported only in Windows 10, version 1803 and later. To change this setting in Windows 10 version 1709 and earlier releases, use the **ComputerName** setting under **Accounts**. | Specifies the name of the Windows device (computer name on PCs)  |
| DomainName | String (can't be empty) | Specify the name of the domain that the device will join  |
| Password | String (can't be empty) | Corresponds to the password of the user account that's authorized to join the computer account to the domain.  |

## Users

Use these settings to add local user accounts to the device.

| Setting | Value | Description |
| --- | --- | --- |
| UserName | String (can't be empty)  | Specify a name for the local user account  |
| HomeDir | String (can't be empty) | Specify the path of the home directory for the user |
| Password | String (can't be empty)  | Specify the password for the user account |
| UserGroup | String (can't be empty) | Specify the local user group for the user |
