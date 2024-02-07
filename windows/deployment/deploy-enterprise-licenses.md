---
title: Deploy Windows Enterprise licenses
description: Steps to deploy Windows Enterprise licenses for Windows Enterprise E3 or E5 subscription activation, or for Windows Enterprise E3 in CSP.
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.service: windows-client
ms.subservice: itpro-fundamentals
ms.localizationpriority: medium
ms.topic: how-to
ms.collection:
  - highpri
  - tier2
ms.date: 02/01/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Deploy Windows Enterprise licenses

This article describes how to deploy Windows Enterprise E3 or E5 licenses with [subscription activation](windows-subscription-activation.md) or [Enterprise E3 in CSP](windows-enterprise-e3-overview.md) and Microsoft Entra ID.

These activation features require a supported and licensed version of Windows Pro:

- Subscription activation with an enterprise agreement (EA) or a Microsoft Products & Services Agreement (MPSA).
- Enterprise E3 in CSP.
- Automatic, non-KMS activation also requires a device with a firmware-embedded activation key.
- Subscription activation requires Enterprise _per user_ licensing. It doesn't work with _per device_ licensing.

## Enable subscription activation with an existing EA

EA customers with an existing Microsoft 365 tenant can use the following steps to enable Windows subscription licenses on the existing tenant:

1. Work with the reseller to place an order for one $0 SKU per user. As of October 1, 2022, there are three SKUs available, depending on the current Windows Enterprise SA license:

    | SKU | Description |
    |---------|---------|
    | **AAA-51069** | `Win OLS Activation User Alng Sub Add-on E3` |
    | **AAA-51068** | `Win OLS Activation User Sub Add-on E5` |
    | **VRM-00001** | `Win OLS Activation User GCC Sub Per User` <!-- 6783128 --> |

    > [!NOTE]
    >
    > As of October 1, 2022, subscription activation is available for _commercial_ and _GCC_ tenants. It's currently not available on GCC High or DoD tenants. <!-- 6783128 -->

1. After an order is placed, the OLS admin on the agreement will receive a service activation email, which indicates the subscription licenses is provisioned on the tenant.

1. Subscription licenses can now be assigned to users.

To update contact information and resend the activation email, use the following process:

1. Sign in to the [Microsoft Volume Licensing Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx).

1. Select **Subscriptions**.

1. Select **Online Services Agreement List**.

1. Enter the agreement number, and then select **Search**.

1. Select the **Service Name**.

1. In the **Subscription Contact** section, select the name listed under **Last Name**.

1. Update the contact information, then select **Update Contact Details**. This action triggers a new email.

## Preparing for deployment: reviewing requirements

- Devices must be running a supported version of Windows Pro.
- Microsoft Entra joined, or hybrid domain joined with Microsoft Entra Connect. Customers who are federated with Microsoft Entra ID are also eligible.

For more information, see [Review requirements on devices](#review-requirements-on-devices), later in this article.

### Active Directory synchronization with Microsoft Entra ID

If there is an on-premises Active Directory Domain Services (AD DS) domain, identities in the on-premises AD DS domain need to be synchronized with Microsoft Entra ID. This synchronization is required for users to have a _single identity_ that they can use to access their on-premises apps and cloud services that use Microsoft Entra ID. An example of a cloud service is Windows Enterprise E3 or E5.

**Figure 1** illustrates the integration between the on-premises AD DS domain with Microsoft Entra ID. Microsoft Entra Connect is responsible for synchronization of identities between the on-premises AD DS domain and Microsoft Entra ID. Microsoft Entra Connect is a service that can be installed on-premises or in a virtual machine in Azure.

:::image type="content" source="images/enterprise-e3-ad-connect.png" alt-text="Figure 1 illustrates the integration between the on-premises AD DS domain with Microsoft Entra ID.":::

Figure 1: On-premises AD DS integrated with Microsoft Entra ID

For more information about integrating on-premises AD DS domains with Microsoft Entra ID, see the following resources:

- [What is hybrid identity with Microsoft Entra ID?](/azure/active-directory/hybrid/whatis-hybrid-identity)
- [Microsoft Entra Connect and Microsoft Entra Connect Health installation roadmap](/azure/active-directory/hybrid/how-to-connect-install-roadmap)

## Assigning licenses to users

After the Windows subscription is ordered, an email is sent with guidance on how to use Windows as an online service. The following methods are available to assign licenses:

- When the required Microsoft Entra subscription is available, [group-based licensing](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal) is the preferred method to assign Enterprise E3 or E5 licenses to users.

- Licenses can be manually assigned by signing into the [Microsoft 365 admin center](https://admin.microsoft.com/).
- Licenses can be assigned by uploading a spreadsheet.
- Licenses can be assigned via [PowerShell](/microsoft-365/enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell).

## Explore the upgrade experience

Now that a subscription is established and licenses are assigned to users, devices running supported versions of Windows Pro can be upgraded to Enterprise edition.

> [!TIP]
>
> This upgrade experience walkthrough assumes Autopilot isn't being used. For the Autopilot experience when joining Microsoft Entra ID, see [User-driven Microsoft Entra join: Deploy the device](/autopilot/tutorial/user-driven/azure-ad-join-deploy-device).

### Step 1: Join Windows Pro devices to Microsoft Entra ID

The first time the device starts, a Windows Pro device can join Microsoft Entra ID during setup. Existing devices can also join Microsoft Entra ID.

#### Join a device to Microsoft Entra ID the first time the device is started

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **Windows 10**](#tab/windows10)

1. Power on the device for the first time to initiate Windows Setup.

1. In the **Let's start with region. Is this right?** screen, select the desired country/region and then select the **Yes** button.

1. In the **Is this the right keyboard layout?** screen, select the desired keyboard/input methods and then select the **Yes** button.

1. In the **Want to add a second keyboard layout?** screen, if desired add additional keyboard/input methods by selecting the **Add layout** button. Otherwise select the **Skip** button.

1. If no network connection is detected, the **Let's connect you to a network** screen appears. Connect to a wireless or wired network that has Internet access, and then select the **Next** button.

1. At this point, updates for Windows Setup might be installed. If updates are installed, the device reboots to finish installing the updates.

1. In Windows 10 Pro editions, the **How would you like to set up?** screen appears. Select **Set up for an organization** and then select the **Next** button.

1. In the **Sign in with Microsoft** screen, in the **someone@example.com** text box, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username will be in the email format of user@domain.com.

1. In the **Enter your password** screen, in the **Password** text box, enter the password for the Microsoft Entra user account, and then select the **Next** button.

1. The device proceeds with the rest of the Windows setup including configuration of organization specific settings.

1. In the **Choose privacy settings for your device** screen, configure privacy settings as desired. Once complete, select the **Accept** button.

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Windows 11**](#tab/windows11)

1. Power on the device for the first time to initiate Windows Setup.

1. In the **Is this the right country or region?** screen, select the desired country/region and then select the **Yes** button.

1. In the **Is this the right keyboard layout or input method?** screen, select the desired keyboard/input methods and then select the **Yes** button.

1. In the **Want to add a second keyboard layout?** screen, if desired add additional keyboard/input methods by selecting **Add layout**. Otherwise select the **Skip** button.

1. If no network connection is detected, the **Let's connect you to a network** screen appears. Connect to a wireless or wired network that has Internet access, and then select the **Next** button.

1. At this point, updates for Windows Setup might be installed. If updates are installed, the device reboots to finish installing the updates.

1. In Windows 11 Pro editions, the **Let's name your device** screen appears. Give the device a name and then select the **Next** button. After giving the device a name, the device might reboot.

1. In Windows 11 Pro editions, the **How would you like to set up this device?** screen appears. Select **Set up for work or school** and then select the **Next** button.

1. In the **Let's set things up for your work or school** screen:

    1. In the **someone@example.com** text box under **Sign in**, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username will be in the email format of user@domain.com.

    1. In the **Password** text box under **Enter password**, enter the password for the Microsoft Entra user account, and then select the **Sign in** button.

1. The device proceeds with the rest of the Windows setup including configuration of organization specific settings.

1. In the **Choose privacy settings for your device** screen, configure privacy settings as desired, using the **Next** button to go between settings. Once complete, select the **Accept** button.

---

Once Windows Setup finishes, the user is automatically signed in and the device is Microsoft Entra joined to the organization's subscription.

#### Join a device to Microsoft Entra ID when the device is already set up with Windows

> [!IMPORTANT]
>
> Make sure that the user signing in isn't the **BUILTIN/Administrator** account. That user can't use the `+ Connect` action to join a work or school account.

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **Windows 10**](#tab/windows10)

1. Right click on the Start menu and select **Settings**.

1. In the **Settings** app, select **Accounts**.

1. In the left hand pane, select **Access work or school**.

1. **Access work or school** pane, select the **+** button next to **Connect**.

1. In the **Microsoft account** window that opens:

    1. In the **Set up a work or school account** page, select **Join this device to Microsoft Entra ID**.

    1. In the **Email or phone** text box of the **Sign in** page, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username will be in the email format of user@domain.com.

    1. In the **Password** text box of the **Enter password** page, enter the password for the Microsoft Entra user account, and then select the **Sign in** button.

    1. When the **Make sure this is your organization** window opens, confirm the information is correct and then select the **Join** button.

    1. The device will join the organization's Microsoft Entra subscription. Once complete, the **You're all set!** page is displayed. Select the **Done** button to complete the process.

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Windows 11**](#tab/windows11)

1. Right click on the Start menu and select **Settings**.

1. In the **Settings** app, select **Accounts** in the left hand pane.

1. In the **Accounts** pane, select **Access work or school**.

1. In the **Accounts > Access work or school** pane, next to **Add a work or school account**, select the **Connect** button.

1. In the **Microsoft account** window that opens:

    1. In the **Set up a work or school account** page, select **Join this device to Microsoft Entra ID**.

    1. In the **Email or phone** text box of the **Sign in** page, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username will be in the email format of user@domain.com.

    1. In the **Password** text box of the **Enter password** page, enter the password for the Microsoft Entra user account, and then select the **Sign in** button.

    1. When the **Make sure this is your organization** window opens, confirm the information is correct and then select the **Join** button.

    1. The device will join the organization's Microsoft Entra ID subscription. Once complete, the **You're all set!** page is displayed. Select the **Done** button to complete the process.

---

The device is now Microsoft Entra joined to the organization's subscription.

> [!TIP]
>
> Autopilot is only applicable during the first start of Windows when Windows undergoes Windows Setup. For the Autopilot experience when joining Microsoft Entra ID during Windows Setup, see [User-driven Microsoft Entra join: Deploy the device](/autopilot/tutorial/user-driven/azure-ad-join-deploy-device).

### Step 2: Pro edition activation

If the device is running a supported version of Windows, it automatically activates Windows Enterprise edition using the firmware-embedded activation key.

### Step 3: Sign in using Microsoft Entra account

Once the device is joined to Microsoft Entra ID, users sign in with their Microsoft Entra account, as illustrated in **Figure 8**. The Windows Enterprise E3 or E5 license associated with the user enables Windows Enterprise edition capabilities on the device.

:::image type="content" source="images/enterprise-e3-sign-in.png" alt-text="A screenshot of signing in to Windows as a Microsoft Entra user.":::

Figure 8: Sign in to Windows 10 with a Microsoft Entra account.

### Step 4: Verify that Enterprise edition is enabled

### [:::image type="icon" source="images/icons/powershell-18.svg"::: **Windows 10**](#tab/windows10)

To verify the Windows Enterprise E3 or E5 subscription, go to **Settings**, select **Update & Security**, and select **Activation**.

If there are any problems with the Windows Enterprise E3 or E5 license or the activation of the license, the **Activation** panel displays the appropriate error message or status. This information can be used to help diagnose the licensing and activation process.

### [:::image type="icon" source="images/icons/command-line-18.svg"::: **Windows 11**](#tab/windows11)

To verify the Windows Enterprise E3 or E5 subscription, go to **Settings**, select **Update & Security**, and select **Activation**.

If there are any problems with the Windows Enterprise E3 or E5 license or the activation of the license, the **Activation** panel displays the appropriate error message or status. This information can be used to help diagnose the licensing and activation process.

---

> [!NOTE]
>
> If the `slmgr /dli` or `slmgr /dlv` commands are used to get the activation information for the E3 or E5 license, the license information displayed is similar to the following output:
>
> ```console
> Name: Windows(R), Professional edition
> Description: Windows(R) Operating System, RETAIL channel
> Partial Product Key: 3V66T
> ```

## Troubleshoot the user experience

In some instances, users might experience problems with the Windows Enterprise E3 or E5 subscription. The most common problems that users might experience are the following issues:

- The Windows Enterprise E3 or E5 subscription is lapsed or removed.
- An earlier version of Windows Pro isn't activated.

### Troubleshoot common problems in the Activation pane

Use the following figures to help troubleshoot when users experience common problems:

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

If the device has a firmware-embedded activation key, it's displayed in the output. If the output is blank, the device doesn't have a firmware embedded activation key. Most OEM-provided devices designed to run currently supported versions of Windows have a firmware-embedded key.

#### Determine if a device is Microsoft Entra joined

1. Open a command prompt and enter `dsregcmd /status`.

1. Review the output in the **Device State** section. If the **AzureAdJoined** value is **YES**, the device is joined to Microsoft Entra ID.

#### Determine the version of Windows

1. Open a command prompt and enter `winver`.

1. The **About Windows** window displays the OS version and build information.

1. Compare this information again the Windows support lifecycle:

    - [Windows 10 release information](/windows/release-health/release-information)
    - [Windows 11 release information](/windows/release-health/windows11-release-information)

### Delay in the activation of Enterprise license of Windows

This delay is by design. Windows uses a built-in cache when determining upgrade eligibility. This behavior includes processing responses that indicate that the device isn't eligible for an upgrade. It can take up to four days after a qualifying purchase before the upgrade eligibility is enabled and the cache expires.

## Known issues

If a device isn't able to connect to Windows Update, it can lose activation status or be blocked from upgrading to Windows Enterprise. To work around this issue:

- Make sure that the device doesn't have the following registry value: `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\DoNotConnectToWindowsUpdateInternetLocations = 1 (REG_DWORD)`. If this registry value exists, it must be set to `0`.

- Make sure that the following group policy setting is **disabled**: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Don't connect to any Windows Update Internet locations.

## Virtual Desktop Access (VDA)

Subscriptions to Windows Enterprise are also available for virtualized clients. Enterprise E3 and E5 are available for Virtual Desktop Access (VDA) in Azure or in another qualified multitenant host.

Virtual machines (VMs) must be configured to enable Windows Enterprise subscriptions for VDA. Active Directory-joined and Microsoft Entra joined clients are supported. For more information, see [Enable VDA for Enterprise subscription activation](vda-subscription-activation.md).
