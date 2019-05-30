---
title: Set up student PCs to join domain
description: Learn how to use Configuration Designer to easily provision student devices to join Active Directory.
keywords: school, student PC setup, Windows Configuration Designer
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.localizationpriority: medium
author: mjcaparas
ms.author: macapara
ms.date: 07/27/2017
ms.reviewer: 
manager: dansimp
---

# Set up student PCs to join domain
**Applies to:**

-   Windows 10  

If your school uses Active Directory, use the Windows Configuration Designer tool to create a provisioning package that will configure a PC for student use that is joined to the Active Directory domain. 

## Install Windows Configuration Designer
Follow the instructions in [Install Windows Configuration Designer](https://technet.microsoft.com/itpro/windows/configure/provisioning-install-icd).

## Create the provisioning package
Follow the steps in [Provision PCs with common settings for initial deployment (desktop wizard)](https://technet.microsoft.com/itpro/windows/configure/provision-pcs-for-initial-deployment). However, make a note of these steps to further customize the provisioning package for use in a school that will join a student PC to a domain:

1. In the **Account Management** step:

    > [!WARNING]  
    > If you don't create a local administrator account and the device fails to enroll in Active Directory for any reason, you will have to reimage the device and start over. As a best practice, we recommend:
    >   - Use a least-privileged domain account to join the device to the domain.
    >   - Create a temporary administrator account to use for debugging or reprovisioning if the device fails to enroll successfully.
    >   - [Use Group Policy to delete the temporary administrator account](https://blogs.technet.microsoft.com/canitpro/2014/12/10/group-policy-creating-a-standard-local-admin-account/) after the device is enrolled in Active Directory.

2. After you're done with the wizard, do not click **Create**. Instead, click the **Switch to advanced editor** to switch the project to the advanced editor to see all the available **Runtine settings**.
3. Find the **SharedPC** settings group.
    - Set **EnableSharedPCMode** to **TRUE** to configure the PC for shared use.
4. (Optional) To configure the PC for secure testing, follow these steps.
  1. Under **Runtime settings**, go to **AssignedAccess > AssignedAccessSettings**.
  2. Enter **{"Account":"*redmond\\kioskuser*","AUMID":” Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App "}**, using the account that you want to set up.

    **Figure 7** - Add the account to use for test-taking

    ![Add the account to use for test-taking](images/wcd_settings_assignedaccess.png)

    The account can be in one of the following formats:
    - username
    - domain\username
    - computer name\\username
    - username@tenant.com

  3. Under **Runtime settings**, go to **TakeATest** and configure the following settings:
    1. In **LaunchURI**, enter the assessment URL.
    2. In **TesterAccount**, enter the test account you entered in the previous step.

5. To configure other settings to make Windows education ready, see [Windows 10 configuration recommendations for education customers](configure-windows-for-education.md) and follow the guidance on what settings you can set using Windows Configuration Designer.

6. Follow the steps to [build a package](https://technet.microsoft.com/itpro/windows/configure/provisioning-create-package#build-package). 
    - You will see the file path for your provisioning package. By default, this is set to %windir%\Users\*your_username*\Windows Imaging and Configuration Designer (WICD)\*Project name*). 
    - Copy the provisioning package to a USB drive.

    > [!IMPORTANT]
    > When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.


## Apply package
Follow the steps in [Apply a provisioning package](https://technet.microsoft.com/itpro/windows/configure/provisioning-apply-package) to apply the package that you created.



    

