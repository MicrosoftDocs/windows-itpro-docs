---
title: Deploy Windows Enterprise licenses
description: Steps to deploy Windows 10 Enterprise or Windows 11 Enterprise licenses for Windows Enterprise E3 or E5 subscription activation, or for Windows Enterprise E3 in CSP.
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.prod: windows-client
ms.technology: itpro-fundamentals
ms.localizationpriority: medium
ms.topic: how-to
ms.collection:
  - highpri
  - tier2
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
ms.date: 11/14/2023
---

# Deploy Windows Enterprise licenses

This article describes how to deploy Windows 10 or Windows 11 Enterprise E3 or E5 licenses with [subscription activation](windows-10-subscription-activation.md) or [Enterprise E3 in CSP](windows-10-enterprise-e3-overview.md) and Microsoft Entra ID.

These activation features require a supported and licensed version of Windows 10 Pro or Windows 11 Pro:

- Subscription activation with an enterprise agreement (EA) or a Microsoft Products & Services Agreement (MPSA).
- Enterprise E3 in CSP.
- Automatic, non-KMS activation also requires a device with a firmware-embedded activation key.
- Subscription activation requires Enterprise _per user_ licensing. It doesn't work with _per device_ licensing.

## Enable subscription activation with an existing EA

If you're an EA customer with an existing Microsoft 365 tenant, use the following steps to enable Windows subscription licenses on your existing tenant:

1. Work with your reseller to place an order for one $0 SKU per user. As of October 1, 2022, there are three SKUs available, depending on your current Windows Enterprise SA license:

    | SKU | Description |
    |---------|---------|
    | **AAA-51069** | `Win OLS Activation User Alng Sub Add-on E3` |
    | **AAA-51068** | `Win OLS Activation User Sub Add-on E5` |
    | **VRM-00001** | `Win OLS Activation User GCC Sub Per User` <!-- 6783128 --> |

    > [!NOTE]
    > As of October 1, 2022, subscription activation is available for _commercial_ and _GCC_ tenants. It's currently not available on GCC High or DoD tenants.<!-- 6783128 -->

1. After an order is placed, the OLS admin on the agreement will receive a service activation email, which indicates the subscription licenses have been provisioned on the tenant.

1. You can now assign subscription licenses to users.

If you need to update contact information and resend the activation email, use the following process:

1. Sign in to the [Microsoft Volume Licensing Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx).

1. Select **Subscriptions**.

1. Select **Online Services Agreement List**.

1. Enter your agreement number, and then select **Search**.

1. Select the **Service Name**.

1. In the **Subscription Contact** section, select the name listed under **Last Name**.

1. Update the contact information, then select **Update Contact Details**. This action will trigger a new email.

## Preparing for deployment: reviewing requirements

- Devices must be running a supported version of Windows 10 Pro or Windows 11 Pro
- Microsoft Entra joined, or hybrid domain joined with Microsoft Entra Connect. Customers who are federated with Microsoft Entra ID are also eligible.

For more information, see [Review requirements on devices](#review-requirements-on-devices), later in this article.

<a name='active-directory-synchronization-with-azure-ad'></a>

### Active Directory synchronization with Microsoft Entra ID

If you have an on-premises Active Directory Domain Services (AD DS) domain, you need to synchronize the identities in the on-premises AD DS domain with Microsoft Entra ID. This synchronization is required for users to have a _single identity_ that they can use to access their on-premises apps and cloud services that use Microsoft Entra ID. An example of a cloud service is Windows Enterprise E3 or E5.

**Figure 1** illustrates the integration between the on-premises AD DS domain with Microsoft Entra ID. Microsoft Entra Connect is responsible for synchronization of identities between the on-premises AD DS domain and Microsoft Entra ID. Microsoft Entra Connect is a service that you can install on-premises or in a virtual machine in Azure.

:::image type="content" source="images/enterprise-e3-ad-connect.png" alt-text="Figure 1 illustrates the integration between the on-premises AD DS domain with Azure AD.":::

Figure 1: On-premises AD DS integrated with Microsoft Entra ID

For more information about integrating on-premises AD DS domains with Microsoft Entra ID, see the following resources:

- [What is hybrid identity with Microsoft Entra ID?](/azure/active-directory/hybrid/whatis-hybrid-identity)
- [Microsoft Entra Connect and Microsoft Entra Connect Health installation roadmap](/azure/active-directory/hybrid/how-to-connect-install-roadmap)

## Assigning licenses to users

After you've ordered the Windows subscription (Windows 10 Business, E3 or E5), you'll receive an email with guidance on how to use Windows as an online service:

:::image type="content" source="images/al01.png" alt-text="An example email from Microsoft to complete your profile after purchasing Online Services through Microsoft Volume Licensing.":::

The following methods are available to assign licenses:

- When you have the required Microsoft Entra subscription, [group-based licensing](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal) is the preferred method to assign Enterprise E3 or E5 licenses to users.

- You can sign in to the Microsoft 365 admin center and manually assign licenses:

    :::image type="content" source="images/al02.png" alt-text="A screenshot of the admin center, showing assignment of the Windows 10 Enterprise E3 product license to a specific user.":::

- You can assign licenses by uploading a spreadsheet.

- [How to use PowerShell to automatically assign licenses to your Microsoft 365 users](https://social.technet.microsoft.com/wiki/contents/articles/15905.how-to-use-powershell-to-automatically-assign-licenses-to-your-office-365-users.aspx).

> [!TIP]
> Other solutions may exist from the community. For example, a Microsoft MVP shared the following process: [Assign EMS licenses based on local Active Directory group membership](https://ronnydejong.com/2015/03/04/assign-ems-licenses-based-on-local-active-directory-group-membership/).

## Explore the upgrade experience

Now that you've established a subscription and assigned licenses to users, you can upgrade devices running supported versions of Windows 10 Pro or Windows 11 Pro to Enterprise edition.

> [!NOTE]
> The following experiences are specific to Windows 10. The general concepts also apply to Windows 11.

<a name='step-1-join-windows-pro-devices-to-azure-ad'></a>

### Step 1: Join Windows Pro devices to Microsoft Entra ID

You can join a Windows Pro device to Microsoft Entra ID during setup, the first time the device starts. You can also join a device that's already set up.

<a name='join-a-device-to-azure-ad-the-first-time-the-device-is-started'></a>

#### Join a device to Microsoft Entra ID the first time the device is started

1. During the initial setup, on the **Who owns this PC?** page, select **My organization**, and then select **Next**.

    :::image type="content" source="images/enterprise-e3-who-owns.png" alt-text="A screenshot of the 'Who owns this PC?' page in Windows 10 setup.":::

    Figure 2: The "Who owns this PC?" page in initial Windows 10 setup.

1. On the **Choose how you'll connect** page, select **Join Microsoft Entra ID**, and then select **Next**.

    :::image type="content" source="images/enterprise-e3-choose-how.png" alt-text="A screenshot of the 'Choose how you'll connect' page in Windows 10 setup.":::

    Figure 3: The "Choose how you'll connect" page in initial Windows 10 setup.

1. On the **Let's get you signed in** page, enter your Microsoft Entra credentials, and then select **Sign in**.

    :::image type="content" source="images/enterprise-e3-lets-get.png" alt-text="A screenshot of the 'Let's get you signed in' page in Windows 10 setup.":::

    Figure 4: The "Let's get you signed in" page in initial Windows 10 setup.

Now the device is Microsoft Entra joined to the organization's subscription.

<a name='join-a-device-to-azure-ad-when-the-device-is-already-set-up-with-windows-10-pro'></a>

#### Join a device to Microsoft Entra ID when the device is already set up with Windows 10 Pro

> [!IMPORTANT]
> Make sure that the user you're signing in with is _not_ the **BUILTIN/Administrator** account. That user can't use the `+ Connect` action to join a work or school account.

1. Go to **Settings**, select **Accounts**, and select **Access work or school**.

    :::image type="content" source="images/enterprise-e3-connect-to-work-or-school.png" alt-text="A screenshot of the 'Connect to work or school' settings page.":::

    Figure 5: "Connect to work or school" configuration in Settings.

1. In **Set up a work or school account**, select **Join this device to Microsoft Entra ID**.

    :::image type="content" source="images/enterprise-e3-set-up-work-or-school.png" alt-text="A screenshot of the 'Set up a work or school account' wizard.":::

    Figure 6: Set up a work or school account.

1. On the **Let's get you signed in** page, enter your Microsoft Entra credentials, and then select **Sign in**.

    :::image type="content" source="images/enterprise-e3-lets-get-2.png" alt-text="A screenshot of the 'Let's get you signed in' window.":::

    Figure 7: The "Let's get you signed in" window.

Now the device is Microsoft Entra joined to the organization's subscription.

### Step 2: Pro edition activation

If the device is running a supported version of Windows 10 or Windows 11, it automatically activates Windows Enterprise edition using the firmware-embedded activation key.

<a name='step-3-sign-in-using-azure-ad-account'></a>

### Step 3: Sign in using Microsoft Entra account

Once the device is joined to Microsoft Entra ID, users will sign in with their Microsoft Entra account, as illustrated in **Figure 8**. The Windows 10 Enterprise E3 or E5 license associated with the user will enable Windows 10 Enterprise edition capabilities on the device.

:::image type="content" source="images/enterprise-e3-sign-in.png" alt-text="A screenshot of signing in to Windows 10 as a Microsoft Entra user.":::

Figure 8: Sign in to Windows 10 with a Microsoft Entra account.

### Step 4: Verify that Enterprise edition is enabled

To verify the Windows Enterprise E3 or E5 subscription, go to **Settings**, select **Update & Security**, and select **Activation**.

:::image type="content" source="images/enterprise-e3-win-10-activated-enterprise-subscription-active.png" alt-text="A screenshot of verifying Windows 10 Enterprise activation in Settings.":::

Figure 9: Verify Windows 10 Enterprise subscription in Settings.

If there are any problems with the Windows Enterprise E3 or E5 license or the activation of the license, the **Activation** panel will display the appropriate error message or status. You can use this information to help you diagnose the licensing and activation process.

> [!NOTE]
> If you use the `slmgr /dli` or `slmgr /dlv` commands to get the activation information for the E3 or E5 license, the license information displayed will be similar to the following output:
>
> ```console
> Name: Windows(R), Professional edition
> Description: Windows(R) Operating System, RETAIL channel
> Partial Product Key: 3V66T
> ```

## Troubleshoot the user experience

In some instances, users may experience problems with the Windows Enterprise E3 or E5 subscription. The most common problems that users may experience are the following issues:

- The Windows 10/11 Enterprise E3 or E5 subscription has lapsed or has been removed.
- An earlier version of Windows 10 Pro isn't activated. For example, Windows 10, versions 1703 or 1709.

### Troubleshoot common problems in the Activation pane

Use the following figures to help you troubleshoot when users experience common problems:

#### Device in healthy state

The following image illustrates a device in a healthy state, where Windows 10 Pro is activated and the Windows 10 Enterprise subscription is active.

:::image type="content" source="images/enterprise-e3-win-10-activated-enterprise-subscription-active.png" alt-text="A screenshot of Windows 10 Enterprise activation in Settings that's healthy and successfully activated.":::

#### Device that's not activated with active subscription

Figure 10 illustrates a device on which the Windows 10 Pro isn't activated, but the Windows 10 Enterprise subscription is active.

:::image type="content" source="images/enterprise-e3-win-10-not-activated-enterprise-subscription-active.png" alt-text="A screenshot of Windows 10 Enterprise activation in Settings that isn't activated but the subscription is active.":::

Figure 10: Windows 10 Pro, version 1703 edition not activated in Settings.

It displays the following error: "We can't activate Windows on this device right now. You can try activating again later or go to the Store to buy genuine Windows. Error code: 0xC004F034."

#### Device that's activated without an Enterprise subscription

Figure 11 illustrates a device on which the Windows 10 Pro is activated, but the Windows 10 Enterprise subscription is lapsed or removed.

:::image type="content" source="images/enterprise-e3-win-10-activated-enterprise-subscription-not-active.png" alt-text="A screenshot of Windows 10 Enterprise activation in Settings that's activated but the subscription isn't active.":::

Figure 11: Windows 10 Enterprise subscription lapsed or removed in Settings.

It displays the following error: "Windows 10 Enterprise subscription isn't valid."

#### Device that's not activated and without an Enterprise subscription

Figure 12 illustrates a device on which the Windows 10 Pro license isn't activated and the Windows 10 Enterprise subscription is lapsed or removed.

:::image type="content" source="images/enterprise-e3-win-10-not-activated-enterprise-subscription-not-active.png" alt-text="A screenshot of Windows 10 Enterprise activation in Settings that's not activated and the subscription isn't active.":::

Figure 12: Windows 10 Pro, version 1703 edition not activated and Windows 10 Enterprise subscription lapsed or removed in Settings.

It displays both of the previously mentioned error messages.

### Review requirements on devices

Devices must be running a supported version of Windows 10 Pro or Windows 11 Pro. Earlier versions of Windows 10, such as version 1703, don't support this feature.

Devices must also be joined to Microsoft Entra ID, or hybrid domain joined with Microsoft Entra Connect. Customers who are federated with Microsoft Entra ID are also eligible.

Use the following procedures to review whether a particular device meets these requirements.

#### Firmware-embedded activation key

To determine if the computer has a firmware-embedded activation key, enter the following command at an elevated Windows PowerShell prompt:

```powershell
(Get-CimInstance -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey
```

If the device has a firmware-embedded activation key, it will be displayed in the output. If the output is blank, the device doesn't have a firmware embedded activation key. Most OEM-provided devices designed to run Windows 8 or later will have a firmware-embedded key.

<a name='determine-if-a-device-is-azure-ad-joined'></a>

#### Determine if a device is Microsoft Entra joined

1. Open a command prompt and enter `dsregcmd /status`.

1. Review the output in the **Device State** section. If the **AzureAdJoined** value is **YES**, the device is joined to Microsoft Entra ID.

#### Determine the version of Windows

1. Open a command prompt and enter `winver`.

1. The **About Windows** window displays the OS version and build information.

1. Compare this information again the Windows support lifecycle:

    - [Windows 10 release information](/windows/release-health/release-information)
    - [Windows 11 release information](/windows/release-health/windows11-release-information)

> [!NOTE]
> If a device is running a version of Windows 10 Pro prior to version 1703, it won't upgrade to Windows 10 Enterprise when a user signs in, even if the user has been assigned a subscription in the CSP portal.

### Delay in the activation of Enterprise license of Windows 10

This delay is by design. Windows 10 and Windows 11 include a built-in cache that's used when determining upgrade eligibility. This behavior includes processing responses that indicate that the device isn't eligible for an upgrade. It can take up to four days after a qualifying purchase before the upgrade eligibility is enabled and the cache expires.

## Known issues

If a device isn't able to connect to Windows Update, it can lose activation status or be blocked from upgrading to Windows Enterprise. To work around this issue:

- Make sure that the device doesn't have the following registry value: `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\DoNotConnectToWindowsUpdateInternetLocations = 1 (REG_DWORD)`. If this registry value exists, it must be set to `0`.

- Make sure that the following group policy setting is **disabled**: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Don't connect to any Windows Update Internet locations.

## Virtual Desktop Access (VDA)

Subscriptions to Windows Enterprise are also available for virtualized clients. Enterprise E3 and E5 are available for Virtual Desktop Access (VDA) in Azure or in another qualified multitenant hoster.

Virtual machines (VMs) must be configured to enable Windows Enterprise subscriptions for VDA. Active Directory-joined and Microsoft Entra joined clients are supported. For more information, see [Enable VDA for Enterprise subscription activation](vda-subscription-activation.md).
