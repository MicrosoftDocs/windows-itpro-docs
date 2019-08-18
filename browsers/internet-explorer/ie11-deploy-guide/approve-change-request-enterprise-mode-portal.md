---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how Approvers can approve open change requests in the Enterprise Mode Site List Portal.
author: dansimp
ms.prod: ie11
title: Approve a change request using the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: dansimp
---

# Approve a change request using the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

After a change request is successfully submitted to the pre-defined Approver(s), employees granted the role of **App Manager**, **Group Head**, or **Administrator**, they must approve the changes.

## Approve or reject a change request
The Approvers get an email stating that a Requester successfully opened, tested, and submitted the change request to the Approvers group. The Approvers can accept or reject a change request.

**To approve or reject a change request**
1. The Approver logs onto the Enterprise Mode Site List Portal, **All Approvals** page.

   The Approver can also get to the **All Approvals** page by clicking **Approvals Pending** from the left pane.

2. The Approver clicks the expander arrow (**\/**) to the right side of the change request, showing the list of Approvers and the **Approve** and **Reject** buttons.

3. The Approver reviews the change request, making sure it's correct. If the info is correct, the Approver clicks **Approve** to approve the change request. If the info seems incorrect, or if the app shouldn't be added to the site list, the Approver clicks **Reject**.

   An email is sent to the Requester, the Approver(s) group, and the Administrator(s) group, with the updated status of the request.


## Send a reminder to the Approver(s) group
If the change request is sitting in the approval queue for too long, the Requester can send a reminder to the group.

- From the **My Approvals** page, click the checkbox next to the name of each Approver to be reminded, and then click **Send reminder**.

  An email is sent to the selected Approver(s).


## View rejected change requests
The original Requester, the Approver(s) group, and the Administrator(s) group can all view the rejected change request.

**To view the rejected change request**

- In the Enterprise Mode Site List Portal, click **Rejected** from the left pane.

   All rejected change requests appear, with role assignment determining which ones are visible.


## Next steps
After an Approver approves the change request, it must be scheduled for inclusion in the production Enterprise Mode Site List. For the scheduling steps, see the [Schedule approved change requests for production using the Enterprise Mode Site List Portal](schedule-production-change-enterprise-mode-portal.md) topic.
