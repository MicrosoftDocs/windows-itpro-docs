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

## Compare Remote Credential Guard with other connection options

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

Restricted Admin mode provides a method of interactively logging on to a remote host server without transmitting your credentials to the server. This prevents your credentials from being harvested during the initial connection process if the server has been compromised.

Using this mode with administrator credentials, the remote desktop client attempts to interactively logon to a host that also supports this mode without sending credentials. When the host verifies that the user account connecting to it has administrator rights and supports Restricted Admin mode, the connection succeeds. Otherwise, the connection attempt fails. Restricted Admin mode does not at any point send plain text or other re-usable forms of credentials to remote computers.

## Remote Desktop connections and helpdesk support scenarios

For helpdesk support scenarios in which personnel require administrative access to provide remote assistance to computer users via Remote Desktop sessions, it isn't recommended the use of Remote Credential Guard. If an RDP session is initiated to a compromised client that an attacker already controls, the attacker could use that open channel to create sessions on the user's behalf (without compromising credentials) to access any of the user's resources for a limited time (a few hours) after the session disconnects.

We recommend to use Restricted Admin mode option instead. For helpdesk support scenarios, RDP connections should only be initiated using the `/RestrictedAdmin` switch. This helps to ensure that credentials and other user resources are not exposed to compromised remote hosts. For more information, see [Mitigating Pass-the-Hash and Other Credential Theft v2](https://download.microsoft.com/download/7/7/A/77ABC5BD-8320-41AF-863C-6ECFB10CB4B9/Mitigating-Pass-the-Hash-Attacks-and-Other-Credential-Theft-Version-2.pdf).

To further harden security, we also recommend that you implement Local Administrator Password Solution (LAPS), which automates local administrator password management. LAPS mitigates the risk of lateral escalation and other cyberattacks  facilitated when customers use the same administrative local account and password combination on all their computers.

For further information on LAPS, see [Microsoft Security Advisory 3062591](https://technet.microsoft.com/library/security/3062591.aspx).

## Remote Credential Guard requirements

To use Remote Credential Guard, the remote host and the Remote Desktop client must meet the following requirements.

The remote host:

- Must be running at least Windows 10, version 1607 or Windows Server 2016
- Must allow Restricted Admin connections
- Must allow the client's domain user to access Remote Desktop connections
- Must allow delegation of non-exportable credentials

The client device:

- Must be running at least Windows 10, version 1607 or Windows Server 2016 to use the user's signed-in credentials
- Must be running at least Windows 10, version 1703 to be able to supply credentials, which is sent to the remote device. This allows users to run as different users without having to send credentials to the remote machine
- Must be running the Remote Desktop Windows application. The Remote Desktop Universal Windows Platform (UWP) application doesn't support Remote Credential Guard
- Must use Kerberos authentication to connect to the remote host. If the client cannot connect to a domain controller, then RDP attempts to fall back to NTLM. Remote Credential Guard does not allow NTLM fallback because this would expose credentials to risk

> [!NOTE]
> Remote Desktop client devices running earlier versions than Windows 10, version 1607, only support signed-in credentials. Therefore, the client device must also be joined to an Active Directory domain. Both Remote Desktop client and server must either be joined to the same domain, or the Remote Desktop server can be joined to a domain that has a trust relationship to the client device's domain.

[!INCLUDE [windows-defender-remote-credential-guard](../../../includes/licensing/windows-defender-remote-credential-guard.md)]

## Enable delegation of non-exportable credentials on the remote hosts

This policy is required on the remote hosts to support Remote Credential Guard and Restricted Admin mode. It allows the remote host to delegate non-exportable credentials to the client device.\
If you disable or don't configure this setting, Restricted Admin and Remote Credential Guard mode are not supported. User will always need to pass their credentials to the host.

To enable delegation of non-exportable credentials on the remote hosts, you can use:

- Microsoft Intune/MDM
- Group policy
- Registry

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg" border="false"::: **Intune/MDM**](#tab/intune)

### Enable delegation of non-exportable credentials on the remote hosts with Intune

[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Administrative Templates > System > Credentials Delegation | Remote host allows delegation of non-exportable credentials | Enabled |

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [Policy CSP][CSP-1].

| OMA-URI |Data type| Value|
|-|-|-|
| `./Device/Vendor/MSFT/Policy/Config/CredentialsDelegation/RemoteHostAllowsDelegationOfNonExportableCredentials`| string | <enabled/> |

#### [:::image type="icon" source="../images/icons/group-policy.svg" border="false"::: **Group policy**](#tab/gpo)

### Enable delegation of non-exportable credentials on the remote hosts with group policy

[!INCLUDE [gpo-settings-1](../../../includes/configure/gpo-settings-1.md)] `Computer Configuration\Administrative Templates\System\Credentials Delegation`:

| Group policy setting | Value |
| - | - |
| Remote host allows delegation of non-exportable credentials | Enabled |

[!INCLUDE [gpo-settings-2](../../../includes/configure/gpo-settings-2.md)]

#### [:::image type="icon" source="../images/icons/windows-os.svg" border="false"::: **Registry**](#tab/reg)

### Enable delegation of non-exportable credentials on the remote hosts with registry settings

To configure devices using the registry, use the following settings:

| Setting |
|--|
| **Key path:** `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation` <br>**Key name:** `AllowProtectedCreds`<br>**Type:** `REG_DWORD`<br>**Value:** `1` |

You can add this by running the following command from an elevated command prompt:

```cmd
reg.exe add HKLM\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation /v AllowProtectedCreds /d 1 /t REG_DWORD
```

---

## Enable Remote Credential Guard on the client devices

To enable Remote Credential Guard on the clients, you can use:

- Microsoft Intune/MDM
- Group policy
- Registry

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg" border="false"::: **Intune/MDM**](#tab/intune)

### Configure Remote Credential Guard on the client devices with Intune

[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Administrative Templates > System > Credentials Delegation | Restrict delegation of credentials to remote servers | Select **Enabled** and in the dropdown, select one of the options:<br>&emsp;- **Restrict Credential Delegation**<br>&emsp;- **Require Remote Credential Guard**<br>&emsp;- **Require Restricted Admin**|

When running in *Restricted Admin* or *Remote Credential Guard* mode, participating apps do not expose signed in or supplied credentials to a remote host:

- Restricted Admin limits access to resources located on other servers or networks from the remote host because credentials are not delegated
- Remote Credential Guard does not limit access to resources because it redirects all requests back to the client device
- Restrict credential delegation: Participating applications must use Restricted Admin or Remote Credential Guard to connect to remote hosts
- Require Remote Credential Guard: Participating applications must use Remote Credential Guard to connect to remote hosts
- Require Restricted Admin: Participating applications must use Restricted Admin to connect to remote hosts

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [Policy CSP][CSP-2].

| OMA-URI |Data type| Value|
|-|-|-|
| `./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/RestrictedRemoteAdministration`| string | <enabled/> |

0 = Disabled
1 = RequireRestrictedAdmin
2 = RequireRemoteCredentialGuard
3 = PreferRemoteCredentialGuard

#### [:::image type="icon" source="../images/icons/group-policy.svg" border="false"::: **Group policy**](#tab/gpo)

### Configure Remote Credential Guard on the client devices with group policy

[!INCLUDE [gpo-settings-1](../../../includes/configure/gpo-settings-1.md)] `Computer Configuration\Administrative Templates\System\Credentials Delegation`:

| Group policy setting | Value |
| - | - |
| Restrict delegation of credentials to remote servers| **Enabled** and in the dropdown, select one of the options:<br>&emsp;- **Restrict Credential Delegation**<br>&emsp;- **Require Remote Credential Guard**<br>&emsp;- **Require Restricted Admin**|

[!INCLUDE [gpo-settings-2](../../../includes/configure/gpo-settings-2.md)]

- If you want to require either [Restricted Admin mode](https://social.technet.microsoft.com/wiki/contents/articles/32905.remote-desktop-services-enable-restricted-admin-mode.aspx) or Remote Credential Guard, choose **Restrict Credential Delegation**. In this configuration, Remote Credential Guard is preferred, but it will use Restricted Admin mode (if supported) when Remote Credential Guard cannot be used
     > [!NOTE]
     > Neither Remote Credential Guard nor Restricted Admin mode will send credentials in clear text to the Remote Desktop server.
     > When **Restrict Credential Delegation** is enabled, the /restrictedAdmin switch will be ignored. Windows will enforce the policy configuration instead and will use Remote Credential Guard.

- If you want to require Remote Credential Guard, choose **Require Remote Credential Guard**. With this setting, a Remote Desktop connection will succeed only if the remote computer meets the [requirements](#remote-credential-guard-requirements) listed earlier in this topic.
- If you  want to require Restricted Admin mode, choose **Require Restricted Admin**. For information about Restricted Admin mode, see the table in  [Comparing Remote Credential Guard with other Remote Desktop connection options](#comparing-windows-defender-remote-credential-guard-with-other-remote-desktop-connection-options), earlier in this topic.

#### [:::image type="icon" source="../images/icons/windows-os.svg" border="false"::: **Registry**](#tab/reg)

### Configure Remote Credential Guard on the client devices with registry settings

To configure devices using the registry, use the following settings:

| Setting |
|--|
| **Key path:** `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa` <br>**Key name:** `DisableRestrictedAdmin`<br>**Type:** `REG_DWORD`<br>**Value:**<br>&emsp;`0` (to turn on Restricted Admin and Remote Credential Guard)<br>&emsp;`` (to )|

You can add this by running the following command from an elevated command prompt:

```cmd
reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v DisableRestrictedAdmin /d 0 /t REG_DWORD
```

---

## Use Remote Credential Guard

### Use Remote Credential Guard with a parameter to Remote Desktop Connection

If you don't use Group Policy in your organization, you can add the `remoteGuard` parameter when you start Remote Desktop Connection to turn on Remote Credential Guard for that connection:

```cmd
mstsc.exe /remoteGuard
```

> [!NOTE]
> The user must be authorized to connect to the remote server using Remote Desktop Protocol, for example by being a member of the Remote Desktop Users local group on the remote computer.

## Additional considerations

Here are some additional considerations for Remote Credential Guard:

- Remote Credential Guard doesn't support compound authentication. For example, if you're trying to access a file server from a remote host that requires a device claim, access will be denied
- Remote Credential Guard can be used only when connecting to a device that is joined to an Active Directory domain. It can't be used when connecting to remote devices joined to Azure Active Directory
- Remote Credential Guard only works with the RDP protocol
- No credentials are sent to the target device, but the target device still acquires Kerberos Service Tickets on its own
- The server and client must authenticate using Kerberos

<!--links-->

[INT-1]: /mem/intune/configuration/settings-catalog
[CSP-1]: /windows/client-management/mdm/policy-csp-credentialsdelegation
[CSP-2]: /windows/client-management/mdm/policy-csp-admx-credssp