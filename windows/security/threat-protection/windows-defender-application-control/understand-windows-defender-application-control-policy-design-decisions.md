---
title: Understand Windows Defender Application Control policy design decisions  (Windows 10)
description: Understand Windows Defender Application Control policy design decisions. 
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 02/08/2018
---

# Understand Windows Defender Application Control policy design decisions 

**Applies to:**

-   Windows 10
-   Windows Server 2016

This topic for the IT professional lists the design questions, possible answers, and ramifications of the decisions when you plan a deployment of application control policies by using Windows Defender Application Control (WDAC) within a Windows operating system environment.

When you begin the design and planning process, you should consider the ramifications of your design choices. The resulting decisions will affect your policy deployment scheme and subsequent application control policy maintenance.

You should consider using WDAC as part of your organization's application control policies if all the following are true:

-   You have deployed or plan to deploy the supported versions of Windows in your organization. 
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
| Control all apps | WDAC policies control applications by creating an allowed list of applications. Exceptions are also possible. WDAC policies can only be applied to applications installed on computers running Windows 10 . |
| Control specific apps | When you create WDAC rules, a list of allowed apps are created. All apps on that list will be allowed to run (except those on the exception list). Apps that are not on the list will be prevented from running. WDAC policies can only be applied to apps installed on computers running Windows 10 or Windows Server 2016. |
|Control only Classic Windows applications, only Universal Windows apps, or both| WDAC policies control apps by creating an allowed list of apps based on code signing certificate and\or file hash information. Because Universal Windows apps are all signed by the Windows Store, Classic Windows applications and Universal Windows apps can be controlled together. WDAC policies for Universal Windows apps can be applied only to apps that are installed on PCs that support the Microsoft Store, but Classic Windows applications can be controlled with WDAC on Windows. The rules you currently have configured for Classic Windows applications can remain, and you can create new ones for Universal Windows apps.|
| Control apps by business group | WDAC policies can be applied through a Group Policy Object (GPO) to computer objects within an organizational unit (OU). |
| Control apps by computer, not user | WDAC is a computer-based policy implementation. If your domain or site organizational structure is not based on a logical user structure, such as an OU, you might want to set up that structure before you begin your WDAC planning. Otherwise, you will have to identify users, their computers, and their app access requirements.|
|Understand app usage, but there is no need to control any apps yet | WDAC policies can be set to audit app usage to help you track which apps are used in your organization. You can then use the CodeIntegrity log in Event Viewer to create WDAC policies.|

### How do you currently control app usage in your organization?

Most organizations have evolved app control policies and methods over time. With heightened security concerns and an emphasis on tighter IT control over desktop use, your organization might decide to consolidate app control practices or design a comprehensive application control scheme. WDAC includes improvements over AppLocker and SRP in the architecture and management of application control policies.

| Possible answers | Design considerations |
| - | - |
| Security polices (locally set or through Mobile Device Management (MDM) or Group Policy) | Using WDAC requires increased effort in planning to create correct policies, but this results in a simpler distribution method.| 
| Non-Microsoft app control software | Using WDAC requires a complete app control policy evaluation and implementation.| 
| Managed usage by group or OU | Using WDAC requires a complete app control policy evaluation and implementation.| 
| Authorization Manager or other role-based access technologies | Using WDAC requires a complete app control policy evaluation and implementation.| 
| Other | Using WDAC requires a complete app control policy evaluation and implementation.| 
 
### Are there specific groups in your organization that need customized application control policies?

Most business groups or departments have specific security requirements that pertain to data access and the applications used to access that data. You should consider the scope of the project for each group and the group’s priorities before you deploy application control policies for the entire organization.

| Possible answers | Design considerations |
| - | - |
| Yes | For each group, you need to create a list that includes their application control requirements. Although this may increase the planning time, it will most likely result in a more effective deployment.<br/>If your GPO structure is not currently configured so that you can apply different policies to specific groups, you can alternatively apply WDAC rules in a GPO to specific user groups.|
| No | WDAC policies can be applied globally to applications that are installed on PCs running Windows 10. Depending on the number of apps you need to control, managing all the rules and exceptions might be challenging.|
 
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
| No | You will have to perform an audit and requirements gathering project to discover the application usage. WDAC provides the means to deploy policies in audit mode.|
 
### How do you deploy or sanction applications (upgraded or new) in your organization?

Implementing a successful application control policy is based on your knowledge and understanding of application usage within the organization or business group. In addition, the application control design is dependent on the security requirements for data and the applications that access that data. Understanding the upgrade and deployment policy will help shape the construction of the application control policies.

| Possible answers | Design considerations |
| - | - |
| Ad hoc | You need to gather requirements from each group. Some groups might want unrestricted access or installation, while other groups might want strict controls.| 
|  Strict written policy or guidelines to follow | You need to develop WDAC rules that reflect those policies, and then test and maintain the rules. |
| No process in place | You need to determine if you have the resources to develop an application control policy, and for which groups. |
 
### What are your organization's priorities when implementing application control policies?

Some organizations will benefit from application control policies as shown by an increase in productivity or conformance, while others will be hindered in performing their duties. Prioritize these aspects for each group to allow you to evaluate the effectiveness of WDAC.

| Possible answers | Design considerations |
| - | - |
| Productivity: The organization assures that tools work and required applications can be installed. | To meet innovation and productivity goals, some groups require the ability to install and run a variety of software from different sources, including software that they developed. Therefore, if innovation and productivity is a high priority, managing application control policies through an allowed list might be time consuming and an impediment to progress. |
| Management: The organization is aware of and controls the apps it supports. | In some business groups, application usage can be managed from a central point of control. WDAC policies can be built into a GPO for that purpose. This shifts the burden of app access to the IT department, but it also has the benefit of controlling the number of apps that can be run and controlling the versions of those apps|
| Security: The organization must protect data in part by ensuring that only approved apps are used. | WDAC can help protect data by allowing a defined set of users access to apps that access the data. If security is the top priority, the application control policies will be the most restrictive.|
 
### How are apps currently accessed in your organization?

WDAC is very effective for organizations that have application restriction requirements if they have environments with a simple topography and application control policy goals that are straightforward. For example, WDAC can benefit an environment where non-employees have access to computers that are connected to the organizational network, such as a school or library. Large organizations also benefit from WDAC policy deployment when the goal is to achieve a detailed level of control on the desktop computers with a relatively small number of applications to manage, or when the applications are manageable with a small number of rules.

| Possible answers | Design considerations |
| - | - |
| Users run without administrative rights. | Apps are installed by using an installation deployment technology.|
| WDAC can help reduce the total cost of ownership for business groups that typically use a finite set of apps, such as human resources and finance departments. At the same time, these departments access highly sensitive information, much of which contains confidential and proprietary information. By using WDAC to create rules for specific apps that are allowed to run, you can help limit unauthorized applications from accessing this information.<br/>**Note: **WDAC can also be effective in helping create standardized desktops in organizations where users run as administrators. | Users must be able to install applications as needed. 
| Users currently have administrator access, and it would be difficult to change this.|Enforcing WDAC rules is not suited for business groups that must be able to install apps as needed and without approval from the IT department. If one or more OUs in your organization has this requirement, you can choose not to enforce application rules in those OUs by using WDAC or to implement the audit only enforcement setting.|
 
### Is the structure in Active Directory Domain Services based on the organization's hierarchy?

Designing application control policies based on an organizational structure that is already built into Active Directory Domain Services (AD DS) is easier than converting the existing structure to an organizational structure. 
Because the effectiveness of application control policies is dependent on the ability to update policies, consider what organizational work needs to be accomplished before deployment begins.

| Possible answers | Design considerations |
| - | - |
| Yes | WDAC rules can be developed and implemented through Group Policy, based on your AD DS structure.|
| No | The IT department must create a scheme to identify how application control policies can be applied to the correct user or computer.|
 
## Record your findings

The next step in the process is to record and analyze your answers to the preceding questions. If WDAC is the right solution for your goals, you can set your application control policy objectives and plan your WDAC rules. 
