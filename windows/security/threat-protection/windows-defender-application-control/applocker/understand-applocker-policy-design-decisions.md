---
title: Understand AppLocker policy design decisions (Windows 10)
description: This topic for the IT professional lists the design questions, possible answers, and ramifications of the decisions when you plan a deployment of application control policies by using AppLocker within a Windows operating system environment.
ms.assetid: 3475def8-949a-4b51-b480-dc88b5c1e6e6
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 10/13/2017
---

# Understand AppLocker policy design decisions

**Applies to**
- Windows 10
- Windows Server

This topic for the IT professional lists the design questions, possible answers, and ramifications of the decisions when you plan a deployment of application control policies by using AppLocker within a Windows operating system environment.

When you begin the design and planning process, you should consider the ramifications of your design choices. The resulting decisions will affect your policy deployment scheme and subsequent application control policy maintenance.

You should consider using AppLocker as part of your organization's application control policies if all the following are true:

-   You have deployed or plan to deploy the supported versions of Windows in your organization. For specific operating system version requirements, see [Requirements to Use AppLocker](requirements-to-use-applocker.md).
-   You need improved control over the access to your organization's applications and the data your users access.
-   The number of applications in your organization is known and manageable.
-   You have resources to test policies against the organization's requirements.
-   You have resources to involve Help Desk or to build a self-help process for end-user application access issues.
-   The group's requirements for productivity, manageability, and security can be controlled by restrictive policies.

The following questions are not in priority or sequential order. They should be considered when you deploy application control policies (as appropriate for your targeted environment).

### Which apps do you need to control in your organization?

You might need to control a limited number of apps because they access sensitive data, or you might have to exclude all applications except those that are sanctioned for business purposes. There might be certain business groups that require strict control, and others that promote independent application usage.

| Possible answers | Design considerations|
| - | - |
| Control all apps | AppLocker policies control applications by creating an allowed list of applications by file type. Exceptions are also possible. AppLocker policies can only be applied to applications installed on computers running one of the supported versions of Windows. For specific operating system version requirements, see [Requirements to use AppLocker](requirements-to-use-applocker.md).|
| Control specific apps | When you create AppLocker rules, a list of allowed apps are created. All apps on that list will be allowed to run (except those on the exception list). Apps that are not on the list will be prevented from running. AppLocker policies can only be applied to apps installed on computers running any of the supported versions of Windows. For specific operating system version requirements, see [Requirements to use AppLocker](requirements-to-use-applocker.md).|
|Control only Classic Windows applications, only Universal Windows apps, or both| AppLocker policies control apps by creating an allowed list of apps by file type. Because Universal Windows apps are categorized under the Publisher condition, Classic Windows applications and Universal Windows apps can be controlled together. AppLocker policies for Universal Windows apps can be applied only to apps that are installed on PCs that support the Microsoft Store, but Classic Windows applications can be controlled with AppLocker on all supported versions of Windows. The rules you currently have configured for Classic Windows applications can remain, and you can create new ones for Universal Windows apps.<br/>For a comparison of Classic Windows applications and Universal Windows apps, see [Comparing Classic Windows applications and Universal Windows apps for AppLocker policy design decisions](#bkmk-compareclassicmetro) in this topic.|
| Control apps by business group and user | AppLocker policies can be applied through a Group Policy Object (GPO) to computer objects within an organizational unit (OU). Individual AppLocker rules can be applied to individual users or to groups of users.|
| Control apps by computer, not user | AppLocker is a computer-based policy implementation. If your domain or site organizational structure is not based on a logical user structure, such as an OU, you might want to set up that structure before you begin your AppLocker planning. Otherwise, you will have to identify users, their computers, and their app access requirements.|
|Understand app usage, but there is no need to control any apps yet | AppLocker policies can be set to audit app usage to help you track which apps are used in your organization. You can then use the AppLocker event log to create AppLocker policies.|

>**Important:**  The following list contains files or types of files that cannot be managed by AppLocker:

-   AppLocker does not protect against running 16-bit DOS binaries in a NT Virtual DOS Machine (NTVDM). This technology allows running legacy DOS and 16-bit Windows programs on computers that are using Intel 80386 or higher when there is already another operating system running and controlling the hardware. The result is that 16-bit binaries can still run on Windows Server 2008 R2 and Windows 7 when AppLocker is configured to otherwise block binaries and libraries. If it is a requirement to prevent 16-bit applications from running, you must configure the Deny rule in the Executable rule collection for NTVDM.exe.

-   You cannot use AppLocker to prevent code from running outside the Win32 subsystem. In particular, this applies to the (POSIX) subsystem in Windows NT. If it is a requirement to prevent applications from running in the POSIX subsystem, you must disable the subsystem.

-   AppLocker can only control VBScript, JScript, .bat files, .cmd files and Windows PowerShell scripts. It does not control all interpreted code that runs within a host process, for example Perl scripts and macros. Interpreted code is a form of executable code that runs within a host process. For example, Windows batch files (\*.bat) run within the context of the Windows Command Host (cmd.exe). To use AppLocker to control interpreted code, the host process must call AppLocker before it runs the interpreted code, and then enforce the decision that is returned by AppLocker. Not all host processes call into AppLocker. Therefore, AppLocker cannot control every kind of interpreted code, for example Microsoft Office macros.

    >**Important:**  You should configure the appropriate security settings of these host processes if you must allow them to run. For example, configure the security settings in Microsoft Office to ensure that only signed and trusted macros are loaded.

-   AppLocker rules allow or prevent an app from launching. AppLocker does not control the behavior of apps after they are launched. Applications could contain flags that are passed to functions that signal AppLocker to circumvent the rules and allow another .exe or .dll file to be loaded. In practice, an app that is allowed by AppLocker could use these flags to bypass AppLocker rules and launch child processes. You must follow a process that best suits your needs to thoroughly vet each app before allowing them to run using AppLocker rules.

    For more info, see [Security considerations for AppLocker](security-considerations-for-applocker.md).

### <a href="" id="bkmk-compareclassicmetro"></a>Comparing Classic Windows applications and Universal Windows apps for AppLocker policy design decisions

AppLocker policies for Universal Windows apps can only be applied to apps that are installed on computers running Windows operating systems that support Microsoft Store apps. However, Classic Windows applications can be controlled in Windows Server 2008 R2 and Windows 7, in addition to those computers that support Universal Windows apps. The rules for Classic Windows applications and Universal Windows apps can be enforced together. The differences you should consider for Universal Windows apps are:

-   All Universal Windows apps can be installed by a standard user, whereas a number of Classic Windows applications require administrative credentials to install. So in an environment where most of the users are standard users, you might not need numerous exe rules, but you might want more explicit policies for packaged apps.
-   Classic Windows applications can be written to change the system state if they run with administrative credentials. Most Universal Windows apps cannot change the system state because they run with limited permissions. When you design your AppLocker policies, it is important to understand whether an app that you are allowing can make system-wide changes.
-   Universal Windows apps can be acquired through the Store, or they can be side-loaded by using Windows PowerShell cmdlets. If you use Windows PowerShell cmdlets, a special Enterprise license is required to acquire Universal Windows apps. Classic Windows applications can be acquired through traditional means, such as through software vendors or retail distribution.

AppLocker controls Universal Windows apps and Classic Windows applications by using different rule collections. You have the choice to control Universal Windows apps, Classic Windows applications, or both.

For more info, see [Packaged apps and packaged app installer rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md).

### How do you currently control app usage in your organization?

Most organizations have evolved app control policies and methods over time. With heightened security concerns and an emphasis on tighter IT control over desktop use, your organization might decide to consolidate app control practices or design a comprehensive application control scheme. AppLocker includes improvements over SRP in the architecture and management of application control policies.

| Possible answers | Design considerations |
| - | - |
| Security polices (locally set or through Group Policy) | Using AppLocker requires increased effort in planning to create correct policies, but this results in a simpler distribution method.| 
| Non-Microsoft app control software | Using AppLocker requires a complete app control policy evaluation and implementation.| 
| Managed usage by group or OU | Using AppLocker requires a complete app control policy evaluation and implementation.| 
| Authorization Manager or other role-based access technologies | Using AppLocker requires a complete app control policy evaluation and implementation.| 
| Other | Using AppLocker requires a complete app control policy evaluation and implementation.| 

### Which Windows desktop and server operating systems are running in your organization?

If your organization supports multiple Windows operating systems, app control policy planning becomes more complex. Your initial design decisions should consider the security and management priorities of applications that are installed on each version of the operating system.
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Possible answers</th>
<th align="left">Design considerations</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Your organization&#39;s computers are running a combination of the following operating systems:</p>
<ul>
<li><p>Windows 10</p></li>
<li><p>Windows 8</p></li>
<li><p>Windows 7</p></li>
<li><p>Windows Vista</p></li>
<li><p>Windows XP</p></li>
<li><p>Windows Server 2012</p></li>
<li><p>Windows Server 2008 R2</p></li>
<li><p>Windows Server 2008</p></li>
<li><p>Windows Server 2003</p></li>
</ul></td>
<td align="left"><p>AppLocker rules are only applied to computers running the supported versions of Windows, but SRP rules can be applied to all versions of Windows beginning with Windows XP and Windows Server 2003. For specific operating system version requirements, see <a href="requirements-to-use-applocker.md" data-raw-source="[Requirements to use AppLocker](requirements-to-use-applocker.md)">Requirements to use AppLocker</a>.</p>
<div class="alert">
<strong>Note</strong><br/><p>If you are using the Basic User security level as assigned in SRP, those privileges are not supported on computers running that support AppLocker.</p>
</div>
<div>

</div>
<p>AppLocker policies as applied through a GPO take precedence over SRP policies in the same or linked GPO. SRP policies can be created and maintained the same way.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Your organization&#39;s computers are running only the following operating systems:</p>
<ul>
<li><p>Windows 10</p></li>
<li><p>Windows 8.1</p></li>
<li><p>Windows 8</p></li>
<li><p>Windows 7</p></li>
<li><p>Windows Server 2012 R2</p></li>
<li><p>Windows Server 2012</p></li>
<li><p>Windows Server 2008 R2</p></li>
</ul></td>
<td align="left"><p>Use AppLocker to create your application control policies.</p></td>
</tr>
</tbody>
</table>

### Are there specific groups in your organization that need customized application control policies?

Most business groups or departments have specific security requirements that pertain to data access and the applications used to access that data. You should consider the scope of the project for each group and the group’s priorities before you deploy application control policies for the entire organization.

| Possible answers | Design considerations |
| - | - |
| Yes | For each group, you need to create a list that includes their application control requirements. Although this may increase the planning time, it will most likely result in a more effective deployment.<br/>If your GPO structure is not currently configured so that you can apply different policies to specific groups, you can alternatively apply AppLocker rules in a GPO to specific user groups.|
| No | AppLocker policies can be applied globally to applications that are installed on PCs running the supported versions of Windows as listed in [Requirements to use AppLocker](requirements-to-use-applocker.md). Depending on the number of apps you need to control, managing all the rules and exceptions might be challenging.|

### Does your IT department have resources to analyze application usage, and to design and manage the policies?

The time and resources that are available to you to perform the research and analysis can affect the detail of your plan and processes for continuing policy management and maintenance.

| Possible answers | Design considerations |
| - | - |
| Yes | Invest the time to analyze your organization's application control requirements, and plan a complete deployment that uses rules that are as simply constructed as possible.|
| No | Consider a focused and phased deployment for specific groups by using a small number of rules. As you apply controls to applications in a specific group, learn from that deployment to plan your next deployment. |

### Does your organization have Help Desk support?

Preventing your users from accessing known, deployed, or personal applications will initially cause an increase in end-user support. It will be necessary to address the various support issues in your organization so security policies are followed and business workflow is not hampered.

| Possible answers | Design considerations |
| - | - |
| Yes | Involve the support department early in the planning phase because your users may inadvertently be blocked from using their applications, or they may seek exceptions to use specific applications. |
| No | Invest time in developing online support processes and documentation before deployment. |


### Do you know what applications require restrictive policies?
Any successful application control policy implementation is based on your knowledge and understanding of app usage within the organization or business group. In addition, the application control design is dependent on the security requirements for data and the apps that access that data.

| Possible answers | Design considerations |
| - | - |
| Yes | You should determine the application control priorities for a business group and then attempt to design the simplest scheme for their application control policies. |
| No | You will have to perform an audit and requirements gathering project to discover the application usage. AppLocker provides the means to deploy policies in **Audit only** mode, and tools to view the event logs.|

### How do you deploy or sanction applications (upgraded or new) in your organization?

Implementing a successful application control policy is based on your knowledge and understanding of application usage within the organization or business group. In addition, the application control design is dependent on the security requirements for data and the applications that access that data. Understanding the upgrade and deployment policy will help shape the construction of the application control policies.

| Possible answers | Design considerations |
| - | - |
| Ad hoc | You need to gather requirements from each group. Some groups might want unrestricted access or installation, while other groups might want strict controls.| 
|  Strict written policy or guidelines to follow | You need to develop AppLocker rules that reflect those policies, and then test and maintain the rules. |
| No process in place | You need to determine if you have the resources to develop an application control policy, and for which groups. |


### Does your organization already have SRP deployed?

Although SRP and AppLocker have the same goal, AppLocker is a major revision of SRP.

| Possible answers | Design considerations |
| - | - |
| Yes | You cannot use AppLocker to manage SRP settings, but you can use SRP to manage application control policies on computers running on any of the supported operating systems listed in [Requirements to use AppLocker](requirements-to-use-applocker.md). In addition, if AppLocker and SRP settings are configured in the same GPO, only the AppLocker settings will be enforced on computers running those supported operating systems.<br/><br/>**Note:** If you are using the Basic User security level as assigned in SRP, those permissions are not supported on computers running the supported operating systems.|
| No | Policies that are configured for AppLocker can only be applied to computers running the supported operating systems, but SRP is also available on those operating systems. |

### What are your organization's priorities when implementing application control policies?

Some organizations will benefit from application control policies as shown by an increase in productivity or conformance, while others will be hindered in performing their duties. Prioritize these aspects for each group to allow you to evaluate the effectiveness of AppLocker.

| Possible answers | Design considerations |
| - | - |
| Productivity: The organization assures that tools work and required applications can be installed. | To meet innovation and productivity goals, some groups require the ability to install and run a variety of software from different sources, including software that they developed. Therefore, if innovation and productivity is a high priority, managing application control policies through an allowed list might be time consuming and an impediment to progress. |
| Management: The organization is aware of and controls the apps it supports. | In some business groups, application usage can be managed from a central point of control. AppLocker policies can be built into a GPO for that purpose. This shifts the burden of app access to the IT department, but it also has the benefit of controlling the number of apps that can be run and controlling the versions of those apps|
| Security: The organization must protect data in part by ensuring that only approved apps are used. | AppLocker can help protect data by allowing a defined set of users access to apps that access the data. If security is the top priority, the application control policies will be the most restrictive.|

### How are apps currently accessed in your organization?

AppLocker is very effective for organizations that have application restriction requirements if they have environments with a simple topography and application control policy goals that are straightforward. For example, AppLocker can benefit an environment where non-employees have access to computers that are connected to the organizational network, such as a school or library. Large organizations also benefit from AppLocker policy deployment when the goal is to achieve a detailed level of control on the desktop computers with a relatively small number of applications to manage, or when the applications are manageable with a small number of rules.

| Possible answers | Design considerations |
| - | - |
| Users run without administrative rights. | Apps are installed by using an installation deployment technology.|
| AppLocker can help reduce the total cost of ownership for business groups that typically use a finite set of apps, such as human resources and finance departments. At the same time, these departments access highly sensitive information, much of which contains confidential and proprietary information. By using AppLocker to create rules for specific apps that are allowed to run, you can help limit unauthorized applications from accessing this information.<br/>**Note: **AppLocker can also be effective in helping create standardized desktops in organizations where users run as administrators. However, it is important to note that users with administrative credentials can add new rules to the local AppLocker policy.| Users must be able to install applications as needed. 
| Users currently have administrator access, and it would be difficult to change this.|Enforcing AppLocker rules is not suited for business groups that must be able to install apps as needed and without approval from the IT department. If one or more OUs in your organization has this requirement, you can choose not to enforce application rules in those OUs by using AppLocker or to implement the **Audit only** enforcement setting through AppLocker.|

### Is the structure in Active Directory Domain Services based on the organization's hierarchy?

Designing application control policies based on an organizational structure that is already built into Active Directory Domain Services (AD DS) is easier than converting the existing structure to an organizational structure. 
Because the effectiveness of application control policies is dependent on the ability to update policies, consider what organizational work needs to be accomplished before deployment begins.

| Possible answers | Design considerations |
| - | - |
| Yes | AppLocker rules can be developed and implemented through Group Policy, based on your AD DS structure.|
| No | The IT department must create a scheme to identify how application control policies can be applied to the correct user or computer.|

## Record your findings

The next step in the process is to record and analyze your answers to the preceding questions. If AppLocker is the right solution for your goals, you can set your application control policy objectives and plan your AppLocker rules. This process culminates in creating your planning document.

-   For info about setting your policy goals, see [Determine your application control objectives](determine-your-application-control-objectives.md).

