---
title: Windows 10 upgrade paths (Windows 10)
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: You can upgrade to Windows 10 from a previous version of Windows if the upgrade path is supported.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: medium
ms.pagetype: mobile
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Windows 10 upgrade paths
**Applies to**

-   Windows 10
-   Windows 10 Mobile

## Upgrade paths

This topic provides a summary of available upgrade paths to Windows 10. You can upgrade to Windows 10 from Windows 7 or a later operating system. This includes upgrading from one release of Windows 10 to later release of Windows 10. Migrating from one edition of Windows 10 to a different edition of the same release is also supported. For more information about migrating to a different edition of Windows 10, see [Windows 10 edition upgrade](windows-10-edition-upgrades.md).

> **Windows 10 version upgrade**: You can directly upgrade a supported version of Windows 10 to a newer version of Windows 10, even if it involves skipping versions. Work with your account representative if your current version of Windows is out of support. See the [Windows lifecycle fact sheet](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet) for availability and service information. 
> 
> **Windows 10 LTSC/LTSB**: Due to [naming changes](https://docs.microsoft.com/windows/deployment/update/waas-overview#naming-changes), product versions that display Windows 10 LTSB will be replaced with Windows 10 LTSC in subsequent feature updates. The term LTSC is used here to refer to all long term servicing versions.
> 
> In-place upgrade from Windows 7, Windows 8.1, or [Windows 10 semi-annual channel](https://docs.microsoft.com/windows/release-information/) to Windows 10 LTSC is not supported.  **Note**: Windows 10 LTSC 2015 did not block this upgrade path.  This was corrected in the Windows 10 LTSC 2016 release, which will now only allow data-only and clean install options. You can upgrade from Windows 10 LTSC to Windows 10 semi-annual channel, provided that you upgrade to the same or a newer build version. For example, Windows 10 Enterprise 2016 LTSB can be upgraded to Windows 10 Enterprise version 1607 or later. Upgrade is supported using the in-place upgrade process (using Windows setup). You will need to use the Product Key switch if you want to keep your apps. If you don't use the switch the option 'Keep personal files and apps' will be grayed out. The command line would be **setup.exe /pkey xxxxx-xxxxx-xxxxx-xxxxx-xxxxx**, using your relevant Windows 10 SAC product key. For example, if using a KMS, the command line would be **setup.exe /pkey NPPR9-FWDCX-D2C8J-H872K-2YT43**.
> 
> **Windows N/KN**: Windows "N" and "KN" SKUs (editions without media-related functionality) follow the same upgrade paths shown below. If the pre-upgrade and post-upgrade editions are not the same type (e.g. Windows 8.1 Pro N to Windows 10 Pro), personal data will be kept but applications and settings will be removed during the upgrade process.
> 
> **Windows 8.0**: You cannot upgrade directly from Windows 8.0 to Windows 10. To upgrade from Windows 8.0, you must first install the [Windows 8.1 update](https://support.microsoft.com/help/15356/windows-8-install-update-kb-2919355).

✔ = Full upgrade is supported including personal data, settings, and applications.<BR>
D = Edition downgrade; personal data is maintained, applications and settings are removed.

<br>
<table border="0" cellpadding="1">
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td></td>
        <td>Windows 10 Home</td>
        <td>Windows 10 Pro</td>
        <td>Windows 10 Pro Education</td>
        <td>Windows 10 Education</td>
        <td>Windows 10 Enterprise</td>
        <td>Windows 10 Mobile</td>
        <td>Windows 10 Mobile Enterprise</td>
    </tr>
    <tr>
        <td rowspan="7" nowrap="nowrap">Windows 7</td>
    </tr>
    <tr>
        <td>Starter</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Home Basic</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Home Premium</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Professional</td>
        <td>D</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Ultimate</td>
        <td>D</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Enterprise</td>
        <td></td>
        <td></td>
        <td></td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td rowspan="10" nowrap="nowrap">Windows 8.1</td>
    </tr>
    <tr>
        <td>(Core)</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Connected</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro</td>
        <td>D</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro Student</td>
        <td>D</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro WMC</td>
        <td>D</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Enterprise</td>
        <td></td>
        <td></td>
        <td></td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Embedded Industry</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Windows RT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Windows Phone 8.1</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>✔</td>
    </tr>
    <tr>
        <td rowspan="8" nowrap="nowrap">Windows 10</td>
    </tr>
    <tr>
        <td>Home</td>
        <td></td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro</td>
        <td>D</td>
        <td></td>
        <td>✔</td>
        <td>✔</td>
        <td>✔</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Education</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>D</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Enterprise</td>
        <td></td>
        <td></td>
        <td></td>
        <td>✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Mobile</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>✔</td>
    </tr>
    <tr>
        <td>Mobile Enterprise</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>D</td>
        <td></td>
    </tr>
</table>


## Related Topics

[Windows 10 deployment scenarios](../windows-10-deployment-scenarios.md)<br>
[Windows upgrade and migration considerations](windows-upgrade-and-migration-considerations.md)<br>
[Windows 10 edition upgrade](windows-10-edition-upgrades.md)





