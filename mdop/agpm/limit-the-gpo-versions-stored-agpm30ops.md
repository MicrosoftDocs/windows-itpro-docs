---
title: Limit the GPO Versions Stored
description: Limit the GPO Versions Stored
author: dansimp
ms.assetid: da14edc5-0c36-4c54-b122-861c86b99eb1
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Limit the GPO Versions Stored


By default, all versions of every controlled Group Policy Object (GPO) are retained in the archive on the AGPM Server. However, you can limit the number of versions retained for each GPO and delete older versions when that limit is exceeded. When GPO versions are deleted, a record of the version remains in the history of the GPO, but the GPO version itself is deleted from the archive.

A user account with the AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To limit the number of GPO versions stored**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  In the details pane, click the **AGPM Server** tab.

3.  Select the **Delete old versions of each GPO from the archive** check box, and type the maximum number of GPO versions to store for each GPO, not including the current version. To retain only the current version, enter 0. The maximum must be no greater than 999.

    **Important**  
    Only GPO versions displayed on the **Unique Versions** tab of the **History** window count toward the limit.

     

4.  Click the **Apply** button.

### Additional considerations

-   By default, you must be an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Modify Options** permissions for the domain.

-   You can prevent a GPO version from being deleted by marking it in the history as ineligible for deletion. To do so, right-click the version in the history of the GPO and click **Do Not Delete**.

### Additional references

-   [Managing the Archive](managing-the-archive.md)

 

 





