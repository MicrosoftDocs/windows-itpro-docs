---
localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Use the topics in this section to learn about how to use the Enterprise Mode Site List Portal.
ms.prod: ie11
title: Use the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
---

# Use the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Enterprise Mode is a compatibility mode that runs on Internet Explorer 11, letting websites render using a modified browser configuration that’s designed to emulate either Windows Internet Explorer 8 or Windows Internet Explorer 7, avoiding the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.

The Enterprise Mode Site List Portal is an open-source web tool on GitHub that allows you to manage your Enterprise Mode Site List, hosted by the app, with multiple users. The portal is designed to use IIS and a SQL Server backend, leveraging Active Directory (AD) for employee management. Updates to your site list are made by submitting new change requests, which are then approved by a designated group of people, put into a pre-production environment for testing, and then deployed immediately, or scheduled for deployment later.

You can use IE11 and the Enterprise Mode Site List Portal to manage your Enterprise Mode Site List, hosted by the app, with multiple users.

## Minimum system requirements for portal and test machines
Some of the components in this table might also need additional system resources. Check the component's documentation for more information.

|Item |Description |
|-----|------------|
|Operating system |Windows 7 or later |
|Memory |16 GB RAM |
|Hard drive space |At least 8 GB of free space, formatted using the NTFS file system for better security |
|Active Directory (AD) |Devices must be domain-joined |
|SQL Server |Microsoft SQL Server Enterprise Edition 2012 or later |
|Visual Studio |Visual Studio 2015 or later |
|Node.js® package manager |npm Developer version or higher |
|Additional server infrastructure |Internet Information Service (IIS) 6.0 or later |

## Role assignments and available actions
Admins can assign roles to employees for the Enterprise Mode Site List Portal, allowing the employees to perform specific actions, as described in this table.

|Role assignment |Available actions |
|----------------|------------------|
|Requester |<ul><li>Create a change request</li><br><br><li>Validate changes in the pre-production environment</li><br><br><li>Rollback changes in case of failure</li><br><br><li>Send personal requests for approval</li><br><br><li>View personal requests</li><br><br><li>Sign off and close personal requests</li></ul> |
|Approver<br><br>(can also be the App Manager role or the Group Head role) |<ul><li>Approve requests from the assigned group</li><br><br><li>Validate changes in the pre-production environment</li><br><br><li>Rollback changes in case of failure</li><br><br><li>Send requests for approval</li><br><br><li>View personal requests</li><br><br><li>Sign off and close requests</li></ul> |
|Administrator |<ul><li>Add employees to the portal</li><br><br><li>Assign employee roles</li><br><br><li>Approve registrations to the portal</li><br><br><li>Configure portal settings (for example, determine the freeze schedule, determine the pre-production and production XML paths, and determine the attachment upload location)</li><br><br><li>Use the standalone Enterprise Mode Site List Manager page</li><br><br><li>View reports</li><br><br><li>Approve requests</li><br><br><li>Validate changes in the pre-production environment</li><br><br><li>Rollback changes in case of failure</li><br><br><li>Send requests for approval</li><br><br><li>View personal requests</li><br><br><li>Sign off and close requests</li><br><br><li>Rollback changes in the pre-production environment</li></ul> |

## Enterprise Mode Site List Portal workflow
The following workflow describes how to use the Enterprise Mode Site List Portal.

1. [A Requester submits a change request and verifies the info against the pre-production site list](create-change-request-enterprise-mode-portal.md)

2. [The Approvers group accepts the change request](approve-change-request-enterprise-mode-portal.md)

3. The change is scheduled for the production environment.

4. The change is verified against the production site list.

5. The change request is signed off and closed.

## In this section
The following topics give you more information about the things that you can do with the Enterprise Mode Site List Portal.

|Topic |Description |
|------|------------|
|[Set up the Enterprise Mode Site List Portal](set-up-enterprise-mode-portal.md) |Details about what needs to be set up before you can use the Enterprise Mode Site List portal in your organization. |
|[Create a change request using the Enterprise Mode Site List Portal](create-change-request-enterprise-mode-portal.md)|Details about how to create and verify a change request using the Enterprise Mode Site List Portal. |
|[Rollback changes in the pre-production environment using the Enterprise Mode Site List Portal](rollback-changes-pre-production-environment-enterprise-mode-portal.md)|Details about how to rollback a change request in the pre-production environment. |
|[Approve a change request using the Enterprise Mode Site List Portal](approve-change-request-enterprise-mode-portal.md)|Details about how to approve a change request using the Enterprise Mode Site List Portal. |
|[Schedule a production environment change using the Enterprise Mode Site List Portal](schedule-production-change-enterprise-mode-portal.md)|Details about how to schedule  a change request using the Enterprise Mode Site List Portal. |
|[Rollback changes in the production environment using the Enterprise Mode Site List Portal](rollback-changes-production-environment-enterprise-mode-portal.md)|Details about how to rollback a change request in the production environment. |
|[Grant access to the Enterprise Mode Site List Portal](grant-access-enterprise-mode-portal.md)|Details about how to let employees access the Enterprise Mode Site List Portal.|
|[Use the Settings page for the Enterprise Mode Site List Portal](use-settings-enterprise-mode-portal.md)|Details about how to use the **Settings** page of the Enterprise Mode Site List Portal.|


## Related topics
- [Enterprise Mode Site List Portal source code](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)

- [Enterprise Mode and the Enterprise Mode Site List](what-is-enterprise-mode.md)
 

 



