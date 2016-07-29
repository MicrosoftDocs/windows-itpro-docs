---
title: How to Create a Connection Group with User-Published and Globally Published Packages (Windows 10)
description: How to Create a Connection Group with User-Published and Globally Published Packages
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Create a Connection Group with User-Published and Globally Published Packages


You can create user-entitled connection groups that contain both user-published and globally published packages, using either of the following methods:

-   [How to use PowerShell cmdlets to create the user-entitled connection groups](#bkmk-posh-userentitled-cg)

-   [How to use the App-V Server to create the user-entitled connection groups](#bkmk-appvserver-userentitled-cg)

**What to know before you start:**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Unsupported scenarios and potential issues</th>
<th align="left">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>You cannot include user-published packages in globally entitled connection groups.</p></td>
<td align="left"><p>The connection group will fail.</p></td>
</tr>
<tr class="even">
<td align="left"><p>If you publish a package globally and then create a user-published connection group in which you’ve made that package non-optional, you can still run <strong>Unpublish-AppvClientPackage &lt;package&gt; -global</strong> to unpublish the package, even when that package is being used in another connection group.</p></td>
<td align="left"><p>If any other connection groups are using that package, the package will fail in those connection groups.</p>
<p>To avoid inadvertently unpublishing a non-optional package that is being used in another connection group, we recommend that you track the connection groups in which you’ve used a non-optional package.</p></td>
</tr>
</tbody>
</table>

 

**How to use PowerShell cmdlets to create user-entitled connection groups**

1.  Add and publish packages by using the following commands:

    **Add-AppvClientPackage Pacakage1\_AppV\_file\_Path**

    **Add-AppvClientPackage Pacakage2\_AppV\_file\_Path**

    **Publish-AppvClientPackage -PackageId Package1\_ID -VersionId Package1\_Version ID -Global**

    **Publish-AppvClientPackage -PackageId Package2\_ID -VersionId Package2\_ID**

2.  Create the connection group XML file. For more information, see [About the Connection Group File](appv-connection-group-file.md).

3.  Add and publish the connection group by using the following commands:

    **Add-AppvClientConnectionGroup Connection\_Group\_XML\_file\_Path**

    **Enable-AppvClientConnectionGroup  -GroupId CG\_Group\_ID -VersionId CG\_Version\_ID**

**How to use the App-V Server to create user-entitled connection groups**

1.  Open the App-V Management Console.

2.  Follow the instructions in [How to Publish a Package by Using the Management Console](appv-publish-a-packages-with-the-management-console.md) to publish packages globally and to the user.

3.  Follow the instructions in [How to Create a Connection Group](appv-create-a-connection-group.md) to create the connection group, and add the user-published and globally published packages.

    **Have a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Managing Connection Groups](appv-managing-connection-groups.md)

[How to Use Optional Packages in Connection Groups](appv-use-optional-packages-in-connection-groups.md)

 

 





