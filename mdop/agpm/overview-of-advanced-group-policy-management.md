---
title: Overview of Advanced Group Policy Management
description: Overview of Advanced Group Policy Management
author: dansimp
ms.assetid: 028de9dd-848b-42bc-a982-65ba5c433772
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Overview of Advanced Group Policy Management


You can use Advanced Group Policy Management (AGPM) to extend the capabilities of the Group Policy Management Console (GPMC), providing comprehensive change control and enhanced management for Group Policy objects (GPOs).

## Group Policy object development with change control


With AGPM, you can store a copy of each GPO in a central archive, so Group Policy administrators can view and modify it offline without immediately impacting the deployed version of the GPO. Additionally, AGPM stores a copy of each version of each controlled GPO in the archive so that you can roll back to an earlier version if needed.

The terms "check in" and "check out" are used in much the same way as in a library (or in applications that provide change control, version control, or source code control for programming development). To use a book that is in a library, you check it out from the library. No one else can use it while you have it checked out. When you are finished with the book, you check it back into the library, so others can use it.

When developing GPOs using AGPM:

1.  Create a new controlled GPO or control a previously uncontrolled GPO.

2.  Check out the GPO, so you and only you can modify it.

3.  Edit the GPO.

4.  Check in the edited GPO, so others can modify it, or so it can be deployed.

5.  Review the changes.

6.  Deploy the GPO to the production environment.

## Role-based delegation


AGPM provides comprehensive, easy-to-use role-based delegation. Domain-level permissions allow AGPM Administrators to provide access to individual domains without providing access to other domains. GPO-based delegation enables AGPM Administrators to allow access only to specific GPOs.

Within AGPM, there are specifically defined roles: AGPM Administrator (Full Control), Approver, Editor, and Reviewer. The AGPM Administrator role includes the permissions for all other roles. By default, only Approvers have the power to deploy GPOs to the production environment, protecting the environment from inadvertent mistakes by less experienced Editors. Also by default, all roles include the Reviewer role and therefore the ability to view GPO settings in reports. However, AGPM provides an AGPM Administrator with the flexibility to customize GPO access to fit the needs of your organization.

## Delegation in a multiple Group Policy administrator environment


In an environment where multiple people make changes to GPOs, an AGPM Administrator delegates permission to Editors, Approvers, and Reviewers, either as groups or as individuals. For a typical GPO development process for an Editor and an Approver, see [Checklist: Create, Edit, and Deploy a GPO](checklist-create-edit-and-deploy-a-gpo.md).

### Additional references

-   [Checklist: Create, Edit, and Deploy a GPO](checklist-create-edit-and-deploy-a-gpo.md)

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks.md)

-   [Performing Editor Tasks](performing-editor-tasks.md)

-   [Performing Approver Tasks](performing-approver-tasks.md)

-   [Performing Reviewer Tasks](performing-reviewer-tasks.md)

-   [Troubleshooting Advanced Group Policy Management](troubleshooting-advanced-group-policy-management.md)

-   [User Interface: Advanced Group Policy Management](user-interface-advanced-group-policy-management.md)

 

 





