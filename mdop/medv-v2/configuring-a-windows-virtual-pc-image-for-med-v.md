---
title: Configuring a Windows Virtual PC Image for MED-V
description: Configuring a Windows Virtual PC Image for MED-V
author: levinec
ms.assetid: d87a0df8-9e08-4d1e-bfb0-9dc3cebf0d28
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# Configuring a Windows Virtual PC Image for MED-V


After you have installed everything that you want to include in your MED-V image, you can configure the image for use in Microsoft Enterprise Desktop Virtualization (MED-V) 2.0. The topics in this section provide guidance for configuring your MED-V image to run first time setup before you create your MED-V workspace package.

First time setup prepares the MED-V workspace for an end user. The process creates a virtual machine from the image packaged in the MED-V workspace and then runs Windows Mini-Setup on the virtual machine. This includes the running of both custom setup scripts and the first time setup completion application, FtsCompletion.exe.

Follow these steps to configure your MED-V image for running first time setup:

1. As an option, you can compact the virtual hard disk (VHD) to reclaim empty disk space and reduce the size of the VHD before you continue with configuring the Windows Virtual PC image. For more information, see [Compacting the MED-V Virtual Hard Disk](compacting-the-med-v-virtual-hard-disk.md).

2. Customize the virtual machine setup process.

3. Seal the MED-V image by using Sysprep.

   **Customizing the Virtual Machine Setup Process**

4. As part of preparing your image for use with MED-V, you can configure various settings on the virtual machine, such as specifying the settings for running Windows Update. Specify all the necessary virtual machine settings before you create the MED-V workspace package.

5. Before you create the MED-V workspace package, we recommend that you disable restore points on the virtual machine to prevent the differencing disk from growing unbounded. For more information, see [How to turn off and turn on System Restore in Windows XP](https://go.microsoft.com/fwlink/?LinkId=195927) (https://go.microsoft.com/fwlink/?LinkId=195927).

   **Note**  
   You can set up your Sysprep.inf file to disable restore points when first time setup is run. For an example of setting this GuiRunOnce key, see the sample Sysprep.inf file later in this section.



6. Configure the setup process to run Mini-Setup instead of the default Windows Welcome. You must either run the Sysprep tool by using the **-mini** switch, or select the **MiniSetup** check box in the graphical user interface. For more information, see [How to Seal the Image with Sysprep](#bkmk-seal).

   **Calling the First time setup Completion File**

   1.  An executable called FtsCompletion.exe is included as part of the installation of the MED-V Guest Agent. By default, it is located in the system drive of your MED-V image under **Program Files – Microsoft Enterprise Desktop Virtualization**.

       **Important**  
       As the final step in the first time setup process, you must run this executable program. The user for whom the executable program is being called must be a member of the guest’s local administrator group.



   2.  You can decide how you want to call this executable program, for example, through a script that is deployed with the MED-V workspace. You can call this executable as the last line of your Sysprep.inf file. For an example of how to call this executable program in your Sysprep.inf file, see the sample file later in this section.

After you have completed customization of your MED-V image, you are ready to seal the image by using Sysprep.

<a href="" id="bkmk-seal"></a>**Sealing the MED-V Image by Using Sysprep**

1.  The System Preparation tool (Sysprep) is a technology that you can use to perform image-based installations throughout the network with minimal intervention by an administrator or IT-Professional.

2.  In a MED-V environment, you can use Sysprep to assign unique security IDs (SID) and other settings to each MED-V workspace the first time that they are started.

    **Note**  
    For more information about how to use Sysprep, see [Sysprep Technical Reference](https://go.microsoft.com/fwlink/?LinkId=195930) (https://go.microsoft.com/fwlink/?LinkId=195930).



~~~
**Caution**  
When you use non-ASCII characters in the Sysprep.inf file, you must save the file by using the encoding appropriate for the characters entered. Windows XP expects the Sysprep.inf file to be encoded by using the code page for the language that you are targeting.

You must also make sure that the System Locale of the computers to which the MED-V workspace is deployed is set to handle the language specific characters that might be present in the Sysprep.inf file. To change the settings for the System Locale, follow these steps:

1.  To open Region and Language, click **Start**, click **Control Panel**, and then click **Region and Language**.

2.  Click the **Administrative** tab, and then click **Change System Locale** under **Language for non-Unicode programs**.

    If you are prompted for an administrator password or confirmation, type the administrator password or provide confirmation.

3.  Select your preferred language and then click **OK**.



**To configure Sysprep on the MED-V Guest Computer**

1.  Create a folder named *Sysprep* in the root of the MED-V image system drive.

2.  Download the deploy.cab file. For more information, see [Windows XP Service Pack 3 Deployment Tools](https://go.microsoft.com/fwlink/?LinkId=195928) From the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=195928).

3.  From the deploy.cab file, copy or extract the Setupmgr.exe, Sysprep.exe, and Setupcl.exe files to the Sysprep folder.

4.  In the Sysprep folder, run **Setup Manager** (Setupmgr.exe) to create a Sysprep.inf answer file.

    Or, you can create this file manually or use your company’s existing file. For more information, see [How to use the Sysprep tool to automate successful deployment of Windows XP](https://go.microsoft.com/fwlink/?LinkId=195929) (https://go.microsoft.com/fwlink/?LinkId=195929).

5.  Follow the **Setup Manager** wizard.

    **Important**  
    You must configure the MED-V guest to join a domain that lets users log on by using the credentials that they use to log on to the MED-V host.



    **Caution**  
    When you configure a proxy account for joining virtual machines to the domain, know that it is possible for an end user to obtain the proxy account credentials. Take all the necessary security precautions to minimize risk, such as limiting account user rights. For more information about security concerns when you configure a Windows Virtual PC image for MED-V, see [Security Best Practices for MED-V Operations](security-best-practices-for-med-v-operations.md).



    If end users must provide information during the first time setup process based on the parameters specified in the Sysprep.inf file, you must also specify that first time setup is run in **Attended** mode when you are creating your MED-V workspace package. If no information will be required from the end user, you can specify that first time setup is run in **Unattended** mode when you are creating your MED-V workspace package. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).

    Although you can specify any settings that you prefer, a MED-V best practice is that you create the Sysprep.inf file so that first time setup can be run in **Unattended** mode. This requires that you provide all of the required settings information as you continue through the **Setup Manager** wizard.

    **Caution**  
    If you have set a local policy or registry entry to include a service level agreement (SLA) in your image (VHD), you must specify that first time setup is run in **Attended** mode or first time setup will fail. Or, a MED-V best practice is to enforce the SLA through Group Policy later so that the SLA is displayed to the end user after first time setup is finished.



    **Note**  
    You can configure the MED-V workspace to set certain Sysprep.inf settings based on the configuration of the host and the identity of the end user. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).



6.  Seal the MED-V image.

    **Important**  
    We recommend that you make a backup copy of the MED-V image before sealing it.



    After you have completed all the steps in the **Setup Manager** wizard, you are ready to run Sysprep to seal the MED-V image.

**To run Sysprep**

1.  Run the System Preparation Tool (Sysprep.exe) from the *Sysprep* folder that you created when you configured Sysprep in the MED-V virtual machine.

2.  In the warning message box that appears, click **OK**.

3.  In the **Options** dialog box, select the **Don't reset grace period for activation** and **Use Mini-Setup** check boxes. Also, make sure that the **Shutdown mode** box is set to **Shut down**.

4.  Click **Reseal**. This removes identity information and clears event logs to prepare for first time setup.

5.  If you are not satisfied with the information listed in the confirmation message box that appears, click **Cancel** and then change the selections.

6.  Click **OK** to complete the system preparation process.

After you have run Sysprep on your MED-V image, the virtual machine shuts down and is ready for use in creating a MED-V workspace.
~~~

## Example


Here is an example of a Sysprep.inf file.

``` syntax
;SetupMgrTag
[GuiUnattended]
    EncryptedAdminPassword=NO
    TimeZone=10
    OEMDuplicatorstring="MED_V v2 Host"
    AdminPassword="administrator"
    AutoLogon=Yes
    AutoLogonCount=1
    OEMSkipRegional=1
    OemSkipWelcome=1

[UserData]
    ProductKey=
    FullName="MED-V User"
    OrgName="Contoso"
    ComputerName=*

[Identification]
    JoinDomain=domain.corp.contoso.com
    DomainAdmin=UserName
    DomainAdminPassword=Password

[Networking]
    InstallDefaultComponents=Yes

[Branding]
    BrandIEUsingUnattended=Yes

[Proxy]
    Proxy_Enable=0
    Use_Same_Proxy=0

[Unattended]
    InstallFilesPath=C:\sysprep\i386
    TargetPath=\WINDOWS
    UpdateServerProfileDirectory=1
    OemSkipEula=Yes

[RegionalSettings]
    LanguageGroup=1
    Language=00000409

[GuiRunOnce]
    Command0="wmic /namespace:\\root\default path SystemRestore call Disable %SystemDrive%\"
    Command1="c:\Program Files\Microsoft Enterprise Desktop Virtualization\FtsCompletion.exe"

[sysprepcleanup]
```

## Related topics


[Create a MED-V Workspace Package](create-a-med-v-workspace-package.md)

[Prepare a MED-V Image](prepare-a-med-v-image.md)









