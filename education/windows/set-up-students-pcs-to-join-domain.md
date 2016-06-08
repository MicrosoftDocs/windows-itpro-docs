---
title: Set up student PCs to join domain
description: Learn how to use Configuration Designer to easily provision student devices to join Active Directory.
keywords: ["shared cart", "shared PC", "school"]
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: library
author: jdeckerMS
---

# Set up student PCs to join domain
**Applies to:**

-   Windows 10  

If your school uses Active Directory, use the Windows Imaging and Configuration Designer (ICD) tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a runtime provisioning package that will configure a PC for student use that is joined to the Active Directory domain. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

## Create the provisioning package

1. Open Windows ICD (by default, %windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe).

2. Click **Provision school devices**. 

  ![Provision school devices](images/icdstart-option.png)

3. Name your project and click **Finish**. The screens for school provisioning will walk you through the following steps.

   ![Wizard for school provisioning](images/icd-school.png)

4. In the **Set up device** step, enter a unique 15-character name for the device. For help generating a unique name, you can use %SERIAL%, which includes a hardware-specific serial number, or you can use %RAND:x%, which generates random characters of x length.

5. (Optional) You can upgrade the following editions of Windows 10 by providing a product key for the edition to upgrade to.
    - Home to Education
    - Pro to Education
    - Pro to Enterprise
    - Enterprise to Education
 
6. Click **Set up network**.

7. Toggle **On** or **Off** for wireless network connectivity. If you select **On**, enter the SSID, type, and (if required) password for the wireless network.

8. Click **Enroll into Active Directory**.

9. Toggle **Yes** or **No** for Active Directory enrollment. If you select **Yes**, enter the credentials for an account with permissions to enroll the device. (Optional) Enter a user name and password to create a local administrator account.

    > **Warning**: If you don't create a local administrator account and the device fails to enroll in Active Directory for any reason, you will have to reimage the device and start over. As a best practice, we recommend:
      - Use a least-privileged domain account to join the device to the domain.
      - Create a temporary administrator account to use for debugging or reprovisioning if the device fails to enroll successfully.
      - [Use Group Policy to delete the temporary administrator account](https://blogs.technet.microsoft.com/canitpro/2014/12/10/group-policy-creating-a-standard-local-admin-account/) after the device is enrolled in Active Directory.

10. Click **Set up school settings**.

11. Toggle **Yes** or **No** to configure the PC for shared use. 

12. (Optional) Toggle **Yes** or **No** to configure the PC for secure testing. If you select **Yes**, you must also enter the test account to be used and the URL for the test. If you don't configure the test account and URL in this provisioning package, you can do so after the PC is configured; for more information, see [Take tests in Windows 10](take-tests-in-windows-10.md).

10. Click **Finish**.

11. Review your settings in the summary. You can return to previous pages to change your selections. Then, under Protect your package, toggle **Yes** or **No** to encrypt the provisioning package. If you select **Yes**, enter a password. This password must be entered to apply the encrypted provisioning package.

12. Click **Create**.

> **Important**  When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

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

9. On the **Choose how you'll connect** screen, select **Join a domain** and tap **Next**.

    ![Connect to Azure AD](images/connect-ad.png)

10. Sign in with  your domain account and password. When you see the progress ring, you can remove the USB drive.

    

