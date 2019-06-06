---
title: How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell
description: How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell
author: dansimp
ms.assetid: e1589eff-d306-40fb-a0ae-727190dafe26
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell


An App-V connection group allows you to run all the virtual applications as a defined set of packages in a single virtual environment. For example, you can virtualize an application and its plug-ins by using separate packages, but run them together in a single connection group.

A connection group XML file defines the connection group that runs on the computer where you’ve installed the App-V client. For information about the connection group XML file and how to configure it, see [About the Connection Group File](about-the-connection-group-file51.md).

This topic explains the following procedures:

-   [To add and publish the App-V packages in the connection group](#bkmk-add-pub-pkgs-in-cg)

-   [To add and enable the connection group on the App-V client](#bkmk-add-enable-cg-on-clt)

-   [To enable or disable a connection group for a specific user](#bkmk-enable-cg-for-user-poshtopic)

-   [To allow only administrators to enable connection groups](#bkmk-admin-only-posh-topic-cg)

<a href="" id="bkmk-add-pub-pkgs-in-cg"></a>*To add and publish the App-V packages in the connection group**

1.  To add and publish the App-V 5.1 packages to the computer running the App-V client, type the following command:

    Add-AppvClientPackage –path c:\\tmpstore\\quartfin.appv | Publish-AppvClientPackage

2.  Repeat **step 1** of this procedure for each package in the connection group.

<a href="" id="bkmk-add-enable-cg-on-clt"></a>**To add and enable the connection group on the App-V client**

1.  Add the connection group by typing the following command:

    Add-AppvClientConnectionGroup –path c:\\tmpstore\\financ.xml

2.  Enable the connection group by typing the following command:

    Enable-AppvClientConnectionGroup –name “Financial Applications”

    When any virtual applications that are in the member packages are run on the target computer, they will run inside the connection group’s virtual environment and will be available to all the virtual applications in the other packages in the connection group.

<a href="" id="bkmk-enable-cg-for-user-poshtopic"></a>**To enable or disable a connection group for a specific user**

1.  Review the parameter description and requirements:

    -   The parameter enables an administrator to enable or disable a connection group for a specific user.

    -   You must use App-V 5.0 SP2 Hotfix Package 5 or later to use this parameter.

    -   You can run this cmdlet from the user or administrator session.

    -   You must be logged in with administrative credentials to use the parameter.

    -   The end user must be logged in.

    -   You must provide the end user’s security identifier (SID).

2.  Use the following cmdlets, and add the optional **–UserSID** parameter, where **-UserSID** represents the end user’s security identifier (SID):

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Cmdlet</th>
    <th align="left">Examples</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Enable-AppVClientConnectionGroup</p></td>
    <td align="left"><p>Enable-AppVClientConnectionGroup “ConnectionGroupA” -UserSID S-1-2-34-56789012-3456789012-345678901-2345</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Disable -AppVClientConnectionGroup</p></td>
    <td align="left"><p>Disable -AppVClientConnectionGroup “ConnectionGroupA” -UserSID S-1-2-34-56789012-3456789012-345678901-2345</p></td>
    </tr>
    </tbody>
    </table>

<a href="" id="bkmk-admin-only-posh-topic-cg"></a>**To allow only administrators to enable connection groups**

1.  Review the description and requirement for using this cmdlet:

    -   Use this cmdlet and parameter to configure the App-V client to allow only administrators (not end users) to enable or disable connection groups.

    -   You must be using at least App-V 5.0 SP3 to use this cmdlet.

2.  Run the following cmdlet and parameter:

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Cmdlet</th>
    <th align="left">Parameter and values</th>
    <th align="left">Example</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Set-AppvClientConfiguration</p></td>
    <td align="left"><p>–RequirePublishAsAdmin</p>
    <ul>
    <li><p>0 - False</p></li>
    <li><p>1 - True</p></li>
    </ul></td>
    <td align="left"><p>Set-AppvClientConfiguration –RequirePublishAsAdmin1</p></td>
    </tr>
    </tbody>
    </table>

     

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.1](operations-for-app-v-51.md)

[Administering App-V 5.1 by Using PowerShell](administering-app-v-51-by-using-powershell.md)

 

 





