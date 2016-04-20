---
title: Delete an AppLocker rule (Windows 10)
description: This topic for IT professionals describes the steps to delete an AppLocker rule.
ms.assetid: 382b4be3-0df9-4308-89b2-dcf9df351eb5
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Delete an AppLocker rule


**Applies to**

-   Windows 10

This topic for IT professionals describes the steps to delete an AppLocker rule.

As older apps are retired and new apps are deployed in your organization, it will be necessary to modify the application control policies. If an app becomes unsupported by the IT department or is no longer allowed due to the organization's security policy, then deleting the rule or rules associated with that app will prevent the app from running.

For info about testing an AppLocker policy to see what rules affect which files or applications, see [Test an AppLocker policy by Using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To delete a rule in an AppLocker policy**

1.  Open the AppLocker console.

2.  Click the appropriate rule collection for which you want to delete the rule.

3.  In the details pane, right-click the rule to delete, click **Delete**, and then click **Yes**.

**Note**  
When using Group Policy, for the rule deletion to take effect on computers within the domain, the GPO must be distributed or refreshed.

When this procedure is performed on the local device, the AppLocker policy takes effect immediately.

 

 

 





