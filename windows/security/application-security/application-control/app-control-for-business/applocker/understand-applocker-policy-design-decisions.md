---
title: Understand AppLocker policy design decisions
description: Review some common considerations while you're planning to use AppLocker to deploy application control policies within a Windows environment.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understand AppLocker policy design decisions

This article describes AppLocker design questions, possible answers, and other considerations when you plan a deployment of application control policies by using AppLocker.

When you begin the design and planning process, you should consider the effect of your design choices. The resulting decisions affect your policy deployment scheme and subsequent application control policy maintenance.

You should consider using AppLocker as part of your organization's application control policies if all the following are true:

- You're running supported versions of Windows in your organization. For specific operating system version requirements, see [Requirements to Use AppLocker](requirements-to-use-applocker.md).
- You need improved control over the access to your organization's applications.
- The number of applications in your organization is known and manageable.
- You have resources to test policies against the organization's requirements.
- You have resources to involve Help Desk or to build a self-help process for end-user application access issues.

The following are some questions you should consider when you deploy application control policies (as appropriate for your targeted environment).

## Which apps do you need to control in your organization?

You might need to control a limited number of applications because they access sensitive data, or you only want to allow apps approved for business purposes. There might be certain business groups that require strict control, and others that promote independent application usage.

| Possible answers | Design considerations|
| --- | --- |
| Control all apps | AppLocker policies control applications by creating an allowed list of applications by file type. Exceptions are also possible. AppLocker policies can only be applied to applications installed on computers running one of the supported versions of Windows. |
| Control specific apps | When you create AppLocker rules, a list of allowed apps is created. All applications on that list are allowed to run (except those applications on the exception list). Applications that aren't on the list are blocked from running. AppLocker policies can only be applied to apps installed on computers running any of the supported versions of Windows. |
| Control only Classic Windows applications, only Packaged apps, or both | AppLocker policies control apps by creating an allowed list of apps by file type. Because Packaged apps are categorized under the Publisher condition, Classic Windows applications and Packaged apps can be controlled together. The rules you currently have for Classic Windows applications can remain, and you can create new ones for Packaged apps. <br/> For a comparison of Classic Windows applications and Packaged apps, see [Comparing Classic Windows applications and Packaged apps for AppLocker policy design decisions](#comparing-classic-windows-applications-and-packaged-apps-for-applocker-policy-design-decisions) in this article.|
| Control apps by business group and user | AppLocker policies can be applied through a Group Policy Object (GPO) to computer objects within an organizational unit (OU). Individual AppLocker rules can be applied to individual users or to groups of users.|
| Control apps by computer, not user | AppLocker is a computer-based policy implementation. If your domain or site organizational structure isn't based on a logical user structure, such as an OU, you might want to set up that structure before you begin your AppLocker planning. Otherwise, you have to identify users, their computers, and their app access requirements.|
| Understand app usage, but there's no need to control any apps yet | AppLocker policies can be set to audit app usage to help you track which apps are used in your organization. You can then use the AppLocker event log to create AppLocker policies.|

> [!NOTE]
> AppLocker rules allow or block an app or binary from launching. AppLocker doesn't control the behavior of apps after they're launched. For more info, see [Security considerations for AppLocker](security-considerations-for-applocker.md).

### Comparing Classic Windows applications and Packaged apps for AppLocker policy design decisions

AppLocker policies for Packaged apps can only be applied to apps that are installed on computers running Windows operating systems that support Microsoft Store apps. However, Classic Windows applications can be controlled in Windows Server 2008 R2 and Windows 7, in addition to those computers that support Packaged apps. The rules for Classic Windows applications and Packaged apps can be enforced together. The differences you should consider for Packaged apps are:

- Standard users can install Packaged apps, whereas many Classic Windows applications require administrative credentials to install. So in an environment where most of the users are standard users, you might not need numerous exe rules, but you might want more explicit policies for packaged apps.
- Classic Windows applications can be written to change the system state if they run with administrative credentials. Most Packaged apps can't change the system state because they run with limited permissions. When you design your AppLocker policies, it's important to understand whether an app that you're allowing can make system-wide changes.
- Packaged apps can be acquired through the Store, or they can be side-loaded by using Windows PowerShell cmdlets. If you use Windows PowerShell cmdlets, a special Enterprise license is required to acquire Packaged apps. Classic Windows applications can be acquired through traditional means, such as through software vendors or retail distribution.

AppLocker controls Packaged apps and Classic Windows applications by using different rule collections. You have the choice to control Packaged apps, Classic Windows applications, or both.

For more info, see [Packaged apps and packaged app installer rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md).

### Using AppLocker to control scripts

AppLocker script enforcement involves a handshake between an enlightened script host, such as PowerShell, and AppLocker. However, the script host handles the actual enforcement behavior. Most script hosts first ask AppLocker whether a script should be allowed to run based on the AppLocker policies currently active. The script host then either blocks, allows, or changes *how* the script is run to best protect the user and the device.

AppLocker uses the *AppLocker - MSI and Script* event log for all script enforcement events. Whenever a script host asks AppLocker if a script should be allowed, an event is logged with the answer AppLocker returned to the script host.

> [!NOTE]
> When a script runs that is not allowed by policy, AppLocker raises an event indicating that the script was "blocked." However, the actual script enforcement behavior is handled by the script host and may not actually completely block the file from running.

AppLocker script enforcement can only control VBScript, JScript, .bat files, .cmd files and Windows PowerShell scripts. It doesn't control all interpreted code that runs within a host process, for example Perl scripts and macros. Interpreted code is a form of executable code that runs within a host process. For example, Windows batch files (\*.bat) run within the context of the Windows Command Host (cmd.exe). To use AppLocker to control interpreted code, the host process must call AppLocker before it runs the interpreted code, and then enforce the decision that from AppLocker. Not all host processes call into AppLocker. Therefore, AppLocker can't control every kind of interpreted code, for example Microsoft Office macros.

  > [!IMPORTANT]
  > You should configure the appropriate security settings of these host processes if you must allow them to run. For example, configure the security settings in Microsoft Office to ensure that only signed and trusted macros are loaded.

## How do you currently control app usage in your organization?

Most organizations evolve their app control policies and methods over time. AppLocker is best in organizations with well-managed application deployment and approval processes.

| Possible answers | Design considerations |
| --- | --- |
| Security policies (locally set or through Group Policy) | Using AppLocker requires increased effort in planning to create correct policies, but this policy creation results in a simpler distribution method. |
| Non-Microsoft app control software | Using AppLocker requires a complete app control policy evaluation and implementation. |
| Managed usage by group or OU | Using AppLocker requires a complete app control policy evaluation and implementation. |
| Authorization Manager or other role-based access technologies | Using AppLocker requires a complete app control policy evaluation and implementation. |
| Other | Using AppLocker requires a complete app control policy evaluation and implementation. |

## Are there specific groups in your organization that need customized application control policies?

Most business groups or departments have specific security requirements that pertain to data access and the applications used to access that data. You should consider the scope of the project for each group and the group's priorities before you deploy application control policies for the entire organization.

| Possible answers | Design considerations |
| --- | --- |
| Yes | For each group, you need to create a list that includes their application control requirements. Although this consideration can increase the planning time, it often results in a more effective deployment. <br/> If your GPO structure doesn't match organizational groups, you can apply AppLocker rules to specific user groups. |
| No | AppLocker policies can be applied globally to applications that are installed. Depending on the number of apps you need to control, managing all the rules and exceptions might be challenging.|

## Does your IT department have resources to analyze application usage, and to design and manage the policies?

The time and resources that are available to you to perform the research and analysis can affect the detail of your plan and processes for continuing policy management and maintenance.

| Possible answers | Design considerations |
| --- | --- |
| Yes | Invest the time to analyze your organization's application control requirements, and plan a complete deployment that uses rules that are as constructed as possible. |
| No | Consider a focused and phased deployment for specific groups by using a few rules. As you apply controls to applications in a specific group, learn from that deployment to plan your next deployment. |

## Does your organization have Help Desk support?

When you prevent your users from accessing applications, it causes an increase in end-user support, at least initially. It's necessary to address the various support issues in your organization so security policies are followed and business workflow isn't hampered.

| Possible answers | Design considerations |
| --- | --- |
| Yes | Involve the support department early in the planning phase because your users might be blocked from using their applications, or they might seek exceptions to use specific applications. |
| No | Invest time in developing online support processes and documentation before deployment. |

## Do you know what applications require restrictive policies?

Any successful application control policy implementation is based on your knowledge and understanding of app usage within the organization or business group. In addition, the application control design is dependent on the security requirements for data and the apps that access that data.

| Possible answers | Design considerations |
| --- | --- |
| Yes | You should determine the application control priorities for a business group and then attempt to design the simplest scheme for their application control policies. |
| No | You must perform an audit and requirements gathering project to discover the application usage. AppLocker provides the means to deploy policies in **Audit only** mode, and tools to view the event logs. |

## How do you deploy or approve applications (upgraded or new) in your organization?

Implementing a successful application control policy is based on your knowledge and understanding of application usage within the organization or business group. In addition, the application control design is dependent on the security requirements for data and the applications that access that data. Understanding the upgrade and deployment policy helps shape the construction of the application control policies.

| Possible answers | Design considerations |
| --- | --- |
| Unplanned | You need to gather requirements from each group. Some groups might want unrestricted access or installation, while other groups might want strict controls. |
|  Strict written policy or guidelines to follow | You need to develop AppLocker rules that reflect those policies, and then test and maintain the rules. |
| No process in place | You need to determine if you have the resources to develop an application control policy, and for which groups. |

## What are your organization's priorities when implementing application control policies?

Some organizations benefit from application control policies as shown by an increase in productivity or conformance, while others are hindered in performing their duties. Prioritize these aspects for each group to allow you to evaluate the effectiveness of AppLocker.

| Possible answers | Design considerations |
| --- | --- |
| Productivity: The organization assures that tools work and required applications can be installed. | To meet innovation and productivity goals, some groups require the ability to install and run various software from different sources, including software that they developed. Therefore, if innovation and productivity are a high priority, managing application control policies through an allowed list might be time consuming and an impediment to progress. |
| Management: The organization is aware of and controls the applications it supports. | In some business groups, application usage can be managed from a central point of control. AppLocker policies can be built into a GPO for that purpose. |
| Security: The organization must protect data in part by ensuring that only approved apps are used. | AppLocker can help protect data by allowing a defined set of users to apps that access the data. If security is the top priority, your application control policies can be more restrictive. |

## How are apps currently accessed in your organization?

AppLocker is effective for organizations with well-managed application management with straightforward application control policy goals. For example, AppLocker can benefit an environment where nonemployees have access to computers that are connected to the organizational network, such as a school or library.

| Possible answers | Design considerations |
| --- | --- |
| Users run without administrative rights. | Apps are installed by using an installation deployment technology. |
| AppLocker can help reduce the total cost of ownership for business groups that typically use a finite set of apps, such as human resources and finance departments. At the same time, these departments access highly sensitive information, much of which contains confidential and proprietary information. By using AppLocker to create rules for specific apps that are allowed to run, you can help limit unauthorized applications from accessing this information. <br/> <br/> **Note:** AppLocker can also be effective in helping create standardized desktops in organizations where users run as administrators. However, it's important to note that users with administrative credentials can add new rules to the local AppLocker policy.| Users must be able to install applications as needed. |
| Users currently have administrator access, and it would be difficult to change this privilege. | Enforcing AppLocker rules isn't suited for business groups that must be able to install apps as needed and without approval from the IT department. If one or more OUs in your organization has this requirement, you can choose not to enforce application rules in those OUs by using AppLocker or to implement the **Audit only** enforcement setting through AppLocker. |

## Is the structure in Active Directory Domain Services based on the organization's hierarchy?

Designing application control policies based on an organizational structure that is already built into Active Directory Domain Services (AD DS) is easier than converting the existing structure to an organizational structure. Because the effectiveness of application control policies is dependent on the ability to update policies, consider what organizational work needs to be accomplished before deployment begins.

| Possible answers | Design considerations |
| --- | --- |
| Yes | AppLocker rules can be developed and implemented through Group Policy, based on your AD DS structure. |
| No | The IT department must create a scheme to identify how application control policies can be applied to the correct user or computer. |

## Record your findings

The next step in the process is to record and analyze your answers to the preceding questions. If AppLocker is the right solution for your goals, you can set your application control policy objectives and plan your AppLocker rules. This process culminates in creating your planning document.
