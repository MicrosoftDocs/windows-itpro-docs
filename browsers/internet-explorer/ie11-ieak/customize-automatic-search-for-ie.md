---
ms.localizationpriority: medium
ms.mktglfcycl: manage
description: Customize Automatic Search in Internet Explorer so that your employees can type a single word into the Address box to search for frequently used pages.
author: lomayor
ms.prod: ie11
ms.assetid: 694e2f92-5e08-49dc-b83f-677d61fa918a
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Customize Automatic Search using IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Customize Automatic Search for Internet Explorer using IEAK 11
Internet Explorer lets websites advertise any search provider that uses the open search standard described at the A9 website ( [OpenSearch 1.1 Draft 5](https://go.microsoft.com/fwlink/p/?LinkId=208582)). When IE detects new search providers, the **Search** box becomes active and adds the new providers to the drop-down list of providers.

Using the **Administrative Templates** section of Group Policy, you can prevent the search box from appearing, you can add a list of acceptable search providers, or you can restrict your employee’s ability to add or remove search providers.

## Automatic Search Configuration
You can customize Automatic Search so that your employees can type a single word into the **Address** box to search for frequently used pages. For example, you can let a commonly used webpage about invoices appear if an employee types *invoice* into the **Address** box, even if the URL doesn’t include the term. If a website can’t be associated with the term, or if there are multiple matches, a webpage appears showing the top search results.

**To set up Automatic Search**

1. Create a script (.asp) file that conditionally looks for search terms, and post it to an intranet server here: https://ieautosearch/response.asp?MT=%1&srch=%2.<p>
   For info about the acceptable values for the *%1* and *%2* parameters, see the [Automatic Search parameters](#automatic-search-parameters). For an example of the script file, see the [Sample Automatic Search script](#sample-automatic-search-script).<p>
   **Important**<br>If you aren’t using IIS in your company, you’ll need to remap this URL to your script file’s location. 

2. On the **Additional Settings** page of the IEAK 11, click **Internet Settings**, and then click **Advanced Settings**.

3. Go to the section labeled **Searching** and type *intranet* into the **Search Provider Keyword** box.

**To redirect to a different site than the one provided by the search results**

-   In the **Advanced Settings** section, go to the section labeled **Searching** and change the **When searching from the address bar** setting to **Just go to the most likely site**.

**To disable Automatic Search**

-   In the **Advanced Settings** section, go to the section labeled **Searching** and change the **When searching from the address bar** setting to **Do not search from the address bar**.

### Automatic Search parameters
You must replace the Automatic Search script file parameters, *%1* and *%2* so they’re part of the actual URL.

|Parameter |Value                                                   |
|----------|--------------------------------------------------------|
|1% |The text string typed by an employee into the **Address** bar. |
|2% |The type of search chosen by an employee. This can include:<ul><li>**3.** Display the results and go to the most likely site.</li><li>**2.** Go to the most likely site.</li><li>**1.** Display the results in the main window.</li><li>**0.** Don't search from the **Address** box.</li></ul> |

### Sample Automatic Search script
This is a VBScript-based sample of an .asp Automatic Search script.

```
<%@ Language=VBScript %>
<%
' search holds the words typed in the Address bar
' by the user, without the "go" or
' "find" or any delimiters like
' "+" for spaces.
' If the user typed
' "Apple pie," search = "Apple pie."
' If the user typed
' "find Apple pie," search = "Apple pie."

search = Request.QueryString("MT")
search = UCase(search)
searchOption = Request.QueryString("srch")

' This is a simple if/then/else
' to redirect the browser to the site
' of your choice based on what the
' user typed.
' Example: expense report is an intranet page
' about filling out an expense report

if (search = "NEW HIRE") then
Response.Redirect("https://admin/hr/newhireforms.htm") 
elseif (search = "LIBRARY CATALOG") then
Response.Redirect("https://library/catalog")
elseif (search = "EXPENSE REPORT") then
Response.Redirect("https://expense")
elseif (search = "LUNCH MENU") then
Response.Redirect("https://cafe/menu/")
else

' If there is not a match, use the
' default IE autosearch server
Response.Redirect("https://auto.search.msn.com/response.asp?MT="
+ search + "&srch=" + searchOption + 
"&prov=&utf8")
end if
%>
```

 

 





