---
title: How to Deploy the MBAM Client as Part of a Windows Deployment
description: How to Deploy the MBAM Client as Part of a Windows Deployment
author: msfttracyp
ms.assetid: 67387de7-8b02-4412-9850-3b8d8e5c18af
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Deploy the MBAM Client as Part of a Windows Deployment


The Microsoft BitLocker Administration and Monitoring (MBAM) Client enables administrators to enforce and monitor BitLocker drive encryption on computers in the enterprise. If computers that have a Trusted Platform Module (TPM) chip, the BitLocker client can be integrated into an organization by enabling BitLocker management and encryption on client computers as part of the imaging and Windows deployment process.

**Note**  
To review the Microsoft BitLocker Administration and Monitoring Client system requirements, see [MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md).

 

Encrypting client computers with BitLocker during the initial imaging stage of a Windows deployment can lower the administrative overhead necessary for implementing MBAM in an organization. It also ensures that every computer that is deployed already has BitLocker running and is configured correctly.

**Note**  
The procedure in this topic describes modifying the Windows registry. Using Registry Editor incorrectly can cause serious problems that may require you to reinstall Windows. Microsoft cannot guarantee that problems resulting from the incorrect use of Registry Editor can be solved. Use Registry Editor at your own risk.

 

**To encrypt a computer as part of Windows deployment**

1.  If your organization is planning to use the Trusted Platform Module (TPM) protector or the TPM + PIN protector options in BitLocker, you must activate the TPM chip before the initial deployment of MBAM. When you activate the TPM chip, you avoid a reboot later in the process, and you ensure that the TPM chips are correctly configured according to the requirements of your organization. You must activate the TPM chip manually in the BIOS of the computer.

    **Note**  
    Some vendors provide tools to turn on and activate the TPM chip in the BIOS from within the operating system. Refer to the manufacturer documentation for more details about how to configure the TPM chip.

     

2.  Install the Microsoft BitLocker Administration and Monitoring client agent.

3.  Join the computer to a domain (recommended).

    -   If the computer is not joined to the domain, the recovery password is not stored in the MBAM Key Recovery service. By default, MBAM does not allow encryption to occur unless the recovery key can be stored.

    -   If a computer starts in recovery mode before the recovery key is stored on the MBAM Server, the computer has to be reimaged. No recovery method is available.

4.  Run the command prompt as an administrator, stop the MBAM service, and then set the service to **manual** or **on demand**, and then start by typing the following commands:

    **net stop mbamagent**

    **sc config mbamagent start= demand**

5.  Set the registry settings for the MBAM agent to ignore Group Policy and run the TPM for **operating system only encryption** by running **Regedit**, and then importing the registry key template from C:\\Program Files\\Microsoft\\MDOP MBAM\\MBAMDeploymentKeyTemplate.reg.

6.  In regedit, go to HKLM\\SOFTWARE\\Microsoft\\MBAM, and configure the settings that are listed in the following table.

    Registry entry

    Configuration settings

    DeploymentTime

    0 = OFF

    1 = Use deployment time policy settings (default)

    UseKeyRecoveryService

    0 = Do not use key escrow ( the next two registry entries are not required in this case)

    1 = Use key escrow in Key Recovery system (default)

    Recommended: The computer must be able to communicate with the Key Recovery service. Verify that the computer can communicate with the service before you proceed.

    KeyRecoveryOptions

    0 = Uploads Recovery Key Only

    1 = Uploads Recovery Key and Key Recovery Package (default)

    KeyRecoveryServiceEndPoint

    Set this value to the URL for the Key Recovery web server, for example, http://&lt;computer name&gt;/MBAMRecoveryAndHardwareService/CoreService.svc.

     

    **Note**  
    MBAM policy or registry values can be set here to override previously set values.

     

7.  The MBAM agent restarts the system during MBAM client deployment. When you are ready for this reboot, run the following command at a command prompt as an administrator:

    **net start mbamagent**

8.  When the computers restarts, and the BIOS prompts you to accept a TPM change, accept the change.

9.  During the Windows client operating system imaging process, when you are ready to start encryption, restart the MBAM agent service, and set start to **automatic** by running a command prompt as an administrator and typing the following commands:

    **sc config mbamagent start= auto**

    **net start mbamagent**

10. Remove the bypass registry values by running Regedit and going to the HKLM\\SOFTWARE\\Microsoft registry entry. To delete the **MBAM** node, right-click the node and click **Delete**.

## Related topics


[Deploying the MBAM 2.0 Client](deploying-the-mbam-20-client-mbam-2.md)

 

 





