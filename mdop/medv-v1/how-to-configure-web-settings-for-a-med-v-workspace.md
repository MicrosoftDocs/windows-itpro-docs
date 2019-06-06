---
title: How to Configure Web Settings for a MED-V Workspace
description: How to Configure Web Settings for a MED-V Workspace
author: dansimp
ms.assetid: 9a6cd28f-7e4f-468f-830a-7b1d9abd3af3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Configure Web Settings for a MED-V Workspace


Web sites that can only be displayed in older versions of Internet Explorer and that do not exist in the host operating system can be viewed in older versions of Internet Explorer within the MED-V workspace. The user does not need to open a browser in the MED-V workspace to view the specified Web sites. The user can open a browser on the host and automatically be redirected to the MED-V workspace and vice versa.

The following procedures describe how you can set a list of Web browsing rules for a MED-V workspace. All sites included in the rules can be browsed either in the MED-V workspace or on the host, as defined by the administrator. All sites not defined within the rules are browsed from the environment in which they were requested. However, you can configure them as a group as well, to be browsed in the MED-V workspace or the host.

**Note**  
Web settings are applied only to Internet Explorer and to no other browsers.

 

All Web settings are configured in the **Policy** module, on the **Web** tab.

## How to Configure Web Settings for the MED-V Workspace


**To configure Web settings for the MED-V workspace**

1.  Click the MED-V workspace to be configured.

2.  Select the **Browse the list of URLs defined in the following table** check box to redirect the user to a browser within the MED-V workspace or host, when the user browses to a URL that conforms to the Web rules specified.

3.  Click one of the following:

    -   **In the Workspace**—Redirect to a browser in the MED-V workspace.

    -   **In the host**—Redirect to a browser on the host.

4.  Select the **Browse all other URLs** check box to redirect all URLs excluded from the Web rules to the host or MED-V workspace.

5.  Click one of the following:

    -   **In the Workspace**—Redirect all other URLs to a browser in the MED-V workspace.

    -   **In the host**—Redirect all other URLs to a browser on the host.

6.  On the **Policy** menu, select **Commit**.

## How to Add a Web Rule


**To add a Web rule**

1.  Select the **Browse the list of URLs defined in the following table** check box to enable the Web browsing rules.

2.  Click **Add**.

    A new Web rule is added.

3.  Configure the Web rule properties as described in the following table.

4.  On the **Policy** menu, select **Commit**.

**MED-V Workspace Web Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Type</p></td>
<td align="left"><ul>
<li><p><strong>Domain suffix</strong>—Access to any host address ending with the suffix specified in the <strong>Value</strong> property and is set according to the option set in <strong>Web Browsing</strong>.</p></li>
<li><p><strong>IP Prefix</strong>—Access to any full or partial IP address in the range of the prefix specified in the <strong>Value</strong> property and is set according to the option set in <strong>Web Browsing</strong>.</p></li>
<li><p><strong>All Local Addresses</strong>—Access to all addresses without a '.' and is set according to the option set in <strong>Web Browsing</strong>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Value</p></td>
<td align="left"><ul>
<li><p>If <strong>Domain suffix</strong> is selected in the <strong>Type</strong> property, enter a domain suffix.</p>
<div class="alert">
<strong>Note</strong>  
<ul>
<li><p>Do not enter &quot;*&quot; before the suffix.</p></li>
<li><p>Domain suffixes support aliases as well.</p></li>
</ul>
</div>
<div>
 
</div></li>
<li><p>If IP Prefix is selected in the <strong>Type</strong> property, enter a full or partial IP address.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## How to Delete a Web Rule


**To delete a Web rule**

1.  In the **Web** pane, select the Web rule to delete.

2.  Click **Remove**.

    The Web rule is deleted.

## Related topics


[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

 

 





