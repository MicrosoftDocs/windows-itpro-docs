---
title: Upgrade Surface devices to Windows 10 with Microsoft Deployment Toolkit (Surface)
description: Find out how to perform a Windows 10 upgrade deployment to your Surface devices. 
keywords: windows 10 surface, upgrade, customize, mdt
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 10/16/2017
ms.reviewer: 
manager: dansimp
---

#  Upgrade Surface devices to Windows 10 with Microsoft Deployment Toolkit

#### Applies to
* Surface Pro 3
* Surface 3
* Surface Pro 2
* Surface Pro
* Windows 10

In addition to the traditional deployment method of reimaging devices, administrators that want to upgrade Surface devices that are running Windows 8.1 or Windows 10 have the option of deploying upgrades. By performing an upgrade deployment, Windows 10 can be applied to devices without removing users, apps, or configuration. The users of the deployed devices can simply continue using the devices with the same apps and settings that they used prior to the upgrade. The process described in this article shows how to perform a Windows 10 upgrade deployment to Surface devices.

If you are not already familiar with the deployment of Windows or the Microsoft deployment tools and technologies, you should read [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md) and familiarize yourself with the traditional deployment method before you proceed.

#### The upgrade concept

When you use the factory installation media to install Windows on a device, you are presented with two options or *installation paths* to install Windows on that device. The first of these installation paths – *clean installation* –  allows you to apply a factory image of Windows to that device, including all default settings. The second of these installation paths – *upgrade* – allows you to apply Windows to the device but retains the device’s users, apps, and settings.

When you perform a Windows deployment using traditional deployment methods, you follow an installation path that is very similar to a clean installation. The primary difference between the clean installation and the traditional deployment method of *reimaging* is that with reimaging, you can apply an image that includes customizations. Microsoft deployment technologies, such as the Microsoft Deployment Toolkit (MDT), expand the capabilities of the reimaging process by modifying the image during deployment. For example, MDT is able to inject drivers for a specific hardware configuration during deployment, and with pre and post imaging scripts to perform a number of tasks, such as the installation of applications.

For versions of Windows prior to Windows 10, if you wanted to install a new version of Windows on your devices and preserve the configuration of those systems, you had to perform additional steps during your deployment. For example, if you wanted to keep the data of users on the device, you had to back up user data with the User State Migration Tool (USMT) prior to the deployment and restore that data after the deployment had completed.

Introduced with Windows 10 and MDT 2013 Update 1, you can use the upgrade installation path directly with Microsoft deployment technologies such as the Microsoft Deployment Toolkit (MDT). With an upgrade deployment you can use the same deployment technologies and process, but you can preserve users settings, and applications of the existing environment on the device.

## Deployment tools and resources

Performing an upgrade deployment of Windows 10 requires the same tools and resources that are required for a traditional reimaging deployment. You can read about the tools required, including detailed explanations and installation instructions, in [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md). To proceed with the upgrade deployment described in this article, you will need the following tools installed and configured:

* [Microsoft Deployment Toolkit (MDT)](https://technet.microsoft.com/windows/dn475741)
* [Windows Assessment and Deployment Kit (Windows ADK)](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit#windowsadk), which includes:
   * Deployment Image Servicing and Management (DISM)
   * Windows Preinstallation Environment (Windows PE)
   * Windows System Image Manager (Windows SIM)

You will also need to have available the following resources:

* Windows 10 installation files, such as the installation media downloaded from the [Volume Licensing Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx)

   >[!NOTE]
   >Installation media for use with MDT must contain a Windows image in Windows Imaging Format (.wim). Installation media produced by the [Get Windows 10](https://www.microsoft.com/en-us/software-download/windows10/) page does not use a .wim file, instead using an Electronic Software Download (.esd) file, which is not compatible with MDT.
* [Surface firmware and drivers](https://technet.microsoft.com/itpro/surface/deploy-the-latest-firmware-and-drivers-for-surface-devices) for Windows 10

* Application installation files for any applications you want to install, such as the Surface app

## Prepare the upgrade deployment

Before you begin the process described in this section, you need to have installed and configured the deployment tools outlined in the previous [Deployment tools and resources](#deployment-tools-and-resources) section. For instructions on how to install and configure the deployment tools, see the **Install the deployment tools** section in the [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md#install-the-deployment-tools) article. You will also have needed to create a deployment share with MDT, described in the section Create a Deployment Share in the aforementioned article.

### Import Windows 10 installation files

Windows 10 installation files only need to be imported if you have not already done so in the deployment share. To import Windows 10 installation files, follow the steps described in the **Import Windows installation files** section in the [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md#import-windows-installation-files) article.

### Import Surface drivers
In the import process example shown in the [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md) article, drivers for Surface Pro 4 were imported for Windows 10. To perform an upgrade deployment of Windows 10 to Surface Pro 3, drivers for Surface Pro 3 must also be imported. To import the Surface drivers for Surface Pro 3, follow these steps:

1. Download the Surface Pro 3 firmware and driver pack for Windows 10 archive file (.zip), SurfacePro3_Win10_xxxxxx.zip, from the [Surface Pro 3 download page](https://www.microsoft.com/download/details.aspx?id=38826) in the Microsoft Download Center.
2. Extract the contents of the Surface Pro 3 firmware and driver pack archive file to a temporary folder. Keep the driver files separate from other drivers or files.
3. Open the Deployment Workbench and expand the Deployment Shares node and your deployment share. 
4. If you have not already created a folder structure by operating system version, you should do so next. Under the **Windows 10 x64** folder, create a new folder for Surface Pro 3 drivers named **Surface Pro 3**. Your Out-of-Box Drivers folder should resemble the following structure:
  * WinPE x86
  * WinPE x64
  * Windows 10 x64
    * Microsoft Corporation
      * Surface Pro 4
      * Surface Pro 3
5. Right-click the **Surface Pro 3** folder, and then click **Import Drivers** to start the Import Drivers Wizard, as shown in Figure 1.

  ![Import Surface Pro 3 drivers for Windows 10](images\surface-upgrademdt-fig1.png "Import Surface Pro 3 drivers for Windows 10")

  *Figure 1. Import Surface Pro 3 drivers for Windows 10*

6. The Import Driver Wizard displays a series of steps, as follows:
  - **Specify Directory** – Click **Browse** and navigate to the folder where you extracted the Surface Pro 3 firmware and drivers in Step 1.
  - **Summary** – Review the specified configuration on this page before you click **Next** to begin the import process.
  - **Progress** – While the drivers are imported, a progress bar is displayed on this page.
  - **Confirmation** – When the import process completes, the success of the process is displayed on this page. Click **Finish** to complete Import Drivers Wizard.
7. Select the **Surface Pro 3** folder and verify that the folder now contains the drivers that were imported, as shown in Figure 2.

  ![Drivers for Surface Pro 3 imported and organized in the MDT deployment share](images\surface-upgrademdt-fig2.png "Drivers for Surface Pro 3 imported and organized in the MDT deployment share")

  *Figure 2. Drivers for Surface Pro 3 imported and organized in the MDT deployment share*

### Import applications

Installation of applications in an upgrade deployment is not always necessary because the applications from the previous environment will remain on the device. (For example, in the [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md) article, the deployment includes Office 365 which is not required in an upgrade deployment where the user is already using Office 365 on the device.)

There are still some circumstances where you will want to deploy an application, even during an upgrade deployment. For example, you may have Surface Pro 3 devices on which you would like to add the Surface app. To deploy the Surface app in an upgrade scenario use the same process as you would for a traditional deployment. See the [Deploy Surface app with Microsoft Store for Business](https://technet.microsoft.com/itpro/surface/deploy-surface-app-with-windows-store-for-business) article for instructions on how to add the Surface app to an MDT task sequence.

### Create the upgrade task sequence

After you have all of the resources in place to perform the deployment (including the installation files, Surface drivers, and application files), the next step is to create the upgrade task sequence. This task sequence is a series of steps that will be performed on the device being upgraded that applies the new Windows environment, compatible drivers, and any applications you have specified.

Create the upgrade task sequence with the following process:

1. In the Deployment Workbench under your Deployment Share, right-click the **Task Sequences** folder, and then click **New Task Sequence** to start the New Task Sequence Wizard.
2. Use these steps to create the deployment task sequence with the New Task Sequence Wizard:
  - **General Settings** – Enter an identifier for the deployment task sequence in the Task Sequence ID field, a name for the deployment task sequence in the Task Sequence Name field, and any comments for the deployment task sequence in the **Task Sequence Comments** field, and then click **Next**.
  >[!NOTE]
  >The **Task Sequence ID** field cannot contain spaces and can be a maximum of 16 characters.
  - **Select Template** – Select **Standard Client Upgrade Task Sequence** from the drop-down menu, and then click **Next**.
  - **Select OS** – Navigate to and select the Windows image that you imported, and then click **Next**.
  - **Specify Product Key** – Select the product key entry that fits your organization’s licensing system. The **Do Not Specify a Product Key at This Time** option can be used for systems that will be activated via Key Management Services (KMS) or Active Directory Based Activation (ADBA). A product key can be specified specifically if your organization uses Multiple Activation Keys (MAK). Click **Next**.
  - **OS Settings** – Enter a name and organization for registration of Windows, and a home page URL for users when they browse the Internet in the **Full Name**, **Organization**, and **Internet Explorer Home Page** fields, and then click **Next**.
  - **Admin Password** – Select **Use the Specified Local Administrator Password** and enter a password in the provided fields, and then click **Next**.
  - **Summary** – Review the specified configuration on this page before you click **Next** to begin creation of the task sequence.
  - **Progress** – While the task sequence is being created, a progress bar is displayed on this page.
  - **Confirmation** – When the task sequence creation completes, the success of the process is displayed on this page. Click **Finish** to complete New Task Sequence Wizard.

After the task sequence is created, you can modify some additional settings to provide additional automation of the task sequence and require less interaction during deployment. Follow these steps to modify the task sequence:

1. Select the **Task Sequences** folder, right-click the new task sequence you created, and then click **Properties**.
2. Select the **Task Sequence** tab to view the steps that are included in the new task sequence.
3. Select the **Windows Update (Pre-Application Installation)** step, located under the **State Restore** folder.
4. Click the **Options** tab, and then clear the **Disable This Step** check box.
5. Repeat Step 3 and Step 4 for the **Windows Update (Post-Application Installation)** step.
6. Between the two Windows Update steps is an **Install Applications** step. Select that step and then click **Add**.
7. Hover the mouse over **General** under the **Add** menu, and then choose **Install Application**. This will add a new step after the selected step for the installation of a specific application as shown in Figure 3.

  ![A new Install Application step in the deployment task sequence](images\surface-upgrademdt-fig3.png "A new Install Application step in the deployment task sequence")
  
  *Figure 3. A new Install Application step in the deployment task sequence*
  
8. On the **Properties** tab of the new **Install Application** step, enter **Install Surface App** in the **Name** field.
9. Select **Install a Single Application**, and then click **Browse** to view available applications that have been imported into the deployment share.
10. Select **Surface App** from the list of applications, and then click **OK**.
11. Expand the **Preinstall** folder and select the **Enable BitLocker (Offline)** step.
12. Open the **Add** menu again and choose **Set Task Sequence Variable** from under the **General** menu.
13. On the **Properties** tab of the new **Set Task Sequence Variable** step (as shown in Figure 4) configure the following options:

  - **Name** – Set DriverGroup001
  - **Task Sequence Variable** – DriverGroup001
  - **Value** – Windows 10 x64\%Make%\%Model%

  ![Configure a new Set Task Sequence Variable step in the deployment task sequence](images\surface-upgrademdt-fig4.png "Configure a new Set Task Sequence Variable step in the deployment task sequence")
  
  *Figure 4. Configure a new Set Task Sequence Variable step in the deployment task sequence*
  
14. Select the **Inject Drivers** step, the next step in the task sequence.
15. On the **Properties** tab of the **Inject Drivers** step (as shown in Figure 5) configure the following options:
  * In the **Choose a selection profile** drop-down menu, select **Nothing**.
  * Click the **Install all drivers from the selection profile** button.
  
  ![Configure the deployment task sequence to not install drivers](images\surface-upgrademdt-fig5.png "Configure the deployment task sequence to not install drivers")
  
  *Figure 5. Configure the deployment task sequence to not install drivers*

16. Click **OK** to apply changes to the task sequence and close the task sequence properties window.

Steps 11 through 15 are very important to the deployment of Surface devices. These steps instruct the task sequence to install only drivers that are organized into the correct folder using the organization for drivers from the [Import Surface drivers](#import-surface-drivers) section. 

### Deployment share rules

To automate the upgrade process, the rules of the MDT deployment share need to be modified to suppress prompts for information from the user. Unlike a traditional deployment, Bootstrap.ini does not need to be modified because the deployment process is not started from boot media. Similarly, boot media does not need to be imported into WDS because it will not be booted over the network with PXE.

To modify the deployment share rules and suppress the Windows Deployment Wizard prompts for information, copy and paste the following text into the text box on the **Rules** tab of your deployment share properties:

```
[Settings]
Priority=Model,Default
Properties=MyCustomProperty

[Surface Pro 4]
SkipTaskSequence=YES
TaskSequenceID=Win10SP4

[Surface Pro 3]
SkipTaskSequence=YES
TaskSequenceID=Win10SP3Up

[Default]
OSInstall=Y
SkipCapture=YES
SkipAdminPassword=YES
SkipProductKey=YES
SkipComputerBackup=YES
SkipBitLocker=YES
SkipBDDWelcome=YES
SkipUserData=YES
UserDataLocation=AUTO
SkipApplications=YES
SkipPackageDisplay=YES
SkipComputerName=YES
SkipDomainMembership=YES
JoinDomain=contoso.com
DomainAdmin=MDT
DomainAdminDomain=contoso
DomainAdminPassword=P@ssw0rd
SkipLocaleSelection=YES
KeyboardLocale=en-US
UserLocale=en-US
UILanguage=en-US
SkipTimeZone=YES
TimeZoneName=Pacific Standard Time
UserID=MDTUser
UserDomain=STNDeployServer
UserPassword=P@ssw0rd
SkipSummary=YES
SkipFinalSummary=YES
FinishAction=LOGOFF
```



For more information about the rules configured by this text, see the **Configure deployment share rules** section in the [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md#configure-deployment-share-rules) article.

### Update deployment share

To update the deployment share, right-click the deployment share in the Deployment Workbench and click **Update Deployment Share**, then proceed through the Update Deployment Share Wizard. See the **Update and import updated MDT boot media** section of the [Deploy Windows 10 to Surface devices with MDT](deploy-windows-10-to-surface-devices-with-mdt.md#update-and-import-updated-mdt-boot-media) article for detailed steps.

### Run the upgrade deployment

Unlike a traditional deployment, the upgrade task sequence must be launched from within the Windows environment that will be upgraded. This requires that a user on the device to be upgraded navigate to the deployment share over the network and launch a script, LiteTouch.vbs. This script is the same script that displays the Windows Deployment Wizard in Windows PE in a traditional deployment. In this scenario, Litetouch.vbs will run within Windows. To perform the upgrade task sequence and deploy the upgrade to Windows 10 follow these steps:

1. Browse to the network location of your deployment share in File Explorer.
2. Navigate to the **Scripts** folder, locate **LiteTouch.vbs**, and then double-click **LiteTouch.vbs** to start the Windows Deployment Wizard.
3. Enter your credentials when prompted.
4. The upgrade task sequence for Surface Pro 3 devices will automatically start when the model of the device is detected and determined to match the deployment share rules.
5. The upgrade process will occur automatically and without user interaction.

The task sequence will automatically install the drivers for Surface Pro 3 and the Surface app, and will perform any outstanding Windows Updates. When it completes, it will log out and be ready for the user to log on with the credentials they have always used for this device.
