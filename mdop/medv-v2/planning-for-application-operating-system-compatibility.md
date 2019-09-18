---
title: Planning for Application Operating System Compatibility
description: Planning for Application Operating System Compatibility
author: dansimp
ms.assetid: cdb0a7f0-9da4-4562-8277-12972eb0fea8
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for Application Operating System Compatibility


This topic helps determine how to resolve application operating system compatibility issues, and discusses how Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 works as a solution for your organization.

This topic discusses the business requirements for MED-V and compares MED-V to Windows XP Mode and Microsoft Application Virtualization (App-V):

-   [Business Requirements for MED-V](#bkmk-whenmedv)

-   [Benefits of MED-V versus Windows XP Mode](#bkmk-medvvsxp)

-   [Benefits of MED-V versus App-V](#bkmk-medvvsappv)

## <a href="" id="bkmk-whenmedv"></a>Business Requirements for MED-V


When your company’s IT department is determining whether to upgrade to Windows 7, it must pay attention to its line-of-business applications and web-based line-of-business applications to make certain that these can run on the new operating system. Often, these applications and URLs were created to work specifically with an older version of Windows or Internet Explorer, and problems can occur when trying to use them in the new operating system. Microsoft offers many different methods for handling the various compatibility issues that can occur when you upgrade, such as the Application Compatibility Toolkit (ACT) and the Windows 7 Program Compatibility Assistant. But even after all applications have been tested for compatibility and fixes have been determined, some applications still do not work correctly on Windows 7 or are too costly to resolve.

By using MED-V, you can run these legacy applications through a Windows Virtual PC environment that is running Windows XP. Because you no longer have to test and validate these problem applications on the new operating system before upgrading, your migration to Windows 7 is much smoother and quicker.

### Using MED-V Checklist

Consider MED-V if any of the following scenarios apply to you:

-   You are a large organization (for example, 500 users and more), have an Enterprise Agreement with Microsoft, and plan to upgrade to Windows 7.

-   You have tested your line-of-business applications and have found some that are incompatible with Windows 7.

-   You have resolved the compatibility issues for some of these problem applications by upgrading the application or by using a Microsoft-provided shim, such as the Application Compatibility Toolkit (ACT), but compatibility issues remain for some applications.

-   You have considered App-V as an option for delivering the incompatible applications and have concluded that even after you implement App-V, you still have application operating system compatibility issues that you must address.

-   You have considered Windows XP Mode as a solution and have determined that it is not an efficient option because:

    -   You want to be able to deploy virtual images that contain the problem applications to all end users at the same time, instead of individually, and have the virtual images automatically joined to the domain.

    -   You have decided it is much more cost effective to manage these legacy applications (that are delivered virtually) and control the Windows Virtual PC settings from a centralized location instead of on each end user’s desktop.

    -   You want to be able to update and support the virtual machines in scale instead of per desktop.

    -   You want the ability to redirect URLs that run better on an older version of Internet Explorer to the virtual machines and to easily manage URL redirection later.

-   You have determined that it would be more cost effective and helpful to upgrade to Windows 7 as soon as possible and have decided to postpone resolving your remaining application compatibility issues until a later date, knowing that you have a solution available in MED-V.

## <a href="" id="bkmk-medvvsxp"></a> Benefits of MED-V versus Windows XP Mode


Windows Virtual PC for Windows 7 lets you run different versions of an operating system at the same time on a single device and is included in Windows 7 Professional Edition and higher.

Windows XP Mode functionality takes advantage of Windows Virtual PC by providing a preconfigured Windows XP image that lets you create a virtual Windows XP environment. In this virtual environment, you can manually install applications that are incompatible with Windows 7 and that run seamlessly from your desktop through Windows Virtual PC.

**By using Windows XP Mode, you can do the following:**

-   Run applications that are compatible with Windows XP inside a virtual machine that runs in Windows Virtual PC.

-   Publish these applications to the host’s desktop or Program menu.

When you want to deliver these virtual machines on a large scale as part of an enterprise migration to Windows 7, you must be able to deploy the virtual machines quickly, provision, and customize them efficiently, control their settings, and support them easily.

MED-V builds upon Windows XP Mode to deliver enterprise-wide application compatibility. Whereas Windows XP mode is limited to providing virtual application functionality to individuals and small businesses, MED-V allows for large-scale deployments of preconfigured Windows XP images throughout your corporate network. It gives you an enterprise-ready management solution for the configuration, deployment, and maintenance of these virtual MED-V workspaces. MED-V also gives enterprise administrators a set of policies to control image use. This includes which users will have access to which specific applications within these images.

**By using MED-V, you can do the following:**

-   Upgrade to your new operating system without having to test and resolve every incompatible application and URL.

-   Deploy virtual Windows XP images that are automatically domain-joined and customized per user.

-   Provision applications and URL redirection information to users.

-   Control the Windows Virtual PC settings.

-   Maintain and support endpoints through monitoring and troubleshooting.

-   Ensure that guest computers are patched, even if in a suspended state.

-   Automate per-user virtual machine creation and sysprep initialization.

-   Easily diagnose issues on the host and guest computers.

-   Seamlessly manage guest computers that are connected through Windows Virtual PC NAT mode.

## <a href="" id="bkmk-medvvsappv"></a>Benefits of MED-V versus App-V


MED-V and App-V are two very different technologies that can easily work together to solve your application operating system compatibility issues. By using App-V, you create an individualized package for each application, each of which is then kept separate from the others. Each virtual application can then be immediately delivered to the end user, which is very useful for a Windows 7 deployment strategy.

MED-V does not handle applications individually. Instead, it creates an additional instance of Windows XP on the same desktop that is running Windows 7. You can install as many applications as necessary into this virtual image and manage the image just as you would any other desktop in your organization.

In addition, you can use MED-V together with App-V so that virtual applications that are sequenced through App-V are installed, published, and managed by using MED-V.

## Related topics


[Define and Plan your MED-V Deployment](define-and-plan-your-med-v-deployment.md)

 

 





