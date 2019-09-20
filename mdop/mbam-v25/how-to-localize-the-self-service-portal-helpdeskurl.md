---
title: How to Localize the Self-Service Portal “HelpdeskURL”
description: How to Localize the Self-Service Portal “HelpdeskURL”
author: dansimp
ms.assetid: 86798460-077b-459b-8d54-4b605e07d2f1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Localize the Self-Service Portal “HelpdeskURL”


You can configure a localized version of the Self-Service Portal URL to display to end users by default. The Self-Service Portal URL is represented by the parameter **HelpdeskURL**.

If you create a localized version, as described in the following instructions, Microsoft BitLocker Administration and Monitoring (MBAM) finds and displays the localized version. If MBAM does not find a localized version, it displays the URL that is configured for the parameter **HelpDeskURL**.

**Note**  
In the following instructions, *SelfService* is the default virtual directory name for the Self-Service Portal. You might have used a different name when you configured the Self-Service Portal.

 

**To localize the Self-Service Portal URL**

1.  On the server where you configured the Self-Service Portal, browse to **Sites** &gt; **Microsoft BitLocker Administration and Monitoring** &gt; **SelfService** &gt; **Application Settings**.

2.  In the **Actions** pane, click **Add** to open the **Add Application Setting** dialog box.

3.  In the **Name** field, type **HelpdeskURL**\_&lt;*Language*&gt;, where &lt;*Language*&gt; is the appropriate language code for the URL.

    For example, to create a localized version of the `HelpdeskURL` value in Spanish, name the parameter **HelpdeskURL\_es-es**.

    The name of the Language folder can also be the language neutral name **es** instead of **es-es**. If the end user’s browser is set to **es-es** and that folder does not exist, the parent locale (as defined in .NET) is recursively retrieved and checked, resolving to &lt;MBAM Self-Service Install Directory&gt;\\SelfServiceWebsite\\es\\Notice.txt before finally becoming the default Notice.txt file. This recursive fallback mimics the .NET resource loading rules.

    For a list of the valid language codes you can use, see [National Language Support (NLS) API Reference](https://go.microsoft.com/fwlink/?LinkId=317947).

4.  In the **Value** field, type the localized version of the `HelpdeskURL` value that you want to display to end users.



## Related topics


[Customizing the Self-Service Portal for Your Organization](customizing-the-self-service-portal-for-your-organization.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




