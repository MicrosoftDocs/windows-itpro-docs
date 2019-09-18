---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: security
description: Overview of the available Group Policy management tools
author: lomayor
ms.prod: ie11
ms.assetid: e33bbfeb-6b80-4e71-8bba-1d0369a87312
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Group Policy management tools (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Group Policy management tools
Group Policy, based on Microsoft Active Directory Domain Services (AD DS), lets you manage your organization's computer and user settings as part of your Group Policy objects (GPOs), which are added and changed in the Group Policy Management Console (GPMC). GPOs can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences. The most effective way to target a specific GPO is to use Windows Management Instrumentation (WMI) filters. Like, creating a WMI filter that applies a GPO only to computers with a specific make and model.

By using Group Policy, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple Internet Explorer 11 security settings in a GPO that's linked to a domain, and then apply all of those settings to every computer in the domain.

**Note**<br>  
For more information about Group Policy, see the [Group Policy TechCenter](https://go.microsoft.com/fwlink/p/?LinkId=214514). This site provides links to the latest technical documentation, videos, and downloads for Group Policy.

## Managing settings with GPOs
After deploying IE11 to your organization, you can continue to manage the browser settings by using Active Directory Domain Services (AD DS) together with the following Group Policy-related setting management groups:

-   [Administrative templates and Internet Explorer 11](administrative-templates-and-ie11.md). Used to manage registry-based policies and options.

-   [Group policy preferences and Internet Explorer 11](group-policy-preferences-and-ie11.md). Used to set up and manage options that can be changed by the user after installation.

**Note**<br>
Whenever possible, we recommend that you manage IE11 using Administrative Templates, because these settings are always written to secure policy branches in the registry. In addition, we recommend that you deploy using standard user accounts instead of letting your users log on to their computers as administrators. This helps to prevent your users from making unwanted changes to their systems or overriding Group Policy settings.

     
Users won't be able to use the IE11 user interface or the registry to change any managed settings on their computers. However, they will be able to change many of the preferences associated with the settings you set up using the Internet Explorer Administration Kit 11 (IEAK 11).

## Which GPO tool should I use?
You can use any of these tools to create, manage, view, and troubleshoot Group Policy objects (GPOs). For information about each, see:

-   [Group Policy, the Group Policy Management Console (GPMC), and Internet Explorer 11](group-policy-and-group-policy-mgmt-console-ie11.md). Provides a single location to manage all GPOs, WMI filters, and Group Policy–related permissions across multiple forests in an organization.

-   [Group Policy, the Local Group Policy Editor, and Internet Explorer 11](group-policy-and-local-group-policy-editor-ie11.md). Provides a user interface that lets you edit settings within individual GPOs.

-   [Group Policy, Advanced Group Policy Management (AGPM), and Internet Explorer 11](group-policy-and-advanced-group-policy-mgmt-ie11.md). An add-on license for the Microsoft Desktop Optimization Pack (MDOP) that helps to extend Group Policy for Software Assurance customers.

-   [Group Policy, Windows Powershell, and Internet Explorer 11](group-policy-windows-powershell-ie11.md). A command-line shell and scripting language that helps automate Windows and application administration on a single computer locally, or across many computers remotely.

 

 



