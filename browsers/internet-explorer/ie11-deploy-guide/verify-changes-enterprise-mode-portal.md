---
localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to make sure your change request info is accurate within the pre-production environment of the Enterprise Mode Site List Portal.
author: eross-msft
ms.prod: ie11
title: Verify your changes using the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
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

After the Requester successfully submits a change request to the Enterprise Mode Site List Portal, he or she gets an email, including:

- **EMIE_RegKey**. A batch file that when run, sets the registry key to point to the local pre-production Enterprise Mode Site List. 

- **Test steps**. The suggested steps about how to test the change request details to make sure they're accurate in the pre-production environment.

- **EMIE_Reset**. A batch file that when run, reverts the changes made to the pre-production registry.

## Certify your results in the pre-production environment
After the Requester tests the changes, he or she must go back into the Enterprise Mode Site List Portal, **Pre-production verification** screen to certify whether the testing was successful.

**To certify changes and send to approvers**
1. On the **Pre-production verification** screen, the Requester clicks **Successful** and optionally includes any attachments (only .jpeg, .png, .jpg and .txt files are allowed) to support the change request and testing results.

2. The Requester reviews the pre-defined approvers, and then clicks **Send for approval**.

**To rollback your pre-production changes**
1. On the **Pre-production verification** screen, the Requester clicks **Failed** and optionally includes any attachments (only .jpeg, .png, .jpg and .txt files are allowed) to support the change request and testing results.

2. Add a description about the issue into the **Issue description** box, and then click **Send failure details**.

   The change request and issue info are sent to the Administrators.

3. The Requester clicks **Roll back** to roll back the changes in the pre-production environment.

    After the Requester rolls back the changes, he or she can update the requst and re-submit the ticket.

## Next steps
If the change request is certified as successful, the Requester must next send it to the Approvers for approval. For the Approver-related steps, see the [Approve a change request using the Enterprise Mode Site List Portal](approve-change-request-enterprise-mode-portal.md) topic.
