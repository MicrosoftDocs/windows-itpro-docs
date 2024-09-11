---
title: Configure Take a Test in kiosk mode
description: Learn how to configure Windows to execute the Take a Test app in kiosk mode, using Intune and provisioning packages.
ms.date: 09/06/2024
ms.topic: how-to
---

# Configure Take a Test in kiosk mode

Executing Take a Test in kiosk mode is the recommended option for high stakes assessments, such as mid-term exams. In this mode, Windows will execute Take a Test in a lock-down mode, preventing the execution of any applications other than Take a Test. Students must sign in using a test-taking account.

The configuration of Take a Test in kiosk mode can be done using:

- Microsoft Intune/MDM
- a provisioning package (PPKG)
- PowerShell
- the Settings app

When using the Settings app, you can configure Take a Test in kiosk mode using a local account only. This option is recommended for devices that aren't managed.
The other options allow you to configure Take a Test in kiosk mode using a local account, an account defined in the directory, or a guest account.

> [!TIP]
> While you could create a single account in the directory to be the dedicated test-taking account, it is recommended to use a guest account. This way, you don't get into a scenario where the testing account is locked out due to bad password attempts or other factors.
>
> An additional benefit of using a guest account, is that your students don't have to type a password to access the test.

Follow the instructions below to configure your devices, selecting the option that best suits your needs.

# [:::image type="icon" source="images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

You can use Intune for Education or a custom profile in Microsoft Intune:

- Intune for Education provides a simpler experience
- A custom profile provides more flexibility and controls over the configuration

> [!IMPORTANT]
> Currently, the policy created in Intune for Education is applicable to Windows 10 and Windows 11 only. **It will not apply to Windows 11 SE devices.**
>
> If you want to configure Take a Test for Windows 11 SE devices, you must use a custom policy.

### Configure Take a Test from Intune for Education

To configure devices using Intune for Education, follow these steps:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Groups** > Pick a group to configure Take a Test for
1. Select **Windows device settings**
1. Expand the **Take a Test profiles** category and select **+ Assign new Take a Test profile**
1. Specify a **Profile Name**, **Account Name**, **Assessment URL** and, optionally, **Description** and options allowed during the test
1. Select **Create and assign profile**

:::image type="content" source="./images/takeatest/intune-education-take-a-test-profile.png" alt-text="Intune for Education - creation of a Take a Test profile." lightbox="./images/takeatest/intune-education-take-a-test-profile.png" border="true":::

### Configure Take a Test with a custom policy

[!INCLUDE [intune-custom-settings-1](../../includes/configure/intune-custom-settings-1.md)]

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn`** </li><li> Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/WindowsLogon/HideFastUserSwitching`** </li><li> Data type: **Integer**</li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/AccountModel`**</li><li>Data type: **Integer** </li><li> Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/EnableAccountManager`**</li><li>Data type: **Boolean** </li><li> Value: **True**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/KioskModeAUMID`**</li><li>Data type: **String** </li><li> Value: **Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/KioskModeUserTileDisplayText`** </li><li>Data type: **String** </li><li> Value: **Take a Test** (or a string of your choice to display in the sing-in screen)</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SecureAssessment/LaunchURI`** </li><li>Data type: **String** </li><li> Value: **\<provide testing URL>**</li>|

:::image type="content" source="./images/takeatest/intune-take-a-test-custom-profile.png" alt-text="Intune portal - creation of a custom policy to configure Take a Test." lightbox="./images/takeatest/intune-take-a-test-custom-profile.png" border="true":::

[!INCLUDE [intune-custom-settings-2](../../includes/configure/intune-custom-settings-2.md)]

# [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To create a provisioning package, you can either use Set up School PCs or Windows Configuration Designer:

- Set up School PCs provides a simpler, guided experience
- Windows Configuration Designer provides more flexibility and controls over the configuration

### Create a provisioning package using Set up School PCs

Create a provisioning package using the Set up School PCs app, configuring the settings in the **Set up the Take a Test app** page.

:::image type="content" source="./images/takeatest/suspcs-take-a-test.png" alt-text="Set up School PCs app - Take a test page" lightbox="./images/takeatest/suspcs-take-a-test.png" border="true":::

### Create a provisioning package using Windows Configuration Designer

[!INCLUDE [provisioning-package-1](../../includes/configure/provisioning-package-1.md)]

| Setting |
|--------|
| <li> Path: **`Policies/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn`** </li><li>Value: **Enabled**</li>|
| <li> Path: **`Policies/WindowsLogon/HideFastUserSwitching`** </li><li>Value: **True**</li>|
| <li> Path: **`SharedPC/AccountManagement/AccountModel`** </li><li>Value: **Domain-joined only**</li>|
| <li> Path: **`SharedPC/AccountManagement/EnableAccountManager`** </li><li>Value: **True**</li>|
| <li> Path: **`SharedPC/AccountManagement/KioskModeAUMID`** </li><li>Value: **Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App**</li>|
| <li> Path: **`SharedPC/AccountManagement/KioskModeUserTileDisplayText`** </li><li>Value: **Take a Test** (or a string of your choice to display in the sing-in screen)</li>|
| <li> Path: **`TakeATest/LaunchURI/`** </li><li>Value: **\<provide testing URL>**</li>|

:::image type="content" source="./images/takeatest/wcd-take-a-test.png" alt-text="Windows Configuration Designer - configuration of policies to enable Take a Test to run in kiosk mode" lightbox="./images/takeatest/wcd-take-a-test.png" border="true":::

[!INCLUDE [provisioning-package-2](../../includes/configure/provisioning-package-2.md)]

# [:::image type="icon" source="images/icons/powershell.svg"::: **PowerShell**](#tab/powershell)

[!INCLUDE [powershell-wmi-bridge-1](../../includes/configure/powershell-wmi-bridge-1.md)]

Edit the following sample PowerShell script to:

- Customize the assessment URL with **$testURL**
- Change the kiosk user tile name displayed in the sign-in screen with **$userTileName**

```powershell
$testURL = "https://contoso.com/algebra-exam"
$userTileName = "Take a Test"
$namespaceName = "root\cimv2\mdm\dmmap"
$ParentID="./Vendor/MSFT/Policy/Config"

#Configure SharedPC
$className = "MDM_SharedPC"
$instance = "SharedPC"
$cimObject = Get-CimInstance -Namespace $namespaceName -ClassName $className
if (-not ($cimObject)) {
   $cimObject = New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{ParentID=$ParentID;InstanceID=$instance}
}
$cimObject.AccountModel = 1
$cimObject.EnableAccountManager = $true
$cimObject.KioskModeAUMID = "Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App"
$cimObject.KioskModeUserTileDisplayText = $userTileName
Set-CimInstance -CimInstance $cimObject

#Configure SecureAssessment
$className = "MDM_SecureAssessment"
$instance = "SecureAssessment"
$cimObject = Get-CimInstance -Namespace $namespaceName -ClassName $className
if (-not ($cimObject)) {
   $cimObject = New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{ParentID=$ParentID;InstanceID=$instance}
}
$cimObject.LaunchURI= $testURL
Set-CimInstance -CimInstance $cimObject

#Configure interactive logon
$className = "MDM_Policy_Config01_LocalPoliciesSecurityOptions02"
$instance = "LocalPoliciesSecurityOptions"
$cimObject = Get-CimInstance -Namespace $namespaceName -ClassName $className
if (-not ($cimObject)) {
   $cimObject = New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{ParentID=$ParentID;InstanceID=$instance}
}
$cimObject.InteractiveLogon_DoNotDisplayLastSignedIn = 1
Set-CimInstance -CimInstance $cimObject

#Configure Windows logon
$className = "MDM_Policy_Config01_WindowsLogon02"
$instance = "WindowsLogon"
$cimObject = Get-CimInstance -Namespace $namespaceName -ClassName $className
if (-not ($cimObject)) {
   $cimObject = New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{ParentID=$ParentID;InstanceID=$instance}
}
$cimObject.HideFastUserSwitching = 1
Set-CimInstance -CimInstance $cimObject
```

[!INCLUDE [powershell-wmi-bridge-2](../../includes/configure/powershell-wmi-bridge-2.md)]

# [:::image type="icon" source="images/icons/settings.svg"::: **Settings app**](#tab/settings)

To create a local account, and configure Take a Test in kiosk mode using the Settings app:

1. Sign into the Windows device with an administrator account
1. Open the **Settings** app and select **Accounts** > **Other Users**
1. Under **Other users**, select **Add account** > **I don't have this person's sign-in information** > **Add a user without a Microsoft account**
1. Provide a user name and password for the account that will be used for testing
   :::image type="content" source="./images/takeatest/settings-accounts-create-take-a-test-account.png" alt-text="Use the Settings app to create a test-taking account." border="true":::
1. Select **Accounts > Access work or school**
1. Select **Create a test-taking account**
   :::image type="content" source="./images/takeatest/settings-accounts-set-up-take-a-test-account.png" alt-text="Use the Settings app to set up a test-taking account." border="true":::
1. Under **Add an account for taking tests**, select **Add account** > Select the account created in step 4
   :::image type="content" source="./images/takeatest/settings-accounts-choose-take-a-test-account.png" alt-text="Use the Settings app to choose the test-taking account." border="true":::
1. Under **Enter the tests's web address**, enter the assessment URL
1. Under **Test taking settings** select the options you want to enable during the test
   - To enable printing, select **Require printing**

      > [!NOTE]
      > Make sure a printer is pre-configured on the Take a Test account if you're enabling this option.

   - To enable teachers to monitor screens, select **Allow screen monitoring**
   - To allow text suggestions, select **Allow text suggestions**

1. To take the test, a student must sign in using the test-taking account selected in step 4
   :::image type="content" source="./images/takeatest/login-screen-take-a-test-single-pc.png" alt-text="Windows 11 SE login screen with the take a test account." border="true":::

   > [!NOTE]
   > To sign-in with a local account on a device that is joined to Microsoft Entra ID or Active Directory, you must prefix the username with either `<computername>\` or `.\`.

---

## How to use Take a Test in kiosk mode

Once the devices are configured, a new user tile will be available in the sign-in screen. If selected, Take a Test will be executed in kiosk mode using the guest account, opening the assessment URL.

## How to exit Take a Test

To exit the Take a Test app at any time, press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd>. You'll be prompted to sign out of the test-taking account, or return to the test. Once signed out, the device will be unlocked from kiosk mode and can be used as normal.

The following animation shows the process of signing in to the test-taking account, taking a test, and exiting the test:

:::image type="content" source="./images/takeatest/sign-in-sign-out.gif" alt-text="Signing in and signing out with a test account" border="true":::

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
[MEM-2]: /mem/intune/configuration/settings-catalog

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
