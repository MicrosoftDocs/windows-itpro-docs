---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to make sure your change request info is accurate within the pre-production environment of the Enterprise Mode Site List Portal.
author: lomayor
ms.prod: ie11
title: Verify your changes using the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---

# Verify your changes using the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

>[!Important]
>This step requires that each Requester have access to a test machine with Administrator rights, letting him or her get to the pre-production environment to make sure that the requested change is correct. 

The Requester successfully submits a change request to the Enterprise Mode Site List Portal and then gets an email, including:

- **EMIE_RegKey**. A batch file that when run, sets the registry key to point to the local pre-production Enterprise Mode Site List. 

- **Test steps**. The suggested steps about how to test the change request details to make sure they're accurate in the pre-production environment.

- **EMIE_Reset**. A batch file that when run, reverts the changes made to the pre-production registry.

## Verify and send the change request to Approvers
The Requester tests the changes and then goes back into the Enterprise Mode Site List Portal, **Pre-production verification** page to verify whether the testing was successful.

**To verify changes and send to the Approver(s)**
1. On the **Pre-production verification** page, the Requester clicks **Successful** and optionally includes any attachments (only .jpeg, .png, .jpg and .txt files are allowed) to support the change request and testing results.

2. The Requester reviews the pre-defined Approver(s), and then clicks **Send for approval**.

   The Requester, the Approver group, and the Administrator group all get an email, stating that the change request is waiting for approval.


**To rollback your pre-production changes**
1. On the **Pre-production verification** page, the Requester clicks **Failed** and optionally includes any attachments (only .jpeg, .png, .jpg and .txt files are allowed) to support the change request and testing results.

2. Add a description about the issue into the **Issue description** box, and then click **Send failure details**.

   The change request and issue info are sent to the Administrators.

3. The Requester clicks **Roll back** to roll back the changes in the pre-production environment.

    After the Requester rolls back the changes, the request can be updated and re-submitted.


## View rolled back change requests
The original Requester and the Administrator(s) group can view the rolled back change requests.

**To view the rolled back change request**

- In the Enterprise Mode Site List Portal, click **Rolled back** from the left pane.

   All rolled back change requests appear, with role assignment determining which ones are visible.

## Next steps
If the change request is certified as successful, the Requester must next send it to the Approvers for approval. For the Approver-related steps, see the [Approve a change request using the Enterprise Mode Site List Portal](approve-change-request-enterprise-mode-portal.md) topic.
