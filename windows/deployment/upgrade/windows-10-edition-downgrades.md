---
title: Windows 10 edition downgrade (Windows 10)
description: You can downgrade Windows 10 if the downgrade path is supported.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: high
ms.pagetype: mobile
author: greg-lindsay
ms.date: 06/28/2018
---

# Windows 10 edition downgrade
**Applies to**

-   Windows 10

This topic provides a summary of supported Windows 10 in-place edition downgrade paths. A valid product key for the destination edition is required to perform the downgrade. You might need to downgrade the edition of Windows 10, for example, if an Enterprise license is expired. 

To perform a downgrade, you can use the same methods as when performing an [edition upgrade](windows-10-edition-upgrades.md). If the downgrade path is supported, then your apps and settings can be migrated from the current edition to the downgraded edition. If a path is not supported, then a clean install is required.

Downgrading from any edition of Windows 10 to Windows 7, 8, or 8.1 by entering a different product key is not supported. The only downgrade method available for this path is through the rollback of a previous upgrade.  You also cannot downgrade from a later version to an earlier version of the same edition (Ex: Windows 10 Pro 1709 to 1703) unless the rollback process is used. This topic does not discuss version downgrades.

### Firmware-embedded activation keys

As of October 2017, computers that are supplied by an OEM include a firmware embedded product key that can affect the available downgrade paths. If this key exists, you can display it and the pre-installed OS edition by typing the following commands at an elevated Windows PowerShell prompt:

```
(Get-WmiObject -query ‘select * from SoftwareLicensingService’).OA3xOriginalProductKey
(Get-WmiObject -query ‘select * from SoftwareLicensingService’).OA3xOriginalProductKeyDescription
```

### Scenario example

Downgrading from Enterprise
    - Original edition with firmware-embedded key: **Professional OEM**
    - Upgrade edition: **Enterprise**
    - Valid downgrade paths: **Pro, Pro for Workstations, Pro Education, Education**

You can move directly from Enterprise to any valid destination edition. In this example, downgrading to Pro for Workstations, Pro Education, or Education requires an additional activation key to supercede the firmware-embedded Pro key. In all cases, you must comply with [Microsoft License Terms](https://www.microsoft.com/useterms). If you are a volume license customer, refer to the [Microsoft Volume Licensing Reference Guide](https://www.microsoft.com/en-us/download/details.aspx?id=11091).

### Supported Windows 10 downgrade paths

>[!NOTE]
>Edition changes that are considered upgrades (Ex: Pro to Enterprise, Pro to Pro for Workstations) are not shown here. 
>For more information see [Windows 10 edition upgrade](windows-10-edition-upgrades.md).<br> 

Switching between different editions of Pro might not be possible if the source OS is associated with a [firmware-embedded activation key](#firmware-embedded-activation-keys). An exception is that you can perform an upgrade from Pro to Pro for Workstation on a computer with an embedded Pro key, and then later downgrade this computer back to Pro.

✔ = Supported downgrade path<br>
&nbsp;N&nbsp; = Not supported from OEM pre-installed<br>

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
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro for Workstations</td>
        <td></td>
        <td align="center">N</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro Education</td>
        <td></td>
        <td align="center">N</td>
        <td align="center">N</td>
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

>**Windows 10 LTSC/LTSB**: Due to [naming changes](https://docs.microsoft.com/en-us/windows/deployment/update/waas-overview#naming-changes), product versions that display Windows 10 LTSB will be replaced with Windows 10 LTSC in subsequent feature updates. The term LTSC is used here to refer to all long term servicing versions.

>**Windows N/KN**: Windows "N" and "KN" SKUs follow the same rules shown above.

## Related Topics

[Windows 10 deployment scenarios](../windows-10-deployment-scenarios.md)<br>
[Windows upgrade and migration considerations](windows-upgrade-and-migration-considerations.md)<br>
[Windows 10 edition upgrade](windows-10-edition-upgrades.md)<br>
[Windows 10 upgrade paths](windows-10-upgrade-paths.md)





