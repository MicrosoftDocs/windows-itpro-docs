---
title: How to Configure the Self-Service Portal When Client Computers Cannot Access the Microsoft Content Delivery Network
description: How to Configure the Self-Service Portal When Client Computers Cannot Access the Microsoft Content Delivery Network
author: dansimp
ms.assetid: 90ee76db-9876-41b5-994a-118556d5ed3b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Configure the Self-Service Portal When Client Computers Cannot Access the Microsoft Content Delivery Network


Follow these instructions if the client computers in your organization do not have access to the Microsoft Ajax Content Delivery Network (CDN).

**Why you need to configure this:**

Your client computers need access to the CDN, which gives the Self-Service Portal the required access to certain JavaScript files. If you don’t configure the Self-Service Portal when client computers cannot access CDN, only the company name and the account under which the end user logs in will be displayed. No error message will be shown.

**Note**  
In MBAM 2.5 SP1, the JavaScript files are included in the product, and you do not need to follow the instructions in this section to configure the SSP to support clients that cannot access the internet.

 

**How to configure the Self-Service Portal when client computers cannot access the CDN**

1. Download the following JavaScript files from the CDN:

   -   [jQuery-1.10.2.min.js](https://go.microsoft.com/fwlink/?LinkID=390515)

   -   [jQuery.validate.min.js](https://go.microsoft.com/fwlink/?LinkID=390516)

   -   [jQuery.validate.unobtrusive.min.js](https://go.microsoft.com/fwlink/?LinkID=390517)

2. Copy the JavaScript files to the **Scripts** directory of the Self-Service Portal. This directory is located in <em>&lt;MBAM Self-Service Install Directory&gt;\\</em>Self Service Website\\Scripts.

3. Open Internet Information Services (IIS) Manager.

4. Expand **Sites** &gt; **Microsoft BitLocker Administration and Monitoring**, and highlight **SelfService**.

   **Note**  
   *SelfService* is the default virtual directory name. If you chose a different name for this directory during the configuration, remember to replace *SelfService* in these instructions with the name you chose.

     

5. In the middle pane, double-click **Application Settings**.

6. For each item in the following list, edit the application settings to reference the new location by replacing /&lt;*virtual directory*&gt;/ with /SelfService/ (or whatever name you chose during configuration). For example, the virtual directory path will be similar to /selfservice/Scripts/ jQuery-1.10.2.min.js.

   -   jQueryPath: /&lt;*virtual directory*&gt;/Scripts/jQuery-1.10.2.min.js

   -   jQueryValidatePath: /&lt;*virtual directory*&gt;/Scripts/jQuery.validate.min.js

   -   jQueryValidateUnobtrusivePath: /&lt;*virtual directory*&gt;/Scripts/jQuery.validate.unobtrusive.min.js



## Related topics


[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





