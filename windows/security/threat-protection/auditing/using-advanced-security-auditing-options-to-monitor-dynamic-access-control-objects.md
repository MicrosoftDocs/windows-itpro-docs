---
title: Using advanced security auditing options to monitor dynamic access control objects
description: Domain admins can set up advanced security audit options in Windows 10 to target specific users, or monitor potentially significant activity on multiple devices
ms.assetid: 0d2c28ea-bdaf-47fd-bca2-a07dce5fed37
ms.reviewer:
ms.author: vinpa
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: reference
ms.date: 09/09/2021
---

# Using advanced security auditing options to monitor dynamic access control objects


This guide explains the process of setting up advanced security auditing capabilities that are made possible through settings and events that were introduced in Windows 8 and Windows Server 2012.

These procedures can be deployed with the advanced security auditing capabilities described in [Deploy Security Auditing with Central Audit Policies (Demonstration Steps)](/windows-server/identity/solution-guides/deploy-security-auditing-with-central-audit-policies--demonstration-steps-).

## In this guide

Domain administrators can create and deploy expression-based security audit policies by using file classification information (resource attributes), user claims, and device claims to target specific users and resources to monitor potentially significant activities on one or more computers. These policies can be deployed centrally by using Group Policy, or directly on a computer, in a folder, or in individual files.

## In this section

| Topic | Description |
| - | - |
| [Monitor the central access policies that apply on a file server](monitor-the-central-access-policies-that-apply-on-a-file-server.md) | This topic for the IT professional describes how to monitor changes to the central access policies that apply to a file server when using advanced security auditing options to monitor dynamic access control objects. Central access policies are created on a domain controller and then applied to file servers through Group Policy management. |
| [Monitor the use of removable storage devices](monitor-the-use-of-removable-storage-devices.md) | This topic for the IT professional describes how to monitor attempts to use removable storage devices to access network resources. It describes how to use advanced security auditing options to monitor dynamic access control objects. |
| [Monitor resource attribute definitions](monitor-resource-attribute-definitions.md)| This topic for the IT professional describes how to monitor changes to resource attribute definitions when you're using advanced security auditing options to monitor dynamic access control objects.|
| [Monitor central access policy and rule definitions](monitor-central-access-policy-and-rule-definitions.md) | This topic for the IT professional describes how to monitor changes to central access policy and central access rule definitions when you use advanced security auditing options to monitor dynamic access control objects. |
| [Monitor user and device claims during sign-in](monitor-user-and-device-claims-during-sign-in.md)| This topic for the IT professional describes how to monitor user and device claims that are associated with a user’s security token when you're using advanced security auditing options to monitor dynamic access control objects. |
| [Monitor the resource attributes on files and folders](monitor-the-resource-attributes-on-files-and-folders.md)| This topic for the IT professional describes how to monitor attempts to change settings to the resource attributes on files when you're using advanced security auditing options to monitor dynamic access control objects. |
| [Monitor the central access policies associated with files and folders](monitor-the-central-access-policies-associated-with-files-and-folders.md)| This topic for the IT professional describes how to monitor changes to the central access policies that are associated with files and folders when you're using advanced security auditing options to monitor dynamic access control objects. |
| [Monitor claim types](monitor-claim-types.md) | This topic for the IT professional describes how to monitor changes to claim types that are associated with dynamic access control when you're using advanced security auditing options.|

>**Important:**  This procedure can be configured on computers running any of the supported Windows operating systems. The other monitoring procedures can be configured only as part of a functioning dynamic access control deployment.

## Related topics

- [Security auditing](security-auditing-overview.md)