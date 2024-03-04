---
title: What is Assigned Access?
description: Learn how to configure devices with Assigned Access.
ms.date: 05/12/2023
ms.topic: how-to
---

# What is Assigned Access?

Assigned Access is a Windows feature that you can use to configure a device as a kiosk or restricted user experience.


Multi-app kiosk mode allows an IT admin to pre-select the apps and functionality available to a user to create a tailored and immersive device experience. Ideal for shared devices, multi-app kiosk mode can create different configurations for different users, ensuring they have access to only what is needed to use the device as intended. The locked down configurations present users with the Windows desktop with which they are already familiar, while limiting their access to reduce distractions and potential for inadvertent uses.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience
    :::column-end:::
:::row-end:::

A single UWP application or Microsoft Edge is executed in full screen, above the lock screen. Users can only use that application. If the kiosk app is closed, it will utomatically restart. Practical examples include:

- Public browsing
- Interactive digital signage
This experience is sometimes referred to as *single-app kiosk*.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

Users can execute a defined list of applications, with a custom Start menu and Taskbar. Practical examples include:

- Frontline worker devices
- Student devices
- Lab devices

When applying an Assigned Access configuration to a device, different policy settings are enforced, creating a locked down experience to the users.

> [!NOTE]
> Assigned Access profiles only apply to non-admin accounts. When an administrator signs in, the Assigned Access restrictions don't apply.

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

    :::image type="content" source="images/settings-choose-app.png" alt-text="Screenshot of the dialog box asking to select an app." border="false":::

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


## Set up a restricted user experience

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

Before you add the XML file to a provisioning package, you can [validate your configuration XML against the XSD](xsd.md).

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
#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

---


## User experience

To test the kiosk, sign in with the Assigned Access user account you specified in the configuration to check out the multi-app experience.

>[!NOTE]
>The kiosk configuration setting will take effect the next time the Assigned Access user signs in. If that user account is signed in when you apply the configuration, make sure the user signs out and signs back in to validate the experience.

When Assigned Access is configured, different policy settings are applied to the device to provide a secured, locked-down experience. For more information, see [policy-settings](policy-settings.md).

Optionally, run Event Viewer (eventvwr.exe) and look through logs under **Applications and Services Logs** > **Microsoft** > **Windows** > **Provisioning-Diagnostics-Provider** > **Admin**.

### App launching and switching experience

In the multi-app mode, to maximize the user productivity and streamline the experience, an app will be always launched in full screen when the users click the tile on the Start. The users can minimize and close the app, but cannot resize the app window.

The users can switch apps just as they do today in Windows. They can use the Task View button, Alt + Tab hotkey, and the swipe in from the left gesture to view all the open apps in task view. They can click the Windows button to show Start, from which they can open apps, and they can switch to an opened app by clicking it on the taskbar.

### Auto-trigger touch keyboard

The touch keyboard is automatically triggered when there's an input needed and no physical keyboard is attached on touch-enabled devices. You don't need to configure any other setting to enforce this behavior.

### Sign out of assigned access

To exit the Assigned Access (kiosk) app, press **Ctrl + Alt + Del**, and then sign in using another account. When you press **Ctrl + Alt + Del** to sign out of assigned access, the kiosk app will exit automatically. If you sign in again as the Assigned Access account or wait for the sign in screen timeout, the kiosk app relaunches. The Assigned Access user will remain signed in until an admin account opens **Task Manager** > **Users** and signs out the user account.

If you press **Ctrl + Alt + Del** and do not sign in to another account, after a set time, Assigned Access will resume. The default time is 30 seconds, but you can change that in the following registry key:

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI`

To change the default time for Assigned Access to resume, add *IdleTimeOut* (DWORD) and enter the value data as milliseconds in hexadecimal.

> [!NOTE]
> **IdleTimeOut** doesn't apply to the new Microsoft Edge kiosk mode.

The Breakout Sequence of **Ctrl + Alt + Del** is the default, but this sequence can be configured to be a different sequence of keys. The breakout sequence uses the format **modifiers + keys**. An example breakout sequence would look something like **Shift + Alt + a**, where **Shift** and **Alt** are the modifiers and **a** is the key value. For more information, see [Microsoft Edge kiosk XML sample](/windows/configuration/kiosk-xml#microsoft-edge-kiosk-xml-sample).




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

<!--

# Guidelines for choosing an app for Assigned Access (kiosk experience)

Use Assigned Access to restrict users to use only one application, so that the device acts like a kiosk. Administrators can use Assigned Access to restrict a selected user account to access a single Windows app. You can choose almost any Windows app for assigned access; however, some apps may not provide a good user experience.

The following guidelines may help you choose an appropriate Windows app for your Assigned Access experience.

## General guidelines

- Windows apps must be provisioned or installed for the Assigned Access account before they can be selected as the Assigned Access app. [Learn how to provision and install apps](/windows/client-management/mdm/enterprise-app-management#install_your_apps).
- Updating a Windows app can sometimes change the Application User Model ID (AUMID) of the app. If this change happens, you must update the Assigned Access settings to launch the updated app, because Assigned Access uses the AUMID to determine which app to launch.
- Apps that are generated using the [Desktop App Converter (Desktop Bridge)](/windows/uwp/porting/desktop-to-uwp-run-desktop-app-converter) can't be used as kiosk apps.

## Guidelines for Windows apps that launch other apps

Some apps can launch other apps. Assigned access prevents Windows apps from launching other apps.

Avoid selecting Windows apps that are designed to launch other apps as part of their core functionality.

## Guidelines for web browsers

Microsoft Edge includes support for kiosk mode. [Learn how to deploy Microsoft Edge kiosk mode.](/microsoft-edge/deploy/microsoft-edge-kiosk-mode-deploy)

In Windows client, you can install the **Kiosk Browser** app from Microsoft to use as your kiosk app. For digital signage scenarios, you can configure **Kiosk Browser** to navigate to a URL and show only that content -- no navigation buttons, no address bar, etc. For kiosk scenarios, you can configure more settings, such as allowed and blocked URLs, navigation buttons, and end session buttons. For example, you could configure your kiosk to show the online catalog for your store, where customers can navigate between departments and items, but aren't allowed to go to a competitor's website.

>[!NOTE]
>Kiosk Browser supports a single tab. If a website has links that open a new tab, those links will not work with Kiosk Browser. Kiosk Browser does not support .pdfs.
>
>Kiosk Browser can't access intranet websites.

**Kiosk Browser** must be downloaded for offline licensing using Microsoft Store For Business. You can deploy **Kiosk Browser** to devices running Windows 10, version 1803 (Pro, Business, Enterprise, and Education) and Windows 11.

1. [Get **Kiosk Browser** in Microsoft Store for Business with offline license type.](/microsoft-store/acquire-apps-microsoft-store-for-business#acquire-apps)
1. [Deploy **Kiosk Browser** to kiosk devices.](/microsoft-store/distribute-offline-apps)
1. Configure policies using settings from the Policy Configuration Service Provider (CSP) for [KioskBrowser](/windows/client-management/mdm/policy-csp-kioskbrowser). These settings can be configured using your MDM service provider, or [in a provisioning package](../provisioning-packages/provisioning-create-package.md). In Windows Configuration Designer, the settings are located in **Policies > KioskBrowser** when you select advanced provisioning for Windows desktop editions.

>[!NOTE]
>If you configure the kiosk using a provisioning package, you must apply the provisioning package after the device completes the out-of-box experience (OOBE).

### Kiosk Browser settings

| Kiosk Browser settings | Use this setting to |
|--|--|
| Blocked URL Exceptions | Specify URLs that people can navigate to, even though the URL is in your blocked URL list. You can use wildcards. <br><br>For example, if you want people to be limited to `http://contoso.com` only, you would add `.contoso.com` to blocked URL exception list and then block all other URLs. |
| Blocked URLs | Specify URLs that people can't navigate to. You can use wildcards. <br><br>If you want to limit people to a specific site, add `https://*` to the blocked URL list, and then specify the site to be allowed in the blocked URL exceptions list. |
| Default URL | Specify the URL that Kiosk Browser will open with. **Tip!** Make sure your blocked URLs don't include your default URL. |
| Enable End Session Button | Show a button in Kiosk Browser that people can use to reset the browser. End Session will clear all browsing data and navigate back to the default URL. |
| Enable Home Button | Show a Home button in Kiosk Browser. Home will return the browser to the default URL. |
| Enable Navigation Buttons | Show forward and back buttons in Kiosk Browser. |
| Restart on Idle Time | Specify when Kiosk Browser should restart in a fresh state after an amount of idle time since the last user interaction. |

To configure multiple URLs for **Blocked URL Exceptions** or **Blocked URLs** in Windows Configuration Designer:

1. Create the provisioning package. When ready to export, close the project in Windows Configuration Designer
1. Open the customizations.xml file in the project folder (e.g C:\Users\name\Documents\Windows Imaging and Configuration Designer (WICD)\Project_18)
1. Insert the null character string in between each URL (e.g www.bing.com`&#xF000;`www.contoso.com)
1. Save the XML file
1. Open the project again in Windows Configuration Designer
1. Export the package. Ensure you do not revisit the created policies under Kiosk Browser or else the null character will be removed

> [!TIP]
>
> To enable the **End Session** button for Kiosk Browser in Intune, you must [create a custom OMA-URI policy](/intune/custom-settings-windows-10) with the following information:
>
> - OMA-URI: ./Vendor/MSFT/Policy/Config/KioskBrowser/EnableEndSessionButton
> - Data type: Integer
> - Value: 1

#### Rules for URLs in Kiosk Browser settings

Kiosk Browser filtering rules are based on the [Chromium Project](https://www.chromium.org/Home).

URLs can include:

- A valid port value from 1 to 65,535.
- The path to the resource.
- Query parameters.

More guidelines for URLs:

- If a period precedes the host, the policy filters exact host matches only
- You can't use user:pass fields
- When both blocked URL and blocked URL exceptions apply with the same path length, the exception takes precedence
- The policy searches wildcards (*) last
- The optional query is a set of key-value and key-only tokens delimited by '&'
- Key-value tokens are separated by '='
- A query token can optionally end with a '*' to indicate prefix match. Token order is ignored during matching

### Examples of blocked URLs and exceptions

The following table describes the results for different combinations of blocked URLs and blocked URL exceptions.

| Blocked URL rule | Block URL exception rule | Result |
|--|--|--|
| `*` | `contoso.com`<br>`fabrikam.com` | All requests are blocked unless it's to contoso.com, fabrikam.com, or any of their subdomains. |
| `contoso.com` | `mail.contoso.com`<br>`.contoso.com`<br>`.www.contoso.com` | Block all requests to contoso.com, except for the main page and its mail subdomain. |
| `youtube.com` | `youtube.com/watch?v=v1`<br>`youtube.com/watch?v=v2` | Blocks all access to youtube.com except for the specified videos (v1 and v2). |

The following table gives examples for blocked URLs.

| Entry | Result |
|--|--|
| `contoso.com` | Blocks all requests to contoso.com, www.contoso.com, and sub.www.contoso.com |
| `https://*` | Blocks all HTTPS requests to any domain. |
| `mail.contoso.com` | Blocks requests to mail.contoso.com but not to www.contoso.com or contoso.com |
| `.contoso.com` | Blocks contoso.com but not its subdomains, like subdomain.contoso.com. |
| `.www.contoso.com` | Blocks www.contoso.com but not its subdomains. |
| `*` | Blocks all requests except for URLs in the Blocked URL Exceptions list. |
| `*:8080` | Blocks all requests to port 8080. |
| `contoso.com/stuff` | Blocks all requests to contoso.com/stuff and its subdomains. |
| `192.168.1.2` | Blocks requests to 192.168.1.1. |
| `youtube.com/watch?v=V1` | Blocks YouTube video with id V1. |

### Other browsers

You can create your own web browser Windows app by using the WebView class. Learn more about developing your own web browser app:

- [Creating your own browser with HTML and JavaScript](https://blogs.windows.com/msedgedev/2015/08/27/creating-your-own-browser-with-html-and-javascript/)
- [WebView class](/uwp/api/Windows.UI.Xaml.Controls.WebView)
- [A web browser built with JavaScript as a Windows app](https://github.com/MicrosoftEdge/JSBrowser/tree/v1.0)

## Secure your information

Avoid selecting Windows apps that may expose the information you don't want to show in your kiosk, since kiosk usually means anonymous access and locates in a public setting like a shopping mall. For example, an app that has a file picker allows the user to gain access to files and folders on the user's system, avoid selecting these types of apps if they provide unnecessary data access.

## App configuration

Some apps may require more configurations before they can be used appropriately in assigned access. For example, Microsoft OneNote requires you to set up a Microsoft account for the Assigned Access user account before OneNote will open in assigned access.

Check the guidelines published by your selected app and set up accordingly.

## Develop your kiosk app

Assigned access in Windows client uses the new lock framework. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an above lock screen app.

Follow the [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Test your Assigned Access experience

The above guidelines may help you select or develop an appropriate Windows app for your Assigned Access experience. Once you've selected your app, we recommend that you thoroughly test the Assigned Access experience to ensure that your device provides a good customer experience.

> [!NOTE]
> Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, Start Layout).

> [!IMPORTANT]
> The kiosk profile is designed for public-facing kiosk devices. We recommend that you use a local, non-administrator account. If the device is connected to your company network, using a domain or Microsoft Entra account could potentially compromise confidential information.
