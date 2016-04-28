---
title: Copy a GPO to Create a New GPO (Windows 10)
description: Copy a GPO to Create a New GPO
ms.assetid: 7f6a23e5-4b3f-40d6-bf6d-7895558b1406
author: brianlic-msft
---

# Copy a GPO to Create a New GPO


To create the GPO for the boundary zone computers, make a copy of the main domain isolation GPO, and then change the settings to request, instead of require, authentication. To make a copy of a GPO, use the Active Directory Users and Computers MMC snap-in.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to create new GPOs.

**To make a copy of a GPO**

1.  On a computer that has the Group Policy Management feature installed, click the **Start** charm, and then click **Group Policy Management** tile.

2.  In the navigation pane, expand **Forest:***YourForestName*, expand **Domains**, expand *YourDomainName*, and then click **Group Policy Objects**.

3.  In the details pane, right-click the GPO you want to copy, and then click **Copy**.

4.  In the navigation pane, right-click **Group Policy Objects** again, and then click **Paste**.

5.  In the **Copy GPO** dialog box, click **Preserve the existing permissions**, and then click **OK**. Selecting this option preserves any exception groups to which you denied Read and Apply GPO permissions, making the change simpler.

6.  After the copy is complete, click **OK**. The new GPO is named **Copy of** *original GPO name*.

7.  To rename it, right-click the GPO, and then click **Rename**.

8.  Type the new name, and then press ENTER.

9.  You must change the security filters to apply the policy to the correct group of computers. To do this, click the **Scope** tab, and in the **Security Filtering** section, select the group that grants permissions to all members of the isolated domain, for example **CG\_DOMISO\_IsolatedDomain**, and then click **Remove**.

10. In the confirmation dialog box, click **OK**.

11. Click **Add**.

12. Type the name of the group that contains members of the boundary zone, for example **CG\_DOMISO\_Boundary**, and then click **OK**.

13. If required, change the WMI filter to one appropriate for the new GPO. For example, if the original GPO is for client computers running Windows 8, and the new boundary zone GPO is for computers running Windows Server 2012, then select a WMI filter that allows only those computers to read and apply the GPO.

If you arrived at this page by clicking a link in a checklist, use your browser’s **Back** button to return to the checklist.

 

 





