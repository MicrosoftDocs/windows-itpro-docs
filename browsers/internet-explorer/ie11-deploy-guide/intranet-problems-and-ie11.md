---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to fix intranet search problems with Internet Explorer 11
author: lomayor
ms.prod: ie11
ms.assetid: 3ee71d93-d9d2-48e1-899e-07932c73faa6
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Fix intranet search problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Fix intranet search problems with Internet Explorer 11
After upgrading to Internet Explorer 11, you might experience search issues while using your intranet site.

## Why is my intranet redirecting me to search results?
IE11 works differently with search, based on whether your organization is domain-joined.

-   **Domain-joined computers.** A single word entry is treated as a search term. However, IE11 also checks for available intranet sites and offers matches through the **Notification bar**. If you select **Yes** from the **Notification bar** to navigate to the intranet site, IE11 associates that word with the site so that the next time you type in the intranet site name, inline auto-complete will resolve to the intranet site address.

-   **Non-domain-joined computers.** A single word entry is treated as an intranet site. However, if the term doesn't resolve to a site, IE11 then treats the entry as a search term and opens your default search provider.

To explicitly go to an intranet site, regardless of the environment, users can type either a trailing slash like `contoso/` or the `https://` prefix. Either of these will cause IE11 to treat the entry as an intranet search. You can also change the default behavior so that IE11 treats your single word entry in the address bar as an intranet site, regardless of your environment.

 **To enable single-word intranet search**

1.  Open Internet Explorer for the desktop, click the **Tools** menu, and then click **Internet Options**.

2.  Click **Advanced**, check the **Go to an intranet site for a single word entry in the Address bar** box, and then click **OK**.

If you'd like your entire organization to have single word entries default to an intranet site, you can turn on the **Go to an intranet site for a single word entry in the Address bar** Group Policy. With this policy turned on, a search for `contoso` automatically resolves to `https://contoso`.

 

 



