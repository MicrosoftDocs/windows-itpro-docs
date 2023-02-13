---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 02/14/2023
ms.localizationpriority: medium
---
<!--This file is shared by deployment-service-expedite.md and the deployment-service-troubleshoot.md articles. Headings may be driven by article context. 7512398 -->
## Log location for the Update Health Tools

The Update Health Tools are used when you deploy expedited updates. In some cases, you may wish to review the logs for the Update Health Tools.

**Log location**: `%ProgramFiles%\Microsoft Update Health Tools\Logs`

- The logs are in `.etl` format. 
  - Microsoft offers [PerfView as a download on GitHub](https://github.com/Microsoft/perfview/blob/main/documentation/Downloading.md), which displays `.etl` files.

For more information, see [Troubleshooting expedited updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/get-the-most-out-of-expedited-windows-quality-updates/ba-p/3659741).
