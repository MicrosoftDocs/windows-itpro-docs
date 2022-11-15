---
title: Create WMI Filters for the GPO (Windows)
description: Learn how to use WMI filters on a GPO to make sure that each GPO for a group can only be applied to devices running the correct version of Windows.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: 
  - M365-security-compliance
  - highpri
ms.topic: conceptual
ms.date: 09/07/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Create WMI Filters for the GPO


To make sure that each GPO associated with a group can only be applied to devices running the correct version of Windows, use the Group Policy Management MMC snap-in to create and assign WMI filters to the GPO. Although you can create a separate membership group for each GPO, you would then have to manage the memberships of the different groups. Instead, use only a single membership group, and let WMI filters automatically ensure the correct GPO is applied to each device.

- [Create WMI Filters for the GPO](#create-wmi-filters-for-the-gpo)
   - [To create a WMI filter that queries for a specified version of Windows](#to-create-a-wmi-filter-that-queries-for-a-specified-version-of-windows)
   - [To link a WMI filter to a GPO](#to-link-a-wmi-filter-to-a-gpo)

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

First, create the WMI filter and configure it to look for a specified version (or versions) of the Windows operating system.

## To create a WMI filter that queries for a specified version of Windows

1.  Open the Group Policy Management console.

2.  In the navigation pane, expand **Forest:** *YourForestName*, expand **Domains**, expand *YourDomainName*, and then select **WMI Filters**.

3.  Select **Action**, and then select **New**.

4.  In the **Name** text box, type the name of the WMI filter. Be sure to use a name that clearly indicates the purpose of the filter. Check to see if your organization has a naming convention.

5.  In the **Description** text box, type a description for the WMI filter. For example, if the filter excludes domain controllers, you might consider stating that in the description.

6.  Select **Add**.

7.  Leave the **Namespace** value set to **root\\CIMv2**.

8.  In the **Query** text box, type:

    ``` syntax
    select * from Win32_OperatingSystem where Version like "6.%"
    ```

    This query will return **true** for devices running at least Windows Vista and Windows Server 2008. To set a filter for just Windows 8 and Windows Server 2012, use "6.2%". For Windows 11, Windows 10, and Windows Server 2016, use "10.%". To specify multiple versions, combine them with or, as shown in the following:

    ``` syntax
    ... where Version like "6.1%" or Version like "6.2%"
    ```

    To restrict the query to only clients or only servers, add a clause that includes the ProductType parameter. To filter for client operating systems only, such as Windows 8 or Windows 7, use only ProductType="1". For server operating systems that are not domain controllers and for Windows 10 and Windows 11 multi-session, use ProductType="3". For domain controllers only, use ProductType="2". This is a useful distinction, because you often want to prevent your GPOs from being applied to the domain controllers on your network.

    The following clause returns **true** for all devices that are not domain controllers:

    ``` syntax
    ... where ProductType="1" or ProductType="3"
    ```

    The following complete query returns **true** for all devices running Windows 10 and Windows 11, and returns **false** for any server operating system or any other client operating system.

    ``` syntax
    select * from Win32_OperatingSystem where Version like "10.%" and ProductType="1"
    ```

    Specific versions of Windows 10 can be targeted by including the *major build version* in the query. The following query returns **true** for all devices running Windows 10 20H2 (which has a *major build version* of `19042`), and returns **false** for any server operating system or any other client operating system. Additional information about Windows 10 build versions can be found at [Windows 10 release information](/windows/release-health/release-information).

    ```syntax
    select * from Win32_OperatingSystem where Version like "10.0.19042" and ProductType="1"
    ```

    The following query returns **true** for any device running Windows Server 2016, except domain controllers:

    ``` syntax
    select * from Win32_OperatingSystem where Version like "10.%" and ProductType="3"
    ```

9.  Select **OK** to save the query to the filter.

10. Select **Save** to save your completed filter.

> [!NOTE]
> If you're using multiple queries in the same WMI filter, these queries must all return **TRUE** for the filter requirements to be met and for the GPO to be applied.

## To link a WMI filter to a GPO

After you have created a filter with the correct query, link the filter to the GPO. Filters can be reused with many GPOs simultaneously; you do not have to create a new one for each GPO if an existing one meets your needs.

1.  Open the Group Policy Management console.

2.  In the navigation pane, find and then select the GPO that you want to modify.

3.  Under **WMI Filtering**, select the correct WMI filter from the list.

4.  Select **Yes** to accept the filter.
