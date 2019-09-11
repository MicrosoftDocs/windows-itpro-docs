---
title: Release Notes for App-V 5.0
description: Release Notes for App-V 5.0
author: dansimp
ms.assetid: 68a6a5a1-4b3c-4c09-b00c-9ca4237695d5
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Release Notes for App-V 5.0


**To search for a specific issue in these release notes, press CTRL+F.**

Read these release notes thoroughly before you install App-V 5.0.

These release notes contain information that is required to successfully install App-V 5.0. The release notes also contain information that is not available in the product documentation. If there is a difference between these release notes and other App-V 5.0 documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## About the Product Documentation


For information about App-V 5.0 documentation, see the App-V 5.0 home page on Microsoft TechNet.

## Provide Feedback


We are interested in your feedback on App-V 5.0. You can send your feedback to <mdopdocs@microsoft.com>.

**Note**  
This email address is not a support channel, but your feedback will help us to plan for future changes in our documentation and product releases.

 

For the latest information about MDOP and additional learning resources, see the [MDOP Information Experience](https://go.microsoft.com/fwlink/p/?LinkId=236032) page.

For more information about new updates or to provide feedback, follow us on [Facebook](https://go.microsoft.com/fwlink/p/?LinkId=242445) or [Twitter](https://go.microsoft.com/fwlink/p/?LinkId=242447).

## Known Issues with App-V 5.0


This section contains release notes about the known issues with App-V 5.0.

### Unable to terminate adding packages when using server PowerShell cmdlets

When you add a package using PowerShell, there is no method to exit adding new packages.

WORKAROUND: To stop adding packages, press **enter** after you have added the final package.

### <a href="" id="-------------app-v-5-0-client-rejects-packages-from-servers-whose-ssl-certificate-has-been-revoked"></a> App-V 5.0 client rejects packages from servers whose SSL certificate has been revoked

When using the HTTPS protocol, the App-V 5.0 client will by default reject packages from servers whose SSL certificate has been revoked. This behavior can be turned off through configuration by modifying the **VerifyCertificateRevocationList** setting. Applying new configuration for this setting will not take effect until the App-V 5.0 service is restarted.

WORKAROUND: Restart the App-V 5.0 service.

## Release Notes Copyright Information


Microsoft, Active Directory, ActiveX, Bing, Excel, Silverlight, SQL Server, Windows, Microsoft Intune, and Windows PowerShell are trademarks of the Microsoft group of companies. All other trademarks are property of their respective owners.








## Related topics


[About App-V 5.0](about-app-v-50.md)

 

 





