---
title: Create a rule for packaged apps (Windows 10)
description: This topic for IT professionals shows how to create an AppLocker rule for packaged apps with a publisher condition.
ms.assetid: e4ffd400-7860-47b3-9118-0e6853c3dfa0
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Create a rule for packaged apps

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals shows how to create an AppLocker rule for packaged apps with a publisher condition.

Packaged apps, also known as Universal Windows apps, are based on an app model that ensures that all the files within an app package share the same identity. Therefore, it is possible to control the entire app using a single AppLocker rule as opposed to the non-packaged apps where each file within the app could have a unique identity. Windows does not support unsigned packaged apps which implies all packaged apps must be signed. AppLocker supports only publisher rules for packaged apps. A publisher rule for a packaged app is based on the following information:

-   Publisher of the package
-   Package name
-   Package version

All the files within a package as well as the package installer share these attributes. Therefore, an AppLocker rule for a packaged app controls both the installation as well as the running of the app. Otherwise, the publisher rules for packaged apps are no different than the rest of the rule collections; they support exceptions, can be increased or decreased in scope, and can be assigned to users and groups.

For info about the publisher condition, see [Understanding the publisher rule condition in AppLocker](understanding-the-publisher-rule-condition-in-applocker.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To create a packaged app rule**

1.  Open the AppLocker console.
2.  On the **Action** menu, or by right-clicking on **Packaged app Rules**, click **Create New Rule**.
3.  On the **Before You Begin** page, click **Next**.
4.  On the **Permissions** page, select the action (allow or deny) and the user or group that the rule should apply to, and then click **Next**.
5.  On the **Publisher** page, you can select a specific reference for the packaged app rule and set the scope for the rule. The following table describes the reference options.
    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Selection</th>
    <th align="left">Description</th>
    <th align="left">Example</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Use an installed packaged app as a reference</strong></p></td>
    <td align="left"><p>If selected, AppLocker requires you to choose an app that is already installed on which to base your new rule. AppLocker uses the publisher, package name and package version to define the rule.</p></td>
    <td align="left"><p>You want the Sales group only to use the app named Microsoft.BingMaps for its outside sales calls. The Microsoft.BingMaps app is already installed on the device where you are creating the rule, so you choose this option, and select the app from the list of apps installed on the computer and create the rule using this app as a reference.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Use a packaged app installer as a reference</strong></p></td>
    <td align="left"><p>If selected, AppLocker requires you to choose an app installer on which to base your new rule. A packaged app installer has the .appx extension. AppLocker uses the publisher, package name and package version of the installer to define the rule.</p></td>
    <td align="left"><p>Your company has developed a number of internal line-of-business packaged apps. The app installers are stored on a common file share. Employees can install the required apps from that file share. You want to allow all your employees to install the Payroll app from this share. So you choose this option from the wizard, browse to the file share and choose the installer for the Payroll app as a reference to create your rule.</p></td>
    </tr>
    </tbody>
    </table>
     
    The following table describes setting the scope for the packaged app rule.
    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Selection</th>
    <th align="left">Description</th>
    <th align="left">Example</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Applies to <strong>Any publisher</strong></p></td>
    <td align="left"><p>This is the least restrictive scope condition for an <strong>Allow</strong> rule. It permits every packaged app to run or install.</p>
    <p>Conversely, if this is a <strong>Deny</strong> rule, then this option is the most restrictive because it denies all apps from installing or running.</p></td>
    <td align="left"><p>You want the Sales group to use any packaged app from any signed publisher. You set the permissions to allow the Sales group to be able to run any app.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Applies to a specific <strong>Publisher</strong></p></td>
    <td align="left"><p>This scopes the rule to all apps published by a particular publisher.</p></td>
    <td align="left"><p>You want to allow all your users to install apps published by the publisher of Microsoft.BingMaps. You could select Microsoft.BingMaps as a reference and choose this rule scope.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Applies to a <strong>Package name</strong></p></td>
    <td align="left"><p>This scopes the rule to all packages that share the publisher name and package name as the reference file.</p></td>
    <td align="left"><p>You want to allow your Sales group to install any version of the Microsoft.BingMaps app. You could select the Microsoft.BingMaps app as a reference and choose this rule scope.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Applies to a <strong>Package version</strong></p></td>
    <td align="left"><p>This scopes the rule to a particular version of the package.</p></td>
    <td align="left"><p>You want to be very selective in what you allow. You do not want to implicitly trust all future updates of the Microsoft.BingMaps app. You can limit the scope of your rule to the version of the app currently installed on your reference computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Applying custom values to the rule</p></td>
    <td align="left"><p>Selecting the <strong>Use custom values</strong> check box allows you to adjust the scope fields for your particular circumstance.</p></td>
    <td align="left"><p>You want to allow users to install all Microsoft.Bing* applications which include Microsoft.BingMaps, Microsoft.BingWeather, Microsoft.BingMoney. You can choose the Microsoft.BingMaps as a reference, select the <strong>Use custom values</strong> check box and edit the package name field by adding “Microsoft.Bing*” as the Package name.</p></td>
    </tr>
    </tbody>
    </table>
     
6.  Click **Next**.
7.  (Optional) On the **Exceptions** page, specify conditions by which to exclude files from being affected by the rule. This allows you to add exceptions based on the same rule reference and rule scope as you set before. Click **Next**.
8.  On the **Name** page, either accept the automatically generated rule name or type a new rule name, and then click **Create**.
