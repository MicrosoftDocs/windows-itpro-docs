---
title: Configure Group Policy to Autoenroll and Deploy Certificates (Windows)
description: Learn how to configure Group Policy to automatically enroll client computer certificates and deploy them to the workstations on your network.
ms.assetid: faeb62b5-2cc3-42f7-bee5-53ba45d05c09
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/07/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Configure Group Policy to Autoenroll and Deploy Certificates


You can use this procedure to configure Group Policy to automatically enroll client computer certificates and deploy them to the workstations on your network. Follow this procedure for each GPO that contains IPsec connection security rules that require this certificate.

**Administrative credentials**

To complete these procedures, you must be a member of both the Domain Admins group in the root domain of your forest and a member of the Enterprise Admins group.

**To configure Group Policy to autoenroll certificates**

1.  Open the Group Policy Management console.

2.  In the navigation pane, expand **Forest:** *YourForestName*, expand **Domains**, expand *YourDomainName*, expand **Group Policy Objects**, right-click the GPO you want to modify, and then click **Edit**.

3.  In the navigation pane, expand the following path: **Computer Configuration**, **Policies**, **Windows Settings**, **Security Settings**, **Public Key Policies**.

4.  Double-click **Certificate Services Client - Auto-Enrollment**.

5.  In the **Properties** dialog box, change **Configuration Model** to **Enabled**.

6.  Select both **Renew expired certificates, update pending certificates, and remove revoked certificates** and **Update certificates that use certificate templates**.

7.  Click **OK** to save your changes. Computers apply the GPO and download the certificate the next time Group Policy is refreshed.
