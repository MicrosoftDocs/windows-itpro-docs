---
title: Windows Update common errors and mitigation
description: In this article, learn about some common issues you might experience with Windows Update, as well as steps to resolve them.
ms.prod: w10
ms.mktglfcycl: 
audience: itpro
itproauthor: jaimeo
ms.audience: itpro
author: jaimeo
ms.reviewer: kaushika
manager: laurawi
ms.topic: troubleshooting
ms.custom: seo-marvel-apr2020
---

# Windows Update common errors and mitigation

**Applies to**

-   Windows 10
-   Windows 11

The following table provides information about common errors you might run into with Windows Update, as well as steps to help you mitigate them.

## 0x8024402F

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_PT_ECP_SUCCEEDED_WITH_ERRORS | External cab file processing completed with some errors | One of the reasons we see this issue is due to the design of a software called Lightspeed Rocket for Web filtering. <br>Add the IP addresses of devices you want to get updates to the exceptions list of Lightspeed |

## 0x80242006

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_UH_INVALIDMETADATA | A handler operation could not be completed because the update contains invalid metadata. | Rename Software Redistribution Folder and attempt to download the updates again: <br>Rename the following folders to \*.BAK: <br>- %systemroot%\system32\catroot2 <br><br>Type the following commands at a command prompt. Press ENTER after you type each command.<br>- Ren %systemroot%\SoftwareDistribution\DataStore \*.bak<br>- Ren %systemroot%\SoftwareDistribution\Download \*.bak<br>- Ren %systemroot%\system32\catroot2 \*.bak |

## 0x80070BC9

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_FAIL_REBOOT_REQUIRED | The requested operation failed. A system reboot is required to roll back changes made. | Ensure that you don't have any policies that control the start behavior for the Windows Module Installer. This service should be managed by the operating system |

## 0x80200053

| Message | Description | Mitigation |
|---------|-------------|------------|
| BG_E_VALIDATION_FAILED | NA | Ensure that there are no firewalls that filter downloads. Such filtering could lead to incorrect responses being received by the Windows Update Client.<br><br>If the issue still persists, run the [Windows Update reset script](https://gallery.technet.microsoft.com/scriptcenter/Reset-Windows-Update-Agent-d824badc).|

## 0x80072EFD or 0x80072EFE or 0x80D02002

| Message | Description | Mitigation |
|---------|-------------|------------|
| TIME_OUT_ERRORS | The operation timed out | Make sure there are no firewall rules or proxy to block Microsoft download URLs. <br>Take a network monitor trace to understand better. \<Refer to Firewall Troubleshooting scenario> |

## 0X8007000D

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_INVALID_DATA | Indicates invalid data downloaded or corruption occurred.| Attempt to re-download the update and initiate installation. |

## 0x8024A10A

| Message | Description | Mitigation |
|---------|-------------|------------|
| USO_E_SERVICE_SHUTTING_DOWN  | Indicates that the Windows Update Service is shutting down. | This can occur after a very long period of time of inactivity, the system failing to respond leading to the service being idle and causing the service to shut down. Ensure that the system remains active and the connections remain established to complete the upgrade. |

## 0x80240020

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_NO_INTERACTIVE_USER | Operation did not complete because there is no logged-on interactive user. | Sign in to the device to start the installation and allow the device to restart. |

## 0x80242014

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_UH_POSTREBOOTSTILLPENDING | The post-restart operation for the update is still in progress. | Some Windows Updates require the device to be restarted. Restart the device to complete update nstallation. |

## 0x80246017

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_DM_UNAUTHORIZED_LOCAL_USER | The download failed because the local user was denied authorization to download the content.  | Ensure that the user attempting to download and install updates has been provided with sufficient privileges to install updates (Local Administrator).|

## 0x8024000B

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_CALL_CANCELLED | Operation was canceled. | The operation was canceled by the user or service. You might also receive this error when we are unable to filter the results. Run the [Decline Superseded PowerShell script](https://gallery.technet.microsoft.com/scriptcenter/Cleanup-WSUS-server-4424c9d6) to allow the filtering process to complete. |

## 0x8024000E

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_XML_INVALID | Windows Update Agent found invalid information in the update's XML data. | Certain drivers contain additional metadata information in the update.xml, which could lead Orchestrator to understand it as invalid data. Ensure that you have the latest Windows Update Agent installed on the machine. |

## 0x8024D009

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_SETUP_SKIP_UPDATE | An update to the Windows Update Agent was skipped due to a directive in the wuident.cab file. | You may encounter this error when WSUS is not sending the Self-update to the clients.<br><br>Review [KB920659](https://support.microsoft.com/help/920659/the-microsoft-windows-server-update-services-wsus-selfupdate-service-d) for instructions to resolve the issue. |

## 0x80244007

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_PT_SOAPCLIENT_SOAPFAULT | SOAP client failed because there was a SOAP fault for reasons of WU_E_PT_SOAP_\* error codes. | This issue occurs because Windows cannot renew the cookies for Windows Update.  <br><br>Review [KB2883975](https://support.microsoft.com/help/2883975/0x80244007-error-when-windows-tries-to-scan-for-updates-on-a-wsus-serv) for instructions to resolve the issue. |

## 0x80070422

| Message | Description | Mitigation |
|---------|-------------|------------|
| NA | This issue occurs when the Windows Update service stops working or is not running. | Check if the Windows Update service is running.<br> |

## 0x800f0821


| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_ABORT; client abort, IDABORT returned by ICbsUIHandler method except Error() | CBS   transaction timeout exceeded. | A   servicing operation is taking a long time to complete.  The servicing stack watchdog timer expires   and assumes the system has hung.    Extending the timeout will mitigate the issue. Increase the machine   resources. If a virtual machine, increase virtual CPU and memory to speedup   the operation. Make sure the machine as at least the KB4493473, if not please   download and manually install it.|

## 0x800f0825

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_CANNOT_UNINSTALL; Package cannot be uninstalled. | Typically   component store corruption caused when a component is in a partially   installed state. | Repair component store with Dism RestoreHealth command OR manually repair with   payload from the partially installed component. Open and elevated command prompt and execute the below commands, by order:<br>1. DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH<br>2. DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT<br>3. DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH<br>4. Sfc /Scannow<br>5. Reboot the machine |

## 0x800F0920

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_HANG_DETECTED; A hang was detected while processing the operation. | Subsequent   error logged after getting 0x800f0821 | A servicing operation is taking a long time to complete. The servicing stack watchdog timer expires and assumes the system has hung.  Extending the timeout will mitigate the issue. Increase the machine resources. If a virtual machine, increase virtual CPU and memory to speedup   the operation. Make sure the machine as at least the KB4493473, if not please download and manually install it. |

## 0x800f081f

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_SOURCE_MISSING; source for package or file not found, ResolveSource() unsuccessful | Component  Store corruption | Repair component store with Dism RestoreHealth command OR manually repair with   payload from the partially installed component. Open and elevated command prompt and execute the below commands, by order:<br>1. DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH<br>2. DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT<br>3. DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH<br>4. Sfc /Scannow<br>5. Reboot the machine |

## 0x800f0831

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_STORE_CORRUPTION; CBS store is corrupted. | Corruption in the Windows Component  Store. | Repair component store with Dism RestoreHealth command OR manually repair with   payload from the partially installed component. Open and elevated command prompt and execute the below commands, by order:<br>1. DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH<br>2. DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT<br>3. DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH<br>4. Sfc /Scannow<br>5. Reboot the machine |

## 0x80070005

| Message | Description | Mitigation |
|---------|-------------|------------|
| E_ACCESSDENIED; General access denied error | File system or registry key permissions have been changed and the servicing stack doesn't have the required level of access. | This error generally means an ACCESS DENIED.<br> Go to %Windir%\logs\CBS and open the last CBS.log and search for “, error” and match with the timestamp. After finding the error, scroll up and try to determine what caused the   ACCESS DENIED, it could be acess denied to a file, registry key,etc. Determine what object needs the right permissions and change the   permissions |

## 0x80070570

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_FILE_CORRUPT; The file or directory is corrupted and unreadable. | Component Store corruption | Repair component store with Dism RestoreHealth command OR manually repair with   payload from the partially installed component. Open and elevated command prompt and execute the below commands, by order:<br>1. DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH <br> 2. DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT<br>3. DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH<br>4. Sfc /Scannow<br>5. Reboot the machine |


## 0x80070003

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_PATH_NOT_FOUND; The system cannot find the path specified. | The servicing stack cannot access a specific path. | Indicates an invalid path to an executable. Go to %Windir%\logs\CBS and open the last   CBS.log and search for “, error” and match with the timestamp. |


## 0x80070020

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_SHARING_VIOLATION | Numerous   causes.  CBS log analysis required. | This   error is usually caused by 3rd party filter drivers like Antivirus. <br> 1. [Perform a clean boot and retry the installation](https://support.microsoft.com/help/929135/)  <br> 2. Download the sysinternal tool process monitor ->   https://docs.microsoft.com/sysinternals/downloads/procmon <br> 3. Run procmon.exe. It will start data capture automatically <br> 4. Install the Update package again <br> 5. With procmon program main window in focus, press Ctrl + E or click the magnifying glass to terminate data capture <br> 6. Click File > Save > All Events > PML, and choose an adequate path to save the .PML file <br> 7. Go to %windir%\logs\cbs and open the last cbs.log file and search for the error <br> 8. After finding the error line a bit above you should have the file being accessed during the installation that is giving the sharing violation error <br> 9. In the Procmon windows filter for path and insert the file name (it should   be something like “path” “contains” “filename from CBS”) <br> 10. After checking which process is accessing that file try to stop it or uninstall it from the machine |

## 0x80073701

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_SXS_ASSEMBLY_MISSING; The referenced assembly could not be found. | Typically component store corruption caused when a component is in a partially installed state. | Repair component store with Dism RestoreHealth command OR manually repair with   payload from the partially installed component. Open and elevated command prompt and execute the below commands, by order:<br>1. DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH <br> 2. DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT<br>3. DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH<br>4. Sfc /Scannow<br>5. Reboot the machine | 

## 0x8007371b

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE; One or more required members of the transaction are not present. | Component Store corruption. | Repair component store with Dism RestoreHealth command OR manually repair with   payload from the partially installed component. Open and elevated command prompt and execute the below commands, by order:<br>1. DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH <br> 2. DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT<br>3. DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH<br>4. Sfc /Scannow<br>5. Reboot the machine | 

## 0x80072EFE

| Message | Description | Mitigation |
|---------|-------------|------------|
| WININET_E_CONNECTION_ABORTED; The connection with the server was terminated abnormally | BITS is unable to transfer the file successfully. | Encountered if BITS is broken or if the file being transferred can't be written to the destination folder on the client. This error is usually caused by connection errors while checking/downloading updates.<br> From a cmd prompt run: **BITSADMIN /LIST /ALLUSERS /VERBOSE** <br> Search for the 0x80072EFE error code. You should see a reference to a HTTP   code with a specific file, try to download it manually from your browser making sure you’re using your proxy organization settings. If it fails, check with your proxy manager to allow for the communication to be sucesfull. Also   check with your network team for this specific URL access. |

## 0x80072F8F

| Message | Description | Mitigation |
|---------|-------------|------------|
| WININET_E_DECODING_FAILED; Content decoding has failed | TLS 1.2 is not configured correctly on the client machine. | This error generally means that the Windows Update Agent was unable to decode the   received content. You need to install and configure TLS 1.2 by installing this KB: https://support.microsoft.com/help/3140245/ 

## 0x80072EE2

| Message | Description | Mitigation |
|---------|-------------|------------|
| WININET_E_TIMEOUT; The operation timed out | Unable to scan for updates due to a connectivity issue to WU, SCCM, or WSUS. | This error generally means that the Windows Update Agent was unable to connect to the update servers or your own configured WSUS/SCCM/MEM/etc. <br> Check with your network team if the machine is able to get to your WSUS/SCCM/MEM/etc or the internet servers. See, https://docs.microsoft.com/troubleshoot/mem/configmgr/troubleshoot-software-update-scan-failures <br> In case you’re using the public MS update servers, check that your device can access the following Windows Update endpoints: <br> http://windowsupdate.microsoft.com <br> https://*.windowsupdate.microsoft.com <br> https://*.windowsupdate.microsoft.com <br> https://*.update.microsoft.com <br> https://*.update.microsoft.com <br> https://*.windowsupdate.com <br> https://download.windowsupdate.com <br> https://download.microsoft.com <br> https://*.download.windowsupdate.com <br> https://wustat.windows.com <br>    https://ntservicepack.microsoft.com |

## 0x80240022

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_ALL_UPDATES_FAILED; Operation failed for all the updates. | Multiple root causes for this error.| Most common issue is where Anti-Virus software is blocking access to certain folders (like SoftwareDistribution). CBS.log analysis needed to determine the file or folder being protected. |

## 0x8024401B

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_PT_HTTP_STATUS_PROXY_AUTH_REQ; Same as HTTP status 407 - proxy authentication is required. | Unable to authenticate through a proxy server. | Either the Winhttp proxy or WinInet proxy settings are not configured correctly. This error generally means that the Windows Update Agent was unable to connect to the update servers or your own configured WSUS/SCCM/MEM/etc due to a Proxy error. <br> - Verify the proxy settings on the client, and make sure that they are configured correctly. The Windows Update Agent uses WinHTTP to scan for available updates. So, when there is a proxy server between the client and the WSUS computer, the proxy settings must be configured correctly on the clients to enable them to communicate with WSUS by using the computer's FQDN. <br> - Check with your network team and proxy team if the machine is able to get to your WSUS/SCCM7MEM/etc or the internet servers without the proxy requiring user authentication |


## 0x80244022

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_PT_HTTP_STATUS_SERVICE_UNAVAILABLE; Same as HTTP status 503 - the service is temporarily overloaded. | Unable to connect to the configured update source. | Network troubleshooting needed to resolve the connectivity issue. Check with your network team and proxy team if the machine is able to get to your WSUS/SCCM7MEM/etc or the internet servers without the proxy requiring user authentication. |
