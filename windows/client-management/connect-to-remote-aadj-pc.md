---
title: Connect to remote Azure Active Directory-joined PC (Windows)
description: You can use Remote Desktop Connection to connect to an Azure AD-joined PC.
ms.prod: windows-client
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.author: vinpa
ms.date: 01/18/2022
ms.reviewer: 
manager: aaroncz
ms.topic: article
ms.collection: highpri
ms.technology: itpro-manage
---

# Connect to remote Azure Active Directory-joined PC


**Applies to**

- Windows 10
- Windows 11


From its release, Windows 10 has supported remote connections to PCs joined to Active Directory. Starting in Windows 10, version 1607, you can also connect to a remote PC that is [joined to Azure Active Directory (Azure AD)](/azure/active-directory/devices/concept-azure-ad-join). Starting in Windows 10, version 1809, you can [use biometrics to authenticate to a remote desktop session](/windows/whats-new/whats-new-windows-10-version-1809#remote-desktop-with-biometrics).

![Remote Desktop Connection client.](images/rdp.png)

## Set up

- Both PCs (local and remote) must be running Windows 10, version 1607 or later. Remote connections to an Azure AD-joined PC running earlier versions of Windows 10 aren't supported.
- Your local PC (where you're connecting from) must be either Azure AD-joined or Hybrid Azure AD-joined if using Windows 10, version 1607 and above, or [Azure AD registered](/azure/active-directory/devices/concept-azure-ad-register) if using Windows 10, version 2004 and above. Remote connections to an Azure AD-joined PC from an unjoined device or a non-Windows 10 device aren't supported. 
- The local PC and remote PC must be in the same Azure AD tenant. Azure AD B2B guests aren't supported for Remote desktop. 

Ensure [Remote Credential Guard](/windows/access-protection/remote-credential-guard), a new feature in Windows 10, version 1607, is turned off on the client PC you're using to connect to the remote PC.

- On the PC you want to connect to:

  1. Open system properties for the remote PC.
  
  2. Enable **Allow remote connections to this computer** and select **Allow connections only from computers running Remote Desktop with Network Level Authentication**.

     ![Allow remote connections to this computer.](images/allow-rdp.png)

  3. If the user who joined the PC to Azure AD is the only one who is going to connect remotely, no other configuration is needed. To allow more users or groups to connect to the PC, you must allow remote connections for the specified users or groups. Users can be added either manually or through MDM policies:
     
      - Adding users manually
   
        You can specify individual Azure AD accounts for remote connections by running the following PowerShell cmdlet:
        ```powershell
        net localgroup "Remote Desktop Users" /add "AzureAD\the-UPN-attribute-of-your-user"
        ```
        where *the-UPN-attribute-of-your-user* is the name of the user profile in C:\Users\, which is created based on the DisplayName attribute in Azure AD.

        In order to execute this PowerShell command, you must be a member of the local Administrators group. Otherwise, you'll get an error like this example:
        - for cloud only user: "There is no such global user or group : *name*"
        - for synced user: "There is no such global user or group : *name*" </br>

         > [!NOTE]
         > For devices running Windows 10, version 1703 or earlier, the user must sign in to the remote device first before attempting remote connections.
         >
         > Starting in Windows 10, version 1709, you can add other Azure AD users to the **Administrators** group on a device in **Settings** and restrict remote credentials to **Administrators**. If there's a problem connecting remotely, make sure that both devices are joined to Azure AD and that TPM is functioning properly on both devices.

      - Adding users using policy
     
         Starting in Windows 10, version 2004, you can add users to the Remote Desktop Users using MDM policies as described in [How to manage the local administrators group on Azure AD-joined devices](/azure/active-directory/devices/assign-local-admin#manage-administrator-privileges-using-azure-ad-groups-preview).

         > [!TIP]
         > When you connect to the remote PC, enter your account name in this format: AzureAD\yourloginid@domain.com.

         > [!NOTE]
         > If you cannot connect using Remote Desktop Connection 6.0, you must turn off the new features of RDP 6.0 and revert back to RDP 5.0 by making a few changes in the RDP file. See the details in this [support article](/troubleshoot/windows-server/remote/remote-desktop-connection-6-prompts-credentials).

## Supported configurations

The table below lists the supported configurations for remotely connecting to an Azure AD-joined PC:

| Criteria | RDP from Azure AD registered device| RDP from Azure AD joined device| RDP from hybrid Azure AD joined device |
| - | - | - | - |
| **Client operating systems**| Windows 10, version 2004 and above| Windows 10, version 1607 and above | Windows 10, version 1607 and above |
| **Supported credentials**| Password, smartcard| Password, smartcard, Windows Hello for Business certificate trust | Password, smartcard, Windows Hello for Business certificate trust |


> [!NOTE]
> If the RDP client is running Windows Server 2016 or Windows Server 2019, to be able to connect to Azure Active Directory-joined PCs, it must [allow Public Key Cryptography Based User-to-User (PKU2U) authentication requests to use online identities](/windows/security/threat-protection/security-policy-settings/network-security-allow-pku2u-authentication-requests-to-this-computer-to-use-online-identities).

> [!NOTE]
> When an Azure Active Directory group is added to the Remote Desktop Users group on a Windows device, it isn't honoured when the user that belongs to the Azure AD group logs in through Remote Desktop Protocol (they can't sign in using Remote Desktop Connection). In this scenario, Network Level Authentication should be disabled to run the connection.

## Related topics

[How to use Remote Desktop](https://support.microsoft.com/windows/how-to-use-remote-desktop-5fe128d5-8fb1-7a23-3b8a-41e636865e8c)
