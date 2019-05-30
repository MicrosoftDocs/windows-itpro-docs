---
title: Provision student PCs with apps
description: Learn how to use Configuration Designer to easily provision student devices to join Active Directory.
keywords: shared cart, shared PC, school, provision PCs with apps, Windows Configuration Designer
ms.prod: w10
ms.pagetype: edu
ms.mktglfcycl: plan
ms.sitesec: library
ms.localizationpriority: medium
author: mjcaparas
ms.author: macapara
ms.date: 10/13/2017
---

# Provision student PCs with apps
**Applies to:**

-   Windows 10  


To create and apply a provisioning package that contains apps to a device running all desktop editions of Windows 10 except Windows 10 Home, follow the steps in [Provision PCs with apps](https://technet.microsoft.com/itpro/windows/configure/provision-pcs-with-apps).

Provisioning packages can include management instructions and policies, installation of specific apps, customization of network connections and policies, and more.

You can apply a provisioning package on a USB drive to off-the-shelf devices during setup, making it fast and easy to configure new devices. 
- If you want to [provision a school PC to join a domain](set-up-students-pcs-to-join-domain.md) and add apps in the same provisioning package, follow the steps in [Provision PCs with apps](https://technet.microsoft.com/itpro/windows/configure/provision-pcs-with-apps). 
- If you want to provision a school PC to join Azure AD, set up the PC using the steps in [Use Set up School PCs App](use-set-up-school-pcs-app.md). Set up School PCs now lets you add recommended apps from the Store so you can add these apps while you're creating your package through Set up School PCs. You can also follow the steps in [Provision PCs with apps](https://technet.microsoft.com/itpro/windows/configure/provision-pcs-with-apps) if you want to add apps to student PCs after initial setup with the Set up School PCs package.

<!--
## Add apps to a provisioning package

1. Follow the steps to [create the provisioning package](set-up-students-pcs-to-join-domain.md#create-the-provisioning-package). 
2. 
2. On the **Finish** page, select **Switch to advanced editor**.

  ![Switch to advanced editor](images/icd-school-adv-edit.png)

**Next steps**
- [Add a desktop app to your package](#add-a-desktop-app-to-your-package)
- [Add a universal app to your package](#add-a-universal-app-to-your-package)
- [Build your package](#build-your-package)
- [Apply the provisioning package to a PC](#apply-package)


## Create a provisioning package to add apps after initial setup

Use the Windows Imaging and Configuration Designer (ICD) tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package. [Install the ADK.](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit)

1. Open Windows ICD (by default, %windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe).

2. Click **Advanced provisioning**.

  ![ICD start options](images/icdstart-option.png)  
  
3. Name your project and click **Next**.

3. Select **All Windows desktop editions**, click **Next**, and then click **Finish**.  

**Next steps**
- [Add a desktop app to your package](#add-a-desktop-app-to-your-package)
- [Add a universal app to your package](#add-a-universal-app-to-your-package)
- [Build your package](#build-your-package)
- [Apply the provisioning package to a PC](#apply-package)


## Add a desktop app to your package

1. In the **Available customizations** pane, go to **Runtime settings** > **ProvisioningCommands** > **DeviceContext** > **CommandFiles**. 

2. Add all the files required for the app install, including the data files and the installer.

3. Go to **Runtime settings** > **ProvisioningCommands** > **DeviceContext** > **CommandLine** and specify the command line that needs to be executed to install the app. This is a single command line (such as a script, executable, or msi) that triggers a silent install of your CommandFiles. Note that the install must execute silently (without displaying any UI). For MSI installers use, the msiexec /quiet option. 

> [!NOTE] 
> If you are installing more than one app, then use CommandLine to invoke the script or batch file that orchestrates installation of the files. For more information, see [Install a Win32 app using a provisioning package](https://msdn.microsoft.com/library/windows/hardware/mt703295%28v=vs.85%29.aspx). 

**Next steps**
- (optional) [Add a universal app to your package](#add-a-universal-app-to-your-package)
- [Build your package](#build-your-package)
- [Apply the provisioning package to a PC](#apply-package)

## Add a universal app to your package

Universal apps that you can distribute in the provisioning package can be line-of-business (LOB) apps developed by your organization, Microsoft Store for Business apps that you acquire with [offline licensing](https://technet.microsoft.com/itpro/windows/manage/acquire-apps-windows-store-for-business), or third-party apps. This procedure will assume you are distributing apps from the Microsoft Store for Business. For other apps, obtain the necessary information (such as the package family name) from the app developer. 

1. In the **Available customizations** pane, go to **Runtime settings** > **UniversalAppInstall**. 

2. For **DeviceContextApp**, specify the **PackageFamilyName** for the app. In Microsoft Store for Business, the package family name is listed in the **Package details** section of the download page.

    ![details for offline app package](images/uwp-family.png)

3. For **ApplicationFile**, click **Browse** to find and select the target app (either an \*.appx or \*.appxbundle).

4. For **DependencyAppxFiles**, click **Browse** to find and add any dependencies for the app. In Microsoft Store for Business, any dependencies for the app are listed in the **Required frameworks** section of the download page. 

    ![required frameworks for offline app package](images/uwp-dependencies.png)

5. For **DeviceContextAppLicense**, enter the **LicenseProductID**. In Microsoft Store for Business, you generate the license for the app on the app's download page.

    ![generate license for offline app](images/uwp-license.png)

[Learn more about distributing offline apps from the Microsoft Store for Business.](https://technet.microsoft.com/itpro/windows/manage/distribute-offline-apps)

> [!NOTE]  
> Removing a provisioning package will not remove any apps installed by device context in that provisioning package.

**Next steps**
- (optional) [Add a desktop app to your package](#add-a-desktop-app-to-your-package)
- [Build your package](#build-your-package)
- [Apply the provisioning package to a PC](#apply-package)

## Build your package

1. When you are done configuring the provisioning package, on the **File** menu, click **Save**.

2. Read the warning that project files may contain sensitive information, and click **OK**.
> **Important**  When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

3. On the **Export** menu, click **Provisioning package**.

1. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

10. Set a value for **Package Version**.

    **Tip**  
    You can make changes to existing packages and change the version number to update previously applied packages.

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

   
**Next step**
- [Apply the provisioning package to a PC](#apply-package)

## Apply package 

**During initial setup, from a USB drive**
1. Start with a computer on the first-run setup screen. If the PC has gone past this screen, reset the PC to start over. To reset the PC, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.

    ![The first screen to set up a new PC](images/oobe.jpg)

2. Insert the USB drive. Windows Setup will recognize the drive and ask if you want to set up the device. Select **Set up**.

    ![Set up device?](images/setupmsg.jpg)

3. The next screen asks you to select a provisioning source. Select **Removable Media** and tap **Next**.

    ![Provision this device](images/prov.jpg)
    
4. Select the provisioning package (\*.ppkg) that you want to apply, and tap **Next**.

    ![Choose a package](images/choose-package.png)

5. Select **Yes, add it**.

    ![Do you trust this package?](images/trust-package.png)
    
6. Read and accept the Microsoft Software License Terms.  

    ![Sign in](images/license-terms.png)
    
7. Select **Use Express settings**.

    ![Get going fast](images/express-settings.png)

8. If the PC doesn't use a volume license, you'll see the **Who owns this PC?** screen. Select **My work or school owns it** and tap **Next**.

    ![Who owns this PC?](images/who-owns-pc.png)

9. On the **Choose how you'll connect** screen, select **Join Azure AD** or **Join a domain** and tap **Next**.

    ![Connect to Azure AD](images/connect-aad.png)

10. Sign in with  your domain, Azure AD,  or Office 365 account and password. When you see the progress ring, you can remove the USB drive.

    ![Sign in](images/sign-in-prov.png)

    
**After setup, from a USB drive, network folder, or SharePoint site**

On a desktop computer, navigate to **Settings** &gt; **Accounts** &gt; **Work access** &gt; **Add or remove a management package** &gt; **Add a package**, and select the package to install. 

![add a package option](images/package.png)

-->

## Learn more

-  [Develop Universal Windows Education apps](https://msdn.microsoft.com/windows/uwp/apps-for-education/index)

-   [Build and apply a provisioning package]( https://go.microsoft.com/fwlink/p/?LinkId=629651)

-   Watch the video: [Provisioning Windows 10 Devices with New Tools](https://go.microsoft.com/fwlink/p/?LinkId=615921)

-   Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](https://go.microsoft.com/fwlink/p/?LinkId=615922)
 

