---
title: Start pages 
description: Configure Microsoft Edge to load either the Start page, New tab page, previously opened pages, or a specific page or pages.
ms.author: pashort
author: shortpatti
ms.date: 07/25/2018
---

# Start pages 
>*Supported versions: Microsoft Edge on Windows 10, next major update to Windows*


Microsoft Edge loads the pages specified in App settings as the default Start pages.  You can configure Microsoft Edge to load either the Start page, New tab page, previously opened pages, or a specific page or pages.  You can also configure Microsoft Edge to prevent users from making changes. 


## Policies 

- [Configure Open Microsoft Edge With](../new-policies.md#configure-open-microsoft-edge-with) 

- [Configure Start Pages](../available-policies.md#configure-start-pages) 

- [Disable Lockdown of Start Pages](../available-policies.md#configure-windows-defender-smartscreen) 

## Configuration options

![Load URLs defined in Configure Start Pages](../images/load-urls-defined-in-configure-open-edge-with-main-sm.png)


| **Configure Open Microsoft Edge With** | **Configure Start Pages** | **Disabled Lockdown of Start Pages** | **Outcome** |
| --- | --- | --- | --- |
| Enabled (applies to all options) | Enabled – String | Enabled (all configured start pages are editable) | Load URLs defined in the Configure Open Microsoft Edge With policy, and allow users to make changes. |
| Disabled or not configured | Enabled – String | Enabled (any Start page configured in the Configured Start Pages policy) |  Load any start page and let users make changes .|
| Enabled (Start page) | Enabled – String | Blank or not configured | Load Start page(s) and prevent users from making changes. |
| Enabled (New tab page) | Enabled – String | Blank or not configured | Load New tab page and prevent users from making changes. |
| Enabled (Previous pages) | Enabled – String | Blank or not configured | Load previously opened pages and prevent users from making changes. |
| Enabled (A specific page or pages) | Enabled – String | Blank or not configured | Load a specific page or pages and prevent users from making changes. |
| Enabled (A specific page or pages) | Enabled – String | Enabled (any Start page configured in Configure Start Pages policy) | Load a specific page or pages and let users make changes. |
---