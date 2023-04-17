---
title: Configure Group Policy to Autoenroll and Deploy Certificates (Windows)
description: Learn how to configure Group Policy to automatically enroll client computer certificates and deploy them to the workstations on your network.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
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
