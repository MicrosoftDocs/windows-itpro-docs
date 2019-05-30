---
title: Limitations while using Windows Information Protection (WIP) (Windows 10)
description: This section includes info about the common problems you might encounter while using Windows Information Protection (WIP).
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: justinha
ms.author: justinha
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/05/2019
ms.localizationpriority: medium
---

# Limitations while using Windows Information Protection (WIP)

**Applies to:**
-   Windows 10, version 1607 and later
-   Windows 10 Mobile, version 1607 and later

This table provides info about the most common problems you might encounter while running WIP in your organization.

<table>
    <tr>
        <th>Limitation</th>
        <th>How it appears</th>
        <th>Workaround</th>
    </tr>
    <tr>
        <td>Your enterprise data on USB drives might be tied to the device it was protected on, based on your Azure RMS configuration.</td>
        <td><strong>If you’re using Azure RMS:</strong> Authenticated users can open enterprise data on USB drives, on computers running Windows 10, version 1703.<br><br><strong>If you’re not using Azure RMS:</strong> Data in the new location remains encrypted, but becomes inaccessible on other devices and for other users. For example, the file won't open or the file opens, but doesn't contain readable text.</td>
        <td>Share files with fellow employees through enterprise file servers or enterprise cloud locations. If data must be shared via USB, employees can decrypt protected files, but it will be audited.<br><br>We strongly recommend educating employees about how to limit or eliminate the need for this decryption.</td>
    </tr>
    <tr>
        <td>Direct Access is incompatible with WIP.</td>
        <td>Direct Access might experience problems with how WIP enforces app behavior and data movement because of how WIP determines what is and isn’t a corporate network resource.</td>
        <td>We recommend that you use VPN for client access to your intranet resources.<br><br><strong>Note</strong><br>VPN is optional and isn’t required by WIP.</td>
    </tr>
    <tr>
        <td><strong>NetworkIsolation</strong> Group Policy setting takes precedence over MDM Policy settings.</td>
        <td>The <strong>NetworkIsolation</strong> Group Policy setting can configure network settings that can also be configured by using MDM. WIP relies on these policies being correctly configured.</td>
        <td>If you use both Group Policy and MDM to configure your <strong>NetworkIsolation</strong> settings, you must make sure that those same settings are deployed to your organization using both Group Policy and MDM.</td>
    </tr>
    <tr>
        <td>Cortana can potentially allow data leakage if it’s on the allowed apps list.</td>
        <td>If Cortana is on the allowed list, some files might become unexpectedly encrypted after an employee performs a search using Cortana. Your employees will still be able to use Cortana to search and provide results on enterprise documents and locations, but results might be sent to Microsoft.</td>
        <td>We don’t recommend adding Cortana to your allowed apps list. However, if you wish to use Cortana and don't mind whether the results potentially go to Microsoft, you can make Cortana an Exempt app.</td>
    </tr>
    <tr>
        <td>WIP is designed for use by a single user per device.</td>
        <td>A secondary user on a device might experience app compat issues when unenlightened apps start to automatically encrypt for all users. Additionally, only the initial, enrolled user’s content can be revoked during the unenrollment process.</td>
        <td>We recommend only having one user per managed device.</td>
    </tr>
    <tr>
        <td>Installers copied from an enterprise network file share might not work properly.</td>
        <td>An app might fail to properly install because it can’t read a necessary configuration or data file, such as a .cab or .xml file needed for installation, which was protected by the copy action.</td>
        <td>To fix this, you can:
            <ul>
                <li>Start the installer directly from the file share.<br><br>-OR-<br><br></li>
                <li>Decrypt the locally copied files needed by the installer.<br><br>-OR-<br><br></li>
                <li>Mark the file share with the installation media as “personal”. To do this, you’ll need to set the Enterprise IP ranges as <strong>Authoritative</strong> and then exclude the IP address of the file server, or you’ll need to put the file server on the Enterprise Proxy Server list.</li>
            </ul></td>
    </tr>
    <tr>
        <td>Changing your primary Corporate Identity isn’t supported.</td>
        <td>You might experience various instabilities, including but not limited to network and file access failures, and potentially granting incorrect access.</td>
        <td>Turn off WIP for all devices before changing the primary Corporate Identity (first entry in the list), restarting, and finally redeploying.</td>
    </tr>
    <tr>
        <td>Redirected folders with Client Side Caching are not compatible with WIP.</td>
        <td>Apps might encounter access errors while attempting to read a cached, offline file.</td>
        <td>Migrate to use another file synchronization method, such as Work Folders or OneDrive for Business.<br><br><strong>Note</strong><br>For more info about Work Folders and Offline Files, see the blog, [Work Folders and Offline Files support for Windows Information Protection](https://blogs.technet.microsoft.com/filecab/2016/08/29/work-folders-and-offline-files-support-for-windows-information-protection/). If you're having trouble opening files offline while using Offline Files and WIP, see the support article, [Can't open files offline when you use Offline Files and Windows Information Protection](https://support.microsoft.com/kb/3187045).</td>
    </tr>
    <tr>
        <td>An unmanaged device can use Remote Desktop Protocol (RDP) to connect to a WIP-managed device.</td>
        <td><p>Data copied from the WIP-managed device is marked as <strong>Work</strong>.<p>Data copied to the WIP-managed device is not marked as <strong>Work</strong>.<p>Local <strong>Work</strong> data copied to the WIP-managed device remains <strong>Work</strong> data.<p><strong>Work</strong> data that is copied between two apps in the same session remains </strong> data.</td>
        <td>Disable RDP to prevent access because there is no way to restrict access to only devices managed by WIP. RDP is disabled by default.</td>
    </tr>
    <tr>
        <td>You can't upload an enterprise file to a personal location using Microsoft Edge or Internet Explorer.</td>
        <td>A message appears stating that the content is marked as <strong>Work</strong> and the user isn't given an option to override to <strong>Personal</strong>.</td>
        <td>Open File Explorer and change the file ownership to <strong>Personal</strong> before you upload.</td>
    </tr>
    <tr>
        <td>ActiveX controls should be used with caution.</td>
        <td>Webpages that use ActiveX controls can potentially communicate with other outside processes that aren’t protected by using WIP.</td>
        <td>We recommend that you switch to using Microsoft Edge, the more secure and safer browser that prevents the use of ActiveX controls. We also recommend that you limit the usage of Internet Explorer 11 to only those line-of-business apps that require legacy technology.<br><br>For more info, see [Out-of-date ActiveX control blocking](https://technet.microsoft.com/itpro/internet-explorer/ie11-deploy-guide/out-of-date-activex-control-blocking).</td>
    </tr>
    <tr>
         <td>Resilient File System (ReFS) isn't currently supported with WIP.</td>
        <td>Trying to save or transfer WIP files to ReFS will fail.</td>
        <td>Format drive for NTFS, or use a different drive.</td>
    </tr>
    <tr>
        <td>WIP isn’t turned on if any of the following folders have the <strong>MakeFolderAvailableOfflineDisabled</strong> option set to <strong>False</strong>:
            <ul>
                <li>AppDataRoaming</li>
                <li>Desktop</li>
                <li>StartMenu</li>
                <li>Documents</li>
                <li>Pictures</li>
                <li>Music</li>
                <li>Videos</li>
                <li>Favorites</li>
                <li>Contacts</li>
                <li>Downloads</li>
                <li>Links</li>
                <li>Searches</li>
                <li>SavedGames</li>
            </ul>
        </td>
        <td>WIP isn’t turned on for employees in your organization. Error code 0x807c0008 will result if WIP is deployed by using System Center Configuration Manager.</td>
        <td>Don’t set the <strong>MakeFolderAvailableOfflineDisabled</strong> option to <strong>False</strong> for any of the specified folders.<br><br>If you currently use redirected folders, we recommend that you migrate to a file synchronization solution that supports WIP, such as Work Folders or OneDrive for Business. Additionally, if you apply redirected folders after WIP is already in place, you might be unable to open your files offline. For more info about these potential access errors, see [Can't open files offline when you use Offline Files and Windows Information Protection](https://support.microsoft.com/help/3187045/can-t-open-files-offline-when-you-use-offline-files-and-windows-information-protection).
        </td>
    </tr>
    <tr>
        <td>Only enlightened apps can be managed without device enrollment
        </td>
        <td>If a user enrolls a device for Mobile Application Management (MAM) without device enrollment, only enlightened apps will be managed. This is by design to prevent personal files from being unintenionally encrypted by unenlighted apps. Unenlighted apps that need to access work using MAM need to be re-compiled as LOB apps or managed by using MDM with device enrollment.</td>
        <td>If all apps need to be managed, enroll the device for MDM.
        </td>
    </tr>
    <tr>
        <td>By design, files in the Windows directory (%windir% or C:/Windows) cannot be encrypted because they need to be accessed by any user. If a file in the Windows directory gets encypted by one user, other users can't access it.  
        </td>
        <td>Any attempt to encrypt a file in the Windows directory will return a file access denied error. But if you copy or drag and drop an encrypted file to the Windows directory, it will retain encryption to honor the intent of the owner. 
        </td>
        <td>If you need to save an encrypted file in the Windows directory, create and encrypt the file in a different directory and copy it.
        </td>
    </tr>
</table>

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to our content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).       

