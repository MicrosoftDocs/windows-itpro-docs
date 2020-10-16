---
title: Connect to remote Azure Active Directory-joined PC (Windows 10)
description: You can use Remote Desktop Connection to connect to an Azure AD-joined PC.
keywords: ["MDM", "device management", "RDP", "AADJ"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: devices
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.date: 08/02/2018
ms.reviewer: 
manager: dansimp
ms.topic: article
---

# Connect to remote Azure Active Directory-joined PC


**Applies to**

- Windows 10

From its release, Windows 10 has supported remote connections to PCs joined to Active Directory. Starting in Windows 10, version 1607, you can also connect to a remote PC that is [joined to Azure Active Directory (Azure AD)](https://docs.microsoft.com/azure/active-directory/user-help/device-management-azuread-joined-devices-setup). Starting in Windows 10, version 1809, you can [use biometrics to authenticate to a remote desktop session](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1809#remote-desktop-with-biometrics).

![Remote Desktop Connection client](images/rdp.png)

## Set up

- Both PCs (local and remote) must be running Windows 10, version 1607 or later. Remote connections to an Azure AD-joined PC running earlier versions of Windows 10 are not supported.
- Your local PC (where you are connecting from) must be either Azure AD joined or Hybrid Azure AD joined if using Windows 10 version 1607 and above, or Azure AD registered if using Windows 10 version 2004 and above. Remote connections to an Azure AD joined PC from an unjoined device or a non-Windows 10 device are not supported. 

Ensure [Remote Credential Guard](/windows/access-protection/remote-credential-guard), a new feature in Windows 10, version 1607, is turned off on the client PC you are using to connect to the remote PC.

- On the PC you want to connect to:

  1. Open system properties for the remote PC.
  
  2. Enable **Allow remote connections to this computer** and select **Allow connections only from computers running Remote Desktop with Network Level Authentication**.

     ![Allow remote connections to this computer](images/allow-rdp.png)

  3. If the user who joined the PC to Azure AD is the only one who is going to connect remotely, no additional configuration is needed. To allow additional users or groups to connect to the PC, you must allow remote connections for the specified users or groups. Click **Select Users -> Add** and enter the name of the user or group.

     > [!NOTE]
     > You can specify individual Azure AD accounts for remote connections by having the user sign in to the remote device at least once, and then running the following PowerShell cmdlet:
     > ```powershell
     > net localgroup "Remote Desktop Users" /add "AzureAD\the-UPN-attribute-of-your-user"
     > ```
     > where *the-UPN-attribute-of-your-user* is the name of the user profile in C:\Users\, which is created based on the DisplayName attribute in Azure AD.
     >
     > This command only works for AADJ device users already added to any of the local groups (administrators).
     > Otherwise this command throws the below error. For example:
     > - for cloud only user: "There is no such global user or group : *name*"
     > - for synced user: "There is no such global user or group : *name*" </br>
    
     > [!NOTE]
     > In Windows 10, version 1709, the user does not have to sign in to the remote device first.
     >
     > In Windows 10, version 1709, you can add other Azure AD users to the **Administrators** group on a device in **Settings** and restrict remote credentials to **Administrators**. If there is a problem connecting remotely, make sure that both devices are joined to Azure AD and that TPM is functioning properly on both devices.
   
  4. Click **Check Names**. If the **Name Not Found** window opens, click **Locations** and select this PC.

     > [!TIP]
     > When you connect to the remote PC, enter your account name in this format: `AzureAD UPN`. The local PC must either be domain-joined or Azure AD-joined. The local PC and remote PC must be in the same Azure AD tenant.

     > [!Note]
     > If you cannot connect using Remote Desktop Connection 6.0, you must turn off the new features of RDP 6.0 and revert back to RDP 5.0 by making a few changes in the RDP file. See the details in the [support article](https://support.microsoft.com/help/941641/remote-desktop-connection-6-0-prompts-you-for-credentials-before-you-e).

## Supported configurations

In organizations using integrated Active Directory and Azure AD, you can connect from a Hybrid-joined PC to an Azure AD-joined PC by using any of the following:

- Password
- Smartcards
- Windows Hello for Business, if the domain is managed by Microsoft Endpoint Configuration Manager.

In organizations using integrated Active Directory and Azure AD, you can connect from an Azure AD-joined PC to an AD-joined PC when the Azure AD-joined PC is on the corporate network by using any of the following:

- Password
- Smartcards
- Windows Hello for Business, if the organization has a mobile device management (MDM) subscription.

In organizations using integrated Active Directory and Azure AD, you can connect from an Azure AD-joined PC to another Azure AD-joined PC by using any of the following:

- Password
- Smartcards
- Windows Hello for Business, with or without an MDM subscription.

In organizations using only Azure AD, you can connect from an Azure AD-joined PC to another Azure AD-joined PC by using any of the following:

- Password
- Windows Hello for Business, with or without an MDM subscription.

> [!NOTE]
> If the RDP client is running Windows Server 2016 or Windows Server 2019, to be able to connect to Azure Active Directory-joined PCs, it must [allow Public Key Cryptography Based User-to-User (PKU2U) authentication requests to use online identities](https://docs.microsoft.com/windows/security/threat-protection/security-policy-settings/network-security-allow-pku2u-authentication-requests-to-this-computer-to-use-online-identities).

## Related topics

[How to use Remote Desktop](https://support.microsoft.com/instantanswers/ff521c86-2803-4bc0-a5da-7df445788eb9/how-to-use-remote-desktop)
