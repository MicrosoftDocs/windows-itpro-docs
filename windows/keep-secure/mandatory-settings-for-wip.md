---
title: Mandatory tasks and settings required to turn on Windows Information Protection (WIP) (Windows 10)
description: This list provides all of the tasks that are required for the operating system to turn on Windows Information Protection (WIP), formerly known as enterprise data protection (EDP) in your enterprise.
keywords: Windows Information Protection, WIP, EDP, Enterprise Data Protection, protected apps, protected app list, App Rules, Allowed apps list
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
---

# Mandatory tasks and settings required to turn on Windows Information Protection (WIP)
**Applies to:**

-   Windows 10, version 1607
-   Windows 10 Mobile

This list provides all of the tasks and settings that are required for the operating system to turn on Windows Information Protection (WIP), formerly known as enterprise data protection (EDP), in your enterprise.

>**Important**<br>
All sections provided for more info appear in either the [Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md) or [Create a Windows Information Protection (WIP) policy using System Center Configuration Manager](create-wip-policy-using-sccm.md), based on the tool you're using in your enterprise.


|Task                                |Description               |
|------------------------------------|--------------------------|
|Add at least one app rule in the **App Rules** area in your WIP policy. |You must have at least one app rule specified in the **App Rules** area of your WIP policy. For more info about where this area is and how to add an app rule, see the **Add individual apps to your Protected App list** section of the policy creation topics.|
|Pick your WIP protection level. |You must choose the level of protection level you want to apply to your WIP-protected content, including Override, Silent, or Block. For more info about where this area is and how to decide on your protection level, see the **Manage the WIP protection level for your enterprise data** section of the policy creation topics.|
|Specify your corporate identity. |You must specify your corporate identity, usually expressed as your primary Internet domain (for example, contoso.com). For more info about where this area is and what it means, see the **Define your enterprise-managed corporate identity** section of the policy creation topics. |
|Specify your Enterprise Network Domain Names. |You must specify the DNS suffixes used in your environment. All traffic to the fully-qualified domains appearing in this list will be protected. For more info about where this area is and how to add your suffixes, see the table that appears in the **Choose where apps can access enterprise data** section of the policy creation topics. |
|Specify your Enterprise IPv4 or IPv6 Ranges. |Specify the addresses for a valid IPv4 or IPv6 value range within your intranet. These addresses, used with your Enterprise Network Domain Names, define your corporate network boundaries. For more info about where this area is and what it means, see the table that appears in the **Define your enterprise-managed corporate identity** section of the policy creation topics. |
|Include your Data Recovery Agent (DRA) certificate. |This certificate makes sure that any of your WIP-encrypted data can be decrypted, even if the security keys are lost. For more info about where this area is and what it means, see the **Create and verify an Encrypting File System (EFS) DRA certificate** section of the policy creation topics. |