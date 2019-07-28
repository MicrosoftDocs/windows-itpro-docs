---
title: Dynamic Access Control Overview (Windows 10)
description: Dynamic Access Control Overview
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
ms.reviewer: 
---

# Dynamic Access Control Overview

**Applies to**
-   Windows Server 2016

This overview topic for the IT professional describes Dynamic Access Control and its associated elements, which were introduced in Windows Server 2012 and Windows 8.

Domain-based Dynamic Access Control enables administrators to apply access-control permissions and restrictions based on well-defined rules that can include the sensitivity of the resources, the job or role of the user, and the configuration of the device that is used to access these resources.

For example, a user might have different permissions when they access a resource from their office computer versus when they are using a portable computer over a virtual private network. Or access may be allowed only if a device meets the security requirements that are defined by the network administrators. When Dynamic Access Control is used, a user’s permissions change dynamically without additional administrator intervention if the user’s job or role changes (resulting in changes to the user’s account attributes in AD DS). For more detailed examples of Dynamic Access Control in use, see the scenarios described in [Dynamic Access Control: Scenario Overview](https://technet.microsoft.com/windows-server-docs/identity/solution-guides/dynamic-access-control--scenario-overview).

Dynamic Access Control is not supported in Windows operating systems prior to Windows Server 2012 and Windows 8. When Dynamic Access Control is configured in environments with supported and non-supported versions of Windows, only the supported versions will implement the changes.

Features and concepts associated with Dynamic Access Control include:

-   [Central access rules](#bkmk-rules)

-   [Central access policies](#bkmk-policies)

-   [Claims](#bkmk-claims)

-   [Expressions](#bkmk-expressions2)

-   [Proposed permissions](#bkmk-permissions2)

### <a href="" id="bkmk-rules"></a>Central access rules

A central access rule is an expression of authorization rules that can include one or more conditions involving user groups, user claims, device claims, and resource properties. Multiple central access rules can be combined into a central access policy.

If one or more central access rules have been defined for a domain, file share administrators can match specific rules to specific resources and business requirements.

### <a href="" id="bkmk-policies"></a>Central access policies

Central access policies are authorization policies that include conditional expressions. For example, let’s say an organization has a business requirement to restrict access to personally identifiable information (PII) in files to only the file owner and members of the human resources (HR) department who are allowed to view PII information. This represents an organization-wide policy that applies to PII files wherever they are located on file servers across the organization. To implement this policy, an organization needs to be able to:

-   Identify and mark the files that contain the PII.

-   Identify the group of HR members who are allowed to view the PII information.

-   Add the central access policy to a central access rule, and apply the central access rule to all files that contain the PII, wherever they are located amongst the file servers across the organization.

Central access policies act as security umbrellas that an organization applies across its servers. These policies are in addition to (but do not replace) the local access policies or discretionary access control lists (DACLs) that are applied to files and folders.

### <a href="" id="bkmk-claims"></a>Claims

A claim is a unique piece of information about a user, device, or resource that has been published by a domain controller. The user’s title, the department classification of a file, or the health state of a computer are valid examples of a claim. An entity can involve more than one claim, and any combination of claims can be used to authorize access to resources. The following types of claims are available in the supported versions of Windows:

-   **User claims**   Active Directory attributes that are associated with a specific user.

-   **Device claims**   Active Directory attributes that are associated with a specific computer object.

-   **Resource attributes**  Global resource properties that are marked for use in authorization decisions and published in Active Directory.

Claims make it possible for administrators to make precise organization- or enterprise-wide statements about users, devices, and resources that can be incorporated in expressions, rules, and policies.

### <a href="" id="bkmk-expressions2"></a>Expressions

Conditional expressions are an enhancement to access control management that allow or deny access to resources only when certain conditions are met, for example, group membership, location, or the security state of the device. Expressions are managed through the Advanced Security Settings dialog box of the ACL Editor or the Central Access Rule Editor in the Active Directory Administrative Center (ADAC).

Expressions help administrators manage access to sensitive resources with flexible conditions in increasingly complex business environments.

### <a href="" id="bkmk-permissions2"></a>Proposed permissions

Proposed permissions enable an administrator to more accurately model the impact of potential changes to access control settings without actually changing them.

Predicting the effective access to a resource helps you plan and configure permissions for those resources before implementing those changes.

## Additional changes


Additional enhancements in the supported versions of Windows that support Dynamic Access Control include:

### Support in the Kerberos authentication protocol to reliably provide user claims, device claims, and device groups.

By default, devices running any of the supported versions of Windows are able to process Dynamic Access Control-related Kerberos tickets, which include data needed for compound authentication. Domain controllers are able to issue and respond to Kerberos tickets with compound authentication-related information. When a domain is configured to recognize Dynamic Access Control, devices receive claims from domain controllers during initial authentication, and they receive compound authentication tickets when submitting service ticket requests. Compound authentication results in an access token that includes the identity of the user and the device on the resources that recognize Dynamic Access Control.

### Support for using the Key Distribution Center (KDC) Group Policy setting to enable Dynamic Access Control for a domain.

Every domain controller needs to have the same Administrative Template policy setting, which is located at **Computer Configuration\\Policies\\Administrative Templates\\System\\KDC\\Support Dynamic Access Control and Kerberos armoring**.

### Support in Active Directory to store user and device claims, resource properties, and central access policy objects.

### Support for using Group Policy to deploy central access policy objects.

The following Group Policy setting enables you to deploy central access policy objects to file servers in your organization: **Computer Configuration\\Policies\\ Windows Settings\\Security Settings\\File System\\Central Access Policy**.

### Support for claims-based file authorization and auditing for file systems by using Group Policy and Global Object Access Auditing

You must enable staged central access policy auditing to audit the effective access of central access policy by using proposed permissions. You configure this setting for the computer under **Advanced Audit Policy Configuration** in the **Security Settings** of a Group Policy Object (GPO). After you configure the security setting in the GPO, you can deploy the GPO to computers in your network.

### Support for transforming or filtering claim policy objects that traverse Active Directory forest trusts

You can filter or transform incoming and outgoing claims that traverse a forest trust. There are three basic scenarios for filtering and transforming claims:

-   **Value-based filtering**  Filters can be based on the value of a claim. This allows the trusted forest to prevent claims with certain values from being sent to the trusting forest. Domain controllers in trusting forests can use value-based filtering to guard against an elevation-of-privilege attack by filtering the incoming claims with specific values from the trusted forest.

-   **Claim type-based filtering**  Filters are based on the type of claim, rather than the value of the claim. You identify the claim type by the name of the claim. You use claim type-based filtering in the trusted forest, and it prevents Windows from sending claims that disclose information to the trusting forest.

-   **Claim type-based transformation**  Manipulates a claim before sending it to the intended target. You use claim type-based transformation in the trusted forest to generalize a known claim that contains specific information. You can use transformations to generalize the claim-type, the claim value, or both.

## <a href="" id="software-requirements-"></a>Software requirements


Because claims and compound authentication for Dynamic Access Control require Kerberos authentication extensions, any domain that supports Dynamic Access Control must have enough domain controllers running the supported versions of Windows to support authentication from Dynamic Access Control-aware Kerberos clients. By default, devices must use domain controllers in other sites. If no such domain controllers are available, authentication will fail. Therefore, you must support one of the following conditions:

-   Every domain that supports Dynamic Access Control must have enough domain controllers running the supported versions of Windows Server to support authentication from all devices running the supported versions of Windows or Windows Server.

-   Devices running the supported versions of Windows or that do not protect resources by using claims or compound identity, should disable Kerberos protocol support for Dynamic Access Control.

For domains that support user claims, every domain controller running the supported versions of Windows server must be configured with the appropriate setting to support claims and compound authentication, and to provide Kerberos armoring. Configure settings in the KDC Administrative Template policy as follows:

-   **Always provide claims**   Use this setting if all domain controllers are running the supported versions of Windows Server. In addition, set the domain functional level to Windows Server 2012 or higher.

-   **Supported**   When you use this setting, monitor domain controllers to ensure that the number of domain controllers running the supported versions of Windows Server is sufficient for the number of client computers that need to access resources protected by Dynamic Access Control.

If the user domain and file server domain are in different forests, all domain controllers in the file server’s forest root must be set at the Windows Server 2012 or higher functional level.

If clients do not recognize Dynamic Access Control, there must be a two-way trust relationship between the two forests.

If claims are transformed when they leave a forest, all domain controllers in the user’s forest root must be set at the Windows Server 2012 or higher functional level.

A file server running a server operating system that supports Dyamic Access Control must have a Group Policy setting that specifies whether it needs to get user claims for user tokens that do not carry claims. This setting is set by default to **Automatic**, which results in this Group Policy setting to be turned **On** if there is a central policy that contains user or device claims for that file server. If the file server contains discretionary ACLs that include user claims, you need to set this Group Policy to **On** so that the server knows to request claims on behalf of users that do not provide claims when they access the server.

## See also

- [Access control overview](access-control.md)
