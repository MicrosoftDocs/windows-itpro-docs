---
title: Policy CSP - Bitlocker
description: Use the Policy configuration service provider (CSP) - Bitlocker to manage encryption of PCs and devices.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Bitlocker



> [!NOTE]
> To manage encryption of PCs and devices, use [BitLocker CSP](./bitlocker-csp.md).

<hr/>

<!--Policies-->
## Bitlocker policies  

<dl>
  <dd>
    <a href="#bitlocker-encryptionmethod">Bitlocker/EncryptionMethod</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="bitlocker-encryptionmethod"></a>**Bitlocker/EncryptionMethod**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the BitLocker Drive Encryption method and cipher strength.

> [!NOTE]
> XTS-AES 128-bit and XTS-AES 256-bit values are supported only on Windows 10 for desktop.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   3 - AES-CBC 128-bit
-   4 - AES-CBC 256-bit
-   6 - XTS-AES 128-bit (Desktop only)
-   7 - XTS-AES 256-bit (Desktop only)

<!--/SupportedValues-->
<!--/Policy-->
<hr/>



<!--/Policies-->