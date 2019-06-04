---
title: How to Enable BitLocker by Using MBAM as Part of a Windows Deployment
description: How to Enable BitLocker by Using MBAM as Part of a Windows Deployment
author: dansimp
ms.assetid: 7609ad7a-bb06-47be-b186-0a2db787c8a5
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 04/23/2017
---


# How to Enable BitLocker by Using MBAM as Part of a Windows Deployment


This topic explains how to enable BitLocker on an end user's computer by using MBAM as part of your Windows imaging and deployment process. If you see a black screen at restart (after Install phase concludes) indicating that the drive cannot be unlocked, see [Earlier Windows versions don't start after "Setup Windows and Configuration Manager" step if Pre-Provision BitLocker is used with Windows 10, version 1511](https://support.microsoft.com/en-us/help/4494799/earlier-windows-versions-don-t-start-after-you-use-pre-provision-bitlo).

**Prerequisites:**

-   An existing Windows image deployment process – Microsoft Deployment Toolkit (MDT), Microsoft System Center Configuration Manager, or some other imaging tool or process – must be in place

-   TPM must be enabled in the BIOS and visible to the OS

-   MBAM server infrastructure must be in place and accessible

-   The system partition required by BitLocker must be created

-   The machine must be domain joined during imaging before MBAM fully enables BitLocker

**To enable BitLocker using MBAM 2.5 SP1 as part of a Windows deployment**

1.  In MBAM 2.5 SP1, the recommended approach to enable BitLocker during a Windows Deployment is by using the `Invoke-MbamClientDeployment.ps1` PowerShell script.

    -   The `Invoke-MbamClientDeployment.ps1` script enacts BitLocker during the imaging process. When required by BitLocker policy, the MBAM agent immediately prompts the domain user to create a PIN or password when the domain user first logs on after imaging.

    -   Easy to use with MDT, System Center Configuration Manager, or standalone imaging processes

    -   Compatible with PowerShell 2.0 or higher

    -   Encrypt OS volume with TPM key protector

    -   Fully support BitLocker pre-provisioning

    -   Optionally encrypt FDDs

    -   Escrow TPM OwnerAuth
    For Windows 7, MBAM must own the TPM for escrow to occur.
    For Windows 8.1, Windows 10 RTM and Windows 10 version 1511, escrow of TPM OwnerAuth is supported.
    For Windows 10, version 1607 or later, only Windows can take ownership of the TPM. In addiiton, Windows will not retain the TPM owner password when provisioning the TPM. See [TPM owner password](https://docs.microsoft.com/en-us/windows/security/hardware-protection/tpm/change-the-tpm-owner-password) for further details.

    -   Escrow recovery keys and recovery key packages

    -   Report encryption status immediately

    -   New WMI providers

    -   Detailed logging

    -   Robust error handling

   You can download the `Invoke-MbamClientDeployment.ps1` script from [Microsoft.com Download Center](https://www.microsoft.com/download/details.aspx?id=54439). This is the main script that your deployment system will call to configure BitLocker drive encryption and record recovery keys with the MBAM Server.

   **WMI deployment methods for MBAM:** The following WMI methods have been added in MBAM 2.5 SP1 to support enabling BitLocker by using the `Invoke-MbamClientDeployment.ps1` PowerShell script.

   <a href="" id="mbam-machine-wmi-class"></a>**MBAM\_Machine WMI Class**
   **PrepareTpmAndEscrowOwnerAuth:** Reads the TPM OwnerAuth and sends it to the MBAM recovery database by using the MBAM recovery service. If the TPM is not owned and auto-provisioning is not on, it generates a TPM OwnerAuth and takes ownership. If it fails, an error code is returned for troubleshooting.

   **Note** For Windows 10, version 1607 or later, only Windows can take ownership of the TPM. In addiiton, Windows will not retain the TPM owner password when provisioning the TPM. See [TPM owner password](https://docs.microsoft.com/en-us/windows/security/hardware-protection/tpm/change-the-tpm-owner-password) for further details.

| Parameter | Description |
| -------- | ----------- |
| RecoveryServiceEndPoint | A string specifying the MBAM recovery service endpoint. |

Here are a list of common error messages:

| Common return values | Error message |
| -------------------- | ------------- |
|  **S_OK**<br />0 (0x0) | The method was successful. |
| **MBAM_E_TPM_NOT_PRESENT**<br />2147746304 (0x80040200) | TPM is not present in the computer or is disabled in the BIOS configuration. |
| **MBAM_E_TPM_INCORRECT_STATE**<br />2147746305 (0x80040201) | TPM is not in the correct state (enabled, activated and owner installation allowed). |
| **MBAM_E_TPM_AUTO_PROVISIONING_PENDING**<br />2147746306 (0x80040202) | MBAM cannot take ownership of TPM because auto-provisioning is pending. Try again after auto-provisioning is completed. |
| **MBAM_E_TPM_OWNERAUTH_READFAIL**<br />2147746307 (0x80040203) | MBAM cannot read the TPM owner authorization value. The value might have been removed after a successful escrow. On Windows 7, MBAM cannot read the value if the TPM is owned by others. |
| **MBAM_E_REBOOT_REQUIRED**<br />2147746308 (0x80040204) | The computer must be restarted to set TPM to the correct state. You might need to manually reboot the computer. |
| **MBAM_E_SHUTDOWN_REQUIRED**<br />2147746309 (0x80040205) | The computer must be shut down and turned back on to set TPM to the correct state. You might need to manually reboot the computer. |
| **WS_E_ENDPOINT_ACCESS_DENIED**<br />2151481349 (0x803D0005) | Access was denied by the remote endpoint. |
| **WS_E_ENDPOINT_NOT_FOUND**<br />2151481357 (0x803D000D) | The remote endpoint does not exist or could not be located. |
| **WS_E_ENDPOINT_FAILURE<br />2151481357 (0x803D000F) | The remote endpoint could not process the request. |
| **WS_E_ENDPOINT_UNREACHABLE**<br />2151481360 (0x803D0010) | The remote endpoint was not reachable. |
| **WS_E_ENDPOINT_FAULT_RECEIVED**<br />2151481363 (0x803D0013) | A message containing a fault was received from the remote endpoint. Make sure you are connecting to the correct service endpoint. |
| **WS_E_INVALID_ENDPOINT_URL** 2151481376 (0x803D0020) | The endpoint address URL is not valid. The URL must start with “http” or “https”. |

   **ReportStatus:** Reads the compliance status of the volume and sends it to the MBAM compliance status database by using the MBAM status reporting service. The status includes cipher strength, protector type, protector state and encryption state. If it fails, an error code is returned for troubleshooting.

   | Parameter | Description |
   | --------- | ----------- |
   | ReportingServiceEndPoint | A string specifying the MBAM status reporting service endpoint. |

   Here are a list of common error messages:

   | Common return values | Error message |
   | -------------------- | ------------- |
   | **S_OK**<br /> 0 (0x0) | The method was successful |
   | **WS_E_ENDPOINT_ACCESS_DENIED**<br />2151481349 (0x803D0005) | Access was denied by the remote endpoint.|
   | **WS_E_ENDPOINT_NOT_FOUND**<br />2151481357 (0x803D000D) | The remote endpoint does not exist or could not be located. |
   | **WS_E_ENDPOINT_FAILURE**<br /> 2151481357 (0x803D000F) | The remote endpoint could not process the request. |
   | **WS_E_ENDPOINT_UNREACHABLE**<br />2151481360 (0x803D0010) | The remote endpoint was not reachable. |
   | **WS_E_ENDPOINT_FAULT_RECEIVED**<br />2151481363 (0x803D0013) | A message containing a fault was received from the remote endpoint. Make sure you are connecting to the correct service endpoint. |
   | **WS_E_INVALID_ENDPOINT_URL**<br />2151481376 (0x803D0020) | The endpoint address URL is not valid. The URL must start with “http” or “https”. |

   <a href="" id="mbam-volume-wmi-class"></a>**MBAM\_Volume WMI Class**
   **EscrowRecoveryKey:** Reads the recovery numerical password and key package of the volume and sends them to the MBAM recovery database by using the MBAM recovery service. If it fails, an error code is returned for troubleshooting.

   | Parameter | Description |
   | --------- | ----------- |
   | RecoveryServiceEndPoint | A string specifying the MBAM recovery service endpoint. |

   Here are a list of common error messages:

   | Common return values | Error message |
   | -------------------- | ------------- |
   | **S_OK**<br />0 (0x0) | The method was successful |
   | **FVE_E_LOCKED_VOLUME**<br />2150694912 (0x80310000) | The volume is locked. |
   | **FVE_E_PROTECTOR_NOT_FOUND**<br />2150694963 (0x80310033) | A Numerical Password protector was not found for the volume. |
   | **WS_E_ENDPOINT_ACCESS_DENIED**<br />2151481349 (0x803D0005) | Access was denied by the remote endpoint. |
   | **WS_E_ENDPOINT_NOT_FOUND**<br />2151481357 (0x803D000D) | The remote endpoint does not exist or could not be located. |
   | **WS_E_ENDPOINT_FAILURE**<br />2151481357 (0x803D000F) | The remote endpoint could not process the request. |
   | **WS_E_ENDPOINT_UNREACHABLE**<br />2151481360 (0x803D0010) | The remote endpoint was not reachable. |
   | **WS_E_ENDPOINT_FAULT_RECEIVED**<br />2151481363 (0x803D0013) | A message containing a fault was received from the remote endpoint. Make sure you are connecting to the correct service endpoint. |
   | **WS_E_INVALID_ENDPOINT_URL**<br />2151481376 (0x803D0020) | The endpoint address URL is not valid. The URL must start with “http” or “https”. |
     

2.  **Deploy MBAM by using Microsoft Deployment Toolkit (MDT) and PowerShell**

    1.  In MDT, create a new deployment share or open an existing deployment share.

        **Note**  
        The `Invoke-MbamClientDeployment.ps1` PowerShell script can be used with any imaging process or tool. This section shows how to integrate it by using MDT, but the steps are similar to integrating it with any other process or tool.

        **Caution**  
        If you are using BitLocker pre-provisioning (WinPE) and want to maintain the TPM owner authorization value, you must add the `SaveWinPETpmOwnerAuth.wsf` script in WinPE immediately before the installation reboots into the full operating system. **If you do not use this script, you will lose the TPM owner authorization value on reboot.**

    2.  Copy `Invoke-MbamClientDeployment.ps1` to **&lt;DeploymentShare&gt;\\Scripts**. If you are using pre-provisioning, copy the `SaveWinPETpmOwnerAuth.wsf` file into **&lt;DeploymentShare&gt;\\Scripts**.

    3.  Add the MBAM 2.5 SP1 client application to the Applications node in the deployment share.

        1.  Under the **Applications** node, click **New Application**.

        2.  Select **Application with Source Files**. Click **Next**.

        3.  In **Application Name**, type “MBAM 2.5 SP1 Client”. Click **Next**.

        4.  Browse to the directory containing `MBAMClientSetup-<Version>.msi`. Click **Next**.

        5.  Type “MBAM 2.5 SP1 Client” as the directory to create. Click **Next**.

        6.  Enter `msiexec /i MBAMClientSetup-<Version>.msi /quiet` at the command line. Click **Next**.

        7.  Accept the remaining defaults to complete the New Application wizard.

    4.  In MDT, right-click the name of the deployment share and click **Properties**. Click the **Rules** tab. Add the following lines:

        `SkipBitLocker=YES``BDEInstall=TPM``BDEInstallSuppress=NO``BDEWaitForEncryption=YES`

        Click OK to close the window.

    5.  Under the Task Sequences node, edit an existing task sequence used for Windows Deployment. If you want, you can create a new task sequence by right-clicking the **Task Sequences** node, selecting **New Task Sequence**, and completing the wizard.

        On the **Task Sequence** tab of the selected task sequence, perform these steps:

        1.  Under the **Preinstall** folder, enable the optional task **Enable BitLocker (Offline)** if you want BitLocker enabled in WinPE, which encrypts used space only.

        2.  To persist TPM OwnerAuth when using pre-provisioning, allowing MBAM to escrow it later, do the following:

            1.  Find the **Install Operating System** step

            2.  Add a new **Run Command Line** step after it

            3.  Name the step **Persist TPM OwnerAuth**

            4.  Set the command line to `cscript.exe "%SCRIPTROOT%/SaveWinPETpmOwnerAuth.wsf"`
            **Note:** For Windows 10, version 1607 or later, only Windows can take ownership of the TPM. In addiiton, Windows will not retain the TPM owner password when provisioning the TPM. See [TPM owner password](https://docs.microsoft.com/en-us/windows/security/hardware-protection/tpm/change-the-tpm-owner-password) for further details.

        3.  In the **State Restore** folder, delete the **Enable BitLocker** task.

        4.  In the **State Restore** folder under **Custom Tasks**, create a new **Install Application** task and name it **Install MBAM Agent**. Click the **Install Single Application** radio button and browse to the MBAM 2.5 SP1 client application created earlier.

        5.  In the **State Restore** folder under **Custom Tasks**, create a new **Run PowerShell Script** task (after the MBAM 2.5 SP1 Client application step) with the following settings (update the parameters as appropriate for your environment):

            -   Name: Configure BitLocker for MBAM

            -   PowerShell script: `Invoke-MbamClientDeployment.ps1`

            -   Parameters:

                <table>
                <colgroup>
                <col width="33%" />
                <col width="33%" />
                <col width="33%" />
                </colgroup>
                <tbody>
                <tr class="odd">
                <td align="left"><p>-RecoveryServiceEndpoint</p></td>
                <td align="left"><p>Required</p></td>
                <td align="left"><p>MBAM recovery service endpoint</p></td>
                </tr>
                <tr class="even">
                <td align="left"><p>-StatusReportingServiceEndpoint</p></td>
                <td align="left"><p>Optional</p></td>
                <td align="left"><p>MBAM status reporting service endpoint</p></td>
                </tr>
                <tr class="odd">
                <td align="left"><p>-EncryptionMethod</p></td>
                <td align="left"><p>Optional</p></td>
                <td align="left"><p>Encryption method (default: AES 128)</p></td>
                </tr>
                <tr class="even">
                <td align="left"><p>-EncryptAndEscrowDataVolume</p></td>
                <td align="left"><p>Switch</p></td>
                <td align="left"><p>Specify to encrypt data volume(s) and escrow data volume recovery key(s)</p></td>
                </tr>
                <tr class="odd">
                <td align="left"><p>-WaitForEncryptionToComplete</p></td>
                <td align="left"><p>Switch</p></td>
                <td align="left"><p>Specify to wait for the encryption to complete</p></td>
                </tr>
                <tr class="even">
                <td align="left"><p>-DoNotResumeSuspendedEncryption</p></td>
                <td align="left"><p>Switch</p></td>
                <td align="left"><p>Specify that the deployment script will not resume suspended encryption</p></td>
                </tr>
                <tr class="odd">
                <td align="left"><p>-IgnoreEscrowOwnerAuthFailure</p></td>
                <td align="left"><p>Switch</p></td>
                <td align="left"><p>Specify to ignore TPM owner-auth escrow failure. It should be used in the scenarios where MBAM is not able to read the TPM owner-auth, e.g. if TPM auto provisioning is enabled</p></td>
                </tr>
                <tr class="even">
                <td align="left"><p>-IgnoreEscrowRecoveryKeyFailure</p></td>
                <td align="left"><p>Switch</p></td>
                <td align="left"><p>Specify to ignore volume recovery key escrow failure</p></td>
                </tr>
                <tr class="odd">
                <td align="left"><p>-IgnoreReportStatusFailure</p></td>
                <td align="left"><p>Switch</p></td>
                <td align="left"><p>Specify to ignore status reporting failure</p></td>
                </tr>
                </tbody>
                </table>

                 

**To enable BitLocker using MBAM 2.5 or earlier as part of a Windows deployment**

1.  Install the MBAM Client. For instructions, see [How to Deploy the MBAM Client by Using a Command Line](how-to-deploy-the-mbam-client-by-using-a-command-line.md).

2.  Join the computer to a domain (recommended).

    -   If the computer is not joined to a domain, the recovery password is not stored in the MBAM Key Recovery service. By default, MBAM does not allow encryption to occur unless the recovery key can be stored.

    -   If a computer starts in recovery mode before the recovery key is stored on the MBAM Server, no recovery method is available, and the computer has to be reimaged.

3.  Open a command prompt as an administrator, and stop the MBAM service.

4.  Set the service to **Manual** or **On demand** by typing the following commands:

    **net stop mbamagent**

    **sc config mbamagent start= demand**

5.  Set the registry values so that the MBAM Client ignores the Group Policy settings and instead sets encryption to start the time Windows is deployed to that client computer.

    **Caution**  
    This step describes how to modify the Windows registry. Using Registry Editor incorrectly can cause serious issues that can require you to reinstall Windows. We cannot guarantee that issues resulting from the incorrect use of Registry Editor can be resolved. Use Registry Editor at your own risk.

    1.  Set the TPM for **Operating system only encryption**, run Regedit.exe, and then import the registry key template from C:\\Program Files\\Microsoft\\MDOP MBAM\\MBAMDeploymentKeyTemplate.reg.

    2.  In Regedit.exe, go to HKLM\\SOFTWARE\\Microsoft\\MBAM, and configure the settings that are listed in the following table.

        **Note**  
        You can set Group Policy settings or registry values related to MBAM here. These settings will override previously set values.

        Registry entry
        Configuration settings

        DeploymentTime

        0 = Off

        1 = Use deployment time policy settings (default) – use this setting to enable encryption at the time Windows is deployed to the client computer.

        UseKeyRecoveryService

        0 = Do not use key escrow (the next two registry entries are not required in this case)

        1 = Use key escrow in Key Recovery system (default)

        This is the recommended setting, which enables MBAM to store the recovery keys. The computer must be able to communicate with the MBAM Key Recovery service. Verify that the computer can communicate with the service before you proceed.

        KeyRecoveryOptions

        0 = Uploads Recovery Key only

        1 = Uploads Recovery Key and Key Recovery Package (default)

        KeyRecoveryServiceEndPoint

        Set this value to the URL for the server running the Key Recovery service, for example, http://&lt;computer name&gt;/MBAMRecoveryAndHardwareService/CoreService.svc.


6.  The MBAM Client will restart the system during the MBAM Client deployment. When you are ready for this restart, run the following command at a command prompt as an administrator:

    **net start mbamagent**

7.  When the computers restarts, and the BIOS prompts you, accept the TPM change.

8.  During the Windows client operating system imaging process, when you are ready to start encryption, open a command prompt as an administrator, and type the following commands to set the start to **Automatic** and to restart the MBAM Client agent:

    **sc config mbamagent start= auto**

    **net start mbamagent**

9.  To delete the bypass registry values, run Regedit.exe, and go to the HKLM\\SOFTWARE\\Microsoft registry entry. Right-click the **MBAM** node, and then click **Delete**.

## Related topics

[Deploying the MBAM 2.5 Client](deploying-the-mbam-25-client.md)

[Planning for MBAM 2.5 Client Deployment](planning-for-mbam-25-client-deployment.md)

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
