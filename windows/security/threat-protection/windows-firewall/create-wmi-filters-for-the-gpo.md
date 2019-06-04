---
title: Create WMI Filters for the GPO (Windows 10)
description: Create WMI Filters for the GPO
ms.assetid: b1a6d93d-a3c8-4e61-a388-4a3323f0e74e
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
ms.date: 05/25/2017
---

# Create WMI Filters for the GPO

**Applies to**
-   Windows 10
-   Windows Server 2016

To make sure that each GPO associated with a group can only be applied to devices running the correct version of Windows, use the Group Policy Management MMC snap-in to create and assign WMI filters to the GPO. Although you can create a separate membership group for each GPO, you would then have to manage the memberships of the different groups. Instead, use only a single membership group, and let WMI filters automatically ensure the correct GPO is applied to each device.

-   [To create a WMI filter that queries for a specified version of Windows](#to-create-a-wmi-filter-that-queries-for-a-specified-version-of-windows)

-   [To link a WMI filter to a GPO](#to-link-a-wmi-filter-to-a-gpo)

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

First, create the WMI filter and configure it to look for a specified version (or versions) of the Windows operating system.

## To create a WMI filter that queries for a specified version of Windows

1.  Open the Group Policy Management console.

2.  In the navigation pane, expand **Forest:** *YourForestName*, expand **Domains**, expand *YourDomainName*, and then click **WMI Filters**.

3.  Click **Action**, and then click **New**.

4.  In the **Name** text box, type the name of the WMI filter.

    >**Note:**  Be sure to use a name that clearly indicates the purpose of the filter. Check to see if your organization has a naming convention.

5.  In the **Description** text box, type a description for the WMI filter. For example, if the filter excludes domain controllers, you might consider stating that in the description.

6.  Click **Add**.

7.  Leave the **Namespace** value set to **root\\CIMv2**.

8.  In the **Query** text box, type:

    ``` syntax
    select * from Win32_OperatingSystem where Version like "6.%"
    ```

    This query will return **true** for devices running at least Windows Vista and Windows Server 2008. To set a filter for just Windows 8 and Windows Server 2012, use "6.2%". For Windows 10 and Windows Server 2016, use "10.%". To specify multiple versions, combine them with or, as shown in the following:

    ``` syntax
    ... where Version like "6.1%" or Version like "6.2%"
    ```

    To restrict the query to only clients or only servers, add a clause that includes the ProductType parameter. To filter for client operating systems only, such as Windows 8 or Windows 7, use only ProductType="1". For server operating systems that are not domain controllers, use ProductType="3". For domain controllers only, use ProductType="2". This is a useful distinction, because you often want to prevent your GPOs from being applied to the domain controllers on your network.

    The following clause returns **true** for all devices that are not domain controllers:

    ``` syntax
    ... where ProductType="1" or ProductType="3"
    ```

    The following complete query returns **true** for all devices running Windows 10, and returns **false** for any server operating system or any other client operating system.

    ``` syntax
    select * from Win32_OperatingSystem where Version like "10.%" and ProductType="1"
    ```

    The following query returns **true** for any device running Windows Server 2016, except domain controllers:

    ``` syntax
    select * from Win32_OperatingSystem where Version like "10.%" and ProductType="3"
    ```

9.  Click **OK** to save the query to the filter.

10. Click **Save** to save your completed filter.

## To link a WMI filter to a GPO

After you have created a filter with the correct query, link the filter to the GPO. Filters can be reused with many GPOs simultaneously; you do not have to create a new one for each GPO if an existing one meets your needs.

1.  Open the Group Policy Management console.

2.  In the navigation pane, find and then click the GPO that you want to modify.

3.  Under **WMI Filtering**, select the correct WMI filter from the list.

4.  Click **Yes** to accept the filter.
