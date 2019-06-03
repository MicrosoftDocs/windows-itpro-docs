---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to use IEAK 11 to add and approve ActiveX controls for your organization.
author: lomayor
ms.prod: ie11
ms.assetid: 33040bd1-f0e4-4541-9fbb-16e0c76752ab
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Add and approve ActiveX controls using IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Add and approve ActiveX controls using IEAK 11
There are two main approaches to how you can control the use of ActiveX controls in your company. For more info about ActiveX controls, including how to manage the controls using Group Policy, see [Group Policy and ActiveX installation](../ie11-deploy-guide/activex-installation-using-group-policy.md) in the [Internet Explorer 11 (IE11) - Deployment Guide for IT Pros](../ie11-deploy-guide/index.md).

**Note**<br>
ActiveX controls are supported in Internet Explorer for the desktop for Windows 7 and Windows 8.1. They are not supported on the immersive version of Internet Explorer for Windows 8.1.

## Scenario 1: Limited Internet-only use of ActiveX controls
While you might not care about your employees using ActiveX controls while on your intranet sites, you probably do want to limit ActiveX usage while your employee is on the Internet. By specifying and pre-approving a set of generic controls for use on the Internet, you’re able to let your employees use the Internet, but you can still limit your company’s exposure to potentially hazardous, non-approved ActiveX controls.

For example, your employees need to access an important Internet site, such as for a business partner or service provider, but there are ActiveX controls on their page. To make sure the site is accessible and functions the way it should, you can visit the site to review the controls, adding them as new entries to your `<system_drive>\Windows\Downloaded Program Files` folder. Then, as part of your browser package, you can enable and approve these ActiveX controls to run on this specific site; while all additional controls are blocked.

**To add and approve ActiveX controls**

1.  In IE, click **Tools**, and then **Internet Options**.

2.  On the **Security** tab, click the zone that needs to change, and click **Custom Level**.

3.  Go to **Run ActiveX controls and plug-ins**, and then click **Administrator approved**.

4.  Repeat the last two steps until you have configured all the zones you want.

5.  When you run the IEAK 11 Customization Wizard to create a custom package, you'll use the [Additional Settings](additional-settings-ieak11-wizard.md) page, clicking each folder to expand its contents. Then select the check boxes for the controls you want to approve.

## Scenario 2: Restricted use of ActiveX controls
You can get a higher degree of management over ActiveX controls by listing each of them out and then allowing the browser to use only that set of controls. The biggest challenge to using this method is the extra effort you need to put into figuring out all of the controls, and then actually listing them out. Because of that, we only recommend this approach if your complete set of controls is relatively small.

After you decide which controls you want to allow, you can specify them as approved by zone, using the process described in the first scenario.

 

 





