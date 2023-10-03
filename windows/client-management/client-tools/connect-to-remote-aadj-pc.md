---
title: Connect to remote Azure Active Directory joined device
description: Learn how to use Remote Desktop Connection to connect to an Azure AD joined device.
ms.localizationpriority: medium
ms.date: 08/10/2023
ms.topic: article
ms.collection:
- highpri
- tier2
---

# Connect to remote Azure Active Directory joined device

Windows supports remote connections to devices joined to Active Directory s well as devices joined to Azure Active Directory (Azure AD) using Remote Desktop Protocol (RDP).

- Starting in Windows 10, version 1809, you can [use biometrics to authenticate to a remote desktop session](/windows/whats-new/whats-new-windows-10-version-1809#remote-desktop-with-biometrics).
- Starting in Windows 10/11, with 2022-10 update installed, you can [use Azure AD authentication to connect to the remote Azure AD device](#connect-with-azure-ad-authentication).

## Prerequisites

- Both devices (local and remote) must be running a supported version of Windows.
- Remote device must have the **Connect to and use this PC from another device using the Remote Desktop app** option selected under **Settings** > **System** > **Remote Desktop**.
  - It's recommended to select **Require devices to use Network Level Authentication to connect** option.
- If the user who joined the device to Azure AD is the only one who is going to connect remotely, no other configuration is needed. To allow more users or groups to connect to the device remotely, you must [add users to the Remote Desktop Users group](#add-users-to-remote-desktop-users-group) on the remote device.
- Ensure [Remote Credential Guard](/windows/access-protection/remote-credential-guard) is turned off on the device you're using to connect to the remote device.

## Connect with Azure AD Authentication

Azure AD Authentication can be used on the following operating systems for both the local and remote device:

- Windows 11 with [2022-10 Cumulative Updates for Windows 11 (KB5018418)](https://support.microsoft.com/kb/KB5018418) or later installed.
- Windows 10, version 20H2 or later with [2022-10 Cumulative Updates for Windows 10 (KB5018410)](https://support.microsoft.com/kb/KB5018410) or later installed.
- Windows Server 2022 with [2022-10 Cumulative Update for Microsoft server operating system (KB5018421)](https://support.microsoft.com/kb/KB5018421) or later installed.

There's no requirement for the local device to be joined to a domain or Azure AD. As a result, this method allows you to connect to the remote Azure AD joined device from:

- [Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join) or [Hybrid Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid) device.
- Active Directory joined device.
- Workgroup device.

Azure AD authentication can also be used to connect to Hybrid Azure AD joined devices.

To connect to the remote computer:

- Launch **Remote Desktop Connection** from Windows Search, or by running `mstsc.exe`.
- Select **Use a web account to sign in to the remote computer** option in the **Advanced** tab. This option is equivalent to the `enablerdsaadauth` RDP property. For more information, see [Supported RDP properties with Remote Desktop Services](/windows-server/remote/remote-desktop-services/clients/rdp-files).
- Specify the name of the remote computer and select **Connect**.

    > [!NOTE]
    > IP address cannot be used when **Use a web account to sign in to the remote computer** option is used.
    > The name must match the hostname of the remote device in Azure AD and be network addressable, resolving to the IP address of the remote device.

- When prompted for credentials, specify your user name in `user@domain.com` format.
- You're then prompted to allow the remote desktop connection when connecting to a new PC. Azure AD remembers up to 15 hosts for 30 days before prompting again. If you see this dialogue, select **Yes** to connect.

> [!IMPORTANT]
> If your organization has configured and is using [Azure AD Conditional Access](/azure/active-directory/conditional-access/overview), your device must satisfy the conditional access requirements to allow connection to the remote computer. Conditional Access policies with [grant controls](/azure/active-directory/conditional-access/concept-conditional-access-grant) and [session controls](/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime) may be applied to the application **Microsoft Remote Desktop (a4a365df-50f1-4397-bc59-1a1564b8bb9c)** for controlled access.

### Disconnection when the session is locked

The Windows lock screen in the remote session doesn't support Azure AD authentication tokens or passwordless authentication methods like FIDO keys. The lack of support for these authentication methods means that users can't unlock their screens in a remote session. When you try to lock a remote session, either through user action or system policy, the session is instead disconnected and the service sends a message to the user explaining they've been disconnected.

Disconnecting the session also ensures that when the connection is relaunched after a period of inactivity, Azure AD reevaluates the applicable conditional access policies.

## Connect without Azure AD Authentication

By default, RDP doesn't use Azure AD authentication, even if the remote PC supports it. This method allows you to connect to the remote Azure AD joined device from:

- [Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join) or [Hybrid Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid) device using Windows 10, version 1607 or later.
- [Azure AD registered](/azure/active-directory/devices/concept-azure-ad-register) device using Windows 10, version 2004 or later.

> [!NOTE]
> Both the local and remote device must be in the same Azure AD tenant. Azure AD B2B guests aren't supported for Remote desktop.

To connect to the remote computer:

- Launch **Remote Desktop Connection** from Windows Search, or by running `mstsc.exe`.
- Specify the name of the remote computer.
- When prompted for credentials, specify your user name in either `user@domain.com` or `AzureAD\user@domain.com` format.

> [!TIP]
> If you specify your user name in `domain\user` format, you may receive an error indicating the logon attempt failed with the message **Remote machine is AAD joined. If you are signing in to your work account, try using your work email address**.

> [!NOTE]
> For devices running Windows 10, version 1703 or earlier, the user must sign in to the remote device first before attempting remote connections.

### Supported configurations

This table lists the supported configurations for remotely connecting to an Azure AD joined device without using Azure AD authentication:

| **Criteria**                               | **Client operating system**       | **Supported credentials**                                          |
|--------------------------------------------|-----------------------------------|--------------------------------------------------------------------|
| RDP from **Azure AD registered device**    | Windows 10, version 2004 or later | Password, smart card                                               |
| RDP from **Azure AD joined device**        | Windows 10, version 1607 or later | Password, smart card, Windows Hello for Business certificate trust |
| RDP from **hybrid Azure AD joined device** | Windows 10, version 1607 or later | Password, smart card, Windows Hello for Business certificate trust |

> [!NOTE]
> If the RDP client is running Windows Server 2016 or Windows Server 2019, to be able to connect to Azure AD joined devices, it must [allow Public Key Cryptography Based User-to-User (PKU2U) authentication requests to use online identities](/windows/security/threat-protection/security-policy-settings/network-security-allow-pku2u-authentication-requests-to-this-computer-to-use-online-identities).

> [!NOTE]
> When an Azure AD group is added to the **Remote Desktop Users** group on a Windows device, it isn't honored when the user that belongs to the Azure AD group logs in through RDP, resulting in failure to establish the remote connection. In this scenario, Network Level Authentication should be disabled to allow the connection.

## Add users to Remote Desktop Users group

Remote Desktop Users group is used to grant users and groups permissions to remotely connect to the device. Users can be added either manually or through MDM policies:

- **Adding users manually**:

  You can specify individual Azure AD accounts for remote connections by running the following command, where `<userUPN>` is the UPN of the user, for example `user@domain.com`:

  ```cmd
  net localgroup "Remote Desktop Users" /add "AzureAD\<userUPN>"
  ```

  In order to execute this command, you must be a member of the local Administrators group. Otherwise, you may see an error similar to `There is no such global user or group: <name>`.

- **Adding users using policy**:

  Starting in Windows 10, version 2004, you can add users to the Remote Desktop Users using MDM policies as described in [How to manage the local administrators group on Azure AD-joined devices](/azure/active-directory/devices/assign-local-admin#manage-administrator-privileges-using-azure-ad-groups-preview).

## Related articles

[How to use Remote Desktop](https://support.microsoft.com/windows/how-to-use-remote-desktop-5fe128d5-8fb1-7a23-3b8a-41e636865e8c)
