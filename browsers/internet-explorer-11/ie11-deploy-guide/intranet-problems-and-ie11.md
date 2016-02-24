---
Description: Intranet problems with Internet Explorer 11
MS-HAID: 'p\_ie11deploy.intranet\_problems\_with\_internet\_explorer\_11'
MSHAttr: 'PreferredLib:/library'
title: Intranet problems with Internet Explorer 11
---

# Intranet problems with Internet Explorer 11


You might experience the following issues with your intranet site, after upgrading to the latest version of Internet Explorer.

## Why is my intranet redirecting me to search results?


Internet Explorer 11 works differently with search, based on whether your organization is domain-joined.

-   **Domain-joined computers.** A single word entry is treated as a search term. However, IE11 also checks for available intranet sites and offers matches through the **Notification bar**. If you select **Yes** from the **Notification bar** to navigate to the intranet site, IE11 associates that word with the site so that the next time you type in the intranet site name, inline auto-complete will resolve to the intranet site address.

-   **Non-domain-joined computers.** A single word entry is treated as an intranet site. However, if the term doesn't resolve to a site, IE11 then treats the entry as a search term and opens your default search provider.

To explicitly go to an intranet site, regardless of the environment, users can type either a trailing slash, like" contoso/", or the http:// prefix. Either of these will cause IE11 to treat the entry as an intranet search.

You can change the default behavior so that IE11 treats your single word entry in the address bar as an intranet site, regardless of your environment.

![](../common/wedge.gif)**To enable single-word intranet search**

1.  Open Internet Explorer for the desktop, click the **Tools** menu, and then click **Internet Options**.

2.  Click **Advanced**, check the **Go to an intranet site for a single word entry in the Address bar** box, and then click **OK**.

If you'd like your entire organization to have single word entries default to an intranet site, you can turn on the **Go to an intranet site for a single word entry in the Address bar** Group Policy. With this policy turned on, a search for “contoso” automatically resolves to http://contoso.

 

 



