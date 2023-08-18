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

## Overview

Remote Credential Guard helps you protect your credentials over a Remote Desktop (RDP) connection by redirecting Kerberos requests back to the device that's requesting the connection. If the target device is compromised, your credentials aren't exposed because both credential and credential derivatives are never passed over the network to the target device. Remote Credential Guard also provides single sign-on experiences for Remote Desktop sessions.

This article describes how to configure and use Remote Credential Guard.

> [!IMPORTANT]
> For information on Remote Desktop connection scenarios involving helpdesk support, see [Remote Desktop connections and helpdesk support scenarios](#remote-desktop-connections-and-helpdesk-support-scenarios) in this article.

## Compare Remote Credential Guard with other connection options

Using a Remote Desktop session without Remote Credential Guard has the following security implications:

- Credentials are sent to and stored on the remote host
- Credentials aren't protected from attackers on the remote host
- Attacker can use credentials after disconnection

The security benefits of Remote Credential Guard include:

- Credentials aren't sent to the remote host
- During the remote session you can connect to other systems using SSO
- An attacker can act on behalf of the user only when the session is ongoing

The security benefits of [Restricted Admin mode][TECH-1] include:

- Credentials aren't sent to the remote host
- The Remote Desktop session connects to other resources as the remote host's identity
- An attacker can't act on behalf of the user and any attack is local to the server

Use the following table to compare different Remote Desktop connection security options:

| Feature | Remote Desktop | Remote Credential Guard | Restricted Admin mode |
|--|--|--|--|
| Single sign-on (SSO) to other systems as signed in user | ✅ | ✅ | ❌ |
| Multi-hop RDP | ✅ | ✅ | ❌ |
| Prevent use of user's identity during connection | ❌ | ❌ | ✅ |
| Prevent use of credentials after disconnection | ❌ | ✅ | ✅ |
| Prevent Pass-the-Hash (PtH) | ❌ | ✅ | ✅ |
| Supported authentication | Any negotiable protocol | Kerberos only | Any negotiable protocol |
| Credentials supported from the remote desktop client device | - Signed on credentials<br>- Supplied credentials<br>- Saved credentials | - Signed on credentials<br>- Supplied credentials<br> | - Signed on credentials<br>- Supplied credentials<br>- Saved credentials |
| RDP access granted with | Membership of **Remote Desktop Users** group on remote host | Membership of **Remote Desktop Users** group on remote host | Membership of **Administrators** group on remote host |

## Remote Credential Guard requirements

To use Remote Credential Guard, the remote host and the client must meet the following requirements.

The remote host:

- Must allow the user to access via Remote Desktop connections
- Must allow delegation of nonexportable credentials to the client device

The client device:

- Must be running the Remote Desktop Windows application. The Remote Desktop Universal Windows Platform (UWP) application doesn't support Remote Credential Guard
- Must use Kerberos authentication to connect to the remote host. If the client can't connect to a domain controller, then RDP attempts to fall back to NTLM. Remote Credential Guard does not allow NTLM fallback because this would expose credentials to risk

[!INCLUDE [windows-defender-remote-credential-guard](../../../includes/licensing/windows-defender-remote-credential-guard.md)]

## Enable delegation of nonexportable credentials on the remote hosts

This policy is required on the remote hosts to support Remote Credential Guard and Restricted Admin mode. It allows the remote host to delegate nonexportable credentials to the client device.\
If you disable or don't configure this setting, Restricted Admin and Remote Credential Guard mode aren't supported. User will always need to pass their credentials to the host, exposing users to the risk of credential theft from attackers on the remote host.

To enable delegation of nonexportable credentials on the remote hosts, you can use:

- Microsoft Intune/MDM
- Group policy
- Registry

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg" border="false"::: **Intune/MDM**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Administrative Templates > System > Credentials Delegation** | Remote host allows delegation of nonexportable credentials | Enabled |

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-3] with the [Policy CSP][CSP-1].

| Setting |
|--------|
| - OMA-URI: `./Device/Vendor/MSFT/Policy/Config/CredentialsDelegation/RemoteHostAllowsDelegationOfNonExportableCredentials` <br>- Data type: string <br>- Value: `<enabled/>`|

#### [:::image type="icon" source="../images/icons/group-policy.svg" border="false"::: **Group policy**](#tab/gpo)

[!INCLUDE [gpo-settings-1](../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\System\Credentials Delegation** | Remote host allows delegation of nonexportable credentials | Enabled |

[!INCLUDE [gpo-settings-2](../../../includes/configure/gpo-settings-2.md)]

#### [:::image type="icon" source="../images/icons/windows-os.svg" border="false"::: **Registry**](#tab/reg)

To configure devices using the registry, use the following settings:

| Setting |
|-|
|  Key path: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa` <br>- Key name: `DisableRestrictedAdmin`<br>- Type: `REG_DWORD`<br>- Value:`0`|

You can add this by running the following command from an elevated command prompt:

```cmd
reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v DisableRestrictedAdmin /d 0 /t REG_DWORD
```

---

## Configure delegation of credentials on the clients

To enable Remote Credential Guard on the clients, you can configure a policy that prevents the delegation of credentials to the remote hosts.

> [!TIP]
> If you don't want to configure your clients to enforce Remote Credential Guard, you can use the following command to use Remote Credential Guard for a specific RDP session:
> ```cmd
> mstsc.exe /remoteGuard
> ```

The policy can have different values, depending on the level of security you want to enforce:

- **Disabled**: *Restricted Admin* and *Remote Credential Guard* mode aren't enforced and the Remote Desktop Client can delegate credentials to remote devices
- **Require Restricted Admin**: the Remote Desktop Client must use Restricted Admin to connect to remote hosts
- **Require Remote Credential Guard**: Remote Desktop Client must use Remote Credential Guard to connect to remote hosts
- **Restrict credential delegation**: Remote Desktop Client must use Restricted Admin or Remote Credential Guard to connect to remote hosts. In this configuration, Remote Credential Guard is preferred, but it uses Restricted Admin mode (if supported) when Remote Credential Guard can't be used

> [!NOTE]
> When *Restrict Credential Delegation* is enabled, the `/restrictedAdmin` switch will be ignored. Windows enforces the policy configuration instead and uses Remote Credential Guard.

To configure your clients, you can use:

- Microsoft Intune/MDM
- Group policy
- Registry

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg" border="false"::: **Intune/MDM**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Administrative Templates > System > Credentials Delegation | Restrict delegation of credentials to remote servers | Select **Enabled** and in the dropdown, select one of the options:<br>&emsp;- **Restrict Credential Delegation**<br>&emsp;- **Require Remote Credential Guard** |

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-3] with the [Policy CSP][CSP-2].

| Setting |
|--|
|- OMA-URI: `./Device/Vendor/MSFT/Policy/Config/ADMX_CredSsp/RestrictedRemoteAdministration` <br>- Data type: string <br>- Value: `<enabled/><data id=\"RestrictedRemoteAdministrationDrop\" value=\"2\"/>` |

Possible values for `RestrictedRemoteAdministrationDrop` are:

- `0`: Disabled
- `1`: Require Restricted Admin
- `2`: Require Remote Credential Guard
- `3`: Restrict credential delegation

#### [:::image type="icon" source="../images/icons/group-policy.svg" border="false"::: **Group policy**](#tab/gpo)

[!INCLUDE [gpo-settings-1](../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\System\Credentials Delegation** | Restrict delegation of credentials to remote servers| **Enabled** and in the dropdown, select one of the options:<br>&emsp;- **Restrict Credential Delegation**<br>&emsp;- **Require Remote Credential Guard**|

[!INCLUDE [gpo-settings-2](../../../includes/configure/gpo-settings-2.md)]

#### [:::image type="icon" source="../images/icons/windows-os.svg" border="false"::: **Registry**](#tab/reg)

To configure devices using the registry, use the following settings:

| Setting |
|--|
|- Key path: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation` <br>- Key name: `AllowProtectedCreds`<br>- Type: `REG_DWORD`<br>- Value: `1`|

You can use the following command from an elevated command prompt:

```cmd
reg.exe add HKLM\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation /v AllowProtectedCreds /d 1 /t REG_DWORD
```

Possible values for `AllowProtectedCreds` are:

- `0`: Disabled
- `1`: Require Restricted Admin
- `2`: Require Remote Credential Guard
- `3`: Restrict credential delegation

---

## Use Remote Credential Guard

Once a client receives the policy, you can connect to the remote host using Remote Credential Guard by opening the Remote Desktop Client (`mstsc.exe`). The user is automatically authenticated to the remote host:

:::image type="content" source="images/remote-credential-guard.gif" alt-text="Animation showing a client connecting to a remote server using Remote Credential Guard with SSO.":::

> [!NOTE]
> The user must be authorized to connect to the remote server using the Remote Desktop protocol, for example by being a member of the Remote Desktop Users local group on the remote host.

## Remote Desktop connections and helpdesk support scenarios

For helpdesk support scenarios in which personnel requires administrative access via Remote Desktop sessions, it isn't recommended the use of Remote Credential Guard. If an RDP session is initiated to an already compromised client, the attacker could use that open channel to create sessions on the user's behalf. The attecker can access any of the user's resources for a limited time after the session disconnects.

We recommend using Restricted Admin mode option instead. For helpdesk support scenarios, RDP connections should only be initiated using the `/RestrictedAdmin` switch. This helps to ensure that credentials and other user resources aren't exposed to compromised remote hosts. For more information, see [Mitigating Pass-the-Hash and Other Credential Theft v2][PTH-1].

To further harden security, we also recommend that you implement Windows Local Administrator Password Solution (LAPS), which automates local administrator password management. LAPS mitigates the risk of lateral escalation and other cyberattacks  facilitated when customers use the same administrative local account and password combination on all their computers.

For more information about LAPS, see [What is Windows LAPS][LEARN-1].

## Additional considerations

Here are some additional considerations for Remote Credential Guard:

- Remote Credential Guard doesn't support compound authentication. For example, if you're trying to access a file server from a remote host that requires a device claim, access will be denied
- Remote Credential Guard can be used only when connecting to a device that is joined to an Active Directory domain. It can't be used when connecting to remote devices joined to Azure Active Directory
- Remote Credential Guard only works with the RDP protocol
- No credentials are sent to the target device, but the target device still acquires Kerberos Service Tickets on its own
- The server and client must authenticate using Kerberos

<!--links-->

[CSP-1]: /windows/client-management/mdm/policy-csp-credentialsdelegation
[CSP-2]: /windows/client-management/mdm/policy-csp-admx-credssp
[INT-3]: /mem/intune/configuration/settings-catalog
[LEARN-1]: /windows-server/identity/laps/laps-overview
[TECH-1]: https://social.technet.microsoft.com/wiki/contents/articles/32905.how-to-enable-restricted-admin-mode-for-remote-desktop.aspx
[PTH-1]: https://download.microsoft.com/download/7/7/A/77ABC5BD-8320-41AF-863C-6ECFB10CB4B9/Mitigating-Pass-the-Hash-Attacks-and-Other-Credential-Theft-Version-2.pdf
