---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---


# ClientCertificateInstall CSP


The ClientCertificateInstall configuration service provider enables the enterprise to install client certificates.

For PFX certificate installation and SCEP installation, the SyncML commands must be wrapped in atomic commands to ensure enrollment execution is not triggered until all settings are configured. The Enroll command must be the last item in the atomic block.

> **Note**  
Currently in Windows 10, version 1511, when using the ClientCertificateInstall to install certificates to the device store and the user store and both certificates are sent to the device in the same MDM payload, the certificate intended for the device store will also get installed in the user store. This may cause issues with Wi-Fi or VPN when choosing the correct certificate to establish a connection. We are working to fix this issue.

You can only set PFXKeyExportable to true if KeyLocation=3. For any other KeyLocation value, the CSP will fail.


The following image shows the ClientCertificateInstall configuration service provider in tree format.

![clientcertificateinstall csp](images/provisioning-csp-clientcertificateinstall.png)

<a href="" id="device-or-user"></a>**Device or User**  
<p style="margin-left: 20px">For device certificates, use **./Device/Vendor/MSFT** path and for user certificates use **./User/Vendor/MSFT** path.

<a href="" id="clientcertificateinstall"></a>**ClientCertificateInstall**  
<p style="margin-left: 20px">The root node for the ClientCertificateInstaller configuration service provider.

<a href="" id="clientcertificateinstall-pfxcertinstall"></a>**ClientCertificateInstall/PFXCertInstall**  
<p style="margin-left: 20px">Required for PFX certificate installation. The parent node grouping the PFX certificate related settings.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="clientcertificateinstall-pfxcertinstall-uniqueid"></a>**ClientCertificateInstall/PFXCertInstall/****_UniqueID_**  
<p style="margin-left: 20px">Required for PFX certificate installation. A unique ID to differentiate different certificate install requests.

<p style="margin-left: 20px">The data type format is node.

<p style="margin-left: 20px">Supported operations are Get, Add, and Delete .

<p style="margin-left: 20px">Calling Delete on this node should delete the certificates and the keys that were installed by the corresponding PFX blob.

<a href="" id="clientcertificateinstall-pfxcertinstall-uniqueid-keylocation"></a>**ClientCertificateInstall/PFXCertInstall/*UniqueID*/KeyLocation**  
<p style="margin-left: 20px">Required for PFX certificate installation. Indicates the KeyStorage provider to target the private key installation to.

<p style="margin-left: 20px">Supported operations are Get, Add, and Replace.

<p style="margin-left: 20px">The data type is an integer corresponding to one of the following values:

| Value | Description                                                                                                   |
|---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
-|---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
---
title: ClientCertificateInstall CSP
description: ClientCertificateInstall CSP
ms.assetid: B624EB73-2972-47F2-9D7E-826D641BF8A7
ms.author: maricia
ms.date: 05/02/2017
ms.topic: article
ms.prod: w10
ms.technology: windows
author: "Nick Brower"
---
|
| 1     | Finished successfully                                                                             |
| 2     | Pending (the device hasn’t finished the action but has received the SCEP server pending response) |
| 16    | Action failed                                                                                     |
| 32    | Unknown                                                                                           |

 
<a href="" id="clientcertificateinstall-scep-uniqueid-errorcode"></a>**ClientCertificateInstall/SCEP/*UniqueID*/ErrorCode**  
<p style="margin-left: 20px">Optional. An integer value that indicates the HRESULT of the last enrollment error code.

<p style="margin-left: 20px">The only supported operation is Get.

<a href="" id="clientcertificateinstall-scep-uniqueid-respondentserverurl"></a>**ClientCertificateInstall/SCEP/*UniqueID*/RespondentServerUrl**  
<p style="margin-left: 20px">Required. Returns the URL of the SCEP server that responded to the enrollment request.

<p style="margin-left: 20px">Data type is string.

<p style="margin-left: 20px">The only supported operation is Get.

## Example


Enroll a client certificate through SCEP.

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Atomic>
        <Add>
            <CmdID>301</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere></LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">node</Format>
                </Meta>
            </Item>
        </Add>
        <Add>
            <CmdID>302</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/RetryCount</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>303</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/RetryDelay</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>304</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/KeyUsage</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>160</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>305</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/KeyLength</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1024</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>306</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/HashAlgorithm</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>SHA-1</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>307</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/SubjectName</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>CN=ContosoCSP</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>308</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/SubjectAlternativeNames</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data></Data>
            </Item>
        </Add>
        <Add>
            <CmdID>309</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/ValidPeriod</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>Years</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>310</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/ValidPeriodUnits</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>311</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/EKUMapping</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>1.3.6.1.4.1.311.10.3.12+1.3.6.1.4.1.311.10.3.4+1.3.6.1.4.1.311.20.2.2+1.3.6.1.5.5.7.3.2</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>312</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/KeyProtection</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>3</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>313$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/ServerURL</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>http://constoso.com/certsrv/mscep/mscep.dll</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>314</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/Challenge</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>1234CB055B7EBF384A9486A22B7559A5</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>315</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/CAThumbprint</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>12345087E648875D1DF5D9F9FF89DD10</Data>
            </Item>
        </Add>
        <Exec>
            <CmdID>316</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/ClientCertificateInstall/SCEP/<InsertUniqueIDHere>/Install/Enroll</LocURI>
                </Target>
            </Item>
        </Exec>
        </Atomic>  
        <Final/>
    </SyncBody>
</SyncML>
```

Add a PFX certificate. The PFX certificate password is encrypted with a custom certificate fro "My" store.

``` syntax
<SyncML>
    <SyncBody>
            <Delete>
                <CmdID>$CmdID$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C</LocURI>
                    </Target>
                </Item>
            </Delete>
        <Atomic>
            <CmdID>$CmdID$</CmdID>
            <Add>
                <CmdID>$CmdID$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/KeyLocation</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>2</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>$CmdID$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertBlob</LocURI>
                    </Target>
                     <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>Base64_Encode_Cert_Blob</Data>
                </Item>
            </Add>
            <Add>
                <CmdID>$CmdID$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertPassword</LocURI>
                    </Target>
                     <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>Base64Encoded_Encrypted_Password_Blog</Data>
                </Item>
            </Add>   
            <Add>
                <CmdID>$CmdID$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertPasswordEncryptionType</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">int</Format>
                    </Meta>
                    <Data>2</Data>
                </Item>
            </Add>     
            <Add>
                <CmdID>$CmdID$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXCertPasswordEncryptionStore</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>My</Data>
                </Item>
            </Add>     

            <Add>
                <CmdID>$CmdID$</CmdID>
                <Item>
                    <Target>
                        <LocURI>./User/Vendor/MSFT/ClientCertificateInstall/PFXCertInstall/813A171D7341E1DA90D4A01878DD5328D351900C/PFXKeyExportable</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">bool</Format>
                    </Meta>
                    <Data>true</Data>
                </Item>
            </Add>
        </Atomic>
    <Final/>
    </SyncBody>
</SyncML>
```

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






