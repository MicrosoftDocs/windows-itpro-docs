
---
title: Create and verify an Encrypting File System (EFS) DRA certificate (Windows 10)
description: Follow these steps to create, verify, and perform a quick recovery using a Encrypting File System (EFS) Data Recovery Agent (DRA) certificate.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
---

# Create and verify an Encrypting File System (EFS) DRA certificate
**Applies to:**

-   Windows 10 Insider Preview
-   Windows 10 Mobile Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

If you don’t already have an EFS DRA certificate, you’ll need to create and extract one from your system before you can use EDP in your organization. For the purposes of this section, we’ll use the file name EFSDRA; however, this name can be replaced with anything that makes sense to you.

The recovery process included in this topic only works for desktop devices. EDP deletes the data on Windows 10 Mobile devices.   

>**Important**<br>
If you already have an EFS DRA certificate for your organization, you can skip creating a new one. Just use your current EFS DRA certificate in your policy.

**To manually create an EFS DRA certificate**

1.	On a computer without an EFS DRA certificate installed, open a command prompt with elevated rights, and then navigate to where you want to store the certificate.

2.	Run this command:
    
    `cipher /r:<EFSRA>`
    
    Where *&lt;EFSRA&gt;* is the name of the .cer and .pfx files that you want to create.

3.	When prompted, type and confirm a password to help protect your new Personal Information Exchange (.pfx) file.

    The EFSDRA.cer and EFSDRA.pfx files are created in the location you specified in Step 1.

    >**Important**<br> 
    Because these files can be used to decrypt any EDP file, you must protect them accordingly. We highly recommend storing them as a public key (PKI) on a smart card with strong protection, stored in a secured physical location.

4. Add your EFS DRA certificate to your EDP policy by using either Microsoft Intune or System Center Configuration Manager. 

    >**Note**<br>
    To add your EFS DRA certificate to your policy by using Microsoft Intune, see the [Create an enterprise data protection (EDP) policy using Microsoft Intune](create-edp-policy-using-intune.md) topic. To add your EFS DRA certificate to your policy by using System Center Configuration Manager, see the [Create an enterprise data protection (EDP) policy using System Center Configuration Manager](create-edp-policy-using-sccm.md) topic.

**To verify your data recovery certificate is correctly set up on an EDP client computer**

1. Open an app on your protected app list, and then create and save a file so that it’s encrypted by EDP.

2.	Open a command prompt with elevated rights, navigate to where you stored the file you just created, and then run this command:

    `cipher /c <filename>`

    Where *&lt;filename&gt;* is the name of the file you created in Step 1.

3.	Make sure that your data recovery certificate is listed in the **Recovery Certificates** list.

**To recover your data using the EFS DRA certificate in a test environment**

1.	Copy your EDP-encrypted file to a location where you have admin access.

2.	Install the EFSDRA.pfx file, using your password.

3.	Open a command prompt with elevated rights, navigate to the encrypted file, and then run this command:

    `cipher /d <encryptedfile.extension>`
    
    Where *&lt;encryptedfile.extension&gt;* is the name of your encrypted file. For example, corporatedata.docx.

**To recover your EDP-protected desktop data after unenrollment**

1. Have your employee sign in to the unenrolled device, open a command prompt, and type:
    
    `Robocopy “%localappdata%\Microsoft\EDP\Recovery” <“new_location”> /EFSRAW`

    Where *&lt;”new_location”&gt;* is a different location from where you store your recovery data. This location can be on the employee’s device or on a Windows 8 or Windows Server 2012 or newer server file share that you can reach while logged in as a data recovery agent.

2. Sign in to a different device with administrator credentials that have access to your organization's Data Recovery Agent (DRA) certificate, and perform the file decryption and recovery by typing:

    `cipher.exe /D <“new_location”>`

3. Sign in to the unenrolled device as the employee, and type:

    `Robocopy <”new_location”> “%localappdata%\Microsoft\EDP\Recovery\Input”`

4. Ask the employee to log back in to the device or to lock and unlock the device.

    The Windows Credential service automatically recovers the protected data from the `Recovery\Input` location.
