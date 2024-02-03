---
title: "Quickstart: configure a single-app kiosk"
description: Learn how to configure a single-app kiosk using Windows Configuration Designer, Microsoft Intune, PowerShell or GPO.
ms.topic: quickstart
ms.date: 01/29/2024
---

# Quickstart: configure a kiosk experience

The configuration of a single-app kiosk can be done using:

- Microsoft Intune/MDM
- a provisioning package (PPKG)
- PowerShell
- the Settings app

When using the Settings app, you can configure Take a Test in kiosk mode using a local account only. This option is recommended for devices that aren't managed.
The other options allow you to configure a single app kiosk using a local account, or an account defined in the directory.

Follow the instructions below to configure your devices, selecting the option that best suits your needs.

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-custom-settings-1](../../../includes/configure/intune-custom-settings-1.md)]

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn`** </li><li> Data type: **Integer** </li><li>Value: **1**</li>|

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]
[!INCLUDE [intune-custom-settings-info](../../../includes/configure/intune-custom-settings-info.md)]

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[Create a provisioning package][WIN-1] using Windows Configuration Designer with the following settings:

| Setting |
|--------|
| <li> Path: **`SharedPC/AccountManagement/KioskModeAUMID`** </li><li>Value: **Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App**</li>|
| <li> Path: **`SharedPC/AccountManagement/KioskModeUserTileDisplayText`** </li><li>Value: **Take a Test** (or a string of your choice to display in the sing-in screen)</li>|

Follow the steps in [Apply a provisioning package][WIN-2] to apply the package that you created.

#### [:::image type="icon" source="images/icons/powershell.svg"::: **PowerShell**](#tab/powershell)

Configure your devices using PowerShell scripts via the [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal). For more information, see [Using PowerShell scripting with the WMI Bridge Provider](/windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider).

> [!IMPORTANT]
> For all device settings, the WMI Bridge client must be executed as SYSTEM (LocalSystem) account.
>
> To test a PowerShell script, you can:
>
> 1. [Download the psexec tool](/sysinternals/downloads/psexec)
> 1. Open an elevated command prompt and run: `psexec.exe -i -s powershell.exe`
> 1. Run the script in the PowerShell session

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

#### [:::image type="icon" source="images/icons/windows-os.svg"::: **Settings app**](#tab/win)

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

<!--links-->

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
