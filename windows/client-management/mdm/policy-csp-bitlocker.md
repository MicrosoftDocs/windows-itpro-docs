---
title: Policy CSP - BitLocker
description: Use the Policy configuration service provider (CSP) - BitLocker to manage encryption of PCs and devices.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - BitLocker



> [!NOTE]
> To manage encryption of PCs and devices, use [BitLocker CSP](./bitlocker-csp.md).

<hr/>

<!--Policies-->
## BitLocker policies

<dl>
  <dd>
    <a href="#bitlocker-encryptionmethod">Bitlocker/EncryptionMethod</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="bitlocker-encryptionmethod"></a>**Bitlocker/EncryptionMethod**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies the BitLocker Drive Encryption method and cipher strength.

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