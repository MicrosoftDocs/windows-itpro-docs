---
title: Copy a GPO to Create a New GPO (Windows)
description: Learn how to make a copy of a GPO by using the Active Directory Users and devices MMC snap-in to create a GPO for boundary zone devices.
ms.assetid: 7f6a23e5-4b3f-40d6-bf6d-7895558b1406
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

# Copy a GPO to Create a New GPO


To create the GPO for the boundary zone devices, make a copy of the main domain isolation GPO, and then change the settings to request, instead of require, authentication. To make a copy of a GPO, use the Active Directory Users and devices MMC snap-in.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to create new GPOs.

**To make a copy of a GPO**

1. Open the Group Policy Management console.

2. In the navigation pane, expand **Forest:**<em>YourForestName</em>, expand **Domains**, expand *YourDomainName*, and then click **Group Policy Objects**.

3. In the details pane, right-click the GPO you want to copy, and then click **Copy**.

4. In the navigation pane, right-click **Group Policy Objects** again, and then click **Paste**.

5. In the **Copy GPO** dialog box, click **Preserve the existing permissions**, and then click **OK**. Selecting this option preserves any exception groups to which you denied Read and Apply GPO permissions, making the change simpler.

6. After the copy is complete, click **OK**. The new GPO is named **Copy of** *original GPO name*.

7. To rename it, right-click the GPO, and then click **Rename**.

8. Type the new name, and then press ENTER.

9. You must change the security filters to apply the policy to the correct group of devices. To change the security filters, click the **Scope** tab, and in the **Security Filtering** section, select the group that grants permissions to all members of the isolated domain, for example **CG\_DOMISO\_IsolatedDomain**, and then click **Remove**.

10. In the confirmation dialog box, click **OK**.

11. Click **Add**.

12. Type the name of the group that contains members of the boundary zone, for example **CG\_DOMISO\_Boundary**, and then click **OK**.

13. If necessary, change the WMI filter to one appropriate for the new GPO. For example, if the original GPO is for client devices running Windows 10 or Windows 11, and the new boundary zone GPO is for devices running Windows Server 2016, then select a WMI filter that allows only those devices to read and apply the GPO.
