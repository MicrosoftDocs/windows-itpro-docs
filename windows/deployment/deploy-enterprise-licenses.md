---
title: Deploy Windows Enterprise licenses
description: Steps to deploy Windows Enterprise licenses for Windows Enterprise E3 or E5 subscription activation, or for Windows Enterprise E3 in CSP.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.service: windows-client
ms.subservice: activation
ms.localizationpriority: medium
ms.topic: how-to
ms.date: 9/03/2024
zone_pivot_groups: windows-versions-11-10
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

## Prepare for deployment: reviewing requirements

- Devices must be running a supported version of Windows Pro.
- Microsoft Entra joined, or hybrid domain joined with Microsoft Entra Connect. Customers who are federated with Microsoft Entra ID are also eligible.

For more information, see [Review requirements on devices](#review-requirements-on-devices), later in this article.

### Active Directory synchronization with Microsoft Entra ID

If there's an on-premises Active Directory Domain Services (AD DS) domain, identities in the on-premises AD DS domain need to be synchronized with Microsoft Entra ID. This synchronization is required for users to have a _single identity_ that they can use to access their on-premises apps and cloud services that use Microsoft Entra ID. An example of a cloud service is Windows Enterprise E3 or E5.

For more information about integrating on-premises AD DS domains with Microsoft Entra ID, see the following resources:

- [Configure Microsoft Entra hybrid join](/entra/identity/devices/how-to-hybrid-join)
- [What is hybrid identity with Microsoft Entra ID?](/azure/active-directory/hybrid/whatis-hybrid-identity)
- [Microsoft Entra Connect and Microsoft Entra Connect Health installation roadmap](/azure/active-directory/hybrid/how-to-connect-install-roadmap)

## Assign licenses to users

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

#### Join a device to Microsoft Entra ID during OOBE when the device is started for the first time

::: zone pivot="windows-11"

1. Power on the device for the first time to initiate Windows Setup and the Out of Box experience (OOBE).

1. In the **Is this the right country or region?** screen, select the desired country/region and then select the **Yes** button.

1. In the **Is this the right keyboard layout or input method?** screen, select the desired keyboard/input methods and then select the **Yes** button.

1. In the **Want to add a second keyboard layout?** screen, if desired add additional keyboard/input methods by selecting **Add layout**. Otherwise select the **Skip** button.

1. If no network connection is detected, the **Let's connect you to a network** screen appears. Connect to a wireless or wired network that has Internet access, and then select the **Next** button.

1. At this point, updates for Windows Setup might be installed. If updates are installed, the device reboots to finish installing the updates.

1. In Windows 11 Pro editions, the **Let's name your device** screen appears. Give the device a name and then select the **Next** button. After the device is given a name, the device might reboot.

1. In Windows 11 Pro editions, the **How would you like to set up this device?** screen appears. Select **Set up for work or school** and then select the **Next** button.

1. In the **Let's set things up for your work or school** screen:

    1. In the **someone@example.com** text box under **Sign in**, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username is in the email format of user@domain.com.

    1. In the **Password** text box under **Enter password**, enter the password for the Microsoft Entra user account, and then select the **Sign in** button.

1. The device proceeds with the rest of the Windows setup including configuration of organization specific settings.

1. In the **Choose privacy settings for your device** screen, configure privacy settings as desired, using the **Next** button to go between settings. Once complete, select the **Accept** button.

1. Depending on the device and the configuration of organization specific settings, additional screens might appear. For example, the **Windows Hello** screen might appear.

::: zone-end

::: zone pivot="windows-10"

1. Power on the device for the first time to initiate Windows Setup and the Out of Box experience (OOBE).

1. In the **Let's start with region. Is this right?** screen, select the desired country/region and then select the **Yes** button.

1. In the **Is this the right keyboard layout?** screen, select the desired keyboard/input methods and then select the **Yes** button.

1. In the **Want to add a second keyboard layout?** screen, if desired add additional keyboard/input methods by selecting the **Add layout** button. Otherwise select the **Skip** button.

1. If no network connection is detected, the **Let's connect you to a network** screen appears. Connect to a wireless or wired network that has Internet access, and then select the **Next** button.

1. At this point, updates for Windows Setup might be installed. If updates are installed, the device reboots to finish installing the updates.

1. In Windows 10 Pro editions, the **How would you like to set up?** screen appears. Select **Set up for an organization** and then select the **Next** button.

1. In the **Sign in with Microsoft** screen, in the **someone@example.com** text box, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username is in the email format of user@domain.com.

1. In the **Enter your password** screen, in the **Password** text box, enter the password for the Microsoft Entra user account, and then select the **Next** button.

1. The device proceeds with the rest of the Windows setup including configuration of organization specific settings.

1. In the **Choose privacy settings for your device** screen, configure privacy settings as desired. Once complete, select the **Accept** button.

1. Depending on the device and the configuration of organization specific settings, additional screens might appear. For example, the **Windows Hello** screen might appear.

::: zone-end

Once Windows Setup finishes, the user is automatically signed in and the device is Microsoft Entra joined to the organization's subscription.

#### Join a device to Microsoft Entra ID when the device is already set up with Windows

> [!IMPORTANT]
>
> Make sure that the user signing in isn't the **BUILTIN/Administrator** account. That user can't use the `+ Connect` action to join a work or school account.

Open the **Accounts** > **Access work or school** pane in the **Settings** app by selecting the following link:

> [!div class="nextstepaction"]
> [Access work or school](ms-settings:workplace)

or

1. Right-click on the **Start** menu and select **Run**.

1. In the **Run** window, next to **Open:**, enter:

   ```console
   ms-settings:workplace
   ```

   and then select **OK**.

or

::: zone pivot="windows-11"

1. Right-click on the **Start** menu and select **Settings**.

1. In the **Settings** app, select **Accounts** in the left hand pane.

1. In the **Accounts** pane, select **Access work or school**.

Once the **Accounts > Access work or school** pane is open:

1. In the **Accounts > Access work or school** pane, next to **Add a work or school account**, select the **Connect** button.

1. In the **Microsoft account** window that opens:

    1. In the **Set up a work or school account** page, under **Alternate actions:**, select **Join this device to Microsoft Entra ID**.

    1. In the **Email or phone** text box of the **Sign in** page, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username is in the email format of user@domain.com.

    1. In the **Password** text box of the **Enter password** page, enter the password for the Microsoft Entra user account, and then select the **Sign in** button.

    1. When the **Make sure this is your organization** window opens, confirm the information is correct and then select the **Join** button.

    1. The device joins the organization's Microsoft Entra ID subscription. Once complete, the **You're all set!** page is displayed. Select the **Done** button to complete the process.

::: zone-end

::: zone pivot="windows-10"

1. Right-click on the **Start** menu and select **Settings**.

1. In the **Settings** app, select **Accounts**.

1. In the left hand pane, select **Access work or school**.

Once the **Access work or school** pane is open:

1. In the **Access work or school** pane, select the **+** button next to **Connect**.

1. In the **Microsoft account** window that opens:

    1. In the **Set up a work or school account** page, under **Alternate actions:**, select **Join this device to Microsoft Entra ID**.

    1. In the **Email or phone** text box of the **Sign in** page, enter the username for the Microsoft Entra user account, and then select the **Next** button. The username is in the email format of user@domain.com.

    1. In the **Password** text box of the **Enter password** page, enter the password for the Microsoft Entra user account, and then select the **Sign in** button.

    1. When the **Make sure this is your organization** window opens, confirm the information is correct and then select the **Join** button.

    1. The device joins the organization's Microsoft Entra subscription. Once complete, the **You're all set!** page is displayed. Select the **Done** button to complete the process.

::: zone-end

The device is now Microsoft Entra joined to the organization's subscription.

### Step 2: Pro edition activation

Windows Pro has to be activated on the device. However, if the device is running a currently supported version of Windows, most modern devices automatically activates Windows Pro edition using the firmware-embedded activation key.

### Step 3: Sign in using Microsoft Entra account

Once the device is joined to Microsoft Entra ID and Windows Setup/OOBE completes, the user signs in with their Microsoft Entra account. Once the user signs in with their Microsoft Entra account, the Windows Enterprise E3 or E5 license associated with the user enables Windows Enterprise edition capabilities on the device.

### Step 4: Verify that Enterprise edition is enabled

To verify the Windows Enterprise E3 or E5 subscription:

Open the **Activation** pane in the **Settings** app by selecting the following link:

> [!div class="nextstepaction"]
> [Activation](ms-settings:activation)

or

1. Right-click on the **Start** menu and select **Run**.

1. In the **Run** window, next to **Open:**, enter:

   ```console
   ms-settings:activation
   ```

   and then select **OK**.

or

::: zone pivot="windows-11"

1. Right-click on the **Start** menu and select **Settings**.

1. In the **Settings** app, select **System** in the left hand pane.

1. In the **System** pane, **Activation**.

Once the **System > Activation** pane is open:

1. In the **System > Activation** pane, expand **Activation state** and **Subscription** to see full details of the activation state and status:

    1. Under **Activation state**, verify that Windows is activated. It should display the message:

       `Windows is activated with a digital license`

    1. Under **Subscription**, verify that the Windows 11 Enterprise subscription is active. It should display the message:

       `Windows 11 Enterprise subscription is active`

       > [!NOTE]
       >
       > If the Windows Enterprise subscription hasn't yet been applied, the **Subscription** pane isn't displayed.

::: zone-end

::: zone pivot="windows-10"

1. Right-click on the **Start** menu and select **Settings**.

1. In the **Settings** app, select **Update & Security**.

1. In the left hand pane, select **Activation**.

Once the **Activation** pane is open:

1. In the **Activation** pane:

    1. Next to **Subscription**, verify that the Windows 10 Enterprise subscription is active. It should display the message:

      `Windows Enterprise 10 subscription is active`

      > [!NOTE]
      >
      > If the Windows Enterprise subscription hasn't yet been applied, the **Subscription** field isn't displayed.

    1. Next to **Activation**, verify that Windows is activated. It should display the message:

      `Windows is activated with a digital license`

::: zone-end

A device is healthy when both the subscription and activation are active. If there are any problems with the Windows Enterprise E3 or E5 license or the activation of the license, the **Activation** pane displays the appropriate error message or status. This information can be used to help diagnose the licensing and activation process.

#### Verify that Enterprise edition is enabled with slmgr

**Slmgr** can also be used to verify the activation information:

1. Open a command prompt.

1. To get basic licensing information, run the following command at the command prompt:

   ```cmd
   slmgr /dli
   ```

   A window with output similar to the following opens:

   ```console
   Name: Windows(R), Professional edition
   Description: Windows(R) Operating System, RETAIL channel
   Partial Product Key: 3V66T
   License Status: Licensed
   ```

To instead get detailed licensing information, run the following command:

```cmd
slmgr /dlv
```

For more information on **Slmgr**, see [Slmgr.vbs options for obtaining volume activation information](/windows-server/get-started/activation-slmgr-vbs-options).

## Troubleshoot the user experience

In some instances, users might experience problems with activation of the Windows Enterprise E3 or E5 subscription. The most common problems that users might experience are the following issues:

- The Windows Enterprise E3 or E5 subscription has lapsed, was removed, or isn't applied.
- Windows Pro was never activated.

When there are problems with Windows Enterprise E3 or E5 subscription activation, the following are errors can occur in the [**Activation**](ms-settings:activation) pane:

- **Windows Pro isn't activated**

  When Windows Pro isn't activated on a device, the following message is displayed for **Activation** in the [**Activation**](ms-settings:activation) pane:

  `Windows is not activated`

  Additionally, the following message might be displayed:

  `We can't activate Windows on this device right now. You can try activating again later or go to the Store to buy genuine Windows. Error code: 0xC004F034.`

  Examples where this problem can occur include:

  - The device doesn't have a firmware-embedded activation key.
  - The starting edition of Windows wasn't Windows Pro. For example, the starting edition of Windows was Windows Home.

  In these cases, a Windows Pro key might need to be manually entered.

- **Windows Enterprise subscription isn't active**

  When a device with a Windows Enterprise subscription has lapsed or has been removed, the following message is displayed for **Subscription** in the [**Activation**](ms-settings:activation) pane:

  `Windows Enterprise subscription isn't valid.`

  ::: zone pivot="windows-11"

  > [!NOTE]
  >
  > If the Windows Enterprise subscription has never been applied, the **Subscription** pane isn't displayed.

  ::: zone-end

  ::: zone pivot="windows-10"

  > [!NOTE]
  >
  > If the Windows Enterprise subscription has never been applied, the **Subscription** field isn't displayed.

  ::: zone-end

### Review requirements on devices

When there are Windows Enterprise E3 or E5 license activation issues on a device, verify that it meets all of the requirements:

- Devices must be running a currently supported version of Windows Pro. Versions of Windows Pro that are out support don't support this feature.

- Devices must be joined to Microsoft Entra ID, or hybrid domain joined with Microsoft Entra Connect. Customers who are federated with Microsoft Entra ID are also eligible.

- For automatic activation of Windows Pro, the device must have a firmware-embedded activation key.

Use the following guides to verify each one of these requirements:

- **Determine if the version of Windows is currently supported**.

  To determine if the version of Windows is currently supported:

  1. Open a command prompt

  1. In the command prompt window, enter:

      ```cmd
      winver.exe
      ```

  1. The **About Windows** window opens and displays both the OS version and the build information of Windows.

  1. Compare the information from the **About Windows** window against the Windows support lifecycle:

      - [Windows 11 release information](/windows/release-health/windows11-release-information).
      - [Windows 10 release information](/windows/release-health/release-information).

- **Determine if a device is Microsoft Entra joined**.

  To determine if a device is Microsoft Entra joined:

  1. Open a command prompt.

  1. In the command prompt window, enter:

      ```cmd
      dsregcmd.exe /status
      ```

  1. Review the output. Under the first section called **Device State**, verify that the value of **AzureAdJoined** is **YES**. If the value is **YES**,  the device is joined to Microsoft Entra ID.

      ```console
      +----------------------------------------------------------------------+
      | Device State                                                         |
      +----------------------------------------------------------------------+

               AzureAdJoined : YES
            EnterpriseJoined : NO
                DomainJoined : NO
             Virtual Desktop : NOT SET
                 Device Name : Demo-PC
      ```

- **Determine if devices has a firmware-embedded activation key**.

  To determine if the device has a firmware-embedded activation key:

  1. Open an elevated Windows PowerShell command prompt.

  1. In the elevated Windows PowerShell command prompt, enter:

      ```powershell
      (Get-CimInstance -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey
      ```

  1. If the device has a firmware-embedded activation key, the key is displayed in the output. If the output is blank, the device doesn't have a firmware embedded activation key. Most modern OEM-provided devices designed to run currently supported versions of Windows have a firmware-embedded key.

- **Make sure the Microsoft Entra user has been assigned a license**.

  For more information, see [Assigning licenses to users](#assign-licenses-to-users).

## Recommended practices

### Adding Conditional Access policy

When a device has been offline for an extended period of time, the Subscription Activation might not reactivate automatically on the device. To resolve this issue, use Conditional Access policies to control access by excluding one of the following cloud apps from their Conditional Access policies using **Select Excluded Cloud Apps**:

- [Universal Store Service APIs and Web Application, AppID 45a330b1-b1ec-4cc1-9161-9f03992aa49f](/troubleshoot/azure/active-directory/verify-first-party-apps-sign-in#application-ids-of-commonly-used-microsoft-applications).

- [Windows Store for Business, AppID 45a330b1-b1ec-4cc1-9161-9f03992aa49f](/troubleshoot/azure/active-directory/verify-first-party-apps-sign-in#application-ids-of-commonly-used-microsoft-applications).
     > [!NOTE]
     > The Microsoft Store for Business and Microsoft Store for Education are retired. For more information, see [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring).

Although the app ID is the same in both instances, the name of the cloud app depends on the tenant.


For more information about configuring exclusions in Conditional Access policies, see [Application exclusions](/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa#application-exclusions).

<!-- 8605089 -->

Setting this Conditional Access policy ensures that Subscription Activation continues to work seamlessly.

Starting with Windows 11, version 23H2 with [KB5034848](https://support.microsoft.com/help/5034848) or later, users are prompted for authentication with a toast notification when Subscription Activation needs to reactivate. The toast notification will show the following message:

> **Your account requires authentication**
>
> **Please sign in to your work or school account to verify your information.**

Additionally, in the [**Activation**](ms-settings:activation) pane, the following message might appear:

> **Please sign in to your work or school account to verify your information.**

The prompt for authentication usually occurs when a device has been offline for an extended period of time. This change eliminates the need for an exclusion in the Conditional Access policy for Windows 11, version 23H2 with [KB5034848](https://support.microsoft.com/help/5034848) or later. A Conditional Access policy can still be used with Windows 11, version 23H2 with [KB5034848](https://support.microsoft.com/help/5034848) or later if the prompt for user authentication via a toast notification isn't desired.

### Make sure Windows Update isn't blocked

If a device isn't able to connect to Windows Update, it can lose activation status or be blocked from upgrading to Windows Enterprise. Make sure that Windows Update isn't blocked on the device:

- Using `gpedit.msc` or group policy editor in the domain, make sure that the following group policy setting is set to **Disabled** or **Not Configured**:

  ::: zone pivot="windows-11"

  **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Manage updates offered from Windows Server Update Service** > **Do not connect to any Windows Update Internet locations**

  ::: zone-end

  ::: zone pivot="windows-10"

  **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Update** > **Do not connect to any Windows Update Internet locations**

  ::: zone-end

  If this policy is set to **Enabled**, it must be changed to **Disabled** or **Not Configured**.

- In the following registry key of the registry:

  `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate`

  check if the value `DoNotConnectToWindowsUpdateInternetLocations` exists. If the value does exist, verify that it has a REG_DWORD value of  `0`. If the value is instead set to `1`, it must be changed to `0`. The value can be changed by running the following command from an elevated command prompt:

  ```cmd
  reg.exe add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v DoNotConnectToWindowsUpdateInternetLocations /t REG_DWORD /d 1 /f
  ```

  > [!NOTE]
  >
  > Make sure to first check the group policy of **Do not connect to any Windows Update Internet locations**. If the policy is **Enabled**, then this registry key will eventually be reset back to `1` even after it's manually set to `0` via `reg.exe`. Setting the policy of **Do not connect to any Windows Update Internet locations** to **Disabled** or **Not Configured** will make sure the registry value remains as `0`.

### Delay in the activation of Enterprise license of Windows

There might be a delay in the activation of the Enterprise license in Windows. This delay is by design. Windows uses a built-in cache when determining upgrade eligibility. This behavior includes processing responses that indicate that the device isn't eligible for an upgrade. It can take up to four days after a qualifying purchase before the upgrade eligibility is enabled and the cache expires.

## Virtual Desktop Access (VDA)

Subscriptions to Windows Enterprise are also available for virtualized clients. Enterprise E3 and E5 are available for Virtual Desktop Access (VDA) in Azure or in another qualified multitenant host.

Virtual machines (VMs) must be configured to enable Windows Enterprise subscriptions for VDA. Active Directory-joined and Microsoft Entra joined clients are supported. For more information, see [Enable VDA for Enterprise subscription activation](vda-subscription-activation.md).

## Related content

- [Windows subscription activation](windows-subscription-activation.md).
- [MDM enrollment of Windows devices](/windows/client-management/mdm-enrollment-of-windows-devices).
