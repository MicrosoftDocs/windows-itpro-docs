---
title: Remote Credential Guard 
description: Learn how Remote Credential Guard helps to secure Remote Desktop credentials by never sending them to the target device.
ms.collection: 
- highpri
- tier1
ms.topic: how-to
ms.date: 08/16/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
---

# Remote Credential Guard

Remote Credential Guard helps you protect your credentials over a Remote Desktop (RDP) connection by redirecting Kerberos requests back to the device that's requesting the connection. If the target device is compromised, your credentials are not exposed because both credential and credential derivatives are never passed over the network to the target device. Remote Credential Guard also provides single sign-on experiences for Remote Desktop sessions.\
This article describes how to configure and use Remote Credential Guard.

> [!IMPORTANT]
> For information on Remote Desktop connection scenarios involving helpdesk support, see [Remote Desktop connections and helpdesk support scenarios](#remote-desktop-connections-and-helpdesk-support-scenarios) in this article.

## Compare Remote Credential Guard with other Remote Desktop connection options

Use the following table to compare different Remote Desktop connection security options:

|Feature|Remote Desktop|Remote Credential Guard|Restricted Admin mode|
|-|-|-|-|
| Single sign-on (SSO) to other systems as signed in user|✅|✅|❌ Remote Desktop session connects to other resources as remote host's identity |
| Prevent use of domain identity during connection |❌|❌|✅|
| Prevent use of credentials after disconnection|❌|✅|✅|
| Prevent Pass-the-Hash (PtH)|❌|✅|✅|
| Supported authentication | Any negotiable protocol | Kerberos only | Any negotiable protocol |
| Multi-hop RDP | ✅ | ✅ | ❌ Not allowed for user as the session is running as a local host account |
| Credentials supported from the remote desktop client device | <ul><li><b>Signed on</b> credentials <li> <b>Supplied</b> credentials<li> <b>Saved</b> credentials </ul> | <ul><li> <b>Signed on</b> credentials only | <ul><li><b>Signed on</b> credentials<li><b>Supplied</b> credentials<li><b>Saved</b> credentials</ul> |
| RDP access granted with | Membership of *Remote Desktop Users* group on remote host | Membership of *Remote Desktop Users* group on remote host | Local user on the remote host, with membership of the *Administrators* group |

Using a Remote Desktop session without Remote Credential Guard has the following security implications:

- Credentials are sent to and stored on the remote host
- Credentials are not protected from attackers on the remote host
- Attacker can use credentials after disconnection

With Remote Credential Guard:

- Credentials are not sent to the remote host
- You can connect to other systems using SSO
- User credentials remain on the client. An attacker can act on behalf of the user *only* when the session is ongoing

With [Restricted Admin mode](https://social.technet.microsoft.com/wiki/contents/articles/32905.how-to-enable-restricted-admin-mode-for-remote-desktop.aspx):

- Connect to other systems using host's identity
- Highest protection level
- Requires user account administrator rights on the remote host
- User logs on to the server as local administrator, so an attacker cannot act on behalf of the *domain user*. Any attack is local to the server

For further technical information, see [Remote Desktop Protocol](/windows/win32/termserv/remote-desktop-protocol) and [How Kerberos works](/previous-versions/windows/it-pro/windows-2000-server/cc961963(v=technet.10)).

## Remote Desktop connections and helpdesk support scenarios

For helpdesk support scenarios in which personnel require administrative access to provide remote assistance to computer users via Remote Desktop sessions, it isn't recommended the use of Remote Credential Guard. If an RDP session is initiated to a compromised client that an attacker already controls, the attacker could use that open channel to create sessions on the user's behalf (without compromising credentials) to access any of the user's resources for a limited time (a few hours) after the session disconnects.

We recommend to use Restricted Admin mode option instead. For helpdesk support scenarios, RDP connections should only be initiated using the `/RestrictedAdmin` switch. This helps to ensure that credentials and other user resources are not exposed to compromised remote hosts. For more information, see [Mitigating Pass-the-Hash and Other Credential Theft v2](https://download.microsoft.com/download/7/7/A/77ABC5BD-8320-41AF-863C-6ECFB10CB4B9/Mitigating-Pass-the-Hash-Attacks-and-Other-Credential-Theft-Version-2.pdf).

To further harden security, we also recommend that you implement Local Administrator Password Solution (LAPS), which automates local administrator password management. LAPS mitigates the risk of lateral escalation and other cyberattacks  facilitated when customers use the same administrative local account and password combination on all their computers.

For further information on LAPS, see [Microsoft Security Advisory 3062591](https://technet.microsoft.com/library/security/3062591.aspx).

## Remote Credential Guard requirements

To use Remote Credential Guard, the Remote Desktop client and remote host must meet the following requirements:

The Remote Desktop client device:

- Must be running at least Windows 10, version 1703 to be able to supply credentials, which is sent to the remote device. This allows users to run as different users without having to send credentials to the remote machine
- Must be running at least Windows 10, version 1607 or Windows Server 2016 to use the user's signed-in credentials. This requires the user's account be able to sign in to both the client device and the remote host
- Must be running the Remote Desktop Classic Windows application. The Remote Desktop Universal Windows Platform application doesn't support Remote Credential Guard
- Must use Kerberos authentication to connect to the remote host. If the client cannot connect to a domain controller, then RDP attempts to fall back to NTLM. Remote Credential Guard does not allow NTLM fallback because this would expose credentials to risk

The Remote Desktop remote host:

- Must be running at least Windows 10, version 1607 or Windows Server 2016
- Must allow Restricted Admin connections
- Must allow the client's domain user to access Remote Desktop connections
- Must allow delegation of non-exportable credentials

> [!NOTE]
> Remote Desktop client devices running earlier versions, at minimum Windows 10 version 1607, only support signed-in credentials, so the client device must also be joined to an Active Directory domain. Both Remote Desktop client and server must either be joined to the same domain, or the Remote Desktop server can be joined to a domain that has a trust relationship to the client device's domain.
>
> GPO [Remote host allows delegation of non-exportable credentials](/windows/client-management/mdm/policy-csp-credentialsdelegation) should be enabled for delegation of non-exportable credentials.

[!INCLUDE [windows-defender-remote-credential-guard](../../../includes/licensing/windows-defender-remote-credential-guard.md)]

## Enable Remote Credential Guard

You must enable Restricted Admin or Remote Credential Guard on the remote host by using the Registry.

1. Open Registry Editor on the remote host
1. Enable Restricted Admin and Remote Credential Guard:

  - Go to `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa`
  - Add a new DWORD value named **DisableRestrictedAdmin**
  - To turn on Restricted Admin and Remote Credential Guard, set the value of this registry setting to 0

1. Close Registry Editor

You can add this by running the following command from an elevated command prompt:

```cmd
reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v DisableRestrictedAdmin /d 0 /t REG_DWORD
```

## Use Remote Credential Guard

You can enable Remote Credential Guard on the client device either by using Group Policy or by using a parameter with the Remote Desktop Connection.

### Turn on Remote Credential Guard by using Group Policy

1. From the Group Policy Management Console, go to **Computer Configuration > Administrative Templates > System > Credentials Delegation > Restrict delegation of credentials to remote servers**
    ![Remote Credential Guard Group Policy.](images/remote-credential-guard-gp.png)
1. Under **Use the following restricted mode**:
  - If you want to require either [Restricted Admin mode](https://social.technet.microsoft.com/wiki/contents/articles/32905.remote-desktop-services-enable-restricted-admin-mode.aspx) or Remote Credential Guard, choose **Restrict Credential Delegation**. In this configuration, Remote Credential Guard is preferred, but it will use Restricted Admin mode (if supported) when Remote Credential Guard cannot be used

     > [!NOTE]
     > Neither Remote Credential Guard nor Restricted Admin mode will send credentials in clear text to the Remote Desktop server.
     > When **Restrict Credential Delegation** is enabled, the /restrictedAdmin switch will be ignored. Windows will enforce the policy configuration instead and will use Remote Credential Guard.

  - If you want to require Remote Credential Guard, choose **Require Remote Credential Guard**. With this setting, a Remote Desktop connection will succeed only if the remote computer meets the [requirements](#remote-credential-guard-requirements) listed earlier in this topic.
  - If you  want to require Restricted Admin mode, choose **Require Restricted Admin**. For information about Restricted Admin mode, see the table in  [Comparing Remote Credential Guard with other Remote Desktop connection options](#comparing-windows-defender-remote-credential-guard-with-other-remote-desktop-connection-options), earlier in this topic.

1. Select **OK**
1. Close the Group Policy Management Console
1. From a command prompt, run `gpupdate.exe /force` to ensure that the Group Policy object is applied

### Use Remote Credential Guard with a parameter to Remote Desktop Connection

If you don't use Group Policy in your organization, or if not all your remote hosts support Remote Credential Guard, you can add the remoteGuard parameter when you start Remote Desktop Connection to turn on Remote Credential Guard for that connection.

```cmd
mstsc.exe /remoteGuard
```

> [!NOTE]
> The user must be authorized to connect to the remote server using Remote Desktop Protocol, for example by being a member of the Remote Desktop Users local group on the remote computer.

## Considerations when using Remote Credential Guard

- Remote Credential Guard does not support compound authentication. For example, if you're trying to access a file server from a remote host that requires a device claim, access will be denied
- Remote Credential Guard can be used only when connecting to a device that is joined to a Windows Server Active Directory domain, including AD domain-joined servers that run as Azure virtual machines (VMs). Remote Credential Guard cannot be used when connecting to remote devices joined to Azure Active Directory
- Remote Desktop Credential Guard only works with the RDP protocol
- No credentials are sent to the target device, but the target device still acquires Kerberos Service Tickets on its own
- The server and client must authenticate using Kerberos
