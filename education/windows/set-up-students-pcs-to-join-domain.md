---
title: Set up student PCs to join domain
description: Learn how to use Windows Configuration Designer to provision student devices to join Active Directory.
ms.topic: how-to
ms.date: 08/10/2022
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Set up student PCs to join domain

If your school uses Active Directory, use the Windows Configuration Designer tool to create a provisioning package that will configure a PC for student use that is joined to the Active Directory domain. 

## Install Windows Configuration Designer
Follow the instructions in [Install Windows Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd).

## Create the provisioning package
Follow the steps in [Provision PCs with common settings for initial deployment (desktop wizard)](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment). However, make a note of these steps to further customize the provisioning package for use in a school that will join a student PC to a domain:

1. In the **Account Management** step:

    > [!WARNING] 
    > If you don't create a local administrator account and the device fails to enroll in Active Directory for any reason, you'll have to reimage the device and start over. As a best practice, we recommend:
    >   - Use a least-privileged domain account to join the device to the domain.
    >   - Create a temporary administrator account to use for debugging or reprovisioning if the device fails to enroll successfully.
    >   - [Use Group Policy to delete the temporary administrator account](/archive/blogs/canitpro/group-policy-creating-a-standard-local-admin-account) after the device is enrolled in Active Directory.

2. After you're done with the wizard, don't click **Create**. Instead, click the **Switch to advanced editor** to switch the project to the advanced editor to see all the available **Runtime settings**.
3. Find the **SharedPC** settings group.
    - Set **EnableSharedPCMode** to **TRUE** to configure the PC for shared use.
4. (Optional) To configure the PC for secure testing, follow these steps.
   1. Under **Runtime settings**, go to **AssignedAccess > AssignedAccessSettings**.
   2. Enter **{"Account":"*redmond\\kioskuser*","AUMID":” Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy!App "}**, using the account that you want to set up.

      **Figure 7** - Add the account to use for test-taking

      ![Add the account to use for test-taking.](images/wcd/wcd_settings_assignedaccess.png)

      The account can be in one of the following formats:
      - username
      - domain\username
      - computer name\\username
      - username@tenant.com

   3. Under **Runtime settings**, go to **TakeATest** and configure the following settings:
      1. In **LaunchURI**, enter the assessment URL.
      2. In **TesterAccount**, enter the test account you entered in the previous step.

5. To configure other settings to make Windows education ready, see [Windows 10 configuration recommendations for education customers](configure-windows-for-education.md) and follow the guidance on what settings you can set using Windows Configuration Designer.

6. Follow the steps to [build a package](/windows/configuration/provisioning-packages/provisioning-create-package#build-package). 
   - You'll see the file path for your provisioning package. By default, this path is set to %windir%\Users\*your_username<em>\Windows Imaging and Configuration Designer (WICD)\*Project name</em>). 
   - Copy the provisioning package to a USB drive.

     > [!IMPORTANT]
     > When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

## Apply package
Follow the steps in [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package) to apply the package that you created.