---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

<!-- ## Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Disabled or not configured (Collect and send)*

[!INCLUDE [prevent-edge-from-gathering-live-tile-info-shortdesc](../shortdesc/prevent-edge-from-gathering-live-tile-info-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Collect and send Live Tile metadata. | |
|Enabled |1 |1 |Do not collect data. |![Most restricted value](../images/check-gn.png) |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start
- **GP name:** PreventLiveTileDataCollection
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[PreventLiveTileDataCollection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventlivetiledatacollection)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventLiveTileDataCollection 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** PreventLiveTileDataCollection
- **Value type:** REG_DWORD

<hr>
