---
title: Windows 10 downgrade paths (Windows 10)
description: You can downgrade Windows 10 if the downgrade path is supported.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: high
ms.pagetype: mobile
author: greg-lindsay
ms.date: 06/15/2018
---

# Windows 10 downgrade paths
**Applies to**

-   Windows 10

## Downgrading Windows 10

This topic provides a summary of supported Windows 10 downgrade paths. You might need to downgrade the edition of Windows 10, for example, if an Enterprise license is expired. To perform a downgrade, you can use the same methods as when performing an [edition upgrade](windows-10-edition-upgrades.md). For example, you might downgrade an Enterprise edition by manually entering a valid Pro license key.

If a downgrade is supported, then your apps and settings can be migrated from the current edition to the downgraded edition. If a path is not supported, then a clean install is required.

Downgrading from any edition of Windows 10 to Windows 7, 8, or 8.1 by entering a different product key is not supported. The only downgrade method available for this the rollback of a previous upgrade.  You also cannot downgrade from a later version to an earlier version of the same edition (Ex: Windows 10 Pro 1709 to 1703) unless the rollback process is used.

>**Windows 10 LTSC/LTSB**: Due to [naming changes](https://docs.microsoft.com/en-us/windows/deployment/update/waas-overview#naming-changes), product versions that display Windows 10 LTSB will be replaced with Windows 10 LTSC in subsequent feature updates. The term LTSC is used here to refer to all long term servicing versions.

>**Windows N/KN**: Windows "N" and "KN" SKUs follow the same rules shown below.

### Supported Windows 10 downgrade paths

>[!NOTE]
>Edition changes that are considered upgrades (Ex: Pro to Enterprise) are not shown here.<br> 
>Switching between different editions of Pro is also not strictly considered an edition downgrade, but is included here for clarity. 

✔ = Supported downgrade path<br>

<br>
<table border="0" cellpadding="1">
    <tr>
        <td colspan="10" align="center">Destination edition</td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td></td>
        <td>Home</td>
        <td>Pro</td>
        <td>Pro for Workstations</td>
        <td>Pro Education</td>
        <td>Education</td>
        <td>Enterprise LTSC</td>
        <td>Enterprise</td>
    </tr>
    <tr>
        <td rowspan="9" nowrap="nowrap" valign="middle">Starting edition</td>
    </tr>
    <tr>
        <td>Home</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro</td>
        <td></td>
        <td></td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro for Workstations</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro Education</td>
        <td></td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Education</td>
        <td></td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Enterprise LTSC</td>
        <td></td>
        <td align="center"></td>
        <td align="center"></td>
        <td align="center"></td>
        <td align="center"></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Enterprise</td>
        <td></td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td></td>
        <td></td>
    </tr>
</table>


## Related Topics

[Windows 10 deployment scenarios](../windows-10-deployment-scenarios.md)<br>
[Windows upgrade and migration considerations](windows-upgrade-and-migration-considerations.md)<br>
[Windows 10 edition upgrade](windows-10-edition-upgrades.md)<br>
[Windows 10 upgrade paths](windows-10-upgrade-paths.md)





