---
title: Create provisioning packages (Surface Hub)
description: For Windows 10, settings that use the registry or a content services platform (CSP) can be configured using provisioning packages. You can also add certificates during first run using provisioning.
ms.assetid: 8AA25BD4-8A8F-4B95-9268-504A49BA5345
keywords: add certificate, provisioning package
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
---

# Create provisioning packages (Surface Hub)

REWRITE FOR ICD CHANGES

This topic explains how to create and apply a provisioning package to Surface Hub devices. For Surface Hub, you can use provisioning packages toadd certificates, customize policies, install Windows apps, or customize Windows Team settings. 

You can apply a provisioning package on a USB during setup. 

## Advantages
-   You can configure new devices as part of the setup process. 

-   No network connectivity required.

-   Simple to apply.

[Learn more about the benefits and uses of provisioning packages.](../whats-new/new-provisioning-packages.md)

## Create the provisioning package

Use the Windows Imaging and Configuration Designer (ICD) tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package. When you install the ADK, you can select just Windows Imaging and Configuration Designer (ICD).  [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

1. Open Windows ICD (by default, %windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe).

2. Click **Advanced provisioning**.

  ![ICD start options](images/icdstart-option.png)  
  
3. Name your project and click **Next**.

4. Select **Common to Windows 10 team edition**, click **Next**, and then click **Finish**.

5. In the project, under **Available customizations**, select **Common Team edition settings**. 


### Add a policy to your package

1. blah

2. blah


### Add a universal app to your package

1. In the **Available customizations** pane, go to **Runtime settings** > **UniversalAppInstall**. 

2. For **UserContextApp**, specify the **PackageFamilyName** for the app. (how to find package family name)

3. For **ApplicationFile**, click **Browse** to find and select the target app (either an \*.appx or \*.appxbundle).

4. For **DependencyAppxFiles**, click **Browse** to find and add any dependencies for the app. (how will they know?)

5. For **UserContextAppLicense**, enter the **LicenseProductID**. (where to get)


### Add a certificate to your package

1. In the **Available customizations** pane, go to **Runtime settings** > **Certificates** > **ClientCertificates**. 

2. Enter a **CertificateName** and then click **Add**. 

2. Enter the **CertificatePassword**. 

3. For **CertificatePath**, browse and select the certificate to be used. 

4. Set **ExportCertificate** to **False**.

5. For **KeyLocation**, select **Software only**. 


### Add other settings to your package 

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( http://go.microsoft.com/fwlink/p/?LinkId=619012).

### Build your package

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

    -   Email

    -   USB tether (mobile only)

    -   NFC (mobile only)



## Apply package

1. Start with a computer on the first-run setup screen. If the PC has gone past this screen, reset the PC to start over. To reset the PC, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.

    ![The first screen to set up a new PC](images/oobe.jpg)

2. Insert the USB drive and press the Windows key five times. Windows Setup will recognize the drive and ask if you want to set up the device. Select **Set up**.

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

## Learn more
-   [Build and apply a provisioning package]( http://go.microsoft.com/fwlink/p/?LinkId=629651)

-   Watch the video: [Provisioning Windows 10 Devices with New Tools](http://go.microsoft.com/fwlink/p/?LinkId=615921)

-   Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](http://go.microsoft.com/fwlink/p/?LinkId=615922)


OLD CONTENT
For Windows 10, settings that use the registry or a content services platform (CSP) can be configured using provisioning packages. You can also add certificates during first run using provisioning.

In this topic, you'll find the following information:

-   [Introduction to provisioning packages](#intro-prov-pkg)
-   [What can provisioning packages configure for Microsoft Surface Hubs?](#what-can-prov-pkg)
-   [How do I create and deploy a provisioning package?](#how-do-i-prov-pkg)
-   [Requirements](#requirements-prov-pkg)
-   [Install the Windows Imaging and Configuration Designer](#installing-wicd-prov-pkg)
-   [Create a provisioning package for certificates](#creating-prov-pkg-certs)
-   [Create a provisioning package for apps](#creating-prov-pkg-apps)
-   [Deploy a provisioning package to a Surface Hub](#deploy-to-hub-prov-pkg)
    -   [Deploy a provisioning package using first run](#deploy-via-oobe-prov-pkg)
    -   [Deploy a provisioning package using Settings](#deploy-via-settings-prov-pkg)

### <a href="" id="intro-prov-pkg"></a>Introduction to provisioning packages

Provisioning packages are created using Windows Imaging and Configuration Designer (WICD), which is a part of the Windows Assessment and Deployment Kit (ADK). For Surface Hub, the provisioning packages can be placed on a USB drive.

### <a href="" id="what-can-prov-pkg"></a>What can provisioning packages configure for Surface Hubs?

Currently, you can use provisioning packages to install certificates and to install Universal App Platform (UAP) apps on your Surface Hub. These are the only two supported scenarios.

You may use provisioning packages to install certificates that will allow the device to authenticate to Microsoft Exchange or Skype for Business, or to sideload apps that don't come from the Windows Store (for example, your own in-house apps).

>**Note**  Provisioning can only install certificates to the device (local machine) store, and not to the user store. If your organization requires that certificates must be installed to the user store, you must use Mobile Device Management (MDM) to deploy these certificates. See your MDM solution documentation for details.

 

### <a href="" id="how-do-i-prov-pkg"></a>How do I create and deploy a provisioning package?

Provisioning packages must be created using the Windows Imaging and Configuration Designer (ICD).

### <a href="" id="requirements-prov-pkg"></a>Requirements

In order to create and deploy provisioning packages, all of the following are required:

-   Access to the Settings app on Surface Hub (using admin credentials which were configured at initial setup of the Surface Hub).
-   Windows Imaging and Configuration Designer (ICD), which is installed as a part of the windows 10 Assessment and Deployment Kit (ADK).
-   A PC running Windows 10.
-   USB flash drive.

### <a href="" id="installing-wicd-prov-pkg"></a>Install the Windows Imaging and Configuration Designer

1.  The Windows Imaging and Configuration Designer (ICD) is installed as part of the Windows 10 ADK. The installer for the ADK can be downloaded from the [Microsoft Download Center](http://go.microsoft.com/fwlink/?LinkId=718147).
    >**Note**  The ADK must be installed on a separate PC, not on the Surface Hub.  

2.  Run the installer, and set your preferences for installation. When asked what features you want to install, you will see a checklist like the one in the following figure. Note that **Windows Performance Toolkit** and **Windows Assessment Toolkit** should be unchecked, as they are not needed to run the ICD.

    Before going to the next step, make sure you have the following checked:

    -   **Deployment Tools**
    -   **Windows Preinstallation Environment**
    -   **Imaging and Configuration Designer**
    -   **User State Migration Tool**

    All four of these features are required to run the ICD and create a package for the Surfact Hub.

    ![Image showing Windows ADK install page - select features to install.](images/idcfeatureschecklist.png)

3.  Continue with the installer until the ADK is installed. This may take a while, because the installer downloads remote content.

### <a href="" id="creating-prov-pkg-certs"></a>Create a provisioning package for certificates

This example will demonstrate how to create a provisioning package to install a certificate.

1.  On the PC that had the Windows 10 ADK installed, open ICD and choose the **New provisioning package** tile from the main menu.

    ![Image showing Start page in Windows Imaging and Configuration Designer.](images/wicd-screen01a.png)

2.  When the **New project** dialog box opens, type whatever name you like in the **Name** box. The **Location** and **Description** boxes can also be filled at your discretion, though we recommend using the **Description** box to help you distinguish among multiple packages. Click **Next**.

    ![Image showing New project screen for Windows Imaging and Configuration Designer.](images/wicd-screen02a.png)

    Select the settings that are **Common to all Windows editions**, and click **Next**.

    ![Image showing project settings in Windows Imaging and Configuration Designer.](images/wicd-screen02b.png)

    When asked to import a provisioning package, just click **Finish.**

    ![Image showing option for importing a provisioning package.](images/wicd-screen02c.png)

3.  ICD's main screen will be displayed. This is where you create the provisioning package. In the **Available customizations** pane, expand **Runtime settings** and then expand **Certificates**. Click **Root certificates**.

    ![Image showing Windows Imaging and Configuration Designer's man page.](images/wicd-screen03a.png)

    In the center pane, you’ll be asked to specify a **CertificateName** for the Root certificate. You can set this to whatever you want. For the example, we've used the same name as the project. Click **Add**, and an entry will be added in the left pane.

4.  In the **Available customizations** pane on the left, a new category has appeared for **CertificatePath** underneath the **CertificateName** you provided. There’s also a red exclamation icon indicating that there is a required field that needs to be set. Click **CeritficatePath**.

    ![Image showing available customizations in Windows Imaging and Configuration Designer.](images/wicd-screen04a.png)

5.  In the center pane, you’ll be asked to specify the path for the certificate. Enter the name of the .cer file that you want to deploy, either by typing or clicking **Browse**. It must be a root certificate. The provisioning package created will copy the .cer file into the package it creates.

    ![icd tiles](images/wicd-screen06a.png)

6.  Verify that the path is set, then click **Export** in the top menu and choose **Provisioning package**.

    ![icd tiles](images/wicd-screen07a.png)

7.  You'll see a series of dialog boxes next. In the first one, either accept the defaults, or enter new values as needed, and click **Next**. You'll most likely want to accept the defaults.

    ![icd tiles](images/wicd-screen08a.png)

    Click **Next** again in the security options dialog box, because this package doesn't need to be encrypted or signed.

    ![icd tiles](images/wicd-screen09a.png)

    Choose where to save the provisioning package, and click **Next**.

    ![icd tiles](images/wicd-screen10a.png)

    Review the information shown, and if it looks good, click **Build**.

    ![icd tiles](images/wicd-screen11a.png)

    You will see a confirmation dialog box similar to the one following. Click the link under **Output location** to open the directory containing the provisioning package.

    ![icd tiles](images/wicd-screen12a.png)

8.  Copy the .ppkg from the output directory into the root directory of a USB drive. If it’s not at the root, it won’t be recognized by the device. You’ve finished making the provisioning package—now you just need to deploy it to the Surface Hub.

### <a href="" id="creating-prov-pkg-apps"></a>Create a provisioning package for apps

This example will demonstrate how to create a provisioning package to install offline-licensed apps purchased from the Windows Store for Business. For information on offline-licensed apps and what you need to download in order to install them, see [Distribute offline apps](http://go.microsoft.com/fwlink/?LinkId=718148).

For each app you want to install on Surface Hubs, you'll need to download:

-   App metadata
-   App package
-   App license

Depending on the app, you may or may not need to download a new app framework.

1.  On the PC that had the Windows 10 ADK installed, open ICD and choose the **New provisioning package** tile from the main menu.

    ![icd tiles](images/wicd-screen01a.png)

2.  When the **New project** dialog box opens, type whatever name you like in the **Name** box. The **Location** and **Description** boxes can also be filled at your discretion, though we recommend using the **Description** box to help you distinguish among multiple packages. Click **Next**.

    ![icd tiles](images/wicd-screen-apps-02a.png)

    Select the settings that are **Common to all Windows editions**, and click **Next**.

    ![icd tiles](images/wicd-screen02b.png)

    When asked to import a provisioning package, just click **Finish.**

    ![icd tiles](images/wicd-screen02c.png)

3.  ICD's main screen will be displayed. This is where you create the provisioning package. In the **Available customizations** pane, expand **UniversalAppInstall** and click **DeviceContextApp**.

    ![icd tiles](images/wicd-screen-apps-03a.png)

    In the center pane, you’ll be asked to specify a **PackageFamilyName** for the app. This is one of the things you downloaded from the Store for Business. Click **Add**, and an entry will be added in the left pane.

4.  In the **Available customizations** pane on the left, new categories will be displayed for **ApplicationFile** and **LaunchAppAtLogin** underneath the **PackageFamilyName** you just entered. Enter the appx filename in the **ApplicationFile** box in the center pane.

    ![icd tiles](images/wicd-screen-apps-04a.png)

    Generally, **LaunchAppAtLogin** should be set to **Do not launch app** or **NOT CONFIGURED**.

5.  Next, click **DeviceContextAppLicense** in the left pane. In the center pane, you’ll be asked to specify the **LicenseProductId**. Click **Add**. Back in the left pane, click on the **LicenseProductId** that you just added. In the center pane, you'll need to specify **LicenseInstall**. Enter the name of the license file that you previously downloaded from the Store for Business, either by typing or clicking **Browse**. The file will have a extension of "ms-windows-store-license".

    ![icd tiles](images/wicd-screen-apps-06a.png)

6.  Verify that the path is set, then click **Export** in the top menu and choose **Provisioning package**.

    ![icd tiles](images/wicd-screen07a.png)

7.  You'll see a series of dialog boxes next. In the first one, either accept the defaults, or enter new values as needed, and click **Next**. You'll most likely want to accept the defaults.

    ![icd tiles](images/wicd-screen-apps-08a.png)

    Click **Next** again in the security options dialog box, because this package doesn't need to be encrypted or signed.

    ![icd tiles](images/wicd-screen09a.png)

    Choose where to save the provisioning package, and click **Next**.

    ![icd tiles](images/wicd-screen-apps-10a.png)

    Review the information shown, and if it looks good, click **Build**.

    ![icd tiles](images/wicd-screen-apps-11a.png)

    You will see a confirmation dialog box similar to the one following. Click the link under **Output location** to open the directory containing the provisioning package.

    ![icd tiles](images/wicd-screen-apps-12a.png)

8.  Copy the .ppkg from the output directory into the root directory of a USB drive. If it’s not at the root, it won’t be recognized by the device. You’ve finished making the provisioning package—now you just need to deploy it to the Surface Hub.

### <a href="" id="deploy-to-hub-prov-pkg"></a>Deploy a provisioning package to a Surface Hub

The following two methods for deploying provisioning packages apply to any kind of provisioning package that is being deployed to a Surface Hub. There is no difference in the way cert provisioning packages and app provisioning packages are installed. You may see different description text in the UI depending on what the package is for, but the process is still the same.

### <a href="" id="deploy-via-oobe-prov-pkg"></a>Deploy a provisioning package using first run

1.  When you turn on the Surface Hub for the first time, the first run process will display the page titled **Hi there**. Make sure the settings on this page are correct before you proceed. (See [Hi there page](first-run-program-surface-hub.md#first-page) for details.) Once you've deployed your provisioning package, the first run process will not return here. It will continue to the next screen.
2.  Insert the USB drive into the Surface Hub.
3.  Press the Windows key on the separate keyboard five times. You’ll see a dialog box asking whether you want to set up your device. Click **Set Up**.

    ![image with set up device message for surface hub.](images/provisioningpackageoobe-01.png)IMage

4.  Click on **Removable Media** in the **Provision From** dropdown list, then click **Next**.

    ![image with provision this device page for surface hub. ](images/provisioningpackageoobe-02.png)

5.  The available packages in the root directory of the USB drive will be listed. Note that you can only install one package during first run. Select the package you want to install and then click **Next**.

    ![image with choose a package page for surface hub. ](images/provisioningpackageoobe-03.png)

6.  You’ll then see a dialog asking if it’s from a source you trust. Click **Yes, add it**. The certificate will be installed, and you’ll be taken to the next page of first run.

    ![image with ](images/provisioningpackageoobe-04.png)

### <a href="" id="deploy-via-settings-prov-pkg"></a>Deploy a provisioning package using Settings

1.  Insert the USB drive into the Surface Hub you want to deploy to.
2.  On the Surface Hub, open **Settings** and enter in the admin credentials.
3.  Navigate to **System &gt; Work Access**. Under the header **Related settings**, click on **Add or remove a management package**.
4.  Here, click the button for **Add a package**.

    ![Image showing provisioining packages page in Settings.](images/provisioningpackagesettings-01.png)

5.  Click **Removable media** from the dropdown list. You will see a list of available provisioning packages on the **Settings** page.

    ![Image showing add a package page in Settings.](images/provisioningpackagesettings-02.png)

6.  Choose your package and click **Add**.

    ![Image showing select a package box.](images/provisioningpackagesettings-03.png)

7.  You may have to re-enter the admin credentials if User Access Control (UAC) asks for them.
8.  You’ll see a confirmation dialog box. Click **Yes, add it**. The certificate will be installed.

 

 





