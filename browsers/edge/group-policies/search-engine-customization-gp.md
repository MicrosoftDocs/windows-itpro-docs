---
title: Microsoft Edge - Search engine customization
description: By default, Microsoft Edge uses the default search engine specified in App settings, which lets users make changes to it. You can configure Microsoft Edge to use the policy-set search engine specified in the OpenSearch XML file.
ms.author: pashort
author: shortpatti
ms.date: 07/23/2018
---

# Search engine customization

By default, Microsoft Edge uses the default search engine specified in App settings, which lets users make changes to it. You can configure Microsoft Edge to use the policy-set search engine specified in the OpenSearch XML file. You can also prevent users from making changes to the search engine settings.


## Policies

- [Set default search engine](../available-policies.md#set-default-search-engine)

- [Allow web content on New Tab page](../available-policies.md#allow-web-content-on-new-tab-page)

- [Configure additional search engines](../available-policies.md#configure-additional-search-engines)


## Configuration options

![Set default search engine configurations](../images/set-default-search-engine-v4-sm.png)


| **Set default search engine** | **Allow search engine customization** | **Configure additional search engines** | **Outcome** |
| --- | --- | --- | --- |
| Not configured (default) | Disabled | Disabled or not configured (default) | Default search engine specified in App settings. Users cannot make changes. |
| Not configured (default) | Enabled or not configured (default) | Disabled or not configured (default) | Default search engine specified in App settings. Users can make changes to the default search engine at any time. |
| Disabled | Disabled | Disabled or not configured (default) | Users cannot add, remove, or change any of the search engines, but they can set a default search engine. |
| Disabled | Enabled or not configured (default) | Disabled or not configured (default) | Users can add new search engines or change the default search engine, in Settings. |
| Enabled | Disabled | Disabled or not configured (default) | Set the default search engine preventing users from making changes. |
| Enabled | Enabled or not configured (default) | Disabled or not configured (default) | Set the default search engine and allow users to add search engines or make changes. |
---

