---
title: Overview of Advanced Group Policy Management
description: Overview of Advanced Group Policy Management
author: dansimp
ms.assetid: 2c12f3b4-8472-4c5b-b7f8-1c98a80d6b47
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


You can use Advanced Group Policy Management (AGPM) to extend the capabilities of the Group Policy Management Console (GPMC) to provide comprehensive change control and improved management for Group Policy Objects (GPOs).

## Group Policy object development with change control


With AGPM, you can store a copy of each GPO in a central archive so that Group Policy administrators can view and change it offline without immediately affecting the deployed version of the GPO. Additionally, AGPM stores a copy of each version of each controlled GPO in the archive so that you can roll back to an earlier version if necessary.

The terms "check in" and "check out" are used just as in a library (or in applications that provide change control, version control, or source control for programming development). To use a book that is in a library, you check it out from the library. No one else can use it while you have it checked out. When you are finished with the book, you check it back into the library, so others can use it.

To use these GPO control features, you will click a Change Control node in the Group Policy Management editor. The Change Control node appears only if you have installed the AGPM Client.

When you develop GPOs by using AGPM:

1.  Create a new controlled GPO or control a previously uncontrolled GPO.

2.  Check out the GPO, so that you and only you can change it.

3.  Edit the GPO.

4.  Check in the edited GPO, so that others can change it, or so that it can be deployed.

5.  Review the changes.

6.  Deploy the GPO to the production environment.

## Role-based delegation


AGPM provides comprehensive, easy-to-use role-based delegation for managing access to GPOs in the archive. Domain-level permissions enable AGPM Administrators to provide access to individual domains without providing access to other domains. GPO-based delegation enables AGPM Administrators to provide access to specific GPOs without providing domain-wide access.

Within AGPM, there are specifically defined roles: AGPM Administrator (Full Control), Approver, Editor, and Reviewer. The AGPM Administrator role includes the permissions for all other roles. By default, only Approvers have the power to deploy GPOs to the production environment of a domain, protecting the environment from mistakes by less experienced Editors. Also by default, all roles include the Reviewer role and therefore the ability to view GPO settings in reports. However, AGPM provides an AGPM Administrator with the flexibility to customize GPO access to fit the needs of your organization.

## Delegation in a multiple Group Policy administrator environment


In an environment where multiple people change GPOs, an AGPM Administrator delegates permission to Editors, Approvers, and Reviewers, either as groups or as individuals. For a typical GPO development process for an Editor and an Approver, see [Checklist: Create, Edit, and Deploy a GPO](checklist-create-edit-and-deploy-a-gpo-agpm40.md).

### Additional references

-   [Advanced Group Policy Management 4.0](advanced-group-policy-management-40.md)

 

 





