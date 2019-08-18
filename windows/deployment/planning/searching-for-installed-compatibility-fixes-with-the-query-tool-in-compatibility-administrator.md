---
title: Searching for Installed Compatibility Fixes with the Query Tool in Compatibility Administrator (Windows 10)
description: You can access the Query tool from within Compatibility Administrator. The Query tool provides the same functionality as using the Search feature.
ms.assetid: dd213b55-c71c-407a-ad49-33db54f82f22
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Searching for Installed Compatibility Fixes with the Query Tool in Compatibility Administrator


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

You can access the Query tool from within Compatibility Administrator. The Query tool provides the same functionality as using the Search feature.

For information about the Search feature, see [Searching for Fixed Applications in Compatibility Administrator](searching-for-fixed-applications-in-compatibility-administrator.md). However, the Query tool provides more detailed search criteria, including tabs that enable you to search the program properties, the compatibility fix properties, and the fix description. You can perform a search by using SQL SELECT and WHERE clauses, in addition to searching specific types of databases.

**Important**  
You must perform your search with the correct version of the Compatibility Administrator tool. To use the Query tool to search for a 32-bit custom database, you must use the 32-bit version of Compatibility Administrator. To use the Query tool to search for a 64-bit custom database, you must use the 64-bit version of Compatibility Administrator.

 

## Querying by Using the Program Properties Tab


You can use the **Program Properties** tab of the Query tool to search for any compatibility fix, compatibility mode, or AppHelp for a specific application.

**To query by using the Program Properties tab**

1.  On the Compatibility Administrator toolbar, click **Query**.

2.  In the **Look in** drop-down list, select the appropriate database type to search.

3.  Type the location of the application you are searching for into the **Search for the Application** field.

    This name should be the same as the name in the **Applications** area (left pane) of Compatibility Administrator.

4.  Type the application executable (.exe) file name into the **Search for the File** box. If you leave this box blank, the percent (%) sign appears as a wildcard to search for any file.

    You must designate the executable name that was given when the compatibility fix was added to the database.

5.  Optionally, select the check box for one of the following types of compatibility fix:

    -   **Compatibility Modes**

    -   **Compatibility Fixes**

    -   **Application Helps**

    **Important**  
    If you do not select any of the check boxes, the search will look for all types of compatibility fixes. Do not select multiple check boxes because only applications that match all of the requirements will appear.

     

6.  Click **Find Now**.

    The query runs and the results of the query are displayed in the lower pane.

## Querying by Using the Fix Properties Tab


You can use the **Fix Properties** tab of the Query tool to search for any application affected by a specific compatibility fix or a compatibility mode. For example, you can search for any application affected by the ProfilesSetup compatibility mode.

**To query by using the Fix Properties tab**

1.  On the Compatibility Administrator toolbar, click **Query**.

2.  Click the **Fix Properties** tab.

3.  In the **Look in** drop-down list, select the appropriate database type to search.

4.  Type the name of the compatibility fix or compatibility mode into the **Search for programs fixed using** field.

    **Note**  
    You can use the percent (%) symbol as a wildcard in your fix-properties query, as a substitute for any string of zero or more characters.

     

5.  Select the check box for either **Search in Compatibility Fixes** or **Search in Compatibility Modes**.

    **Important**  
    Your text must match the type of compatibility fix or mode for which you are performing the query. For example, entering the name of a compatibility fix and selecting the compatibility mode check box will not return any results. Additionally, if you select both check boxes, the query will search for the fix by compatibility mode and compatibility fix. Only applications that match both requirements appear.

     

6.  Click **Find Now**.

    The query runs and the results of the query are displayed in the lower pane.

## Querying by Using the Fix Description Tab


You can use the **Fix Description** tab of the Query tool to add parameters that enable you to search your compatibility databases by application title or solution description text.

**To query by using the Fix Description tab**

1.  On the Compatibility Administrator toolbar, click **Query**.

2.  Click the **Fix Description** tab.

3.  In the **Look in** drop-down list, select the appropriate database type to search.

4.  Type your search keywords into the box **Words to look for**. Use commas to separate multiple keywords.

    **Important**  
    You cannot use wildcards as part of the Fix Description search query because the default behavior is to search for any entry that meets your search criteria.

     

5.  Refine your search by selecting **Match any word** or **Match all words** from the drop-down list.

6.  Click **Find Now**.

    The query runs and the results of the query are displayed in the lower pane.

## Querying by Using the Fix Description Tab


You can use the **Fix Description** tab of the Query tool to add additional SQL Server SELECT and WHERE clauses to your search criteria.

**To query by using the Advanced tab**

1.  On the Compatibility Administrator toolbar, click **Query**.

2.  Click the **Advanced** tab.

3.  In the **Look in** drop-down list, select the appropriate database type to search.

4.  Select the appropriate SELECT clause for your search from the **Select clauses** box. For example, **APP\_NAME**.

    The **APP\_NAME** clause appears in the **SELECT** field. You can add as many additional clauses as you require. They will appear as columns in your search results.

5.  Select the appropriate WHERE clause for your search from the **Where clauses** box. For example, **DATABASE\_NAME**.

    The **DATABASE\_NAME =** clause appears in the **WHERE** box.

6.  Type the appropriate clause criteria after the equal (=) sign in the **WHERE** box. For example, **DATABASE\_NAME = "Custom\_Database"**.

    You must surround your clause criteria text with quotation marks (") for the clause to function properly.

7.  Click **Find Now**.

    The query runs and the results of the query are displayed in the lower pane.

## Exporting Your Search Results


You can export any of your search results into a tab-delimited text (.txt) file for later review or for archival purposes.

**To export your results**

1.  After you have completed your search by using the Query tool, click **Export**.

    The **Save results to a file** dialog box appears.

2.  Browse to the location where you intend to store the search results file, and then click **Save**.

## Related topics
[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)

 

 





