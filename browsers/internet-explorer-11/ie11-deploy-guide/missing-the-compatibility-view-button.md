---
Description: 'Compatibility View was introduced in Windows Internet Explorer 8 to help existing content continue to work with Windows Internet Explorer 7, while developers updated their content to support modern interoperable web standards.'
MS-HAID: 'p\_ie11deploy.missing\_the\_compatibility\_view\_button'
MSHAttr: 'PreferredLib:/library'
title: Missing the Compatibility View Button (Internet Explorer 11 for IT Pros)
---

# Missing the Compatibility View Button


**Last updated**

-   November 12, 2015

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Compatibility View was introduced in Windows Internet Explorer 8 to help existing content continue to work with Windows Internet Explorer 7, while developers updated their content to support modern interoperable web standards. Since then, the Internet Explorer web platform, and the web itself, have changed so that most public web content looks for standards-based features instead of IE 7-compatible behavior.

Thanks to these changes, using Internet Explorer 11 in the latest standards mode is more compatible with the web than ever before. As a result, IE11 simplifies web page compatibility for users by removing the **Compatibility View** button and reducing the number of compatibility options in the F12 developer tools for developers.

## What happened to the Compatibility View button?


In previous versions of IE, the **Compatibility View** button would attempt to fix a broken standards-based website, by getting the page to appear like it did in Internet Explorer 7. Today however, more standards-based websites are broken by attempting to appear like they did in Internet Explorer 7. So instead of implementing and using Compatibility View, developers are updating their server configuration to add X-UA-Compatible meta tags, which forces the content to the “edge”, making the **Compatibility View** button disappear. In support of these changes, the Compatibility View button has been completely removed for IE11.

## What if I still need Compatibility View?


There might be extenuating circumstances in your company, which require you to continue to use Compatibility View. In this situation, this process should be viewed strictly as a workaround. You should work with the website vendor to make sure that the affected pages are updated to match the latest web standards. The functionality described here is currently deprecated and will be removed at a time in the future.

**Important**  
This functionality is only available in Internet Explorer for the desktop.

 

![](../common/wedge.gif)**To change your Compatibility View settings**

1.  Open Internet Explorer for the desktop, click **Tools**, and then click **Compatibility View settings**.

2.  In the **Compatibility View Settings** box, add the problematic website URL, and then click **Add**.

    Compatibility View is turned on for this single website, for this specific computer.

3.  Decide if you want your intranet sites displayed using Compatibility View, decide whether to use Microsoft compatibility lists, and then click **Close**.

 

 



