---
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.service: windows-client
ms.subservice: autopatch
ms.topic: include
ms.date: 09/16/2024
ms.localizationpriority: medium
---
<!--This file is shared by windows-autopatch-windows-quality-update-programmatic-controls, and windows-autopatch-troubleshoot-programmatic-controls.md articles. Headings may be driven by article context. 7512398 -->
## Log location for the Update Health Tools

The Update Health Tools are used when you deploy expedited updates. In some cases, you may wish to review the logs for the Update Health Tools.

**Log location**: `%ProgramFiles%\Microsoft Update Health Tools\Logs`

- The logs are in `.etl` format. 
  - Microsoft offers [PerfView as a download on GitHub](https://github.com/Microsoft/perfview/blob/main/documentation/Downloading.md), which displays `.etl` files.

For more information, see [Troubleshooting expedited updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/get-the-most-out-of-expedited-windows-quality-updates/ba-p/3659741).
