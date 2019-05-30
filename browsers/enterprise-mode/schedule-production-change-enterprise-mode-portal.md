---
ms.localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how Administrators can schedule approved change requests for production in the Enterprise Mode Site List Portal.
author: eavena
ms.prod: ie11
title: Schedule approved change requests for production using the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---

# Schedule approved change requests for production using the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

After a change request is approved, the original Requester can schedule the change for the production environment. The change can be immediate or set for a future time.

**To schedule an immediate change**
1. The Requester logs onto the Enterprise Mode Site List Portal and clicks **In Progress** from the left pane.

2. The Requester clicks the **Approved** status for the change request.

   The **Schedule changes** page appears.

3. The Requester clicks **Now**, and then clicks **Save**.

   The update is scheduled to immediately update the production environment, and an email is sent to the Requester. After the update finishes, the Requester is asked to verify the changes.


**To schedule the change for a different day or time**
1. The Requester logs onto the Enterprise Mode Site List Portal and clicks **In Progress** from the left pane.

2. The Requester clicks the **Approved** status for the change request.

   The **Schedule changes** page appears.

3. The Requester clicks **Schedule**, sets the **Preferred day**, **Preferred start time**, and the **Preferred end time**, and then clicks **Save**.

   The update is scheduled to update the production environment on that day and time and an email is sent to the Requester. After the update finishes, the Requester will be asked to verify the changes.


## Next steps
After the update to the production environment completes, the Requester must again test the change. If the testing succeeds, the Requester can sign off on the change request. If the testing fails, the Requester can contact the Administrator group for more help. For the production environment testing steps, see the [Verify the change request update in the production environment using the Enterprise Mode Site List Portal](verify-changes-production-enterprise-mode-portal.md) topic.
