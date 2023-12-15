---
ms.date: 12/15/2023
ms.topic: include
---

### Unpublish Superseded Certificate Templates

The certification authority only issues certificates based on published certificate templates. For security, it's a good practice to unpublish certificate templates that the CA isn't configured to issue, including the pre-published templates from the role installation and any superseded templates.

The newly created *domain controller authentication* certificate template supersedes previous domain controller certificate templates. Therefore, you need to unpublish these certificate templates from all issuing certificate authorities.

Sign in to the CA or management workstation with *Enterprise Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane > **Certificate Templates**
1. Right-click the *Domain Controller* certificate template and select **Delete**. Select **Yes** on the **Disable certificate templates** window
1. Repeat step 3 for the *Domain Controller Authentication* and *Kerberos Authentication* certificate templates
