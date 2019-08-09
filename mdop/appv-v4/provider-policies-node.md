---
title: Provider Policies Node
description: Provider Policies Node
author: eavena
ms.assetid: 89b47076-7732-4128-93cc-8e6d5b671c8e
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Provider Policies Node


The **Provider Policies** node is one level below the Application Virtualization System node in the **Scope** pane in the Application Virtualization Server Management Console. When you select this node, the **Results** pane displays a list of provider policies. Right-click the **Provider Policies** node to display a pop-up menu that contains the following elements.

<a href="" id="new-provider-policy"></a>**New Provider Policy**  
Displays the New Provider Policy Wizard. This wizard consists of the following pages:

1.  Enter a name in the **Provider Policy Name** field. Select the **Manage client desktop using the Management Console** check box if you want that capability. Select one or both of the following check boxes if you want the associated functionality:

    -   **Refresh publishing configuration when a user logs in**

    -   **Refresh configuration every**. After selecting this option, enter a number and select the unit from the drop-down menu. Valid entries range from a minimum of **30 minutes** to a maximum of **999 days**.

2.  Click **Add** or **Remove** to add or remove a group assignment. Use the standard **Windows Browse** dialog box to find a user group.

3.  Select one of the following check boxes on the **Provider Pipeline Configuration** dialog box to enable the associated feature:

    -   **Authentication**—Select the type of authentication from the drop-down list.

    -   **Enforce Access Permission Settings**

    -   **Log Usage Information**

    -   **Licensing**—Select an enforcement scheme from the drop-down list.

4.  Click **Finish** to add the new provider policy.

<a href="" id="view"></a>**View**  
Changes the appearance and content of the **Results** pane.

<a href="" id="new-window-from-here"></a>**New Window from Here**  
Opens a new management console with the selected node as the root node.

<a href="" id="refresh"></a>**Refresh**  
Refreshes the view of the server.

<a href="" id="export-list"></a>**Export List**  
Creates a tab-delimited text file that contains the contents of the **Results** pane. This item displays a standard **File Save** dialog box where you specify the location for the text file you are creating.

<a href="" id="help"></a>**Help**  
Displays the help system for the Application Virtualization Server Management Console.

## Related topics


[Server Management Console: Provider Policies Node](server-management-console-provider-policies-node.md)

 

 





