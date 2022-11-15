---
title: Create a list of apps deployed to each business group (Windows)
description: This topic describes the process of gathering app usage requirements from each business group to implement application control policies by using AppLocker.
ms.assetid: d713aa07-d732-4bdc-8656-ba616d779321
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
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Create a list of apps deployed to each business group

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic describes the process of gathering app usage requirements from each business group in order to implement application control policies by using AppLocker.

## Determining app usage

For each business group, determine the following information:

-   The complete list of apps used, including different versions of an app
-   The full installation path of the app
-   The publisher and signed status of each app
-   The type of requirement the business groups set for each app, such as business critical, business productivity, optional, or personal. It might also be helpful during this effort to identify which apps are supported or unsupported by your IT department, or supported by others outside your control.
-   A list of files or apps that require administrative credentials to install or run. If the file requires administrative credentials to install or run, users who can't provide administrative credentials will be prevented from running the file even if the file is explicitly allowed by an AppLocker policy. Even with AppLocker policies enforced, only members of the Administrators group can install or run files that require administrative credentials.

### How to perform the app usage assessment

You might already have a method in place to understand app usage for each business group. You'll need to use this information to help create your AppLocker rule collection. AppLocker includes the Automatically Generate 
Rules wizard and the **Audit only** enforcement configuration to assist you with planning and creating your rule collection.

**Application inventory methods**

Using the Automatically Generate Rules wizard quickly creates rules for the applications you specify. The wizard is designed specifically to build a rule collection. You can use the Local Security Policy snap-in to view and edit the rules. This method is useful when creating rules from a reference computer and when creating and evaluating AppLocker policies in a testing environment. However, it does require that the files be accessible on the reference computer or through a network drive. This requirement might mean more work in setting up the reference computer and determining a maintenance policy for that computer.

Using the **Audit only** enforcement method permits you to view the logs because it collects information about every process on the computers receiving the Group Policy Object (GPO). Therefore, you can see what the enforcement will be on the computers in a business group. AppLocker includes Windows PowerShell cmdlets that you can use to analyze the events from the event log and cmdlets to create rules. However, when you use Group Policy to deploy to several computers, a means to collect events in a central location is important for manageability. Because AppLocker logs information about files that users or other processes start on a computer, you could miss creating some rules initially. Therefore, you should continue your evaluation until you can verify that all required applications that are allowed to run are accessed successfully.

> [!TIP]
> If you run Application Verifier against a custom application with any AppLocker policies enabled, it might prevent the application from running. You should either disable Application Verifier or AppLocker.  
You can create an inventory of Universal Windows apps on a device by using two methods: the **Get-AppxPackage** Windows PowerShell cmdlet or the AppLocker console.
 
The following topics describe how to perform each method:

-   [Run the Automatically Generate Rules wizard](run-the-automatically-generate-rules-wizard.md)
-   [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md)

### Prerequisites to completing the inventory

Identify the business group and each organizational unit (OU) within that group to which you'll apply application control policies. In addition, you should have identified whether or not AppLocker is the most appropriate solution for these policies. For info about these steps, see the following topics:

-   [Understand AppLocker policy design decisions](understand-applocker-policy-design-decisions.md)
-   [Determine your application control objectives](determine-your-application-control-objectives.md)

## Next steps

Identify and develop the list of apps. Record the name of the app, whether it's signed or not as indicated by the publisher's name, and whether or not it's a mission critical, business productivity, optional, or personal application. Record the installation path of the apps. For more information, see [Document your app list](document-your-application-list.md).

After you've created the list of apps, the next step is to identify the rule collections, which will become the policies. This information can be added to the table under columns labeled:

-   Use default rule or define new rule condition
-   Allow or deny
-   GPO name

For guidance, see the following topics:

-   [Select the types of rules to create](select-types-of-rules-to-create.md)
-   [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)
 
 
