---
title: Set up School PCs app technical reference overview
description: Describes the purpose of the Set up School PCs app for Windows 10 devices.
keywords: shared cart, shared PC, school, set up school pcs
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: mjcaparas
ms.author: macapara
ms.date: 07/11/2018
ms.reviewer: 
manager: dansimp
---

What is Set up School PCs?
=================================================

**Applies to:**

-   Windows 10

The **Set up School PCs** app helps you configure new Windows 10 PCs for school use. The
app, which is available for Windows 10 version 1703 and later, configures and saves
school-optimized settings, apps, and policies into a single provisioning package. You can then save the package to a USB drive and distribute it to your school PCs. 

If your school uses Azure Active Directory (Azure AD) or Office 365, the Set up
School PCs app will create a setup file. This file joins the PC to your Azure Active Directory tenant. The app also helps set up PCs for use with or without Internet connectivity.  


## Join PC to Azure Active Directory
If your school uses Azure Active Directory (Azure AD) or Office 365, the Set up
School PCs app creates a setup file that joins your PC to your Azure Active
Directory tenant. 

The app also helps set up PCs for use with or without Internet connectivity.

## List of Set up School PCs features
The following table describes the Set up School PCs app features and lists each type of Intune subscription. An X indicates that the feature is available with the specific subscription.

| Feature                                                                                                                                                                                                                                                               | No Internet | Azure AD | Office 365 | Azure AD Premium |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|----------|------------|------------------|
| **Fast sign-in**                                                                                                                                                                                                                                                      | X           | X        | X          | X                |
| Students sign in and start using the computer in under a minute, even on initial sign-in.                                                                                                                                                             |             |          |            |                  |
| **Custom Start experience**                                                                                                                                                                                                                                           | X           | X        | X          | X                |
| Necessary classroom apps are pinned to Start and unnecessary apps are removed.                                                                                                                                                                                         |             |          |            |                  |
| **Guest account, no sign-in required**                                                                                                                                                                                                                                | X           | X        | X          | X                |
| Set up computers for use by anyone with or without an account.                                                                                                                                                                         |             |          |            |                  |
| **School policies**                                                                                                                                                                                                                                                   | X           | X        | X          | X                |
| Settings create a relevant, useful learning environment and optimal computer performance.                                                                                                                                                                |             |          |            |                  |
| **Azure AD Join**                                                                                                                                                                                                                                                     |             | X        | X          | X                |
| Computers join with your existing Azure AD or Office 365 subscription for centralized management.                                                                                                                                                                      |             |          |            |                  |
| **Single sign-on to Office 365**                                                                                                                                                                                                                                      |             |          | X          | X                |
| Students sign in with their IDs to access all Office 365 web apps or installed Office apps.                                                                                                                                                            |             |          |            |                  |
| **Take a Test app**                                                                                                                                                                                                                                                     |             |          |            | X                |
| Administer quizzes and assessments through test providers such as Smarter Balanced.                                                                                                                                      |             |          |            |                  |
| [Settings roaming](https://azure.microsoft.com/documentation/articles/active-directory-windows-enterprise-state-roaming-overview/) **via Azure AD**                                                                                                             |             |          |            | X                |
| Synchronize student and application data across devices for a personalized experience.                                                                                                                                                          |             |          |            |                  |

> [!NOTE]
>   If your school uses Active Directory, use [Windows Configuration
>   Designer](set-up-students-pcs-to-join-domain.md) 
>   to configure your PCs to join the domain. You can only use the Set up School
>   PCs app to set up PCs that are connected to Azure AD.



## Next steps  
Learn more about setting up devices with the Set up School PCs app.  
* [Azure AD Join with Set up School PCs](set-up-school-pcs-azure-ad-join.md)
* [Shared PC mode for schools](set-up-school-pcs-shared-pc-mode.md)
* [What's in my provisioning package](set-up-school-pcs-provisioning-package.md)
* [Set up Windows 10 devices for education](set-up-windows-10.md) 

When you're ready to create and apply your provisioning package, see [Use Set up School PCs app](use-set-up-school-pcs-app.md).








