---
Description: Customize Automatic Search for Internet Explorer
MS-HAID: 'p\_ieak\_ie11.customize\_automatic\_search\_for\_internet\_explorer'
MSHAttr: 'PreferredLib:/library'
title: Customize Automatic Search for Internet Explorer
---

# Customize Automatic Search for Internet Explorer


Internet Explorer lets websites advertise any search provider that uses the open search standard described at the A9 website ( [OpenSearch 1.1 Draft 5](http://go.microsoft.com/fwlink/?LinkId=208582)). When IE detects new search providers, the **Search** box becomes active and adds the new providers to the drop-down list of providers.

Using the **Administrative Templates** section of Group Policy, you can prevent the search box from appearing, you can add a list of acceptable search providers, and you can restrict your employee’s ability to add or remove search providers.

## Automatic Search configuration


You can customize Automatic Search so that your employees can type a single word into the **Address** box to search for frequently used pages. For example, you can let a commonly used webpage about invoices appear if an employee types *invoice* into the **Address** box, even if the URL doesn’t include the term. If a website can’t be associated with the term, or if there are multiple matches, a webpage appears showing the top search results.

![](../common/wedge.gif)**To set up Automatic Search**

1.  Create a script (.asp) file that conditionally looks for search terms, and post it to an intranet server here: http://ieautosearch/response.asp?MT=*%1*&srch=*%2*.

    **Important**  
    If you aren’t using IIS in your company, you’ll need to remap this URL to your script file’s location. For information about the acceptable values for the *%1* and *%2* parameters, see [Automatic Search parameters](#BKMK_Parameters). For an example of the script file, see [Sample Automatic Search script]().

     

2.  On the **Additional Settings** page of the IEAK 11, click **Internet Settings**, and then click **Advanced Settings**.

3.  Go to the section labeled **Searching** and type *intranet* into the **Search Provider Keyword** box.

![](../common/wedge.gif)**To redirect to a different site than the one provided by the search results**

-   In the **Advanced Settings** section, go to the section labeled **Searching** and change the **When searching from the address bar** setting to **Just go to the most likely site**.

![](../common/wedge.gif)**To disable Automatic Search**

-   In the **Advanced Settings** section, go to the section labeled **Searching** and change the **When searching from the address bar** setting to **Do not search from the address bar**.

## Automatic Search parameters


You must replace the Automatic Search script file parameters, *%1* and *%2* so they’re part of the actual URL.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>%1</p></td>
<td align="left"><p>The text string typed by the employee into the <strong>Address</strong> box.</p></td>
</tr>
<tr class="even">
<td align="left"><p>%2</p></td>
<td align="left"><p>The type of search chosen by the employee, including:</p>
<ul>
<li><p><strong>3</strong> – Display the results and go to the most likely site.</p></li>
<li><p><strong>2</strong> – Go to the most likely site.</p></li>
<li><p><strong>1</strong> – Display the results in the main window.</p></li>
<li><p><strong>0</strong> – Do not search from the <strong>Address</strong> box.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Sample Automatic Search script


This is a VBScript-based sample of an .asp Automatic Search script.

``` syntax
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
Response.Redirect("http://admin/hr/newhireforms.htm") 
elseif (search = "LIBRARY CATALOG") then
Response.Redirect("http://library/catalog")
elseif (search = "EXPENSE REPORT") then
Response.Redirect("http://expense")
elseif (search = "LUNCH MENU") then
Response.Redirect("http://cafe/menu/")
else

' If there is not a match, use the
' default IE autosearch server
Response.Redirect("http://auto.search.msn.com/response.asp?MT="
+ search + "&srch=" + searchOption + 
"&prov=&utf8")
end if
%>
```

 

 



