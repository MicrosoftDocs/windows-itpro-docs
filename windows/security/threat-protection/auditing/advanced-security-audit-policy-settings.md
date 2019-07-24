---
title: Advanced security audit policy settings (Windows 10)
description: This reference for IT professionals provides information about the advanced audit policy settings that are available in Windows and the audit events that they generate.
ms.assetid: 93b28b92-796f-4036-a53b-8b9e80f9f171
ms.reviewer: 
ms.author: dolmont
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: Mir0sh
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Advanced security audit policy settings

**Applies to**
-   Windows 10

This reference for IT professionals provides information about the advanced audit policy settings that are available in Windows and the audit events that they generate.

The security audit policy settings under **Security Settings\\Advanced Audit Policy Configuration** can help your organization audit compliance with important business-related and security-related rules by tracking precisely defined activities, such as:

-   A group administrator has modified settings or data on servers that contain finance information.
-   An employee within a defined group has accessed an important file.
-   The correct system access control list (SACL) is applied to every file and folder or registry key on a computer or file share as a verifiable safeguard against undetected access.

You can access these audit policy settings through the Local Security Policy snap-in (secpol.msc) on the local computer or by using Group Policy.

These advanced audit policy settings allow you to select only the behaviors that you want to monitor. You can exclude audit results for behaviors that are of little or no concern to you, or behaviors that create an excessive number of log entries. In addition, because security audit policies can be applied by using domain Group Policy Objects, audit policy settings can be modified, tested, and deployed to selected users and groups with relative simplicity.
Audit policy settings under **Security Settings\\Advanced Audit Policy Configuration** are available in the following categories:

## Account Logon

Configuring policy settings in this category can help you document attempts to authenticate account data on a domain controller or on a local Security Accounts Manager (SAM). Unlike Logon and Logoff policy settings and events, which track attempts to access a particular computer, settings and events in this category focus on the account database that is used. This category includes the following subcategories:

-   [Audit Credential Validation](audit-credential-validation.md)
-   [Audit Kerberos Authentication Service](audit-kerberos-authentication-service.md)
-   [Audit Kerberos Service Ticket Operations](audit-kerberos-service-ticket-operations.md)
-   [Audit Other Logon/Logoff Events](audit-other-logonlogoff-events.md)

## Account Management

The security audit policy settings in this category can be used to monitor changes to user and computer accounts and groups. This category includes the following subcategories:

-   [Audit Application Group Management](audit-application-group-management.md)
-   [Audit Computer Account Management](audit-computer-account-management.md)
-   [Audit Distribution Group Management](audit-distribution-group-management.md)
-   [Audit Other Account Management Events](audit-other-account-management-events.md)
-   [Audit Security Group Management](audit-security-group-management.md)
-   [Audit User Account Management](audit-user-account-management.md)

## Detailed Tracking

Detailed Tracking security policy settings and audit events can be used to monitor the activities of individual applications and users on that computer, and to understand how a computer is being used. This category includes the following subcategories:

- [Audit DPAPI Activity](audit-dpapi-activity.md)
- [Audit PNP activity](audit-pnp-activity.md)
- [Audit Process Creation](audit-process-creation.md)
- [Audit Process Termination](audit-process-termination.md)
- [Audit RPC Events](audit-rpc-events.md)
- [Audit Credential Validation](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-credential-validation)
  > **Note:**  For more information, see [Security Monitoring](https://blogs.technet.microsoft.com/nathangau/2018/01/25/security-monitoring-a-possible-new-way-to-detect-privilege-escalation/)

## DS Access

DS Access security audit policy settings provide a detailed audit trail of attempts to access and modify objects in Active Directory Domain Services (AD DS). These audit events are logged only on domain controllers. This category includes the following subcategories:

-   [Audit Detailed Directory Service Replication](audit-detailed-directory-service-replication.md)
-   [Audit Directory Service Access](audit-directory-service-access.md)
-   [Audit Directory Service Changes](audit-directory-service-changes.md)
-   [Audit Directory Service Replication](audit-directory-service-replication.md)

## Logon/Logoff

Logon/Logoff security policy settings and audit events allow you to track attempts to log on to a computer interactively or over a network. These events are particularly useful for tracking user activity and identifying potential attacks on network resources. This category includes the following subcategories:

-   [Audit Account Lockout](audit-account-lockout.md)
-   [Audit User/Device Claims](audit-user-device-claims.md)
-   [Audit IPsec Extended Mode](audit-ipsec-extended-mode.md)
-   [Audit Group Membership](audit-group-membership.md)
-   [Audit IPsec Main Mode](audit-ipsec-main-mode.md)
-   [Audit IPsec Quick Mode](audit-ipsec-quick-mode.md)
-   [Audit Logoff](audit-logoff.md)
-   [Audit Logon](audit-logon.md)
-   [Audit Network Policy Server](audit-network-policy-server.md)
-   [Audit Other Logon/Logoff Events](audit-other-logonlogoff-events.md)
-   [Audit Special Logon](audit-special-logon.md)

## Object Access

Object Access policy settings and audit events allow you to track attempts to access specific objects or types of objects on a network or computer. To audit attempts to access a file, directory, registry key, or any other object, you must enable the appropriate Object Access auditing subcategory for success and/or failure events. For example, the file system subcategory needs to be enabled to audit file operations, and the Registry subcategory needs to be enabled to audit registry accesses.

Proving that these audit policies are in effect to an external auditor is more difficult. There is no easy way to verify that the proper SACLs are set on all inherited objects. To address this issue, see [Global Object Access Auditing](#global-object-access-auditing).

This category includes the following subcategories:

-   [Audit Application Generated](audit-application-generated.md)
-   [Audit Certification Services](audit-certification-services.md)
-   [Audit Detailed File Share](audit-detailed-file-share.md)
-   [Audit File Share](audit-file-share.md)
-   [Audit File System](audit-file-system.md)
-   [Audit Filtering Platform Connection](audit-filtering-platform-connection.md)
-   [Audit Filtering Platform Packet Drop](audit-filtering-platform-packet-drop.md)
-   [Audit Handle Manipulation](audit-handle-manipulation.md)
-   [Audit Kernel Object](audit-kernel-object.md)
-   [Audit Other Object Access Events](audit-other-object-access-events.md)
-   [Audit Registry](audit-registry.md)
-   [Audit Removable Storage](audit-removable-storage.md)
-   [Audit SAM](audit-sam.md)
-   [Audit Central Access Policy Staging](audit-central-access-policy-staging.md)

## Policy Change

Policy Change audit events allow you to track changes to important security policies on a local system or network. Because policies are typically established by administrators to help secure network resources, monitoring changes or attempts to change these policies can be an important aspect of security management for a network. This category includes the following subcategories:

-   [Audit Audit Policy Change](audit-audit-policy-change.md)
-   [Audit Authentication Policy Change](audit-authentication-policy-change.md)
-   [Audit Authorization Policy Change](audit-authorization-policy-change.md)
-   [Audit Filtering Platform Policy Change](audit-filtering-platform-policy-change.md)
-   [Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)
-   [Audit Other Policy Change Events](audit-other-policy-change-events.md)

## Privilege Use

Permissions on a network are granted for users or computers to complete defined tasks. Privilege Use security policy settings and audit events allow you to track the use of certain permissions on one or more systems. This category includes the following subcategories:

-   [Audit Non-Sensitive Privilege Use](audit-non-sensitive-privilege-use.md)
-   [Audit Sensitive Privilege Use](audit-sensitive-privilege-use.md)
-   [Audit Other Privilege Use Events](audit-other-privilege-use-events.md)

## System

System security policy settings and audit events allow you to track system-level changes to a computer that are not included in other categories and that have potential security implications. This category includes the following subcategories:

-   [Audit IPsec Driver](audit-ipsec-driver.md)
-   [Audit Other System Events](audit-other-system-events.md)
-   [Audit Security State Change](audit-security-state-change.md)
-   [Audit Security System Extension](audit-security-system-extension.md)
-   [Audit System Integrity](audit-system-integrity.md)

## Global Object Access Auditing

Global Object Access Auditing policy settings allow administrators to define computer system access control lists (SACLs) per object type for the file system or for the registry. The specified SACL is then automatically applied to every object of that type.
Auditors will be able to prove that every resource in the system is protected by an audit policy by viewing the contents of the Global Object Access Auditing policy settings. For example, if auditors see a policy setting called "Track all changes made by group administrators," they know that this policy is in effect.

Resource SACLs are also useful for diagnostic scenarios. For example, setting the Global Object Access Auditing policy to log all the activity for a specific user and enabling the policy to track "Access denied" events for the file system or registry can help administrators quickly identify which object in a system is denying a user access.

> **Note:**  If a file or folder SACL and a Global Object Access Auditing policy setting (or a single registry setting SACL and a Global Object Access Auditing policy setting) are configured on a computer, the effective SACL is derived from combining the file or folder SACL and the Global Object 
Access Auditing policy. This means that an audit event is generated if an activity matches the file or folder SACL or the Global Object Access Auditing policy.
 
This category includes the following subcategories:
-   [File System (Global Object Access Auditing)](file-system-global-object-access-auditing.md)
-   [Registry (Global Object Access Auditing)](registry-global-object-access-auditing.md)
