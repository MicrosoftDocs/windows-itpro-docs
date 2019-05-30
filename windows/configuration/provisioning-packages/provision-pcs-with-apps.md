---
title: Provision PCs with apps  (Windows 10)
description: Add apps to a Windows 10 provisioning package. 
keywords: ["runtime provisioning", "provisioning package"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
---

# Provision PCs with apps 


**Applies to**

- Windows 10


In Windows 10, version 1703, you can install multiple Universal Windows Platform (UWP) apps and Windows desktop applications (Win32) in a provisioning package. This topic explains the various settings in [Windows Configuration Designer](provisioning-install-icd.md) for app install.

When you add an app in a Windows Configuration Designer wizard, the appropriate settings are displayed based on the app that you select. For instructions on adding an app using the advanced editor in Windows Configuration Designer, see [Add an app using advanced editor](#adv).

>[!IMPORTANT]
>If you plan to use Intune to manage your devices, we recommend using Intune to install Office 365 ProPlus 2016 apps (Access, Excel, OneDrive for Business, OneNote, Outlook, PowerPoint, Publisher, Skype for Business, Word, Project Online Desktop Cilent, and Visio Pro for Office 365 ProPlus). Apps that are installed using a provisioning package cannot be managed or modified using Intune. [Learn how to assign Office 365 ProPlus 2016 apps using Microsoft Intune.](https://docs.microsoft.com/intune/apps-add-office365)

## Settings for UWP apps

- **License Path**: Specify the license file if it is an app from the Microsoft Store. This is optional if you have a certificate for the app. 

- **Package family name**: Specify the package family name if you don’t specify a license. This field will be auto-populated after you specify a license. 

- **Required appx dependencies**: Specify the appx dependency packages that are required for the installation of the app 

## Settings for Windows desktop applications

### MSI installer

- **Command line arguments**: Optionally, append additional command arguments. The silent flag is appended for you. Example: PROPERTY=VALUE 

- **Continue installations after failure**: Optionally, specify if you want to continue installing additional apps if this app fails to install 

- **Restart required**: Optionally, specify if you want to initiate a reboot after a successful install of this app 

- **Required win32 app dependencies**: Optionally, specify additional files that are required for the installation of the app. For installers that have multiple file dependencies or have directory structures, [create a cab file of the assets](provisioning-script-to-install-app.md#cab). The installation script should [include expansion of the .cab file](provisioning-script-to-install-app.md#cab-extract).

### Exe or other installer

- **Command line arguments**: Append the command line arguments with a silent flag (required). Optionally, append additional flags 

- **Return Codes**: Specify the return codes for success and success with restart (0 and 3010 by default respectively) Any return code that is not listed will be interpreted as failure. The text boxes are space delimited. 

- **Continue installations after failure**: Optionally, specify if you want to continue installing additional apps if this app fails to install 

- **Restart required**: Optionally, specify if you want to initiate a reboot after a successful install of this app 

- **Required win32 app dependencies**: Optionally, specify additional files that are required for the installation of the app. For installers that have multiple file dependencies or have directory structures, [create a cab file of the assets](provisioning-script-to-install-app.md#cab). The installation script should [include expansion of the .cab file](provisioning-script-to-install-app.md#cab-extract).


<span id="adv" />
## Add a Windows desktop application using advanced editor in Windows Configuration Designer


1. In the **Available customizations** pane, go to **Runtime settings** > **ProvisioningCommands** > **PrimaryContext** > **Command**. 

2. Enter a name for the first app, and then click **Add**.

    ![enter name for first app](../images/wcd-app-name.png)

3. [Configure the settings for the appropriate installer type.](#settings-for-classic-windows-apps)

    ![enter settings for first app](../images/wcd-app-commands.png)

## Add a universal app to your package

Universal apps that you can distribute in the provisioning package can be line-of-business (LOB) apps developed by your organization, Microsoft Store for Business apps that you acquire with [offline licensing](/microsoft-store/acquire-apps-windows-store-for-business), or third-party apps. This procedure will assume you are distributing apps from the Microsoft Store for Business. For other apps, obtain the necessary information (such as the package family name) from the app developer. 

1. In the **Available customizations** pane, go to **Runtime settings** > **UniversalAppInstall**. 

2. For **DeviceContextApp**, specify the **PackageFamilyName** for the app. In Microsoft Store for Business, the package family name is listed in the **Package details** section of the download page.

    ![details for offline app package](../images/uwp-family.png)

3. For **ApplicationFile**, click **Browse** to find and select the target app (either an \*.appx or \*.appxbundle).

4. For **DependencyAppxFiles**, click **Browse** to find and add any dependencies for the app. In Microsoft Store for Business, any dependencies for the app are listed in the **Required frameworks** section of the download page. 

    ![required frameworks for offline app package](../images/uwp-dependencies.png)

5. For **DeviceContextAppLicense**, enter the **LicenseProductID**. 

    - In Microsoft Store for Business, generate the unencoded license for the app on the app's download page. 

        ![generate license for offline app](../images/uwp-license.png)
        
    - Open the license file and search for **LicenseID=** to get the GUID, enter the GUID in the **LicenseProductID** field and click **Add**.
    
6. In the **Available customizations** pane, click the **LicenseProductId** that you just added. 

7. For **LicenseInstall**, click **Browse**, navigate to the license file that you renamed *<file name>*.**ms-windows-store-license**, and select the license file.

[Learn more about distributing offline apps from the Microsoft Store for Business.](/microsoft-store/distribute-offline-apps)

> [!NOTE]
> Removing a provisioning package will not remove any apps installed by device context in that provisioning package.



## Add a certificate to your package

1. In the **Available customizations** pane, go to **Runtime settings** > **Certificates** > **ClientCertificates**. 

2. Enter a **CertificateName** and then click **Add**. 

2. Enter the **CertificatePassword**. 

3. For **CertificatePath**, browse and select the certificate to be used. 

4. Set **ExportCertificate** to **False**.

5. For **KeyLocation**, select **Software only**. 


## Add other settings to your package 

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( https://go.microsoft.com/fwlink/p/?LinkId=619012).

## Build your package

1. When you are done configuring the provisioning package, on the **File** menu, click **Save**.

2. Read the warning that project files may contain sensitive information, and click **OK**.
> **Important**  When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

3. On the **Export** menu, click **Provisioning package**.

1. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

10. Set a value for **Package Version**.

    > [!TIP]  
    > You can make changes to existing packages and change the version number to update previously applied packages.

11. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Select...** and choosing the certificate you want to use to sign the package.

        **Important**  
        We recommend that you include a trusted provisioning certificate in your provisioning package. When the package is applied to a device, the certificate is added to the system store and any package signed with that certificate thereafter can be applied silently. 

12. Click **Next** to specify the output location where you want the provisioning package to go once it's built. By default, Windows ICD uses the project folder as the output location.<p>
Optionally, you can click **Browse** to change the default output location.

13. Click **Next**.

14. Click **Build** to start building the package. The project information is displayed in the build page and the progress bar indicates the build status.<p>
If you need to cancel the build, click **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

15. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.<p>
If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    -   If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, click **Back** to change the output package name and path, and then click **Next** to start another build.
    
    -   If you are done, click **Finish** to close the wizard and go back to the **Customizations Page**.

16. Select the **output location** link to go to the location of the package. You can provide that .ppkg to others through any of the following methods:

    -   Shared network folder

    -   SharePoint site

    -   Removable media (USB/SD)

    -   Email

    -   USB tether (mobile only)

    -   NFC (mobile only)



**Next step**: [How to apply a provisioning package](provisioning-apply-package.md)

## Learn more

-   Watch the video: [Provisioning Windows 10 Devices with New Tools](https://go.microsoft.com/fwlink/p/?LinkId=615921)

-   Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](https://go.microsoft.com/fwlink/p/?LinkId=615922)
 

## Related topics

- [Provisioning packages for Windows 10](provisioning-packages.md)
- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows 10 (reference)](provisioning-powershell.md)
- [NFC-based device provisioning](../mobile-devices/provisioning-nfc.md)
- [Use the package splitter tool](../mobile-devices/provisioning-package-splitter.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)


