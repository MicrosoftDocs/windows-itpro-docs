---
title: Configure Assigned Access
description: Learn how to configure devices with Assigned Access.
ms.date: 03/04/2024
ms.topic: how-to
---

# Configure Assigned Access

## Configure a kiosk experience

A single-app kiosk uses the Assigned Access feature to run a single app above the lock screen. When the kiosk account signs in, the app is launched automatically. The person using the kiosk cannot do anything on the device outside of the kiosk app.

>[!IMPORTANT]
>[User account control (UAC)](/windows/security/identity-protection/user-account-control/user-account-control-overview) must be turned on to enable kiosk mode.
>
>Kiosk mode is not supported over a remote desktop connection. Your kiosk users must sign in on the physical device that is set up as a kiosk. Apps that run in kiosk mode cannot use copy and paste.

You have several options for configuring your single-app kiosk.

- Locally, in Settings:  easy method to set up a single device as a kiosk for a local standard user account.
- PowerShell: You can use Windows PowerShell cmdlets to set up a single-app kiosk. First, you need to [create the user account](https://support.microsoft.com/help/4026923/windows-create-a-local-user-or-administrator-account-in-windows-10) on the device and install the kiosk app for that account.
- The kiosk wizard in Windows Configuration Designer: Windows Configuration Designer is a tool that produces a *provisioning package*. A provisioning package includes configuration settings that can be applied to one or more devices during the first-run experience (OOBE), or after OOBE is done (runtime). Using the kiosk wizard, you can also create the kiosk user account, install the kiosk app, and configure more useful settings.
- Microsoft Intune or other mobile device management (MDM) provider: For devices managed by your organization, you can use MDM to set up a kiosk configuration.

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/settings.svg"::: **Settings**](#tab/settings)

Here are the steps to configure a kiosk using the Settings app:

1. Open the Settings app to view and configure a device as a kiosk. Go to **Settings > Accounts > Other Users**, or use the following shortcut:

    > [!div class="nextstepaction"]
    >
    > [Other Users](ms-settings:otherusers)

1. Under **Set up a kiosk**, select **Get Started**
1. In the **Create an account** dialog, enter the account name and select **Next**
    >[!NOTE]
    >If there are any local standard user accounts already, the **Create an account** dialog offers the option to **Choose an existing account**

1. Choose the application to run when the kiosk account signs in. Only apps that can run above the lock screen will be available in the list of apps to choose from. If you select **Microsoft Edge** as the kiosk app, you configure the following options:

    - Whether Microsoft Edge should display your website full-screen (digital sign) or with some browser controls available (public browser)
    - Which URL should be open when the kiosk accounts signs in
    - When Microsoft Edge should restart after a period of inactivity (if you select to run as a public browser)

1. Select **Close**

- UWP
- Local standard user

You can use **Settings** to quickly configure one or a few devices as a kiosk.

When your kiosk is a local device that isn't managed by Active Directory or Microsoft Entra ID, there is a default setting that enables automatic sign-in after a restart. That means that when the device restarts, the last signed-in user will be signed in automatically. If the last signed-in user is the kiosk account, the kiosk app will be launched automatically after the device restarts.

- If you want the kiosk account to sign in automatically, and the kiosk app launched when the device restarts, then you don't need to do anything.

- If you don't want the kiosk account to sign in automatically when the device restarts, then you must change the default setting before you configure the device as a kiosk. Sign in with the account that you will assign as the kiosk account. Open the **Settings** app > **Accounts** > **Sign-in options**. Set the **Use my sign-in info to automatically finish setting up my device after an update or restart** setting to **Off**. After you change the setting, you can apply the kiosk configuration to the device.

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

You can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/Configuration`
- **Value:**

[!INCLUDE [quickstart-kiosk-xml](includes/quickstart-kiosk-xml.md)]

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `AssignedAccess/MultiAppAssignedAccessSettings`
- **Value:**

[!INCLUDE [quickstart-kiosk-xmll](includes/quickstart-kiosk-xml.md)]

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]


When you use the **Provision kiosk devices** wizard in Windows Configuration Designer, you can configure the kiosk to run either a Universal Windows app or a Windows desktop application.

[Install Windows Configuration Designer](../provisioning-packages/provisioning-install-icd.md), then open Windows Configuration Designer and select **Provision kiosk devices**. After you name your project, and select **Next**, configure the following settings:

1. Enable device setup:

    If you want to enable device setup, select **Set up device**, and configure the following settings:

    - **Device name**: Required. Enter a unique 15-character name for the device. You can use variables to add unique characters to the name, such as `Contoso-%SERIAL%` and `Contoso-%RAND:5%`.
    - **Enter product key**: Optional. Select a license file to upgrade Windows client to a different edition. For more information, see [the permitted upgrades](/windows/deployment/upgrade/windows-10-edition-upgrades).
    - **Configure devices for shared use**: This setting optimizes Windows client for shared use scenarios, and isn't necessary for a kiosk scenario. Set this value to **No**, which may be the default.
    - **Remove pre-installed software**: Optional. Select **Yes** if you want to remove preinstalled software.

1. Set up the network:

    If you want to enable network setup, select **Set up network**, and configure the following settings:

    - **Set up network**: To enable wireless connectivity, select **On**.
    - **Network SSID**: Enter the Service Set Identifier (SSID) of the network.
    - **Network type**: Select **Open** or **WPA2-Personal**. If you select **WPA2-Personal**, enter the password for the wireless network.

1. Enable account management:

    If you want to enable account management, select **Account Management**, and configure the following settings:

    - **Manage organization/school accounts**: Choose how devices are enrolled. Your options:
      - **Active Directory**: Enter the credentials for a least-privileged user account to join the device to the domain.
      - **Microsoft Entra ID**: Before you use a Windows Configuration Designer wizard to configure bulk Microsoft Entra enrollment, [set up Microsoft Entra join in your organization](/azure/active-directory/active-directory-azureadjoin-setup). In your Microsoft Entra tenant, the **maximum number of devices per user** setting determines how many times the bulk token in the wizard can be used.

        If you select this option, enter a friendly name for the bulk token you get using the wizard. Set an expiration date for the token. The maximum is 180 days from the date you get the token. Select **Get bulk token**. In **Let's get you signed in**, enter an account that has permissions to join a device to Microsoft Entra ID, and then the password. Select **Accept** to give Windows Configuration Designer the necessary permissions.

        You must run Windows Configuration Designer on Windows client to configure Microsoft Entra enrollment using any of the wizards.

      - **Local administrator**: If you select this option, enter a user name and password. If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password isn't changed during that period, the account might be locked out, and unable to sign in.

1. Add applications:

    To add applications to the devices, select **Add applications**. You can install multiple applications in a provisioning package, including Windows desktop applications (Win32) and Universal Windows Platform (UWP) apps. The settings in this step vary depending on the application you select. For help with the settings, see [Provision PCs with apps](../provisioning-packages/provision-pcs-with-apps.md).

    > [!WARNING]
    > If you select the plus button to add an application, you must enter an application for the provisioning package to validate. If you select the plus button by mistake, then:
    >
    > 1. In **Installer Path**, select any executable file.
    > 1. When the **Cancel** button shows, select it.
    >
    > These steps let you complete the provisioning package without adding an application.

1. Add certificates:


    To add a certificate to the devices, select **Add certificates**, and configure the following settings:

    - **Certificate name**: Enter a name for the certificate.
    - **Certificate path**: Browse and select the certificate you want to add.

1. Configure the kiosk account, and the kiosk mode app:

    To add the account that runs the app and choose the app type, select **Configure kiosk account and app**, and configure the following settings:

    - **Create a local standard user account to run the kiosk mode app**: Select **Yes** to create a local standard user account, and enter the **User name** and **Password**. This user account runs the app. If you select **No**, make sure you have an existing user account to run the kiosk app.
    - **Auto sign-in**: Select **Yes** to automatically sign in the account when the device starts. **No** doesn't automatically sign in the account. If there are issues with auto sign-in after you apply the provisioning package, then check the Event Viewer logs for auto logon issues (`Applications and Services Logs\Microsoft\Windows\Authentication User Interface\Operational`).
    - **Configure the kiosk mode app**: Enter the **User name** of the account that will run the kiosk mode app. In **App type**, select the type of app to run. Your options:
      - **Windows desktop application**: Enter the path or filename. If the file path is in the PATH environment variable, then you can use the filename. Otherwise, the full path is required.
      - **Universal Windows app**: Enter the AUMID.

1. Configure kiosk common settings:

    To configure the tablet mode, configure welcome and shutdown screens, and set the power settings, select **Configure kiosk common settings**, and configure the following settings:

    - **Set tablet mode**
    - **Customize user experience**
    - **Configure power settings**

1. Finish:

    To complete the wizard, select **Finish**, and configure the following setting:

    - **Protect your package**: Select **Yes** to password protect your provisioning package. When you apply the provisioning package to a device, you must enter this password.

>[!NOTE]
>If you want to use [the advanced editor in Windows Configuration Designer](../provisioning-packages/provisioning-create-package.md#configure-settings), specify the user account and app (by AUMID) in **Runtime settings** > **AssignedAccess** > **AssignedAccessSettings**

>[!IMPORTANT]
>When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

## Configure a kiosk experience with Assigned Access using PowerShell cmdlets

| App Type | OS| Account type|
|-|-|
|UWP| Windows Pro/Pro Edu and Ent/Edu|Local standard user|

To configure a device using the Windows PowerShell cmdlet:

1. Sign in as administrator
1. [Create the user account](https://support.microsoft.com/help/4026923/windows-create-a-local-user-or-administrator-account-in-windows-10) for Assigned Access
1. Sign in as the Assigned Access user account
1. Install the required UWP app
1. Sign out as the Assigned Access user account
1. Sign in as administrator and from an elevated PowerShell prompt use one of the following commands:

    ```PowerShell
    #Configure Assigned Access by AppUserModelID and user name
    Set-AssignedAccess -AppUserModelId <AUMID> -UserName <username>

    #Configure Assigned Access by AppUserModelID and user SID
    Set-AssignedAccess -AppUserModelId <AUMID> -UserSID <usersid>

    #Configure Assigned Access by app name and user name
    Set-AssignedAccess -AppName <CustomApp> -UserName <username>

    #Configure Assigned Access by app name and user SID**:
    Set-AssignedAccess -AppName <CustomApp> -UserSID <usersid>

> [!NOTE]
> To set up Assigned Access using `-AppName`, the user account that you enter for Assigned Access must have signed in at least once.

For more innformation:

- [Find the Application User Model ID of an installed app](../store/find-aumid.md)
- [Set-AssignedAccess](/powershell/module/assignedaccess/set-assignedaccess)

To remove assigned access, using PowerShell, run the following cmdlet:

```powershell
Clear-AssignedAccess
```

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]

---

## Configure a restricted user experience

#### [:::image type="icon" source="../images/icons/settings.svg"::: **Settings**](#tab/settings)

Not available.

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)
To configure a kiosk in Microsoft Intune, see:

- [Windows client and Windows Holographic for Business device settings to run as a dedicated kiosk using Intune](/intune/kiosk-settings)
- [Windows client device settings to run as a kiosk in Intune](/intune/kiosk-settings-windows)

### Use MDM to deploy the multi-app configuration

Multi-app kiosk mode is enabled by the [AssignedAccess configuration service provider (CSP)](/windows/client-management/mdm/assignedaccess-csp). Your MDM policy can contain the Assigned Access configuration XML.

If your device is enrolled with an MDM service that supports applying the Assigned Access configuration, you can use it to apply the setting remotely.

The OMA-URI for multi-app policy is `./Device/Vendor/MSFT/AssignedAccess/Configuration`.

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

Process:

1. Create XML file
1. Add XML file to provisioning package
1. Apply provisioning package to device

Watch how to use a provisioning package to configure a multi-app kiosk.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/fa125d0f-77e4-4f64-b03e-d634a4926884?autoplay=false]

An Assigned Access multi-app kiosk runs one or more apps from the desktop. People using the kiosk see a customized Start that shows only the apps that are allowed. With this approach, you can configure a locked-down experience for different account types. A multi-app kiosk is appropriate for devices that are shared by multiple people. Here's a guide on how to set up a multi-app kiosk.

> [!WARNING]
> The Assigned Access feature is intended for corporate-owned fixed-purpose devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, [certain policy settings](policy-settings.md) are enforced system-wide, and will impact other users on the device. Deleting the kiosk configuration will remove the Assigned Access lockdown profiles associated with the users, but it cannot revert all the enforced policies (such as Start layout). A factory reset is needed to clear all the policies enforced via assigned access.

### Provisioning package

Use the Windows Configuration Designer tool to create a provisioning package. [Learn how to install Windows Configuration Designer.](../provisioning-packages/provisioning-install-icd.md).

1. Open Windows Configuration Designer
1. Choose **Advanced provisioning**
1. Name your project, and select **Next**
1. Choose **All Windows desktop editions** and select **Next**
1. On **New project**, select **Finish**. The workspace for your package opens
1. Expand **Runtime settings** > **AssignedAccess** > **MultiAppAssignedAccessSettings**
1. In the center pane, select **Browse**. Locate and select the Assigned Access configuration XML file that you created
1. *Optional: If you want to apply the provisioning package after device initial setup and there's an admin user already available on the kiosk device, skip this step.* Create an admin user account in **Runtime settings** > **Accounts** > **Users**. Provide a **UserName** and **Password**, and select **UserGroup** as **Administrators**. With this account, you can view the provisioning status and logs if needed.
1. *Optional: If you already have a non-admin account on the kiosk device, skip this step.* Create a local standard user account in **Runtime settings** > **Accounts** > **Users**. Make sure the **UserName** is the same as the account that you specify in the configuration XML. Select **UserGroup** as **Standard Users**
1. On the **File** menu, select **Save.**
1. On the **Export** menu, select **Provisioning package**
1. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**
1. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.
    - **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.
    - **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Browse** and choosing the certificate you want to use to sign the package.
1. Select **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows Imaging and Configuration Designer (ICD) uses the project folder as the output location
    Optionally, you can select **Browse** to change the default output location
1. Select **Next**
1. Select **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status
1. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again
    If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.
    - If you choose, you can build the provisioning package again and pick a different path for the output package. To do this action, select **Back** to change the output package name and path, and then select **Next** to start another build.
    - If you're done, select **Finish** to close the wizard and go back to the **Customizations Page**.
1. Copy the provisioning package to the root directory of a USB drive.

### Apply provisioning package to device

Provisioning packages can be applied to a device during initial setup (out-of-box experience or "OOBE") and after ("runtime"). For more information, see [Apply a provisioning package](../provisioning-packages/provisioning-apply-package.md).

> [!NOTE]
> If your provisioning package doesn't include the Assigned Access user account creation, make sure the account you specified in the multi-app configuration XML exists on the device.

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

---

## Remove Assigned Access

Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, Start Layout).

## Troubleshoot

Event Viewer
Run "eventvwr.msc"
Navigate to "Applications and Services Logs"
There are 2 areas of your interests:
"Microsoft-Windows-AssignedAccess"
"Microsoft-Windows-AssignedAccessBroker"
Before any repro, it's recommended to enable "Operational" channel to get the most of logs.
TraceLogging

Registry Key
These locations contain the latest Assigned Access Configuration:

HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration
HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessCsp
These locations contain the latest "evaluated" configuration for each sign-in user:

"HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration" (If it doesn't exist, it means no Assigned Access to be enforced for this user.)

> [!NOTE]
> If the application calls `KeyCredentialManager.IsSupportedAsync` when it is running in assigned access mode and it returns false on the first run, invoke the settings screen and select an appropriate PIN to use with Windows Hello. This is the settings screen that is hidden by the application running in assigned access mode. You can only use Windows Hello if you first leave assigned access mode, select your convenience pin, and then go back into assigned access mode again.


> [!NOTE]
> Assigned Access profiles only apply to non-admin accounts. When an administrator signs in, the Assigned Access restrictions don't apply.
