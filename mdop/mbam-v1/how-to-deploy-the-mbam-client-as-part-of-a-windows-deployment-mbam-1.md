---
title: How to Deploy the MBAM Client as Part of a Windows Deployment
description: How to Deploy the MBAM Client as Part of a Windows Deployment
author: msfttracyp
ms.assetid: 8704bf33-535d-41da-b9b2-45b60754367e
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


The Microsoft BitLocker Administration and Monitoring (MBAM) Client enables administrators to enforce and monitor BitLocker drive encryption on computers in the enterprise. The BitLocker Client can be integrated into an organization by enabling BitLocker management and encryption on client computers during the computer imaging and Windows deployment process.

**Note**  
To review the MBAM Client system requirements, see [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).



Encryption of client computers with BitLocker during the initial imaging stage of a Windows deployment can lower the administrative overhead for MBAM implementation. This approach also ensures that every computer that is deployed already has BitLocker running and is configured correctly.

**Warning**  
This topic describes how to change the Windows registry by using Registry Editor. If you change the Windows registry incorrectly, you can cause serious problems that might require you to reinstall Windows. You should make a backup copy of the registry files (System.dat and User.dat) before you change the registry. Microsoft cannot guarantee that the problems that might occur when you change the registry can be resolved. Change the registry at your own risk.



**To encrypt a computer as part of Windows deployment**

1.  If your organization plans to use the Trusted Platform Module (TPM) protector or the TPM + PIN protector options in BitLocker, you must activate the TPM chip before the initial deployment of MBAM. When you activate the TPM chip, you avoid a reboot later in the process, and you ensure that the TPM chips are correctly configured according to the requirements of your organization. You must activate the TPM chip manually in the computer's BIOS. Refer to the manufacturer documentation for more details about how to configure the TPM chip.

2.  Install the MBAM client agent.

3.  We recommend that you join the computer to a domain...

    -   If the computer is not joined to a domain, the recovery password is not stored in the MBAM Key Recovery service. By default, MBAM does not allow encryption to occur unless the recovery key can be stored.

    -   If a computer starts in recovery mode before the recovery key is stored on the MBAM server, the computer has to be reimaged. No recovery method is available.

4.  Open a command prompt as an administrator, stop the MBAM service, and then set the service to **manual** or **on demand**. Then, run the following commands:

    **net stop mbamagent**

    **sc config mbamagent start= demand**

5.  Set the registry settings for the MBAM agent to ignore Group Policy and run the TPM for **operating system only encryption** To do this, run **regedit**, and then import the registry key template from C:\\Program Files\\Microsoft\\MDOP MBAM\\MBAMDeploymentKeyTemplate.reg.

6.  In regedit, go to HKLM\\SOFTWARE\\Microsoft\\MBAM and configure the settings that are listed in the following table.

    Registry entry

    Configuration settings

    DeploymentTime

    0 = OFF

    1 = Use deployment time policy settings (default)

    UseKeyRecoveryService

    0 = Do not use key escrow (The next two registry entries are not required in this case.)

    1 = Use key escrow in Key Recovery system (default)

    Recommended: The computer must be able to communicate with the Key Recovery service. Verify that the computer can communicate with the service before you proceed.

    KeyRecoveryOptions

    0 = Upload Recovery Key Only

    1 = Upload Recovery Key and Key Recovery Package (default)

    KeyRecoveryServiceEndPoint

    Set this value to the URL for the Key Recovery web server.

    Example: http://&lt;computer name&gt;/MBAMRecoveryAndHardwareService/CoreService.svc.



~~~
**Note**  
MBAM policy or registry values can be set here to override the previously set values.
~~~



7. The MBAM agent restarts the system during MBAM client deployment. When you are ready for this reboot, run the following command at a command prompt as an administrator:

   **net start mbamagent**

8. When the computers restarts and the BIOS prompts you to accept a TPM change, accept the change.

9. During the Windows client operating system imaging process, when you are ready to start encryption, restart the MBAM agent service. Then, to set start to **automatic**, open a command prompt as an administrator and run the following commands:

   **sc config mbamagent start= auto**

   **net start mbamagent**

10. Remove the bypass registry values. To do this, run regedit, browse to the HKLM\\SOFTWARE\\Microsoft registry entry, right-click the **MBAM** node, and then click **Delete**.

## Related topics


[Deploying the MBAM 1.0 Client](deploying-the-mbam-10-client.md)









