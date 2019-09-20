---
title: How to Test URL Redirection
description: How to Test URL Redirection
author: dansimp
ms.assetid: 38d80088-da1d-4098-b27e-76f9e78f81dc
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# How to Test URL Redirection


After your test of first time setup finishes, you can verify that the URL redirection functionality is working as expected by performing the following tasks.

**Important**  
The MED-V Host Agent must be running for URL redirection to function correctly.

<a href="" id="bkmk-urlredir"></a>**To test URL Redirection**

1.  Open an Internet Explorer browser in the host computer and enter a URL that you specified for redirection.

2.  Verify that the webpage is opened in Internet Explorer on the guest virtual machine.

3.  Repeat this process for each URL that you want to test.

**To test that a URL can be added or removed**

1.  Add or remove a URL from the MED-V workspace.

    For information about how to add and remove URLs for redirection on a MED-V workspace, see [Manage MED-V URL Redirection](manage-med-v-url-redirection.md).

2.  If you added a URL to the redirection list, repeat the steps in [To Test URL Redirection](#bkmk-urlredir) to verify that the new URL redirects as intended.

3.  If you removed a URL from the redirection list, verify that it is removed by following these steps:

    1.  Open an Internet Explorer browser in the host computer and enter the URL that you removed from the redirection list.

    2.  Verify that the webpage is opened in Internet Explorer on the host computer instead of on the guest virtual machine.

        **Note**  
        It can take several seconds for the URL redirection changes to take place.

**Note**  
If you encounter any problems when verifying your URL redirection settings, see [Operations Troubleshooting](operations-troubleshooting-medv2.md).

After you have completed testing URL redirection in your MED-V workspace, you can test other configurations to verify that they function as intended.

After you have completed testing your MED-V workspace package and have verified that it is functioning as intended, you can deploy the MED-V workspace to your enterprise.

## Related topics

[How to Test Application Publishing](how-to-test-application-publishing.md)

[How to Verify First Time Setup Settings](how-to-verify-first-time-setup-settings.md)

[Deploying the MED-V Workspace Package](deploying-the-med-v-workspace-package.md)

 

 





