---
title: Unlock Windows Holographic for Business features (HoloLens)
description: HoloLens provides extra features designed for business when you upgrade to Windows Holographic Enterprise.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
---

# Unlock Windows Holographic for Business features

Microsoft HoloLens is available in the *Development Edition*, which runs Windows Holographic (an edition of Windows 10 designed for HoloLens), and in the [Commercial Suite](https://developer.microsoft.com/windows/holographic/release_notes#introducing_microsoft_hololens_commercial_suite), which provides extra features designed for business. 

When you purchase the Commercial Suite, you receive a license that upgrades Windows Holographic to Windows Holographic Efor business. This license can be applied to the device either through the organization's [mobile device management (MDM) provider](#edition-upgrade-using-mdm) or a [provisioning package](#edition-upgrade-using-a-provisioning-package).

>[!TIP]
>You can tell that the HoloLens has been upgraded to the business edition in **Settings** > **Network & Internet**. The **VPN** option is only available in Windows Holographic for Business.



## Edition upgrade using MDM 

The enterprise license can be applied by any MDM provider that supports the [WindowsLicensing configuration service provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/dn904983.aspx). The latest version of the Microsoft MDM API will support WindowsLicensing CSP.


**Overview**

1.	Set up the edition upgrade policy.
2.	Deploy the policy.
3.	[Enroll the device through the Settings app](hololens-enroll-mdm.md).

The procedures in this topic use Microsoft Intune as an example. On other MDM providers, the specific steps for setting up and deploying the policy might vary.

### Set up the Edition Upgrade policy

1.	Sign into the Intune Dashboard with your Intune admin account.

2.	In the **Policy** workspace, select **Configuration Policies** and then **Add**.

    ![Click Add](images/intune1.png)

3.	In **Create a new policy**, select the **Edition Upgrade Policy (Windows 10 Holographic and later** template, and click **Create Policy**.

    ![Select template](images/intune2.png)

4.	Enter a name for the policy. 

5. In the **Edition Upgrade** section, in **License File**, browse to and select the XML license file that was provided when you purchased the Commercial Suite.

    ![Enter the XML file name](images/intune3.png)
 
5.	Click **Save Policy**.



### Deploy the Edition Upgrade policy

Next, you will assign the Edition Upgrade policy to selected groups.

1. In the **Policy** workspace, select the Edition upgrade policy that you created, and then choose **Manage Deployment**.

2. In the **Manage Deployment** dialog box, select one or more groups to which you want to deploy the policy, and then choose **Add** > **OK**.

When these users enroll their devices in MDM, the Edition Upgrade policy will be applied. 


For more information about groups, see [Use groups to manage users and devices in Microsoft Intune](https://docs.microsoft.com/intune/deploy-use/use-groups-to-manage-users-and-devices-with-microsoft-intune).

## Edition upgrade using a provisioning package

Provisioning packages are files created by the Windows Imaging and Configuration Designer (ICD) tool that apply a specified configuration to a device. 

### Create a provisioning package that upgrades the Windows Holographic edition

1.	[Create a provisioning package for HoloLens.](hololens-provisioning.md#create-a-provisioning-package-for-hololens)

2.  Go to **Runtime settings** > **EditionUpgrade**, and select **EditionUpgradeWithLicense**.

    ![Upgrade edition with license setting selected](images/icd1.png)

2.	Browse to and select the XML license file that was provided when you purchased the Commercial Suite.

    >[!NOTE]
    >You can configure [additional settings in the provisioning package](hololens-provisioning.md).

3. On the **File** menu, click **Save**. 

4. Read the warning that project files may contain sensitive information, and click **OK**.

    >[!IMPORTANT]
    >When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.
    
3. On the **Export** menu, click **Provisioning package**.

4. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next**.

5. Set a value for **Package Version**.

    >[!TIP]
    >You can make changes to existing packages and change the version number to update previously applied packages.

6. On the **Select security details for the provisioning package**, click **Next**.

7. Click **Next** to specify the output location where you want the provisioning package to go once it's built. By default, Windows ICD uses the project folder as the output location.

    Optionally, you can click Browse to change the default output location.

8. Click **Next**.

9. Click **Build** to start building the package. The project information is displayed in the build page and the progress bar indicates the build status.

10. When the build completes, click **Finish**. 


### Apply the provisioning package to HoloLens

1. Connect the device via USB to a PC and start the device, but do not continue past the **fit** page of OOBE (the first page with the blue box).

2. Briefly press and release the **Volume Down** and **Power** buttons simultaneously.

3. HoloLens will show up as a device in File Explorer on the PC.

4. In File Explorer, drag and drop the provisioning package (.ppkg) onto the device storage.

5. Briefly press and release the **Volume Down** and **Power** buttons simultaneously again while on the **fit** page.

6. The device will ask you if you trust the package and would like to apply it. Confirm that you trust the package.

7. You will see whether the package was applied successfully or not. If it failed, you can fix your package and try again. If it succeeded, proceed with OOBE.

>[!NOTE]
>If the device was purchased before August 2016, you will need to sign into the device with aa Microsoft account, get the latest OS update, and then reset the OS in order to apply the provisioning package. 



