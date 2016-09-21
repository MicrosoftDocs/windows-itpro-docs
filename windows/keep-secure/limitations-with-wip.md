---
title: Limitations while using Windows Information Protection (WIP) (Windows 10)
description: This section includes info about the common problems you might encounter while using Windows Information Protection (WIP).
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
localizationpriority: high
---

# Limitations while using Windows Information Protection (WIP)
**Applies to:**

-   Windows 10, version 1607
-   Windows 10 Mobile

This table provides info about the most common problems you might encounter while running WIP in your organization.

<table>
    <tr>
        <th>Limitation</th>
        <th>How it appears</th>
        <th>Workaround</th>
    </tr>
    <tr>
        <td>Enterprise data on USB drives is tied to the device it was protected on.</td>
        <td>Data in the new location remains encrypted, but becomes inaccessible on other devices and for other users. For example, the file won't open or the file opens, but doesn't contain readable text.</td>
        <td>Share files with fellow employees through enterprise file servers or enterprise cloud locations. If data must be shared via USB, employees can decrypt protected files, but it will be audited.<p>We strongly recommend educating employees about how to limit or eliminate the need for this decryption.</td>
    </tr>
    <tr>
        <td>Direct Access is incompatible with WIP.</td>
        <td>Direct Access might experience problems with how WIP enforces app behavior and data movement because of how WIP determines what is and isn’t a corporate network resource.</td>
        <td>We recommend that you use VPN for client access to your intranet resources.<p><strong>Note</strong><br>VPN is optional and isn’t required by WIP.</td>
    </tr>
    <tr>
        <td><strong>NetworkIsolation</strong> Group Policy setting is incompatible with WIP.</td>
        <td>The <strong>NetworkIsolation</strong> Group Policy setting has incompatible network settings that can conflict and cause problems with WIP.</td>
        <td>We recommend that you don’t use the NetworkIsolation Group Policy setting.</td>
    </tr>
    <tr>
        <td>Cortana can potentially allow data leakage if it’s on the allowed apps list.</td>
        <td></td>
        <td>Don’t add Cortana to your allowed apps list.</td>
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
            <ol>
                <li>Start the installer directly from the file share.<p>-OR-</li>
                <li>Decrypt the locally copied files needed by the installer.<p>-OR-</li>
                <li>Mark the file share with the installation media as “personal”. To do this, you’ll need to set the Enterprise IP ranges as <strong>Authoritative</strong> and then exclude the IP address of the file server, or you’ll need to put the file server on the Enterprise Proxy Server list.</li>
            </ol></td>
    </tr>
    <tr>
        <td>Changing your primary Corporate Identity isn’t supported.</td>
        <td>You may experience various instabilities, including but not limited to network and file access failures, and potentially granting incorrect access.</td>
        <td>Turn off WIP for all devices before changing the primary Corporate Identity (first entry in the list), restarting, and finally redeploying.</td>
    </tr>
    <tr>
        <td>Redirected folders with Client Side Caching are not compatible with WIP.</td>
        <td>Apps might encounter access errors while attempting to read a cached, offline file.</td>
        <td>Migrate to use another file synchronization method, such as Work Folders or OneDrive for Business.</td>
    </tr>
</table>                 
