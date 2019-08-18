---
title: Restoring Application and Windows Settings Synchronized with UE-V 1.0
description: Restoring Application and Windows Settings Synchronized with UE-V 1.0
author: levinec
ms.assetid: 254a16b1-f186-44a4-8e22-49a4ee87c734
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Restoring Application and Windows Settings Synchronized with UE-V 1.0


WMI and PowerShell features of Microsoft User Experience Virtualization (UE-V) provide the ability to restore settings packages. WMI and PowerShell commands allow you to restore application and Windows settings to the settings values that were on the computer the first time the application launched after the UE-V Agent was installed. This restoring action is performed on a per-application or Windows settings basis. The settings are restored the next time that the application is run or when the user logs on to the operating system.

**To restore application settings and Windows settings with PowerShell**

1.  Open the Windows PowerShell window. To import the Microsoft UE-V PowerShell module, enter the following command:

    ``` syntax
    Import-module UEV
    ```

2.  Enter the following PowerShell cmdlet to restore the application settings and Windows settings.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>PowerShell cmdlet</strong></th>
    <th align="left"><strong>Description</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Restore-UevUserSetting</p></td>
    <td align="left"><p>Restores the user settings for an application or restores a group of Windows settings</p></td>
    </tr>
    </tbody>
    </table>

     

**To restore application settings and Windows settings with WMI**

1.  Open a PowerShell window.

2.  Enter the following WMI command to restore application settings and Windows settings.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>WMI command</strong></th>
    <th align="left"><strong>Description</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class UserSettings -Name RestoreByTemplateId -ArgumentList &lt;template_ID&gt;</p></td>
    <td align="left"><p>Restores the user settings for an application or restores a group of Windows settings</p></td>
    </tr>
    </tbody>
    </table>

     

## Related topics


[Administering UE-V 1.0](administering-ue-v-10.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





