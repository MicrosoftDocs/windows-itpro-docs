---
title: Provision PCs with apps
description: Learn how to install multiple Universal Windows Platform (UWP) apps and Windows desktop applications (Win32) in a provisioning package.
ms.topic: how-to
ms.date: 07/09/2024
---

# Provision PCs with apps

You can install multiple Universal Windows Platform (UWP) apps and Windows desktop applications (Win32) in a provisioning package. This article explains the various settings in [Windows Configuration Designer](provisioning-install-icd.md) for app install.

When you add an app in a Windows Configuration Designer wizard, the appropriate settings are displayed based on the app that you select. For instructions on adding an app using the advanced editor in Windows Configuration Designer, see [Add an app using advanced editor](#add-a-windows-desktop-application-using-advanced-editor).

> [!IMPORTANT]
> If you plan to use Intune to manage your devices, we recommend using Intune to install Microsoft 365 Apps for enterprise. Apps that are installed using a provisioning package cannot be managed or modified using Intune. [Learn how to add Microsoft 365 Apps to Windows devices with Microsoft Intune.](/mem/intune/apps/apps-add-office365)

## Settings for UWP apps

- **License Path**: Specify the license file if it's an app from the Microsoft Store. This is optional if you have a certificate for the app.
- **Package family name**: Specify the package family name if you don't specify a license. This field will be autopopulated after you specify a license.
- **Required appx dependencies**: Specify the appx dependency packages that are required for the installation of the app

## Settings for Windows desktop applications

### MSI installer

- **Command line arguments**: Optionally, append more command arguments. The silent flag is appended for you. Example: PROPERTY=VALUE
- **Continue installations after failure**: Optionally, specify if you want to continue installing more apps if this app fails to install
- **Restart required**: Optionally, specify if you want to reboot after a successful install of this app
- **Required win32 app dependencies**: Optionally, specify more files that are required for the installation of the app. For installers that have multiple file dependencies or have directory structures, [create a cab file of the assets](provisioning-script-to-install-app.md#cab-the-application-assets). The installation script should [include expansion of the .cab file](provisioning-script-to-install-app.md#extract-from-a-cab-example).

> [!NOTE]
> You can find more information about command-line options for Msiexec.exe [here](/windows/win32/msi/command-line-options).

### Exe or other installer

- **Command line arguments**: Append the command line arguments with a silent flag (required). Optionally, append more flags
- **Return Codes**: Specify the return codes for success and success with restart (0 and 3010 by default respectively) Any return code that isn't listed is interpreted as failure. The text boxes are space delimited.
- **Continue installations after failure**: Optionally, specify if you want to continue installing more apps if this app fails to install
- **Restart required**: Optionally, specify if you want to reboot after a successful install of this app
- **Required win32 app dependencies**: Optionally, specify more files that are required for the installation of the app. For installers that have multiple file dependencies or have directory structures, [create a cab file of the assets](provisioning-script-to-install-app.md#cab-the-application-assets). The installation script should [include expansion of the .cab file](provisioning-script-to-install-app.md#extract-from-a-cab-example).

## Add a Windows desktop application using advanced editor

1. In the **Available customizations** pane, go to **Runtime settings** > **ProvisioningCommands** > **PrimaryContext** > **Command**.

1. Enter a name for the first app, and then select **Add**.

    ![enter name for first app.](images/wcd-app-name.png)

1. Configure the settings for the appropriate installer type.

    ![enter settings for first app.](images/wcd-app-commands.png)

## Add a universal app to your package using advanced editor

Universal apps that you can distribute in the provisioning package can be line-of-business (LOB) apps developed by your organization, Microsoft Store for Business apps that you acquire with [offline licensing](/microsoft-store/acquire-apps-windows-store-for-business), or non-Microsoft apps. This procedure assumes you're distributing apps from the Microsoft Store for Business. For other apps, obtain the necessary information (such as the package family name) from the app developer.

1. In the **Available customizations** pane, go to **Runtime settings** > **UniversalAppInstall**.
1. For **DeviceContextApp**, specify the **PackageFamilyName** for the app. In Microsoft Store for Business, the package family name is listed in the **Package details** section of the download page.
1. For **ApplicationFile**, select **Browse** to find and select the target app (either an \*.appx or \*.appxbundle).
1. For **DependencyAppxFiles**, select **Browse** to find and add any dependencies for the app. In Microsoft Store for Business, any dependencies for the app are listed in the **Required frameworks** section of the download page.
1. For **DeviceContextAppLicense**, enter the **LicenseProductID**.
    - In Microsoft Store for Business, generate the unencoded license for the app on the app's download page.
    - Open the license file and search for **LicenseID=** to get the GUID, enter the GUID in the **LicenseProductID** field and select **Add**.
1. In the **Available customizations** pane, select the **LicenseProductId** that you just added.
1. For **LicenseInstall**, select **Browse**, navigate to the license file that you renamed *\<file name>*.**ms-windows-store-license**, and select the license file.

[Learn more about distributing offline apps from the Microsoft Store for Business.](/microsoft-store/distribute-offline-apps)

> [!IMPORTANT]
> Removing a provisioning package will not remove any apps installed by device context in that provisioning package.

## Add a certificate to your package

1. In the **Available customizations** pane, go to **Runtime settings** > **Certificates** > **ClientCertificates**.
1. Enter a **CertificateName** and then select **Add**.
1. Enter the **CertificatePassword**.
1. For **CertificatePath**, browse and select the certificate to be used.
1. Set **ExportCertificate** to **False**.
1. For **KeyLocation**, select **Software only**.

## Add other settings to your package

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( https://go.microsoft.com/fwlink/p/?LinkId=619012).

## Build your package

1. After you configure the provisioning package, on the **File** menu, select **Save**.

1. Read the warning that project files may contain sensitive information, and select **OK**.

    When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files aren't encrypted. Store the project files in a secure location, and delete the project files when they're no longer needed.

1. On the **Export** menu, select **Provisioning package**.

1. Change **Owner** to **IT Admin**, which sets the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

1. Set a value for **Package Version**.

   > [!TIP]
   > You can make changes to existing packages and change the version number to update previously applied packages.

1. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

   - **Enable package encryption** - If you select this option, an autogenerated password is shown on the screen.
   - **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by selecting **Select...** and choosing the certificate you want to use to sign the package.

    > [!TIP]
    > We recommend that you include a trusted provisioning certificate in your provisioning package. When the package is applied to a device, the certificate is added to the system store. Any package signed with that certificate can be applied silently.

1. Select **Next** to specify the output location where you want the provisioning package to go once it's built. By default, Windows ICD uses the project folder as the output location. Optionally, you can select **Browse** to change the default output location.

1. Select **Next**.

1. Select **Build** to start building the package. The project information is displayed in the build page and the progress bar indicates the build status. If you need to cancel the build, select **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

1. If your build fails, an error message shows up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again. If your build is successful, the name of the provisioning package, output directory, and project directory is shown.

    - If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, select **Back** to change the output package name and path, and then select **Next** to start another build.
    - If you're done, select **Finish** to close the wizard and go back to the **Customizations Page**.

1. Select the **output location** link to go to the location of the package. You can provide that .ppkg to others through any of the following methods:

    - Shared network folder
    - SharePoint site
    - Removable media (USB/SD)
    - Email

## Next steps

> [!div class="nextstepaction"]
> Learn more about applying a provisioning package:
>
> [Apply a provisioning package](provisioning-apply-package.md)
