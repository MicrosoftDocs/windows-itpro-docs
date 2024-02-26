---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Turn off smart card emulation

Windows Hello for Business automatically provides smart card emulation for compatibility with smart card enabled applications.

- If you enable this policy setting, Windows Hello for Business provisions Windows Hello for Business credentials that are not compatible with smart card applications
- If you disable or don't configure this policy setting, Windows Hello for Business provisions Windows Hello for Business credentials compatible with smart card applications

> [!IMPORTANT]
> This policy affects Windows Hello for Business credentials at the time of creation. Credentials created before the application of this policy continue to provide smart card emulation. To change an existing credential, enable this policy setting and select *I forgot my PIN* from Settings.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |
