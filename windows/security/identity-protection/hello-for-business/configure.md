---
title: Configure Windows Hello for Business
description: Learn about the configuration options for Windows Hello for Business and how to implement them in your organization.
ms.topic: how-to
ms.date: 01/03/2024
---

# Configure Windows Hello for Business

Windows Hello for Business offers a variety of configuration options to accommodate the needs of your organization. This article describes the configuration options and how to implement them.

## Configuration options

You can configure Windows Hello for Business by using the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. To configure Windows Hello for Business, you use the [PassportForWork CSP][CSP-2]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and aren't managed by a device management solution
- Provisioning packages: used to configure devices at deployment time or for devices that aren't managed by a device management solution

### Policy precedence

Some of the Windows Hello for Business policies are available for both computer and user configuration.

*user policies* take precedence over *computer policies*. If a user policy is set, the corresponded computer policy is ignored. If a user policy is not set, the computer policy is used.

Policies for Windows Hello for Business are enforced using the following hierarchy:

- User GPO > Computer GPO > User MDM > Device MDM > Device Lock policy

>[!IMPORTANT]
>All devices only have one PIN associated with Windows Hello for Business. This means that any PIN on a device will be subject to the policies specified in the PassportForWork CSP. The values specified take precedence over any complexity rules set via Exchange ActiveSync (EAS) or the DeviceLock CSP.

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
  - Is only applied at enrollment time, and any changes to its configuration won't apply to devices already enrolled in Intune
  - It applies to *all devices* getting enrolled in Intune. For this reason, the policy is usually disabled and Windows Hello for Business is enabled using a policy targeted to a security group
- A device configuration policy that is applied *after* device enrollment. Any changes to the policy will be applied to the devices during regular policy refresh intervals. There are different policy types to choose from:
  - [Settings catalog][MEM-1]
  - [Security baselines][MEM-2]
  - [Custom policy][MEM-3], via the [PassportForWork CSP][MEM-4]
  - [Account protection policy][MEM-5]
  - [Identity protection policy template][MEM-6]

### Verify the tenant-wide policy

To check the Windows Hello for Business policy applied at enrollment time:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** > **Windows** > **Windows Enrollment**
1. Select **Windows Hello for Business**
1. Verify the status of **Configure Windows Hello for Business** and any settings that may be configured

:::image type="content" source="deploy/images/whfb-intune-disable.png" alt-text="Disablement of Windows Hello for Business from Microsoft Intune admin center." lightbox="deploy/images/whfb-intune-disable.png":::

## Policy conflicts from multiple policy sources

Windows Hello for Business is designed to be managed by group policy or MDM, but not a combination of both. Avoid mixing group policy and MDM policy settings for Windows Hello for Business. If you mix group policy and MDM policy settings, the MDM settings are ignored until all group policy settings are cleared.

> [!IMPORTANT]
> The [*MDMWinsOverGP*](/windows/client-management/mdm/policy-csp-controlpolicyconflict#mdmwinsovergp) policy setting doesn't apply to Windows Hello for Business. MDMWinsOverGP only applies to policies in the *Policy CSP*, while the Windows Hello for Business policies are in the *PassportForWork CSP*.

> [!NOTE]
> For more information about deploying Windows Hello for Business configuration using Microsoft Intune, see [Windows device settings to enable Windows Hello for Business in Intune][MEM-1] and [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp).

## Manage Windows Hello for Business in your organization

You can create a Group Policy or mobile device management (MDM) policy to configure Windows Hello for Business on Windows devices.

## Disable Windows Hello for Business enrollment

Windows Hello for Business is enabled by default for devices that are Microsoft Entra joined. If you need to disable the automatic enablement, there are different options to configure them.

### Use Intune to disable Windows Hello for Business enrollment

We recommend that you disable or manage Windows Hello for Business provisioning behavior through an Intune policy. For more specific information, see [Integrate Windows Hello for Business with Microsoft Intune](/mem/intune/protect/windows-hello).

### Disable Windows Hello for Business using Intune Enrollment policy

The following method explains how to disable Windows Hello for Business enrollment using Intune.

1. Sign into the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Go to **Devices** > **Enrollment** > **Enroll devices** > **Windows enrollment** > **Windows Hello for Business**. The Windows Hello for Business pane opens.
3. If you don't want to enable Windows Hello for Business during device enrollment, select **Disabled** for **Configure Windows Hello for Business**.

    When disabled, users can't provision Windows Hello for Business. When set to Disabled, you can still configure the subsequent settings for Windows Hello for Business even though this policy won't enable Windows Hello for Business.

> [!NOTE]
> This policy is only applied during new device enrollments. For devices that are already enrolled, you can set the same settings in a configuration policy.

### Disable during OS deployment

If you don't use Intune in your organization, then you can disable Windows Hello for Business using the registry. You can use a third-party MDM, or some other method that you use to manage these devices. Because these systems are Microsoft Entra joined only, and not domain joined, these settings can also be made manually in the registry.

Intune uses the following registry keys: **`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\Device\Policies`**

These registry settings are pushed from Intune for user policies:

- Intune User Policy: **`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Policies\PassportForWork\<Tenant-ID>\UserSid\Policies`**
- DWORD: **UsePassportForWork**
- Value = **0** for Disable, or Value = **1** for Enable

These registry settings can be applied from Local or Group Policies:

- Local/GPO User Policy: **`HKEY_USERS\UserSID\SOFTWARE\Policies\Microsoft\PassportForWork`**
- Local/GPO Device Policy: **`HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PassportForWork`**
- DWORD: **Enabled**
- Value = **0** for Disable or Value = **1** for Enable

If there's a conflicting Device policy and User policy, the User policy would take precedence. We don't recommend creating Local/GPO registry settings that could conflict with an Intune policy. This conflict could lead to unexpected results.

## Next steps

Learn more about Windows Hello for Business features and how to configure them:

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