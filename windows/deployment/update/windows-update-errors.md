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
| WU_E_PT_ECP_SUCCEEDED_WITH_ERRORS | External .cab file processing completed with some errors | This can be caused by the Lightspeed Rocket for web filtering software. <br>Add the IP addresses of devices you want to get updates to the exceptions list of Lightspeed Rocket. |

## 0x80242006

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_UH_INVALIDMETADATA | A handler operation could not be completed because the update contains invalid metadata. | Rename the software redistribution folder and try to download the updates again: <br>Rename the following folders to \*.BAK: <br>- %systemroot%\system32\catroot2 <br><br>Type the following commands at a command prompt. Press ENTER after you type each command.<br>- Ren %systemroot%\SoftwareDistribution\DataStore \*.bak<br>- Ren %systemroot%\SoftwareDistribution\Download \*.bak<br>- Ren %systemroot%\system32\catroot2 \*.bak |

## 0x80070BC9

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_FAIL_REBOOT_REQUIRED | The requested operation failed. Restart the system to roll back changes made. | Ensure that you don't have any policies that control the start behavior for the Windows Module Installer. This service should be managed by the operating system. |

## 0x80200053

| Message | Description | Mitigation |
|---------|-------------|------------|
| BG_E_VALIDATION_FAILED | NA | Ensure that there are no firewalls that filter downloads. Such filtering could lead to incorrect responses being received by the Windows Update client.<br><br>If the issue still persists, run the [Windows Update reset script](https://gallery.technet.microsoft.com/scriptcenter/Reset-Windows-Update-Agent-d824badc).|

## 0x80072EFD or 0x80072EFE or 0x80D02002

| Message | Description | Mitigation |
|---------|-------------|------------|
| TIME_OUT_ERRORS | The operation timed out | Make sure there are no firewall rules or proxies that block Microsoft download URLs. <br>Take a network monitor trace to understand better. \<Refer to Firewall Troubleshooting scenario> |

## 0X8007000D

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_INVALID_DATA | Indicates data that isn't valid was downloaded or corruption occurred.| Attempt to re-download the update and start installation. |

## 0x8024A10A

| Message | Description | Mitigation |
|---------|-------------|------------|
| USO_E_SERVICE_SHUTTING_DOWN  | Indicates that the Windows Update Service is shutting down. | This can occur after a very long period of time of inactivity. The system fails to respond, leading to the service being idle and causing the service to shut down. Ensure that the system remains active and the connections remain established to complete the installation. |

## 0x80240020

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_NO_INTERACTIVE_USER | Operation did not complete because no interactive user is signed in. | Sign in to the device to start the installation and allow the device to restart. |

## 0x80242014

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_UH_POSTREBOOTSTILLPENDING | The post-restart operation for the update is still in progress. | Some Windows updates require the device to be restarted. Restart the device to complete update installation. |

## 0x80246017

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_DM_UNAUTHORIZED_LOCAL_USER | The download failed because the local user was denied authorization to download the content.  | Ensure that the user attempting to download and install updates has been provided with sufficient privileges to install updates (Local Administrator).|

## 0x8024000B

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_CALL_CANCELLED | Operation was canceled. | The operation was canceled by the user or service. You might also receive this error when we're unable to filter the results. Run the [Decline Superseded PowerShell script](https://gallery.technet.microsoft.com/scriptcenter/Cleanup-WSUS-server-4424c9d6) to allow the filtering process to complete. |

## 0x8024000E

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_XML_INVALID | Windows Update Agent found information in the update's XML data that isn't valid. | Certain drivers contain additional metadata information in Update.xml, which Orchestrator can interpret as data that isn't valid. Ensure that you have the latest Windows Update Agent installed on the device. |

## 0x8024D009

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_SETUP_SKIP_UPDATE | An update to the Windows Update Agent was skipped due to a directive in the Wuident.cab file. | You might encounter this error when WSUS is not sending the self-update to the clients.<br><br>Review [KB920659](https://support.microsoft.com/help/920659/the-microsoft-windows-server-update-services-wsus-selfupdate-service-d) for instructions to resolve the issue. |

## 0x80244007

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_PT_SOAPCLIENT_SOAPFAULT | SOAP client failed because there was a SOAP fault for reasons of WU_E_PT_SOAP_\* error codes. | This issue occurs because Windows can't renew the cookies for Windows Update.  <br><br>Review [KB2883975](https://support.microsoft.com/help/2883975/0x80244007-error-when-windows-tries-to-scan-for-updates-on-a-wsus-serv) for instructions to resolve the issue. |

## 0x80070422

| Message | Description | Mitigation |
|---------|-------------|------------|
| NA | This issue occurs when the Windows Update service stops working or isn't running. | Check if the Windows Update service is running.<br> |

## 0x800f0821


| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_ABORT; client abort, IDABORT returned by ICbsUIHandler method except Error() | CBS   transaction timeout exceeded. | A servicing operation is taking a long time to complete. The servicing stack watchdog timer expires. Extending the timeout will mitigate the issue. Increase the resources on the device. If a virtual machine, increase virtual CPU and memory to speed up operations. Make sure the has installed the update in KB4493473 or later.|

## 0x800f0825

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_CANNOT_UNINSTALL; Package cannot be uninstalled. | Typically this is due component store corruption caused when a component is in a partially installed state. | Repair the component store with the **Dism RestoreHealth** command or manually repair with a payload from the partially installed component. From an elevated command prompt, run these commands:<br>*DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH*<br>*DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT*<br>*DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH*<br>*Sfc /Scannow*<br> Restart the device. |

## 0x800F0920

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_HANG_DETECTED; A failure to respond was detected while processing the operation. | Subsequent error logged after getting 0x800f0821 | A servicing operation is taking a long time to complete. The servicing stack watchdog timer expires and assumes the system has stopped responding.  Extending the timeout will mitigate the issue. Increase the resources on the device. If a virtual machine, increase virtual CPU and memory to speed up operations. Make sure the device has installed the update in KB4493473 or later.|

## 0x800f081f

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_SOURCE_MISSING; source for package or file not found, ResolveSource() unsuccessful | Component Store corruption | Repair the component store with the **Dism RestoreHealth** command or manually repair with the payload from the partially installed component. From an elevated command prompt and run these commands:<br>*DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH*<br>*DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT*<br>*DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH*<br>*Sfc /Scannow*<br> Restart the device. |

## 0x800f0831

| Message | Description | Mitigation |
|---------|-------------|------------|
| CBS_E_STORE_CORRUPTION; CBS store is corrupted. | Corruption in the Windows Component  Store. | Repair the component store with **Dism RestoreHealth** or manually repair with   the payload from the partially installed component. From an elevated command prompt and run these commands:<br>*DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH*<br>*DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT*<br>*DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH*<br>*Sfc /Scannow*<br> Restart the device.  |

## 0x80070005

| Message | Description | Mitigation |
|---------|-------------|------------|
| E_ACCESSDENIED; General access denied error | File system or registry key permissions have been changed and the servicing stack doesn't have the required level of access. | This error generally means an access was denied.<br> Go to %Windir%\logs\CBS, open the last CBS.log and search for “, error” and match with the timestamp. After finding the error, scroll up and try to determine what caused the access denial. It could be acess denied to a file, registry key. Determine what object needs the right permissions and change the permissions as needed. |

## 0x80070570

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_FILE_CORRUPT; The file or directory is corrupted and unreadable. | Component Store corruption | Repair the component store with **Dism RestoreHealth** or manually repair with the payload from the partially installed component. From an elevated command prompt and run these commands:<br>*DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH*<br>*DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT*<br>*DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH*<br>*Sfc /Scannow*<br> Restart the device.|


## 0x80070003

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_PATH_NOT_FOUND; The system cannot find the path specified. | The servicing stack cannot access a specific path. | Indicates an invalid path to an executable. Go to %Windir%\logs\CBS, open the last CBS.log, and search for “, error” and match with the timestamp. |


## 0x80070020

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_SHARING_VIOLATION | Numerous causes. CBS log analysis required. | This error is usually caused by non-Microsoft filter drivers like antivirus. <br> 1. [Perform a clean boot and retry the installation](https://support.microsoft.com/help/929135/)  <br> 2. Download the sysinternal tool [Process Monitor](/sysinternals/downloads/procmon). <br> 3. Run Procmon.exe. It will start data capture automatically. <br> 4. Install the update package again <br> 5. With the Process Monitor main window in focus, press CTRL + E or select the magnifying glass to stop data capture. <br> 6. Select **File > Save > All Events > PML**, and choose a path to save the .PML file <br> 7. Go to %windir%\logs\cbs, open the last Cbs.log file, and search for the error. After finding the error line a bit above, you should have the file being accessed during the installation that is giving the sharing violation error <br> 8. In Process Monitor, filter for path and insert the file name (it should be something like “path” “contains” “filename from CBS”). <br> 9. Try to stop it or uninstall the process causing the error. |

## 0x80073701

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_SXS_ASSEMBLY_MISSING; The referenced assembly could not be found. | Typically, a component store corruption caused when a component is in a partially installed state. | Repair the component store with **Dism RestoreHealth command** or manually repair it with the payload from the partially installed component. From an elevated command prompt and run these commands:<br>*DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH*<br>*DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALTH*<br>*DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH*<br>*Sfc /Scannow*<br> Restart the device. | 

## 0x8007371b

| Message | Description | Mitigation |
|---------|-------------|------------|
| ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE; One or more required members of the transaction are not present. | Component Store corruption. | Repair the component store with **Dism RestoreHealth command** or manually repair it with the payload from the partially installed component. From an elevated command prompt and run these commands:<br>*DISM /ONLINE /CLEANUP-IMAGE /SCANHEALTH*<br>*DISM /ONLINE /CLEANUP-IMAGE /CHECKHEALT*<br>*DISM /ONLINE /CLEANUP-IMAGE /RESTOREHEALTH*<br>*Sfc /Scannow*<br> Restart the device. | 

## 0x80072EFE

| Message | Description | Mitigation |
|---------|-------------|------------|
| WININET_E_CONNECTION_ABORTED; The connection with the server was closed abnormally | BITS is unable to transfer the file successfully. | Encountered if BITS is broken or if the file being transferred can't be written to the destination folder on the client. This error is usually caused by connection errors while checking or downloading updates.<br> From a cmd prompt run: *BITSADMIN /LIST /ALLUSERS /VERBOSE* <br> Search for the 0x80072EFE error code. You should see a reference to an HTTP code with a specific file. Using a browser, try to download it manually, making sure you’re using your organization's proxy settings. If the download fails, check with your proxy manager to allow for the communication to be sucesfull. Also check with your network team for this specific URL access. |

## 0x80072F8F

| Message | Description | Mitigation |
|---------|-------------|------------|
| WININET_E_DECODING_FAILED; Content decoding has failed | TLS 1.2 is not configured correctly on the client. | This error generally means that the Windows Update Agent was unable to decode the received content. Install and configure TLS 1.2 by installing the update in [KB3140245](https://support.microsoft.com/help/3140245/). 

## 0x80072EE2

| Message | Description | Mitigation |
|---------|-------------|------------|
| WININET_E_TIMEOUT; The operation timed out | Unable to scan for updates due to a connectivity issue to Windows Update, Configuration Manager, or WSUS. | This error generally means that the Windows Update Agent was unable to connect to the update servers or your own source, such as WSUS, Configuration Manager, or Microsoft Endpoint Manager. <br> Check with your network team to ensure that the device can reach the update sources. For more info, see [Troubleshoot software update scan failures in Configuration Manager](/mem/configmgr/troubleshoot-software-update-scan-failures). <br> If you’re using the public Microsoft update servers, check that your device can access the following Windows Update endpoints: <br> `http://windowsupdate.microsoft.com` <br> https://*.windowsupdate.microsoft.com <br> https://*.windowsupdate.microsoft.com <br> https://*.update.microsoft.com <br> https://*.update.microsoft.com <br> https://*.windowsupdate.com <br> https://download.windowsupdate.com <br> https://download.microsoft.com <br> https://*.download.windowsupdate.com <br> https://wustat.windows.com <br> https://ntservicepack.microsoft.com |

## 0x80240022

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_ALL_UPDATES_FAILED; Operation failed for all the updates. | Multiple root causes for this error.| Most common issue is that antivirus software is blocking access to certain folders (like SoftwareDistribution). CBS.log analysis needed to determine the file or folder being protected. |

## 0x8024401B

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_PT_HTTP_STATUS_PROXY_AUTH_REQ; Same as HTTP status 407 - proxy authentication is required. | Unable to authenticate through a proxy server. | Either the Winhttp proxy or WinInet proxy settings are not configured correctly. This error generally means that the Windows Update Agent was unable to connect to the update servers or your own update source, such as WSUS, Configuration Manager, or Microsoft Endpoint Manager, due to a proxy error. <br> Verify the proxy settings on the client. The Windows Update Agent uses WinHTTP to scan for available updates. When there is a proxy server between the client and the update source, the proxy settings must be configured correctly on the clients to enable them to communicate by using the source's FQDN. <br> Check with your network and proxy teams to confirm that the device can the update source without the proxy requiring user authentication. |


## 0x80244022

| Message | Description | Mitigation |
|---------|-------------|------------|
| WU_E_PT_HTTP_STATUS_SERVICE_UNAVAILABLE; Same as HTTP status 503 - the service is temporarily overloaded. | Unable to connect to the configured update source. | Network troubleshooting needed to resolve the connectivity issue. Check with your network and proxy teams to confirm that the device can the update source without the proxy requiring user authentication. |
