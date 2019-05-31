---
title: How to Localize the Self-Service Portal Notice Text
description: How to Localize the Self-Service Portal Notice Text
author: dansimp
ms.assetid: a4c878b7-e5c8-45af-a537-761bb2991659
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Localize the Self-Service Portal Notice Text


You can configure localized notice text to display to end users by default in the Self-Service Portal. The Notice.txt file that displays the notice text is in the following root directory:

&lt;*MBAM Self-Service Install Directory*&gt;\\Self Service Website\\

To display localized notice text, you create a localized Notice.txt file, and then save it under a specific language folder in the following example directory:

&lt;*MBAM Self-Service Install Directory*&gt;\\Self Service Website\\

**Note**  
You can configure the path by using the **NoticeTextPath** item in **Application Settings**.

 

MBAM displays the notice text, based on the following rules:

-   If you create a localized **Notice.txt** file in the appropriate language folder, MBAM displays the localized notice text if the default **Notice.txt** file exists. If the default **Notice.txt** file is missing, a message displays indicating that the default file is missing.

-   If MBAM does not find a localized version of the Notice.txt file, it displays the text in the default Notice.txt file.

-   If MBAM does not find a default Notice.txt file, it displays the default text in the Self-Service Portal.

**Note**  
If an end user’s browser is set to a language that does not have a corresponding language subfolder or Notice.txt, the text in the Notice.txt file in the following root directory is displayed:

&lt;*MBAM Self-Service Install Directory*&gt;\\Self Service Website\\

 

**To create a localized Notice.txt file**

1.  On the server where you configured the Self-Service Portal, create a &lt;*Language*&gt; folder in the following example directory, where &lt;*Language*&gt; represents the name of the localized language:

    &lt;*MBAM Self-Service Install Directory*&gt;\\Self Service Website\\

    **Note**  
    Some language folders already exist, so you might not have to create a folder. If you do have to create a language folder, see [National Language Support (NLS) API Reference](https://go.microsoft.com/fwlink/?LinkId=317947) for a list of the valid names that you can use for the &lt;*Language*&gt; folder.

     

2.  Create a Notice.txt file that contains the localized notice text.

3.  Save the Notice.txt file in the &lt;*Language*&gt; folder. For example, to create a localized Notice.txt file in Spanish, save the localized Notice.txt file in the following example directory:

    &lt;*MBAM Self-Service Install Directory*&gt;\\Self Service Website\\Es-es

    The name of the Language folder can also be the language neutral name **es** instead of **es-es**. If the end user’s browser is set to **es-es** and that folder does not exist, the parent locale (as defined in .NET) is recursively retrieved and checked, resolving to &lt;MBAM Self-Service Install Directory&gt;\\SelfServiceWebsite\\es\\Notice.txt before finally becoming the default Notice.txt file. This recursive fallback mimics the .NET resource loading rules.



## Related topics


[Customizing the Self-Service Portal for Your Organization](customizing-the-self-service-portal-for-your-organization.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





