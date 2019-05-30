---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Allow configuration updates for the Books Library -->
>*Supported versions: Microsoft Edge on Windows 10, version 1803 or later*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-configuration-updates-for-books-library-shortdesc](../shortdesc/allow-configuration-updates-for-books-library-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented. |![Most restricted value](../images/check-gn.png) |
|Enabled or not configured<br>**(default)** |1 |1 |Allowed. Microsoft Edge updates the configuration data for the Books Library automatically. | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow configuration updates for the Books Library
- **GP name:** AllowConfigurationUpdateForBooksLibrary
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowConfigurationUpdateForBooksLibrary](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowconfigurationupdateforbookslibrary)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowConfigurationUpdateForBooksLibrary 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary
- **Value name:** AllowConfigurationUpdateForBooksLibrary 
- **Value type:** REG_DWORD

### Related topics

[!INCLUDE [man-connections-win-comp-services-shortdesc-include](man-connections-win-comp-services-shortdesc-include.md)]

<hr>
