---
title: Configure Windows Hello for Business
description: Learn about the configuration options for Windows Hello for Business and how to implement them in your organization.
ms.topic: how-to
ms.date: 04/23/2024
---

# Configure Windows Hello for Business

This article describes the options to configure Windows Hello for Business in an organization, and how to implement them.

## Configuration options

You can configure Windows Hello for Business by using the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](/windows/configuration/provisioning-packages/how-it-pros-can-use-configuration-service-providers#csps-in-windows-configuration-designer), which are usually used at deployment time or for unmanaged devices. To configure Windows Hello for Business, use the [PassportForWork CSP][CSP-2]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and aren't managed by a device management solution

## Policy precedence

Some of the Windows Hello for Business policies are available for both computer and user configuration. The following list describes the policy precedence for Windows Hello for Business:

- *User policies* take precedence over *computer policies*. If a user policy is set, the corresponded computer policy is ignored. If a user policy isn't set, the computer policy is used
- Windows Hello for Business policy settings are enforced using the following hierarchy:
  - User - GPO
  - Computer - GPO
  - User - PassportForWork CSP
  - Device - PassportForWork CSP
  - Exchange Active Sync - [DeviceLock CSP](/windows/client-management/mdm/policy-csp-devicelock)

>[!IMPORTANT]
>If you configure password length and complexity settings defined by the DeviceLock CSP, and PIN length and complexity settings defined by the PassportForWork CSP, Windows enforces the strictest policy out of the set of governing policies.
>
>The DeviceLock CSP utilizes the Exchange ActiveSync Policy (EAS) engine. For more information, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn282287(v=ws.11)).

>[!NOTE]
> If a policy isn't explicitly configured to require letters or special characters, users can optionally set an alphanumeric PIN.

### Retrieve the Microsoft Entra tenant ID

The configuration via CSP or registry of different Windows Hello for Business policy settings require to specify the Microsoft Entra tenant ID where the device is registered.

To look up your Tenant ID, see [How to find your Microsoft Entra tenant ID][ENTRA-2] or try the following, ensuring to sign in with your organization's account:

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/organization?$select=id
```

For example, the [PassportForWork CSP documentation][CSP-1] describes how to configure Windows Hello for Business options using the OMA-URI:

```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}
```

When configuring devices, replace `TenantID` with your Microsoft Entra tenant ID. For example, if your Microsoft Entra tenant ID is `dcd219dd-bc68-4b9b-bf0b-4a33a796be35`, the OMA-URI would be:

```Device
./Device/Vendor/MSFT/PassportForWork/{dcd219dd-bc68-4b9b-bf0b-4a33a796be35}
```

## Configure Windows Hello for Business using Microsoft Intune

For Microsoft Entra joined devices and Microsoft Entra hybrid joined devices enrolled in Intune, you can use Intune policies to manage Windows Hello for Business.

There are different ways to enable and configure Windows Hello for Business in Intune:

- Using a policy applied at the tenant level. The tenant policy:
  - Is only applied at enrollment time, and any changes to its configuration doesn't apply to devices already enrolled in Intune
  - It applies to *all devices* getting enrolled in Intune. For this reason, the policy is usually disabled and Windows Hello for Business is enabled using a policy targeted to a security group
- A device configuration policy that is applied *after* device enrollment. Any changes to the policy are applied to the devices during regular policy refresh intervals. There are different policy types to choose from:
  - [Settings catalog][MEM-1]
  - [Security baselines][MEM-2]
  - [Custom policy][MEM-3], via the [PassportForWork CSP][MEM-4]
  - [Account protection policy][MEM-5]
  - [Identity protection policy template][MEM-6]

### Verify the tenant-wide policy

To check the Windows Hello for Business policy settings applied at enrollment time:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. Select **Devices** > **Windows** > **Windows Enrollment**
1. Select **Windows Hello for Business**
1. Verify the status of **Configure Windows Hello for Business** and any settings that might be configured

:::image type="content" source="deploy/images/whfb-intune-disable.png" alt-text="Disablement of Windows Hello for Business from Microsoft Intune admin center." lightbox="deploy/images/whfb-intune-disable.png":::

## Policy conflicts from multiple policy sources

Windows Hello for Business can be configured by GPO or CSP, but not a combination of both. Avoid mixing GPO and CSP policy settings for Windows Hello for Business, as it can lead to unexpected results. If you mix GPO and CSP policy settings, the conflicting CSP settings aren't applied until the group policy settings are cleared.

> [!IMPORTANT]
> The [*MDMWinsOverGP*](/windows/client-management/mdm/policy-csp-controlpolicyconflict#mdmwinsovergp) policy setting doesn't apply to Windows Hello for Business. MDMWinsOverGP only applies to policies in the *Policy CSP*, while the Windows Hello for Business policies are in the *PassportForWork CSP*.

> [!NOTE]
> For more information about deploying Windows Hello for Business configuration using Microsoft Intune, see [Windows device settings to enable Windows Hello for Business in Intune][MEM-1] and [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp).

## Disable Windows Hello for Business enrollment

Windows Hello for Business is enabled by default for devices that are Microsoft Entra joined. If you need to disable the automatic enablement, there are different options, including:

- Disable Windows Hello using the [tenant-wide policy](#verify-the-tenant-wide-policy)
- Disable it using one of the policy types available in Intune, while enabling the Enrollment Status Page (ESP). The ESP can be configured to prevent a user from accessing the desktop until the device receives all the required policies. For more information, see [Set up the Enrollment Status Page](/mem/intune/enrollment/windows-enrollment-status). The policy setting to configure is [Use Windows Hello for Business](policy-settings.md#use-windows-hello-for-business)
- Provision the devices using a provisioning package that disables Windows Hello for Business. For more information, see [Provisioning packages for Windows](/windows/configuration/provisioning-packages/provisioning-packages)
- Scripted solutions that can modify the registry settings to disable Windows Hello for Business during OS deployment

Configuration type| Details |
|--|-|
| CSP (user)|**Key path**: `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\UserSid\Policies`<br>**Key name**: `UsePassportForWork`<br>**Type**: `REG_DWORD`<br>**Value**:<br>&emsp;`1` to enable<br>&emsp;`0` to disable |
| CSP (device)|**Key path**: `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\Device\Policies`<br>**Key name**: `UsePassportForWork`<br>**Type**: `REG_DWORD`<br>**Value**:<br>&emsp;`1` to enable<br>&emsp;`0` to disable |
| GPO (user)|**Key path**: `HKEY_USERS\<UserSID>\SOFTWARE\Policies\Microsoft\PassportForWork`<br>**Key name**: `Enabled`<br>**Type**: `REG_DWORD`<br>**Value**:<br>&emsp;`1` to enable<br>&emsp;`0` to disable |
| GPO (user)|**Key path**: `KEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PassportForWork`<br>**Key name**: `Enabled`<br>**Type**: `REG_DWORD`<br>**Value**:<br>&emsp;`1` to enable<br>&emsp;`0` to disable |

> [!NOTE]
> If there's a conflicting device policy and user policy, the user policy takes precedence. It's not recommended to create Local GPO or registry settings that could conflict with an MDM policy. This conflict could lead to unexpected results.

## Next steps

For a list of Windows Hello for Business policy settings, see [Windows Hello for Business policy settings](policy-settings.md).

To learn more about Windows Hello for Business features and how to configure them, see:

- [PIN reset](pin-reset.md)
- [Dual enrollment](hello-feature-dual-enrollment.md)
- [Dynamic Lock](hello-feature-dynamic-lock.md)
- [Multi-factor Unlock](multifactor-unlock.md)
- [Remote desktop (RDP) sign-in](rdp-sign-in.md)

<!--links-->

[CSP-1]: /windows/client-management/mdm/passportforwork-csp#devicetenantid
[CSP-2]: /windows/client-management/mdm/passportforwork-csp
[ENTRA-2]: /entra/fundamentals/how-to-find-tenant
[MEM-1]: /mem/intune/configuration/settings-catalog
[MEM-2]: /mem/intune/protect/security-baselines
[MEM-3]: /mem/intune/configuration/custom-settings-configure
[MEM-4]: /windows/client-management/mdm/passportforwork-csp
[MEM-5]: /mem/intune/protect/endpoint-security-account-protection-policy
[MEM-6]: /mem/intune/protect/identity-protection-configure
