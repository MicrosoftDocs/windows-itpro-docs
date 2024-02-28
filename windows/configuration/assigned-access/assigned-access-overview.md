---
title: What is Assigned Access?
description: Learn how to configure devices with Assigned Access.
ms.date: 05/12/2023
ms.topic: how-to
---

# What is Assigned Access?

Assigned Access is a Windows feature that you can use to configure a device as a kiosk or restricted user experience.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience

    A single UWP application or Microsoft Edge is executed in full screen, above the lock screen. Users can only use that application. If the kiosk app is closed, it will automatically restart. Practical examples include:

    - Digital signs
    - Public web browsing kiosks

    This experience is sometimes referred to as *single-app kiosk*.
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    Users can execute a defined list of applications, with a custom and locked down Start menu and Taskbar. Practical examples include:
    - Frontline worker devices
    - Student devices
    - Lab devices
    :::column-end:::
:::row-end:::

Assigned Access profiles only apply to non-admin accounts. When an administrator signs in, the Assigned Access restrictions don't apply.

## Configure a kiosk in Microsoft Intune

To configure a kiosk in Microsoft Intune, see:

- [Windows client and Windows Holographic for Business device settings to run as a dedicated kiosk using Intune](/intune/kiosk-settings)
- [Windows client device settings to run as a kiosk in Intune](/intune/kiosk-settings-windows)

## Configure a kiosk using a provisioning package

Process:

1. Create XML file
1. Add XML file to provisioning package
1. Apply provisioning package to device

Watch how to use a provisioning package to configure a multi-app kiosk.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/fa125d0f-77e4-4f64-b03e-d634a4926884?autoplay=false]

An Assigned Access multi-app kiosk runs one or more apps from the desktop. People using the kiosk see a customized Start that shows only the apps that are allowed. With this approach, you can configure a locked-down experience for different account types. A multi-app kiosk is appropriate for devices that are shared by multiple people. Here's a guide on how to set up a multi-app kiosk.

> [!WARNING]
> The Assigned Access feature is intended for corporate-owned fixed-purpose devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, [certain policy settings](assigned-access-policy-settings.md) are enforced system-wide, and will impact other users on the device. Deleting the kiosk configuration will remove the Assigned Access lockdown profiles associated with the users, but it cannot revert all the enforced policies (such as Start layout). A factory reset is needed to clear all the policies enforced via assigned access.

> [!TIP]
> Be sure to check the [configuration recommendations](kiosk-prepare.md) before you set up your kiosk.

### Provisioning package

Before you add the XML file to a provisioning package, you can [validate your configuration XML against the XSD](assigned-access-xsd.md).

Use the Windows Configuration Designer tool to create a provisioning package. [Learn how to install Windows Configuration Designer.](../provisioning-packages/provisioning-install-icd.md).

> [!IMPORTANT]
> When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

1. Open Windows Configuration Designer. By default: `%systemdrive%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe`.

1. Choose **Advanced provisioning**.

1. Name your project, and select **Next**.

1. Choose **All Windows desktop editions** and select **Next**.

1. On **New project**, select **Finish**. The workspace for your package opens.

1. Expand **Runtime settings** > **AssignedAccess** > **MultiAppAssignedAccessSettings**.

1. In the center pane, select **Browse**. Locate and select the Assigned Access configuration XML file that you created.

1. _Optional: If you want to apply the provisioning package after device initial setup and there's an admin user already available on the kiosk device, skip this step._ Create an admin user account in **Runtime settings** > **Accounts** > **Users**. Provide a **UserName** and **Password**, and select **UserGroup** as **Administrators**. With this account, you can view the provisioning status and logs if needed.

1. _Optional: If you already have a non-admin account on the kiosk device, skip this step._ Create a local standard user account in **Runtime settings** > **Accounts** > **Users**. Make sure the **UserName** is the same as the account that you specify in the configuration XML. Select **UserGroup** as **Standard Users**.

1. On the **File** menu, select **Save.**

1. On the **Export** menu, select **Provisioning package**.

1. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

1. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    - **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    - **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Browse** and choosing the certificate you want to use to sign the package.

1. Select **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows Imaging and Configuration Designer (ICD) uses the project folder as the output location.

    Optionally, you can select **Browse** to change the default output location.

1. Select **Next**.

1. Select **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status.

    If you need to cancel the build, select **Cancel**. This action cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

1. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.

    If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    - If you choose, you can build the provisioning package again and pick a different path for the output package. To do this action, select **Back** to change the output package name and path, and then select **Next** to start another build.
    - If you're done, select **Finish** to close the wizard and go back to the **Customizations Page**.

1. Copy the provisioning package to the root directory of a USB drive.

<span id="apply-ppkg" />

### Apply provisioning package to device

Provisioning packages can be applied to a device during initial setup (out-of-box experience or "OOBE") and after ("runtime"). For more information, see [Apply a provisioning package](../provisioning-packages/provisioning-apply-package.md).

> [!NOTE]
> If your provisioning package doesn't include the Assigned Access user account creation, make sure the account you specified in the multi-app configuration XML exists on the device.

### Use MDM to deploy the multi-app configuration

Multi-app kiosk mode is enabled by the [AssignedAccess configuration service provider (CSP)](/windows/client-management/mdm/assignedaccess-csp). Your MDM policy can contain the Assigned Access configuration XML.

If your device is enrolled with an MDM service that supports applying the Assigned Access configuration, you can use it to apply the setting remotely.

The OMA-URI for multi-app policy is `./Device/Vendor/MSFT/AssignedAccess/Configuration`.

## Set up a single-app kiosk

A single-app kiosk uses the Assigned Access feature to run a single app above the lock screen. When the kiosk account signs in, the app is launched automatically. The person using the kiosk cannot do anything on the device outside of the kiosk app.

>[!IMPORTANT]
>[User account control (UAC)](/windows/security/identity-protection/user-account-control/user-account-control-overview) must be turned on to enable kiosk mode.
>
>Kiosk mode is not supported over a remote desktop connection. Your kiosk users must sign in on the physical device that is set up as a kiosk. Apps that run in kiosk mode cannot use copy and paste.

You have several options for configuring your single-app kiosk.

- Locally, in Settings:  The **Set up a kiosk** (previously named **Set up assigned access**) option in **Settings** is a quick and easy method to set up a single device as a kiosk for a local standard user account.

  This option supports:

  - Windows 10 Pro, Enterprise, and Education
  - Windows 11

- PowerShell: You can use Windows PowerShell cmdlets to set up a single-app kiosk. First, you need to [create the user account](https://support.microsoft.com/help/4026923/windows-create-a-local-user-or-administrator-account-in-windows-10) on the device and install the kiosk app for that account.

  This option supports:

  - Windows 10 Pro, Enterprise, and Education
  - Windows 11

- The kiosk wizard in Windows Configuration Designer: Windows Configuration Designer is a tool that produces a *provisioning package*. A provisioning package includes configuration settings that can be applied to one or more devices during the first-run experience (OOBE), or after OOBE is done (runtime). Using the kiosk wizard, you can also create the kiosk user account, install the kiosk app, and configure more useful settings.

  This option supports:

  - Windows 10 Pro version 1709+, Enterprise, and Education
  - Windows 11

- Microsoft Intune or other mobile device management (MDM) provider: For devices managed by your organization, you can use MDM to set up a kiosk configuration.

  This option supports:

  - Windows 10 Pro version 1709+, Enterprise, and Education
  - Windows 11


## Set up a kiosk in local Settings

App type:

- UWP

OS:

- Windows 10 Pro, Ent, Edu
- Windows 11

Account type:

- Local standard user

You can use **Settings** to quickly configure one or a few devices as a kiosk.

When your kiosk is a local device that isn't managed by Active Directory or Microsoft Entra ID, there is a default setting that enables automatic sign-in after a restart. That means that when the device restarts, the last signed-in user will be signed in automatically. If the last signed-in user is the kiosk account, the kiosk app will be launched automatically after the device restarts.

- If you want the kiosk account to sign in automatically, and the kiosk app launched when the device restarts, then you don't need to do anything.

- If you don't want the kiosk account to sign in automatically when the device restarts, then you must change the default setting before you configure the device as a kiosk. Sign in with the account that you will assign as the kiosk account. Open the **Settings** app > **Accounts** > **Sign-in options**. Set the **Use my sign-in info to automatically finish setting up my device after an update or restart** setting to **Off**. After you change the setting, you can apply the kiosk configuration to the device.

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

- [Find the Application User Model ID of an installed app](./find-aumid.md)
- [Set-AssignedAccess](/powershell/module/assignedaccess/set-assignedaccess)

To remove assigned access, using PowerShell, run the following cmdlet:

```powershell
Clear-AssignedAccess
```

## Configure a kiosk experience using the kiosk wizard in Windows Configuration Designer

App type:

- UWP
- Windows desktop application

OS:

- Windows 10 Pro version 1709+ for UWP only
- Windows 10 Ent, Edu for UWP and Windows desktop applications
- Windows 11

Account type:

- Local standard user
- Active Directory

>[!IMPORTANT]
>When Exchange Active Sync (EAS) password restrictions are active on the device, the autologon feature does not work. This behavior is by design. For more informations, see [How to turn on automatic logon in Windows](/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon).

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

[Learn how to apply a provisioning package.](../provisioning-packages/provisioning-apply-package.md)

## Set up a kiosk or digital sign using Microsoft Intune or other MDM service

App type:

- UWP

OS:

- Windows 10 Pro version 1709+, Ent, Edu
- Windows 11

Account type:

- Local standard user
- Microsoft Entra ID


## Sign out of assigned access

To exit the Assigned Access (kiosk) app, press **Ctrl + Alt + Del**, and then sign in using another account. When you press **Ctrl + Alt + Del** to sign out of assigned access, the kiosk app will exit automatically. If you sign in again as the Assigned Access account or wait for the sign in screen timeout, the kiosk app relaunches. The Assigned Access user will remain signed in until an admin account opens **Task Manager** > **Users** and signs out the user account.

If you press **Ctrl + Alt + Del** and do not sign in to another account, after a set time, Assigned Access will resume. The default time is 30 seconds, but you can change that in the following registry key:

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI`

To change the default time for Assigned Access to resume, add *IdleTimeOut* (DWORD) and enter the value data as milliseconds in hexadecimal.

> [!NOTE]
> **IdleTimeOut** doesn't apply to the new Microsoft Edge kiosk mode.

The Breakout Sequence of **Ctrl + Alt + Del** is the default, but this sequence can be configured to be a different sequence of keys. The breakout sequence uses the format **modifiers + keys**. An example breakout sequence would look something like **Shift + Alt + a**, where **Shift** and **Alt** are the modifiers and **a** is the key value. For more information, see [Microsoft Edge kiosk XML sample](/windows/configuration/kiosk-xml#microsoft-edge-kiosk-xml-sample).

<!--
# Set up digital signs

Digital signage can be a useful and exciting business tool. Use digital signs to showcase your products and services, to display testimonials, or to advertise promotions and campaigns. A digital sign can be a static display, such as a building directory or menu, or it can be dynamic, such as repeating videos or a social media feed.

For digital signage, simply select a digital sign player as your kiosk app. You can also use [Microsoft Edge in kiosk mode](/DeployEdge/microsoft-edge-configure-kiosk-mode) or the Kiosk Browser app, and configure it to show your online content.

>[!TIP]
>Kiosk Browser can also be used in [single-app kiosks](kiosk-single-app.md) and [multi-app kiosk](lock-down-windows-10-to-specific-apps.md) as a web browser. For more information, see [Guidelines for web browsers](guidelines-for-assigned-access-app.md#guidelines-for-web-browsers).

Kiosk Browser must be downloaded for offline licensing using Microsoft Store for Business. You can deploy Kiosk Browser to devices running Windows 11, and Windows 10 version 1803+.

>[!NOTE]
>If you haven't set up your Microsoft Store for Business yet, check out [the prerequisites](/microsoft-store/prerequisites-microsoft-store-for-business) and then [sign up](/microsoft-store/sign-up-microsoft-store-for-business).

This procedure explains how to configure digital signage using Kiosk Browser on a device running Windows client that has already been set up (completed the first-run experience).

1. [Get **Kiosk Browser** in Microsoft Store for Business with offline, unencoded license type.](/microsoft-store/acquire-apps-microsoft-store-for-business#acquire-apps)
1. [Download the **Kiosk Browser** package, license file, and all required frameworks.](/microsoft-store/distribute-offline-apps#download-an-offline-licensed-app)
1. [Install Windows Configuration Designer.](~/provisioning-packages/provisioning-install-icd.md)
1. Open Windows Configuration Designer and select **Provision kiosk devices**.
1. Enter a friendly name for the project, and select **Finish**.
1. On **Set up device**, select **Disabled**, and select **Next**.
1. On **Set up network**, enable network setup:
    - Toggle **On** wireless network connectivity.
    - Enter the SSID, the network type (**Open** or **WPA2-Personal**), and (if **WPA2-Personal**) the password for the wireless network.
1. On **Account management**, select **Disabled**, and select **Next**.
1. On **Add applications**, select **Add an application**:
    - For **Application name**, enter `Kiosk Browser`.
    - For **Installer path**, browse to and select the AppxBundle that you downloaded from Microsoft Store for Business. After you select the package, additional fields are displayed.
    - For **License file path**, browse to and select the XML license file that you downloaded from Microsoft Store for Business.
    - The **Package family name** is populated automatically.
    - Select **Next**.
1. On **Add certificates**, select **Next**.
1. On **Configure kiosk account and app**, toggle **Yes** to create a local user account for your digital signage:
    - Enter a user name and password, and toggle **Auto sign-in** to **Yes**.
    - Under **Configure the kiosk mode app**, enter the user name for the account that you're creating.
    - For **App type**, select **Universal Windows App**.
    - In **Enter the AUMID for the app**, enter `Microsoft.KioskBrowser_8wekyb3d8bbwe!App`.
1. In the bottom left corner of Windows Configuration Designer, select **Switch to advanced editor**.
1. Go to **Runtime settings** > **Policies** > **KioskBrowser**. Let's assume that the URL for your digital signage content is contoso.com/menu:
    - In **BlockedUrlExceptions**, enter `https://www.contoso.com/menu`.
    - In **BlockedUrl**, enter `*`.
    - In **DefaultUrl**, enter `https://www.contoso.com/menu`.
    - Set **EnableEndSessionButton**, **EnableHomeButton**, and **EnableNavigationButtons** to **No**.

    >[!TIP]
    >For more information on kiosk browser settings, see [Guidelines for web browsers](guidelines-for-assigned-access-app.md#guidelines-for-web-browsers).

1. On the **File** menu, select **Save**, and select **OK** in the **Keep your info secure** dialog box.
1. On the **Export** menu, select **Provisioning package**.
1. Change the **Owner** to **IT Admin**, and select **Next**.
1. On **Select security details for the provisioning package**, select **Next**.
1. On **Select where to save the provisioning package**, select **Next**.
1. On **Build the provisioning package**, select **Build**.
1. On the **All done!** screen, click the **Output location**.
1. Copy the .ppkg file to a USB drive.
1. Attach the USB drive to the device that you want to use for your digital sign.
1. Go to **Settings** > **Accounts** > **Access work or school** > **Add or remove a provisioning package** > **Add a package**, and select the package on the USB drive.
-->


<!-->
When the multi-app kiosk configuration is applied to a device, AppLocker rules are generated to allow the apps that are listed in the configuration. Here are the predefined Assigned Access AppLocker rules

For UWP apps,

1. Default rule is to allow all users to launch the signed package apps.

2. The package app deny list is generated at runtime when the Assigned Access user signs in. Based on the installed/provisioned package apps available for the user account, Assigned Access generates the deny list. This list will exclude the default allowed inbox package apps which are critical for the system to function, and then exclude the allowed packages that enterprises defined in the Assigned Access configuration. If there are multiple apps within the same package, all these apps are excluded. This deny list is used to prevent the user from accessing the apps, which are currently available for the user but not in the allowed list.

Note:

Assigned access multi-app mode doesn't block the enterprises or the users from installing UWP apps. When a new UWP app is installed during the current Assigned Access user session, this app won't be in the deny list. When the user signs out and signs in back next time, it will be included in the deny list. If this is an enterprise-deployed line-of-business app and you want to allow it to run, update the Assigned Access configuration to include it in the allowed app list.

For desktop apps,

1. Default rule is to allow all users to launch the desktop programs signed with Microsoft Certificate in order for the system to boot and function. The rule also allows the admin user group to launch all desktop programs. 2. There's a predefined inbox desktop app deny list for the Assigned Access user account, and this deny list is adjusted based on the desktop app allow list that you defined in the multi-app configuration.

3. Enterprise-defined allowed desktop apps are added in the AppLocker allow list.
-->