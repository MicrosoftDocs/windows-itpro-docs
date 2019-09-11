---
title: Best Practices for Version Control
description: Best Practices for Version Control
author: dansimp
ms.assetid: 4a2a1ac7-67f3-4ba3-ab07-860d33da0efe
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Best Practices for Version Control


Microsoft Advanced Group Policy Management (AGPM) provides version control for Group Policy Objects (GPOs) much like Microsoft Visual SourceSafe® provides version control for source code. Developers can use Visual SourceSafe to manage multiple versions of each source file. Group Policy administrators can use AGPM to do the same for GPOs. When you use AGPM, Group Policy administrators should be aware of best practices that apply to any version control system:

-   **Date and time:** AGPM stamps each version of a GPO with the date and time. To ensure that history is accurate, especially when you edit GPOs on more than one computer, make sure that each computer synchronizes its clock with one authoritative time source.

-   **Check in GPOs when you are finished editing them:** It is common for Editors to check out GPOs and forget to check them back into the archive. However, this can prevent other Group Policy administrators from changing the GPO. Always check GPOs back in to AGPM immediately when you are finished editing.

-   **Save changes frequently:** When you edit a GPO, save changes frequently. Most Editors check out a GPO, make many changes, and then check the GPO into the archive. Instead, check the GPO into the archive regularly, and then check it out again. The detail can be as small as checking in the GPO after you change every setting (not recommended) or checking in the GPO after you make groups of related changes. The result is a better-documented history for each GPO that can help when troubleshooting issues.

-   **Deploy GPOs frequently:** Do not let new and edited GPOs that have not yet been deployed accumulate in large numbers in the archive. Instead, deploy new and edited GPOs as soon as possible so that they have a minimum effect on the production environment. Deploying many new and edited GPOs at one time can jeopardize the production environment.

-   **Document the purpose of changes when you check in GPOs:** Any Reviewer can compare versions of a GPO to see specific changes between the two. Documenting those specific changes adds no value. Instead, document the intent and purpose of a change instead of documenting what Reviewers can see by viewing difference reports. Version comments should add value to the comparison report and help a Reviewer understand why the Editor changed the GPO.

-   **Test GPOs in a test environment:** Deploying GPOs to the production environment without testing them is risky. Instead, test your GPOs in a domain in a test forest, and then export the GPOs to files and import them to a domain in a production forest. Also, you can link GPOs to an organizational unit that contains test computers and users. Verify that each GPO functions correctly in the test environment and then deploy the GPOs to the production environment.

### Additional references

-   [Advanced Group Policy Management 4.0](advanced-group-policy-management-40.md)

 

 





