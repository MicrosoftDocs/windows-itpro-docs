---
title: Administer security policy settings (Windows 10)
description: This article discusses different methods to administer security policy settings on a local device or throughout a small- or medium-sized organization.
ms.assetid: 7617d885-9d28-437a-9371-171197407599
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Administer security policy settings

**Applies to**

- Windows 10

This article discusses different methods to administer security policy settings on a local device or throughout a small- or medium-sized organization.

Security policy settings should be used as part of your overall security implementation to help secure domain controllers, servers, client devices, and other resources in your organization.

Security settings policies are rules that you can configure on a device, or multiple devices, for protecting resources on a device or network. The Security Settings extension of the Local Group Policy Editor snap-in (Gpedit.msc) allows you to define security configurations as part of a Group Policy Object (GPO). The GPOs are linked to Active Directory containers such as sites, domains, and organizational units, and they enable administrators to manage security settings for multiple computers from any device joined to the domain.

Security settings can control:

- User authentication to a network or device.
- The resources that users are permitted to access.
- Whether to record a user's or group's actions in the event log.
- Membership in a group.

For info about each setting, including descriptions, default settings, and management and security considerations, see [Security policy settings reference](security-policy-settings-reference.md).

To manage security configurations for multiple computers, you can use one of the following options:

- Edit specific security settings in a GPO.
- Use the Security Templates snap-in to create a security template that contains the security policies you want to apply, and then import the security template into a Group Policy Object. A security template is a file that represents a security configuration, and it can be imported to a GPO, or applied to a local device, or it can be used to analyze security.

## <a href="" id="what-s-changed-in-how-settings-are-administered-"></a>What's changed in how settings are administered

Over time, new ways to manage security policy settings have been introduced, which include new operating system features and the addition of new settings. The following table lists different means by which security policy settings can be administered.

|Tool or feature |Description and use |
|---------|---------|
|[Security Policy snap-in](#using-the-local-security-policy-snap-in)|Secpol.msc <br> MMC snap-in designed to manage only security policy settings.|
|[Security editor command line tool](#using-the-secedit-command-line-tool) |Secedit.exe <br> Configures and analyzes system security by comparing your current configuration to specified security templates.|
|[Security Compliance Manager](#using-the-security-compliance-manager)|Tool download <br> A Solution Accelerator that helps you plan, deploy, operate, and manage your security baselines for Windows client and server operating systems, and Microsoft applications.|
|[Security Configuration Wizard](#using-the-security-configuration-wizard)|Scw.exe <br> SCW is a role-based tool available on servers only: You can use it to create a policy that enables services, firewall rules, and settings that are required for a selected server to perform specific roles.|
|[Security Configuration Manager tool](#working-with-the-security-configuration-manager)|This tool set allows you to create, apply, and edit the security for your local device, organizational unit, or domain.|
|[Group Policy](#working-with-group-policy-tools)|Gpmc.msc and Gpedit.msc <br> The Group Policy Management Console uses the Group Policy Object editor to expose the local Security options, which can then be incorporated into Group Policy Objects for distribution throughout the domain. The Local Group Policy Editor performs similar functions on the local device.|
|Software Restriction Policies <br> See [Administer Software Restriction Policies](/windows-server/identity/software-restriction-policies/administer-software-restriction-policies)|Gpedit.msc <br> Software Restriction Policies (SRP) is a Group Policy-based feature that identifies software programs running on computers in a domain, and it controls the ability of those programs to run.|
|Administer AppLocker <br> See [Administer AppLocker](/windows/device-security/applocker/administer-applocker)|Gpedit.msc <br> Prevents malicious software (malware) and unsupported applications from affecting computers in your environment, and it prevents users in your organization from installing and using unauthorized applications.|

## <a href="" id="bkmk-secpol"></a>Using the Local Security Policy snap-in

The Local Security Policy snap-in (Secpol.msc) restricts the view of local policy objects to the following policies and features:

- Account Policies
- Local Policies
- Windows Firewall with Advanced Security
- Network List Manager Policies
- Public Key Policies
- Software Restriction Policies
- Application Control Policies
- IP Security Policies on Local Computer
- Advanced Audit Policy Configuration

Policies set locally might be overwritten if the computer is joined to the domain.

The Local Security Policy snap-in is part of the Security Configuration Manager tool set. For info about other tools in this tool set, see [Working with the Security Configuration Manager](#bkmk-scmtool) in this topic.

## <a href="" id="bkmk-secedit"></a>Using the secedit command-line tool

The secedit command-line tool works with security templates and provides six primary functions:

- The **Configure** parameter helps you resolve security discrepancies between devices by applying the correct security template to the errant server.
- The **Analyze** parameter compares the server's security configuration with the selected template.
- The **Import** parameter allows you to create a database from an existing template. The Security Configuration and Analysis tool does this cloning also.
- The **Export** parameter allows you to export the settings from a database into a security settings template.
- The **Validate** parameter allows you to validate the syntax of each or any lines of text that you created or added to a security template. This validation ensures that if the template fails to apply syntax, the template won't be the issue.
- The **Generate Rollback** parameter saves the server's current security settings into a security template so it can be used to restore most of the server's security settings to a known state. The exceptions are that, when applied, the rollback template won't change access control list entries on files or registry entries that were changed by the most recently applied template.

## <a href="" id="bkmk-scm"></a>Using the Security Compliance Manager

The Security Compliance Manager is a downloadable tool that helps you plan, deploy, operate, and manage your security baselines for Windows client and server operating systems, and for Microsoft applications. It contains a complete database of recommended security settings, methods to customize your baselines, and the option to implement those settings in multiple formats—including XLS, GPOs, Desired Configuration Management (DCM) packs, or Security Content Automation Protocol (SCAP). The Security Compliance Manager is used to export the baselines to your environment to automate the security baseline deployment and compliance verification process.

**To administer security policies by using the Security Compliance Manager**

1. Download the most recent version. You can find out more info on the [Microsoft Security Guidance](/archive/blogs/secguide/) blog.
1. Read the relevant security baseline documentation that is included in this tool.
1. Download and import the relevant security baselines. The installation process steps you through baseline selection.
1. Open the Help and follow instructions how to customize, compare, or merge your security baselines before deploying those baselines.

## <a href="" id="bkmk-scw"></a>Using the Security Configuration Wizard

The Security Configuration Wizard (SCW) guides you through the process of creating, editing, applying, or rolling back a security policy. A security policy that you create with SCW is an .xml file that, when applied, configures services, network security, specific registry values, and audit policy.
SCW is a role-based tool: You can use it to create a policy that enables services, firewall rules, and settings that are required for a selected server to perform specific roles. For example, a server might be a file server, a print server, or a domain controller.

The following are considerations for using SCW:

- SCW disables unnecessary services and provides Windows Firewall with Advanced Security support.
- Security policies that are created with SCW aren't the same as security templates, which are files with an .inf extension. Security templates contain more security settings than those settings that can be set with SCW. However, it's possible to include a security template in an SCW security policy file.
- You can deploy security policies that you create with SCW by using Group Policy.
- SCW doesn't install or uninstall the features necessary for the server to perform a role. You can install server role-specific features through Server Manager.
- SCW detects server role dependencies. If you select a server role, it automatically selects dependent server roles.
- All apps that use the IP protocol and ports must be running on the server when you run SCW.
- In some cases, you must be connected to the Internet to use the links in the SCW help.
  > [!NOTE]
  > The SCW is available only on Windows Server and only applicable to server installations.

The SCW can be accessed through Server Manager or by running scw.exe. The wizard steps you through server security configuration to:

- Create a security policy that can be applied to any server on your network.
- Edit an existing security policy.
- Apply an existing security policy.
- Roll back the last applied security policy.

The Security Policy Wizard configures services and network security based on the server's role, as well as configures auditing and registry settings.

For more information about SCW, including procedures, see [Security Configuration Wizard](/previous-versions/orphan-topics/ws.11/cc754997(v=ws.11)).

## <a href="" id="bkmk-scmtool"></a>Working with the Security Configuration Manager

The Security Configuration Manager tool set allows you to create, apply, and edit the security for your local device, organizational unit, or domain.

For procedures on how to use the Security Configuration Manager, see [Security Configuration Manager](/previous-versions/windows/it-pro/windows-server-2003/cc758219(v=ws.10)).

The following table lists the features of the Security Configuration Manager.

|Security Configuration Manager tools  |Description  |
|---------|---------|
|[Security Configuration and Analysis](#security-configuration-and-analysis) |Defines a security policy in a template. These templates can be applied to Group Policy or to your local computer.|
|[Security templates](#security-templates) |Defines a security policy in a template. These templates can be applied to Group Policy or to your local computer.|
|[Security Settings extension to Group Policy](#security-settings-extension-to-group-policy) |Edits individual security settings on a domain, site, or organizational unit.|
|[Local Security Policy](#local-security-policy)|Edits individual security settings on your local computer.|
|Secedit |Automates security configuration tasks at a command prompt.|

### <a href="" id="bkmk-seccfgana"></a>Security Configuration and Analysis

Security Configuration and Analysis is an MMC snap-in for analyzing and configuring local system security.

### <a href="" id="h2-359808543"></a>Security analysis

The state of the operating system and apps on a device is dynamic. For example, you may need to temporarily change security levels so that you can immediately resolve an administration or network issue. However, this change can often go unreversed. This unreversed state of the changes means that a computer may no longer meet the requirements for enterprise security.

Regular analysis enables you to track and ensure an adequate level of security on each computer as part of an enterprise risk management program. You can tune the security levels and, most importantly, detect any security flaws that may occur in the system over time.

Security Configuration and Analysis enables you to quickly review security analysis results. It presents recommendations alongside of current system settings and uses visual flags or remarks to highlight any areas where the current settings don't match the proposed level of security. Security Configuration and Analysis also offers the ability to resolve any discrepancies that analysis reveals.

### <a href="" id="h2-359810173"></a>Security configuration

Security Configuration and Analysis can also be used to directly configure local system security. Through its use of personal databases, you can import security templates that have been created with Security Templates and apply these templates to the local computer. These security templates immediately configure the system security with the levels specified in the template.

### <a href="" id="bkmk-sectmpl"></a>Security templates

With the Security Templates snap-in for Microsoft Management Console, you can create a security policy for your device or for your network. It's a single point of entry where the full range of system security can be taken into account. The Security Templates snap-in doesn't introduce new security parameters, it simply organizes all existing security attributes into one place to ease security administration.

Importing a security template to a Group Policy Object eases domain administration by configuring security for a domain or organizational unit at once.

To apply a security template to your local device, you can use Security Configuration and Analysis or the secedit command-line tool.

Security templates can be used to define:

- Account Policies
  - Password Policy
  - Account Lockout Policy
  - Kerberos Policy
- Local Policies
  - Audit Policy
  - User Rights Assignment
  - Security Options
- Event Log: Application, system, and security Event Log settings
- Restricted Groups: Membership of security-sensitive groups
- System Services: Startup and permissions for system services
- Registry: Permissions for registry keys
- File System: Permissions for folders and files

Each template is saved as a text-based .inf file. This file enables you to copy, paste, import, or export some or all of the template attributes. With the exceptions of Internet Protocol security and public key policies, all security attributes can be contained in a security template.

### <a href="" id="bkmk-secextensions"></a>Security settings extension to Group Policy

Organizational units, domains, and sites are linked to Group Policy Objects. The security settings tool allows you to change the security configuration of the Group Policy Object, in turn, affecting multiple computers. With security settings, you can modify the security settings of many devices, depending on the Group Policy Object you modify, from just one device joined to a domain.

Security settings or security policies are rules that are configured on a device or multiple devices for protecting resources on a device or network. Security settings can control:

- How users are authenticated to a network or device
- What resources users are authorized to use
- Whether or not a user's or group's actions are recorded in the event log
- Group membership

You can change the security configuration on multiple computers in two ways:

- Create a security policy by using a security template with Security Templates, and then import the template through security settings to a Group Policy Object.
- Change a few select settings with security settings.

### <a href="" id="bkmk-localsecpol"></a>Local Security Policy

A security policy is a combination of security settings that affect the security on a device. You can use your local security policy to edit account policies and local policies on your local device

With the local security policy, you can control:

- Who accesses your device
- What resources users are authorized to use on your device
- Whether or not a user's or group's actions are recorded in the event log

If your local device is joined to a domain, you're subject to obtaining a security policy from the domain's policy or from the policy of any organizational unit that you're a member of. If you're getting a policy from more than one source, conflicts are resolved in the following order of precedence.

1. Organizational unit policy
1. Domain policy
1. Site policy
1. Local computer policy

If you modify the security settings on your local device by using the local security policy, then you're directly modifying the settings on your device. Therefore, the settings take effect immediately, but this effect may only be temporary. The settings will actually remain in effect on your local device until the next refresh of Group Policy security settings, when the security settings that are received from Group Policy will override your local settings wherever there are conflicts.

### Using the Security Configuration Manager

For procedures on how to use the Security Configuration Manager, see [Security Configuration Manager How To](/previous-versions/windows/it-pro/windows-server-2003/cc784762(v=ws.10)). This section contains information in this topic about:

- [Applying security settings](#applying-security-settings)
- [Importing and exporting security templates](#importing-and-exporting-security-templates)
- [Analyzing security and viewing results](#analyzing-security-and-viewing-results)
- [Resolving security discrepancies](#resolving-security-discrepancies)
- [Automating security configuration tasks](#automating-security-configuration-tasks)

### <a href="" id="bkmk-applysecsettings"></a>Applying security settings

Once you've edited the security settings, the settings are refreshed on the computers in the organizational unit linked to your Group Policy Object:

- When a device is restarted, the settings on that device will be refreshed.
- To force a device to refresh its security settings and all Group Policy settings, use gpupdate.exe.

**Precedence of a policy when more than one policy is applied to a computer**

For security settings that are defined by more than one policy, the following order of precedence is observed:

1. Organizational Unit Policy
1. Domain Policy
1. Site Policy
1. Local computer Policy

For example, a workstation that is joined to a domain will have its local security settings overridden by the domain policy wherever there's a conflict. Likewise, if the same workstation is a member of an Organizational Unit, the settings applied from the Organizational Unit's policy will override
both the domain and local settings. If the workstation is a member of more than one Organizational Unit, then the Organizational Unit that immediately contains the workstation has the highest order of precedence.

> [!NOTE]
> Use gpresult.exe to find out what policies are applied to a device and in what order.  
For domain accounts, there can be only one account policy that includes password policies, account lockout policies, and Kerberos policies.

**Persistence in security settings**

Security settings may still persist even if a setting is no longer defined in the policy that originally applied it.

Persistence in security settings occurs when:

- The setting hasn't been previously defined for the device.
- The setting is for a registry object.
- The setting is for a file system object.

All settings applied through local policy or a Group Policy Object are stored in a local database on your device. Whenever a security setting is modified, the computer saves the security setting value to the local database, which retains a history of all the settings that have been applied to the device. If a policy first defines a security setting and then no longer defines that setting, then the setting takes on the previous value in the database. If a previous value doesn't exist in the database, then the setting doesn't revert to anything and remains defined as is. This behavior is sometimes called "tattooing."

Registry and file settings will maintain the values applied through policy until that setting is set to other values.

**Filtering security settings based on group membership**

You can also decide what users or groups will or won't have a Group Policy Object applied to them regardless of what computer they've signed into by denying them either the Apply Group Policy or Read permission on that Group Policy Object. Both of these permissions are needed to apply Group Policy.

### <a href="" id="bkmk-impexpsectmpl"></a>Importing and exporting security templates

Security Configuration and Analysis enables import and export of security templates into or from a database.

If you have made any changes to the analysis database, you can save those settings by exporting them into a template. The export feature enables saving the analysis database settings as a new template file. This template file can then be used to analyze or configure a system, or it can be imported to a Group Policy Object.

### <a href="" id="bkmk-anasecviewresults"></a>Analyzing security and viewing results

Security Configuration and Analysis performs security analysis by comparing the current state of system security against an *analysis database*. During creation, the analysis database uses at least one security template. If you choose to import more than one security template, the database will merge the various templates and create one composite template. It resolves conflicts in order of import; the last template that is imported takes precedence.

Security Configuration and Analysis displays the analysis results by security area, using visual flags to indicate problems. It displays the current system and base configuration settings for each security attribute in the security areas. To change the analysis database settings, right-click the entry, and then click **Properties**.

|Visual flag  |Meaning  |
|---------|---------|
|Red X |The entry is defined in the analysis database and on the system, but the security setting values don't match.|
|Green check mark |The entry is defined in the analysis database and on the system and the setting values match.|
|Question mark |The entry isn't defined in the analysis database and, therefore, wasn't analyzed. <br> If an entry isn't analyzed, it may be that it wasn't defined in the analysis database or that the user who is running the analysis may not have sufficient permission to perform analysis on a specific object or area.|
|Exclamation point |This item is defined in the analysis database, but doesn't exist on the actual system. For example, there may be a restricted group that is defined in the analysis database but doesn't actually exist on the analyzed system.|
|No highlight |The item isn't defined in the analysis database or on the system.|

If you choose to accept the current settings, the corresponding value in the base configuration is modified to match them. If you change the system setting to match the base configuration, the change will be reflected when you configure the system with Security Configuration and Analysis.

To avoid continued flagging of settings that you've investigated and determined to be reasonable, you can modify the base configuration. The changes are made to a copy of the template.

### <a href="" id="bkmk-resolvesecdiffs"></a>Resolving security discrepancies

You can resolve discrepancies between analysis database and system settings by:

- Accepting or changing some or all of the values that are flagged or not included in the configuration, if you determine that the local system security levels are valid due to the context (or role) of that computer. These attribute values are then updated in the database and applied to the system when you click **Configure Computer Now**.
- Configuring the system to the analysis database values, if you determine the system isn't in compliance with valid security levels.  
- Importing a more appropriate template for the role of that computer into the database as the new base configuration and applying it to the system.  
Changes to the analysis database are made to the stored template in the database, not to the security template file. The security template file will only be modified if you either return to Security Templates and edit that template or export the stored configuration to the same template file.  
You should use **Configure Computer Now** only to modify security areas *not* affected by Group Policy settings, such as security on local files and folders, registry keys, and system services. Otherwise, when the Group Policy settings are applied, it will take precedence over local settings—such as account policies.  
In general, don't use **Configure Computer Now** when you're analyzing security for domain-based clients, since you'll have to configure each client individually. In this case, you should return to Security Templates, modify the template, and reapply it to the appropriate Group Policy Object.

### <a href="" id="bkmk-autoseccfgtasks"></a>Automating security configuration tasks

By calling the secedit.exe tool at a command prompt from a batch file or automatic task scheduler, you can use it to automatically create and apply templates, and analyze system security. You can also run it dynamically from a command prompt.
Secedit.exe is useful when you have multiple devices on which security must be analyzed or configured, and you need to perform these tasks during off-hours.

## <a href="" id="bkmk-grouppolicy"></a>Working with Group Policy tools

Group Policy is an infrastructure that allows you to specify managed configurations for users and computers through Group Policy settings and Group Policy Preferences. For Group Policy settings that affect only a local device or user, you can use the Local Group Policy Editor. You can manage Group Policy settings and Group Policy Preferences in an Active Directory Domain Services (AD DS) environment through the Group Policy Management Console (GPMC). Group Policy management tools also are included in the Remote Server Administration Tools pack to provide a way for you to administer Group Policy settings from your desktop.