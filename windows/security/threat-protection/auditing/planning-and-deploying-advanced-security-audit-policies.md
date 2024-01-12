---
title: Plan and deploy advanced security audit policies
description: Learn to deploy an effective security audit policy in a network that includes advanced security audit policies.
ms.assetid: 7428e1db-aba8-407b-a39e-509671e5a442
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

# Plan and deploy advanced security audit policies


This article for IT professionals explains the options that security policy planners should consider and the tasks they must complete to deploy an effective security audit policy in a network that includes advanced security audit policies.

Organizations invest heavily in security applications and services, such as antimalware software, firewalls, and encryption. But no matter how much security hardware or software you deploy, how tightly you control the rights of users, or how carefully you configure security permissions on your data, the job isn't complete unless you've a well-defined, timely auditing strategy to track the effectiveness of your defenses and identify attempts to circumvent them.

To be well-defined and timely, an auditing strategy must provide useful tracking data for an organization's most important resources, critical behaviors, and potential risks. In many organizations, it must also provide proof that IT operations comply with corporate and regulatory requirements.

No organization has unlimited resources to monitor every resource and activity on a network. If you don't plan well, you'll likely have gaps in your auditing strategy. But if you try to audit every resource and activity, you may gather too much monitoring data, including thousands of benign audit entries that an analyst will have to sift through to identify the narrow set of entries that warrant closer examination. Such volume could delay or prevent auditors from identifying suspicious activity. Too much monitoring can leave an organization as vulnerable as not enough.

Here are some features that can help you focus your effort:

-   **Advanced audit policy settings:** You can apply and manage detailed audit policy settings through Group Policy.
-   **"Reason for access" auditing:** You can specify and identify the permissions that were used to generate a particular object access security event.
-   **Global object access auditing:** You can define system access control lists (SACLs) for an entire computer file system or registry.

To deploy these features and plan an effective security auditing strategy, you need to:

-   Identify your most critical resources and the most important activities that you need to track.
-   Identify the audit settings that you can use to track these activities.
-   Assess the advantages and potential costs associated with each.
-   Test these settings to validate your choices.
-   Develop plans for deploying and managing your audit policy.

## About this guide

This article guides you through the steps to plan a security auditing policy that uses Windows auditing features. The policy must address vital business needs, including:

-   Network reliability
-   Regulatory requirements
-   Protection of data and intellectual property
-   Users, including employees, contractors, partners, and customers
-   Client computers and applications
-   Servers and the applications and services running on those servers

The audit policy also must identify processes for managing audit data after it's been logged, including:

-   Collecting, evaluating, and reviewing data
-   Storing and (if necessary) disposing of data

By carefully planning, designing, testing, and deploying a solution based on your organization's business requirements, you can provide the standardized functionality, security, and management control that your organization needs.

## Understand the security audit policy design process

Designing and deploying a Windows security audit policy involves the following tasks, which are described in this document:

-   [Identify your Windows security audit policy deployment goals](#bkmk-1)

    This section helps define the business objectives that will guide your Windows security audit policy. It also helps  define the resources, users, and computers that will be the focus of your auditing.

-   [Map your security audit policy to groups of users, computers, and resources](#bkmk-2)

    This section explains how to integrate security audit policy settings with domain Group Policy settings for different groups of users, computers, and resources. It also explains when to use basic audit policy settings and when to use advanced security audit policy settings.

-   [Map your security auditing goals to a security audit policy configuration](#bkmk-3)

    This section explains the categories of Windows security auditing settings that are available. It also identifies individual Windows security auditing policy settings to address auditing scenarios.

-   [Plan for security audit monitoring and management](#bkmk-4)

    This section helps you plan to collect, analyze, and store Windows audit data. Depending on the number of computers and types of activity that you audit, your Windows event logs can fill up quickly. This section also explains how auditors can access and aggregate event data from multiple servers and desktop computers. It also covers how to address storage requirements.

-   [Deploy the security audit policy](#bkmk-5)

    This section provides guidelines for effective deployment of a Windows security audit policy. Deploying Windows audit policy settings in a test lab environment can help you confirm that the settings you've selected will produce the audit data that you need. But only a carefully staged pilot and incremental deployment based on your domain and organizational unit (OU) structure will confirm that the audit data you generate can be monitored and meets your needs.

## <a href="" id="bkmk-1"></a>Identify your Windows security audit policy deployment goals

A security audit policy must support and be an integrated aspect of an organization's overall security framework.

Every organization has a unique set of data and network assets (such as customer and financial data and trade secrets), physical resources (such as desktop computers, portable computers, and servers), and users (which can include various internal groups such as finance and marketing, and external groups such as partners, customers, and anonymous users on the website). Not all of these assets, resources, and users justify the cost of an audit. Your task is to identify which provide the strongest justification for the focus of a security audit.

To create your Windows security audit plan, begin by identifying:

-   The overall network environment, including the domains, OUs, and security groups
-   The resources on the network, the users of those resources, and how those resources are used
-   Regulatory requirements

### Network environment

An organization's domain and organizational unit (OU) structure provide a fundamental starting point for thinking about how to apply a security audit policy. They likely provide a foundation of Group Policy Objects (GPOs) and logical grouping of resources and activities that you can use to apply the audit settings that you choose. Your domain and OU structure probably already provide logical groups of users, resources, and activities that justify the resources needed to audit them. For information about how to integrate a security audit policy with your domain and OU structure, see [Mapping security audit policy to groups of users, computers, and resources](#bkmk-2) later in this document.

In addition to your domain model, determine whether your organization maintains a systematic threat model. A good threat model can help identify threats to key components in your infrastructure. Then you can apply audit settings that enhance your ability to identify and counter those threats.

> [!IMPORTANT]
> Including auditing in your organization's security plan also helps you budget resources to the areas where auditing can achieve the best results.

### Data and resources

For data and resource auditing, you need to identify the most important types of data and resources (such as patient records, accounting data, or marketing plans) that can benefit from the closer monitoring that Windows auditing can provide. Some of your data resources might already be monitored through auditing features in products such as Microsoft SQL Server and Exchange Server. If so, you may want to consider how Windows auditing features can enhance your existing audit strategy. As with the domain and OU structure discussed previously, security auditing should focus on your most critical resources. You also must consider how much audit data you can manage.

You can record if these resources have high, medium, or low business impact; the cost to the organization if these data resources are accessed by unauthorized users; and the risks that such access can pose to the organization. The type of access by users (such as *read*, *modify*, or *copy*) can also pose different levels of risk.

Increasingly, data access and use is governed by regulations, and a breach can result in severe penalties and a loss of credibility for the organization. If regulatory compliance plays a role in how you manage your data, be sure to also document this information.

The following table provides an example of a resource analysis for an organization.

| Resource class | Where stored | Organizational unit | Business impact | Security or regulatory requirements |
| - | - | - | - | - |
| Payroll data| Corp-Finance-1| Accounting: Read/write on Corp-Finance-1<br/>Departmental Payroll Managers: Write only on Corp-Finance-1| High| Financial integrity and employee privacy|
| Patient medical records| MedRec-2| Doctors and Nurses: Read/write on Med/Rec-2<br/>Lab Assistants: Write only on MedRec-2<br/>Accounting: Read only on MedRec-2| High| Strict legal and regulatory standards|
| Consumer health information| Web-Ext-1| Public Relations Web Content Creators: Read/write on Web-Ext-1<br/>Public: Read only on Web-Ext-1| Low| Public education and corporate image|

### Users

Many organizations find it useful to classify the types of users they have and then base permissions on this classification. This classification can help you identify which user activities should be the subject of security auditing and the amount of audit data that they'll generate.

Organizations can create distinctions based on the type of rights and permissions that users need to do their jobs. Under the classification *administrators*, for example, large organizations might assign local administrator responsibilities for a single computer, for specific applications such as Exchange Server or SQL Server, or for an entire domain. Under *users*, permissions and Group Policy settings can apply to all users in an organization or as few as a subset of employees in a given department.

Also, if your organization is subject to regulatory requirements, user activities such as accessing medical records or financial data may need to be audited to verify that you're complying with these requirements.

To effectively audit user activity, begin by listing the different types of users in your organization, the types of data they need access to, and the data they shouldn't have access to.

Also, if external users can access your organization's data, be sure to identify them. Determine whether they're a business partner, customer, or general user; the data they have access to; and the permissions they have to access that data.

The following table illustrates an analysis of users on a network. Our example contains only a single column titled "Possible auditing considerations," but you may want to create more columns to differentiate between different types of network activity, such as sign-in hours and permission use.

| Groups | Data | Possible auditing considerations |
| - | - | - |
| Account administrators| User accounts and security groups| Account administrators have full privileges to create new user accounts, reset passwords, and modify security group memberships. We need a mechanism to monitor these changes. |
| Members of the Finance OU| Financial records| Users in Finance have read/write access to critical financial records but no ability to change permissions on these resources. These financial records are subject to government regulatory compliance requirements. |
| External partners | Project Z| Employees of partner organizations have read/write access to certain project data and servers relating to Project Z but not to other servers or data on the network.|

### Computers

Security and auditing requirements and audit event volume can vary considerably for different types of computers in an organization. These requirements can be based on:

-   Whether the computers are servers, desktop computers, or portable computers
-   The important applications that the computers run, such as Microsoft Exchange Server, SQL Server, or Forefront Identity Manager

    > [!NOTE]
    > For more information about auditing:
    > - In Exchange Server, see [Exchange 2010 Security Guide](/previous-versions/office/exchange-server-2010/bb691338(v=exchg.141)).
    > - In SQL Server 2008, see [Auditing (Database Engine)](/previous-versions/sql/sql-server-2008-r2/cc280526(v=sql.105)).
    > - In SQL Server 2012, see [SQL Server Audit (Database Engine)](/sql/relational-databases/security/auditing/sql-server-audit-database-engine).

-   The operating system versions

    > [!NOTE]
    > The operating system version determines which auditing options are available and the volume of audit event data.

-   The business value of the data

For example, a web server that's accessed by external users requires different audit settings than a root certification authority (CA) that's never exposed to the public internet or even to regular users on the organization's network.

The following table illustrates an analysis of computers in an organization.

| Type of computer and applications | Operating system version | Where located |
| - | - | - |
| Servers hosting Exchange Server| Windows Server 2008 R2| ExchangeSrv OU|
| File servers | Windows Server 2012| Separate resource OUs by department and (in some cases) by location|
| Portable computers  | Windows Vista and Windows 7| Separate portable computer OUs by department and (in some cases) by location|
| Web servers | Windows Server 2008 R2 | WebSrv OU|

### Regulatory requirements

Many industries and locales have specific requirements for network operations and how resources are protected. In the health care and financial industries, for example, strict guidelines control who can access records and how the records are used. Many countries/regions have strict privacy rules. To identify regulatory requirements, work with your organization's legal department and other departments responsible for these requirements. Then consider the security configuration and auditing options that you can use to comply with these regulations and verify compliance.

For more information, see the [System Center Process Pack for IT GRC](/previous-versions/tn-archive/dd206732(v=technet.10)).

## <a href="" id="bkmk-2"></a>Map your security audit policy to groups of users, computers, and resources

By using Group Policy, you can apply your security audit policy to defined groups of users, computers, and resources. To map a security auditing policy to these defined groups in your organization, you should understand the following considerations for using Group Policy to apply security audit policy settings:

-   The policy settings you identify can be applied by using one or more GPOs. To create and edit a GPO, use the Group Policy Management Console (GPMC). By using the GPMC to link a GPO to selected Active Directory sites, domains, and OUs, you apply the policy settings in the GPO to the users and computers in those Active Directory objects. An OU is the lowest-level Active Directory container to which you can assign Group Policy settings.
-   Decide whether every policy setting that you select should be enforced across the organization or apply only to selected users or computers. You can then combine these audit policy settings into GPOs and link them to the appropriate Active Directory containers.
-   By default, options set in GPOs that are linked to higher levels of Active Directory sites, domains, and OUs are inherited by all OUs at lower levels. However, a GPO that's linked at a lower level can overwrite inherited policies.

    For example, you might use a domain GPO to assign an organization-wide group of audit settings but want a certain OU to get a defined group of extra settings. To do this assignation, you can link a second GPO to that specific lower-level OU. Then, a sign-in audit setting that's applied at the OU level will override a conflicting sign-in audit setting that's applied at the domain level, unless you've taken special steps to apply Group Policy loopback processing.

-   Audit policies are computer policies. Therefore, they must be applied through GPOs that are applied to *computer* OUs, not to *user* OUs. But in most cases, you can apply audit settings for only specified resources and groups of users by configuring SACLs on the relevant objects. This functionality enables auditing for a security group that contains only the users you specify.

    For example, you could configure a SACL for a folder called *Payroll Data* on Accounting Server 1. You can audit attempts by members of the Payroll Processors OU to delete objects from this folder. The **Object Access\\Audit File System** audit policy setting applies to Accounting Server 1. But, because it requires a corresponding resource SACL, only actions by members of the Payroll Processors OU on the Payroll Data folder will generate audit events.

-   Advanced security audit policy settings were introduced in Windows Server 2008 R2 and Windows 7. These advanced audit policies can only be applied to those operating systems and later versions by using Group Policy.


> [!IMPORTANT]
> Whether you apply advanced audit policies by using Group Policy or logon scripts, don't use both the basic audit policy settings under **Local Policies\Audit Policy** and the advanced settings under **Security Settings\Advanced Audit Policy Configuration**. Using both basic and advanced audit policy settings can cause unexpected results in audit reporting.

If you use **Advanced Audit Policy Configuration** settings or logon scripts to apply advanced audit policies, be sure to enable the **Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings** policy setting under **Local Policies\\Security Options**. This configuration will prevent conflicts between similar settings by forcing basic security auditing to be ignored.


The following examples show how you can apply audit policies to an organization's OU structure:

-   Apply data activity settings to an OU that contains file servers. If your organization has servers that contain sensitive data, consider putting them in a separate OU. Then you can configure and apply a more precise audit policy to these servers.
-   Apply user activity audit policies to an OU that contains all computers in the organization. If your organization places users in OUs by department, consider applying more-detailed security permissions on critical resources that are accessed by employees who work in more-sensitive areas, such as network administrators or the legal department.
-   Apply network and system activity audit policies to OUs that contain the organization's most critical servers, such as domain controllers, CAs, email servers, or database servers.

## <a href="" id="bkmk-3"></a>Map your security auditing goals to a security audit policy configuration

After you identify your security auditing goals, you can map them to a security audit policy configuration. This audit policy configuration must address your security auditing goals. But it also must reflect your organization's constraints, such as the numbers of:
- Computers that need to be monitored
- Activities that you want to audit
- Audit events that your audit configuration will generate
- Administrators available to analyze and act upon audit data

To create your audit policy configuration, you need to:

1.  Explore all the audit policy settings that can be used to address your needs.
1.  Choose the audit settings that will most effectively address the audit requirements there were identified in the previous section.
1.  Confirm that the settings that you choose are compatible with the operating systems running on the computers that you want to monitor.
1.  Decide which configuration options (*success*, *failure*, or both *success* and *failure*) you want to use for the audit settings.
1.  Deploy the audit settings in a lab or test environment to verify that they meet your desired results for volume, supportability, and comprehensiveness. Then, deploy the audit settings in a pilot production environment to check that your estimates of how much audit data your audit plan will generate are realistic and that you can manage this data.

### Explore audit policy options

You can view and configure security audit policy settings in the supported versions of Windows in the following locations:

-   *Security Settings\\Local Policies\\Audit Policy*
-   *Security Settings\\Local Policies\\Security Options*
-   *Security Settings\\Advanced Audit Policy Configuration*

For more information, see [Advanced security audit policy settings](advanced-security-audit-policy-settings.md).

### Choose audit settings to use

Depending on your goals, different sets of audit settings may be of particular value to you. For example, some settings under *Security Settings\\Advanced Audit Policy Configuration* can be used to monitor the following types of activity:

-   Data and resources
-   Users
-   Network

> [!IMPORTANT]
> Settings that are described in the reference might also provide valuable information about activity audited by another setting. For example, the settings that you use to monitor user activity and network activity have obvious relevance to protecting your data resources. Likewise, attempts to compromise data resources have huge implications for overall network status and potentially for how well you're managing the activities of users on the network.

### Data and resource activity

Compromise to an organization's data resources can cause tremendous financial losses, lost prestige, and legal liability. If your organization has critical data resources that must be protected, the following settings can provide valuable monitoring and forensic data:

-   **Object Access\\[Audit File Share](audit-file-share.md)**: This policy setting enables you to track what content was accessed, the source (IP address and port) of the request, and the user account that was used for the access. The volume of event data generated with this setting will vary depending on the number of client computers that try to access the file share. On a file server or domain controller, volume may be high because of SYSVOL access by client computers for policy processing. If you don't need to record routine access by client computers on the file share, you may want to log audit events only for failed attempts to access the file share.
-   **Object Access\\[Audit File System](audit-file-system.md)**: This policy setting determines whether the operating system audits user attempts to access file system objects. Audit events are only generated for objects, such as files and folders, that have configured SACLs, and only if the type of access requested (such as *write*, *read*, or *modify*) and the account that's making the request match the settings in the SACL.

    If *success* auditing is enabled, an audit entry is generated each time any account successfully accesses a file system object that has a matching SACL. If *failure* auditing is enabled, an audit entry is generated each time any user unsuccessfully attempts to access a file system object that has a matching SACL. The amount of audit data generated by the **Audit File System** policy setting can vary considerably, depending on the number of objects that you configured to be monitored.

    > [!NOTE]
    > To audit user attempts to access all file system objects on a computer, use the *Global Object Access Auditing* settings [Registry (Global Object Access Auditing)](registry-global-object-access-auditing.md) or [File System (Global Object Access Auditing)](file-system-global-object-access-auditing.md).

-   **Object Access\\[Audit Handle Manipulation](audit-handle-manipulation.md)**: This policy setting determines whether the operating system generates audit events when a handle to an object is opened or closed. Only objects with configured SACLs generate these events and only if the attempted handle operation matches the SACL.

    Event volume can be high, depending on how the SACLs are configured. When used together with the **Audit File System** or **Audit Registry** policy setting, the **Audit Handle Manipulation** policy setting can provide useful "reason for access" audit data that details the precise permissions on which the audit event is based. For example, if a file is configured as a *read-only* resource but a user tries to save changes to the file, the audit event will log the event *and* the permissions that were used (or attempted to be used) to save the file changes.

-   **Global Object Access Auditing**: Many organizations use security auditing to comply with regulatory requirements that govern data security and privacy. But demonstrating that strict controls are being enforced can be difficult. To address this issue, the supported versions of Windows include two **Global Object Access Auditing** policy settings, one for the registry and one for the file system. When you configure these settings, they apply a global system access control SACL on all objects of that class on a system. These settings can't be overridden or circumvented.

    > [!IMPORTANT]
    > The **Global Object Access Auditing** policy settings must be configured and applied in conjunction with the **Audit File System** and **Audit Registry** audit policy settings in the **Object Access** category.

### User activity

The settings in the previous section relate to activity involving the files, folders, and network shares that are stored on a network. The settings in this section focus on the users who may try to access those resources, including employees, partners, and customers.

In most cases, these attempts are legitimate, and the network needs to make data readily available to legitimate users. But in other cases, employees, partners, and others may try to access resources that they have no legitimate reason to access. You can use security auditing to track various user activities on a particular computer to diagnose and resolve problems for legitimate users and to identify and address illegitimate activities. The following are important settings that you should evaluate to track user activity on your network:

-   **Account Logon\\[Audit Credential Validation](audit-credential-validation.md)**: This setting enables you to track all successful and unsuccessful sign-in attempts. A pattern of unsuccessful attempts may indicate that a user or application is using credentials that are no longer valid. Or the user or app is trying to use various credentials in succession in hope that one of these attempts will eventually succeed. These events occur on the computer that's authoritative for the credentials. For domain accounts, the domain controller is authoritative. For local accounts, the local computer is authoritative.
-   **Detailed Tracking\\[Audit Process Creation](audit-process-creation.md) and Detailed Tracking\\[Audit Process Termination](audit-process-termination.md)**: These policy settings enable you to monitor the applications that a user opens and close on a computer.
-   **DS Access\\[Audit Directory Service Access](audit-directory-service-access.md)** and **DS Access\\[Audit Directory Service Changes](audit-directory-service-changes.md)**: These policy settings provide a detailed audit trail of attempts to access, create, modify, delete, move, or undelete objects in Active Directory Domain Services (AD DS). Only domain administrators have permissions to modify AD DS objects, so it's important to identify malicious attempts to modify these objects. Also, although domain administrators should be among an organization's most trusted employees, the use of the **Audit Directory Service Access** and **Audit Directory Service Changes** settings enables you to monitor and verify that only approved changes are made to AD DS. These audit events are logged only on domain controllers.
-   **Logon/Logoff\\[Audit Account Lockout](audit-account-lockout.md)**: Another common security scenario occurs when a user attempts to sign in with an account that's been locked out. It's important to identify these events and to determine whether the attempt to use an account that was locked out is malicious.
-   **Logon/Logoff\\[Audit Logoff](audit-logoff.md)** and **Logon/Logoff\\[Audit Logon](audit-logon.md)**: Logon and logoff events are essential to tracking user activity and detecting potential attacks. Logon events are related to the creation of logon sessions, and they occur on the computer that was accessed. For an interactive logon, events are generated on the computer that was logged on to. For network logon, such as accessing a shared resource, events are generated on the computer that hosts the resource that was accessed. Logoff events are generated when logon sessions are terminated.

    > [!NOTE]
    > There's no failure event for logoff activity, because failed logoffs (such as when a system abruptly shuts down) don't generate an audit record. Logoff events aren't 100-percent reliable. For example, a computer can be turned off without a proper logoff and shut down, so a logoff event isn't generated.

-   **Logon/Logoff\\[Audit Special Logon](audit-special-logon.md)**: A special logon has administrator-equivalent rights and can be used to elevate a process to a higher level. It's recommended to track these types of logons.
-   **Object Access\\[Audit Certification Services](audit-certification-services.md)**: This policy setting enables you to monitor activities on a computer that hosts Active Directory Certificate Services (AD CS) role services to ensure that only authorized users do these tasks and only authorized or desirable tasks are done.
-   **Object Access\\[Audit File System](audit-file-system.md) and Object Access\\[Audit File Share](audit-file-share.md)**: These policy settings are described in the previous section.
-   **Object Access\\[Audit Handle Manipulation](audit-handle-manipulation.md)**: This policy setting and its role in providing "reason for access" audit data is described in the previous section.
-   **Object Access\\[Audit Registry](audit-registry.md)**: Monitoring for changes to the registry is one of the best ways for administrators to ensure that malicious users don't make changes to essential computer settings. Audit events are only generated for objects that have configured SACLs and only if the type of access that's requested, such as *write*, *read*, or *modify*, and the account making the request match the settings in the SACL.

    > [!IMPORTANT]
    > On critical systems where all attempts to change registry settings should be tracked, you can combine the **Audit Registry** and **Global Object Access Auditing** policy settings to track all attempts to modify registry settings on a computer.

-   **Object Access\\[Audit SAM](audit-sam.md)**: The Security Accounts Manager (SAM) is a database on computers running Windows that stores user accounts and security descriptors for users on the local computer. Changes to user and group objects are tracked by the **Account Management** audit category. However, user accounts with the proper user rights could potentially alter the files where the account and password information is stored in the system, bypassing any **Account Management** events.
-   **Privilege Use\\[Audit Sensitive Privilege Use](audit-sensitive-privilege-use.md)**: These policy settings and audit events enable you to track the use of certain rights on one or more systems. If you configure this policy setting, an audit event is generated when sensitive rights requests are made.

### Network activity

The following network activity policy settings enable you to monitor security-related issues that aren't necessarily covered in the data or user-activity categories but that can be important for network status and protection.

- **Account Management**: Use the policy settings in this category to track attempts to create, delete, or modify user or computer accounts, security groups, or distribution groups. Monitoring these activities complements the monitoring strategies you select in the [User activity](#user-activity) and [Data and resource activity](#data-and-resource-activity) sections.
- **Account Logon\\[Audit Kerberos Authentication Service](audit-kerberos-authentication-service.md) and Account Logon\\[Audit Kerberos Service Ticket Operations](audit-kerberos-service-ticket-operations.md)**: Audit policy settings in the **Account Logon** category monitor activities that relate to the use of domain account credentials. These policy settings complement the policy settings in the **Logon/Logoff** category. The **Audit Kerberos Authentication Service** policy setting enables you to monitor the status of and potential threats to the Kerberos service. The Audit **Kerberos Service Ticket Operations** policy setting enables you to monitor the use of Kerberos service tickets.

    >[!NOTE]
    >**Account Logon** policy settings apply only to specific domain account activities, regardless of which computer is accessed. **Logon/Logoff** policy settings apply to the computer that hosts the resources that are accessed.

-   **Account Logon\\[Audit Other Account Logon Events](audit-other-account-logon-events.md)**: This policy setting can be used to track various network activities, including attempts to create Remote Desktop connections, wired network connections, and wireless connections.
-   **DS Access**: Policy settings in this category enable you to monitor AD DS role services. These services provide account data, validate logons, maintain network access permissions, and provide other functionality that's critical to secure and proper functioning of a network. Therefore, auditing the rights to access and modify the configuration of a domain controller can help an organization maintain a secure and reliable network. One of the key tasks that AD DS performs is replication of data between domain controllers.
-   **Logon/Logoff\\[Audit IPsec Extended Mode](audit-ipsec-extended-mode.md)**, **Logon/Logoff\\[Audit IPsec Main Mode](audit-ipsec-main-mode.md)**, and **Logon/Logoff\\[Audit IPsec Quick Mode](audit-ipsec-quick-mode.md)**: Networks often support many external users, including remote employees and partners. Because these users are outside the organization's network boundaries, IPsec is often used to help protect communications over the internet. It enables network-level peer authentication, data origin authentication, data integrity checks, data confidentiality (encryption), and protection against replay attacks. You can use these settings to ensure that IPsec services are functioning properly.
-   **Logon/Logoff\\[Audit Network Policy Server](audit-network-policy-server.md)**: Organizations that use RADIUS (IAS) and Network Access Protection (NAP) to set and maintain security requirements for external users can use this policy setting to monitor the effectiveness of these policies and to determine whether anyone is trying to circumvent these protections.
-   **Policy Change**: These policy settings and events enable you to track changes to important security policies on a local computer or network. Because policies are typically established by administrators to help secure network resources, monitoring any changes or attempted changes to these policies can be an important aspect of security management for a network.
-   **Policy Change\\[Audit Audit Policy Change](audit-audit-policy-change.md)**: This policy setting allows you to monitor changes to the audit policy. If malicious users obtain domain administrator credentials, they can temporarily disable essential security audit policy settings so that their other activities on the network can't be detected.
-   **Policy Change\\[Audit Filtering Platform Policy Change](audit-filtering-platform-policy-change.md)**: This policy setting can be used to monitor various changes to an organization's IPsec policies.
-   **Policy Change\\[Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)**: This policy setting determines if the operating system generates audit events when changes are made to policy rules for the Microsoft Protection Service (MPSSVC.exe), which is used by Windows Firewall. Changes to firewall rules are important for understanding the security state of the computer and how well it's protected against network attacks.

### Confirm operating system version compatibility

Not all versions of Windows support advanced audit policy settings or the use of Group Policy to manage these settings. For more information, see [Which editions of Windows support advanced audit policy configuration](which-editions-of-windows-support-advanced-audit-policy-configuration.md).

The audit policy settings under **Local Policies\\Audit Policy** overlap with the audit policy settings under **Security Settings\\Advanced Audit Policy Configuration**. However, the advanced audit policy categories and subcategories enable you to focus your auditing efforts on critical activities while reducing the amount of audit data that's less important to your organization.

For example, **Local Policies\\Audit Policy** contains a single setting called **[Audit account logon events](/previous-versions/windows/it-pro/windows-server-2003/cc787176(v=ws.10))**. When this setting is configured, it generates at least 10 types of audit events.

In comparison, the Account Logon category under **Security Settings\\Advanced Audit Policy Configuration** provides the following advanced settings, which allow you to focus your auditing:

-   Credential Validation
-   Kerberos Authentication Service
-   Kerberos Service Ticket Operations
-   Other Account Logon Events

These settings enable you to exercise much tighter control over which activities or events generate event data. Some activities and events will be more important to your organization, so define the scope of your security audit policy as narrowly as possible.

### *Success*, *failure*, or both

Whichever event settings you include in your plan, you also have to decide whether you want to log an event when the activity fails or succeeds or both successes *and* failures. This question is an important one. The answer depends on the criticality of the event and the implications of the decision for event volume.

For example, on a file server that's accessed frequently by legitimate users, you may want to log an event only when an *unsuccessful* attempt to access data takes place, because this access failure could be evidence of an unauthorized or malicious user. In this case, logging *successful* attempts to access the server would quickly fill the event log with benign events.

But if the file share has sensitive information, such as trade secrets, you may want to log every access attempt so that you have an audit trail of every user who tries to access the resource.

## <a href="" id="bkmk-4"></a>Plan for security audit monitoring and management

Networks may contain hundreds of servers that run critical services or store critical data, all of which need to be monitored. There may be tens or even hundreds of thousands of computers on the network. These numbers may not be an issue if the ratio of servers or client computers per administrator is low. And even if an administrator who is responsible for auditing security and performance issues has relatively few computers to monitor, you need to decide how the administrator will obtain event data to review. Following are some options for obtaining the event data.

-   Will you keep event data on a local computer until an administrator signs in to review this data? If so, the administrator needs to have physical or remote access to the Event Viewer on each client computer or server. And the remote access and firewall settings on each client computer or server need to be configured to enable this access. You also need to decide how often the administrator can visit each computer, and adjust the size of the audit log so that critical information isn't deleted if the log reaches capacity.
-   Will you collect event data so that it can be reviewed from a central console? If so, there are many computer management products, such as the Audit Collection Services in Microsoft Operations Manager 2007 and 2012, that you can use to collect and filter event data. Presumably this solution enables a single administrator to review larger amounts of data than using the local storage option. But in some cases, this method can make it more difficult to detect clusters of related events that can occur on a single computer.

In addition, whether you choose to leave audit data on an individual computer or consolidate it at a central location, you need to decide how large the log file should be and what happens when the log reaches its maximum size. To configure these options, open Event Viewer, expand **Windows Logs**, right-click **Security**, and select **Properties**. You can configure the following properties:

-   **Overwrite events as needed (oldest events first)**: This option is the default one, which is acceptable in most situations.
-   **Archive the log when full, do not overwrite events**: This option can be used when all log data needs to be saved. But the scenario suggests that you may not be reviewing audit data frequently enough.
-   **Do not overwrite events (Clear logs manually)**. This option stops the collection of audit data when the log file reaches its maximum size. Older data is retained at the expense of the most recent audit events. Use this option only if you don't want to lose any audit data, don't want to create an archive of the event log, and are committed to reviewing data before the maximum log size is reached.

You can also configure the audit log size and other key management options by using Group Policy settings. You can configure the event log settings in the following location in the GPMC: **Computer
Configuration\\Administrative Templates\\Windows Components\\Event Log Service\\Security**. These options include:

-   **Maximum Log Size (KB)**: This policy setting specifies the maximum size of the log files. In the Local Group Policy Editor and Event Viewer, you can enter values as large as 2 TB. If this setting isn't configured, event logs have a default maximum size of 20 megabytes.

-   **Log Access**: This policy setting determines which user accounts have access to log files and what usage rights are granted.
-   **Retain old events**: This policy setting controls event log behavior when the log file reaches its maximum size. When this policy setting is enabled and a log file reaches its maximum size, new events aren't written to the log and are lost. When this policy setting is disabled and a log file reaches its maximum size, new events overwrite old events.
-   **Backup log automatically when full**: This policy setting controls event log behavior when the log file reaches its maximum size. It takes effect only if the **Retain old events** policy setting is enabled. If you enable these policy settings, the event log file is automatically closed and renamed when it's full. A new log file is then started. If you disable or don't configure this policy setting and the **Retain old events** policy setting is enabled, new events are discarded, and the old events are retained.

Many organizations are now required to store archived log files for many years. Consult with regulatory compliance officers in your organization to determine whether such guidelines apply to your organization. For more information, see the [IT Compliance Management Guide](/previous-versions/tn-archive/dd206732(v=technet.10)).

## <a href="" id="bkmk-5"></a>Deploy the security audit policy

Before deploying the audit policy in a production environment, it's critical that you determine the effects of the policy settings that you've configured.

The first step in assessing your audit policy deployment is to create a test environment in a lab. Use it to simulate the various use scenarios that you identified to confirm that the audit settings you selected are configured correctly and generate the type of results you want.

However, unless you can run fairly realistic simulations of network usage patterns, a lab setup can't provide accurate information about the volume of audit data that the audit policy settings you selected will generate and how effective your plan for monitoring audit data will be. To provide this type of information, you need to conduct one or more pilot deployments. These pilot deployments could involve:

-   A single OU that contains critical data servers or an OU that contains all desktop computers in a specified location
-   A limited set of security audit policy settings, such as **Logon/Logoff** and **Account Logon**
-   A combination of limited OUs and audit policy settings—for example, targeting servers in only the Accounting OU with **Object Access** policy settings

After you successfully complete one or more limited deployments, you should confirm that the audit data that's collected is manageable with your management tools and administrators. After you confirm that the pilot deployment is effective, you need to ensure that you have the necessary tools and staff to expand the deployment to include more OUs and sets of audit policy settings until production deployment is complete.