---
title: Manage access to private store (Windows 10)
description: You can manage access to your private store in Windows Store for Business.
MSHAttr: PreferredLib /library
ms.assetid: 4E00109C-2782-474D-98C0-02A05BE613A5
author: jdeckerMS
---

# Manage access to private store


**Applies to**

-   Windows 10
-   Windows 10 Mobile

You can manage access to your private store in Windows Store for Business.

Organizations might want control the set of apps that are available to their employees, and not show the full set of applications that are in the Windows Store. Using the private store with the Store for Business, an administrator can curate the set of apps that are available to their employees.

The private store is a feature in Store for Business that organizations receive during the sign up process. When admins add apps to the private store, all employees in the organization can view and download the apps. Your private store is available as a tab in the Windows Store, and is usually named for your company or organization. Only apps with online licenses can be added to the private store. Your private store looks something like this:

![](images/wsfb-wsappprivatestore.png)

Organizations using an MDM to manage apps can use a policy to show only the private store. When your MDM supports the Store for Business, the MDM can use the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx#group-policy-table). More specifically, the **ApplicationManagement/RequirePrivateStoreOnly** policy.

You can also prevent employees from using the Windows Store. For more information, see [Configure access to Windows Store](stop-employees-from-using-the-windows-store.md).

## Related topics


[Distribute apps using your private store](distribute-apps-from-your-private-store.md)

[Configure access to Windows Store](stop-employees-from-using-the-windows-store.md)

 

 





