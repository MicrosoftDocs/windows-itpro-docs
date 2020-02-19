---
title: Understanding the BitLocker Encryption Options and BitLocker Drive Encryption Items in Control Panel
description: Understanding the BitLocker Encryption Options and BitLocker Drive Encryption Items in Control Panel
author: dansimp
ms.assetid: f8a01cc2-0c77-48b9-8351-8194e80b0cf8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Understanding the BitLocker Encryption Options and BitLocker Drive Encryption Items in Control Panel


This topic describes the **BitLocker Encryption Options** and **BitLocker Drive Encryption** Control Panel items and explains the following:

-   How these items are created

-   Tasks they enable you to perform

-   **Manage BitLocker** “right-click” shortcut menu, when it is visible versus hidden, and how to set it to be visible by default

## BitLocker Encryption Options and BitLocker Drive Encryption Control Panel items


The following table lists the tasks you can perform from each Control Panel item and describes how these items are created.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">BitLocker Encryption Options (MBAM)</th>
<th align="left">BitLocker Drive Encryption (Windows)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Tasks you can do</p></td>
<td align="left"><ul>
<li><p>Change your PIN or password</p></li>
<li><p>Check encryption status for a drive</p></li>
<li><p>Open the TPM Management console</p></li>
<li><p>Turn on BitLocker</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Suspend protection for a drive</p></li>
<li><p>Back up your recovery key</p></li>
<li><p>Change your PIN</p></li>
<li><p>Turn off BitLocker for a drive</p></li>
<li><p>Turn on BitLocker for a drive</p></li>
<li><p>Open the TPM Management console</p></li>
<li><p>Decrypt a drive (appears only if the MBAM Client is NOT installed)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>How the Control Panel item is created</p></td>
<td align="left"><p>Created in Control Panel when you install the MBAM Client. This item cannot be hidden.</p>
<div class="alert">
<strong>Note</strong><br/><p>This item appears in addition to, but does not replace, the default BitLocker Drive Encryption Control Panel item.</p>
</div>
<div>

</div></td>
<td align="left"><p>Appears by default in Control Panel as part of the Windows operating system, but you can hide it.</p>
<p>To hide it, see <a href="hiding-the-default-bitlocker-drive-encryption-item-in-control-panel-mbam-25.md" data-raw-source="[Hiding the Default BitLocker Drive Encryption Item in Control Panel](hiding-the-default-bitlocker-drive-encryption-item-in-control-panel-mbam-25.md)">Hiding the Default BitLocker Drive Encryption Item in Control Panel</a>.</p></td>
</tr>
</tbody>
</table>



## <a href="" id="-manage-bitlocker--shortcut-menu"></a>“Manage BitLocker” shortcut menu


The following table describes how the **Manage BitLocker** shortcut menu differs depending on whether the MBAM Client is installed. The term “shortcut menu” refers to options that appear when you right-click a drive in Windows Explorer.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">When MBAM Client is installed</th>
<th align="left">When MBAM Client is not installed</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Visibility of shortcut menu</p></td>
<td align="left"><p>The Manage BitLocker option is hidden.</p>
<p>To make the Manage BitLocker option visible on the shortcut menu, which displays the option to decrypt a drive, delete the following registry key:</p>
<pre class="syntax" space="preserve"><code>HKEY_CLASSES_ROOT\Drive\Shell\manage-bde \REG_SZ LegacyDisable</code></pre></td>
<td align="left"><p>The Manage BitLocker option appears on the shortcut menu.</p></td>
</tr>
<tr class="even">
<td align="left"><p>What users can do</p></td>
<td align="left"><p>With the shortcut hidden, users can open the BitLocker Drive Encryption Control Panel item, but the option to decrypt a drive is not available.</p></td>
<td align="left"><p>With the shortcut visible, selecting the <strong>Manage BitLocker</strong> option opens the BitLocker Drive Encryption Control Panel item, which displays the option to decrypt a drive.</p></td>
</tr>
</tbody>
</table>




## Related topics


[Administering MBAM 2.5 Features](administering-mbam-25-features.md)



## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





