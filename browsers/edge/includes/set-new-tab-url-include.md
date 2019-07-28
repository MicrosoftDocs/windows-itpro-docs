---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Set New Tab page URL -->  
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Disabled or not configured (Blank)*

[!INCLUDE [set-new-tab-url-shortdesc](../shortdesc/set-new-tab-url-shortdesc.md)]

### Supported values

|                Group Policy                 |  MDM   | Registry |                                                           Description                                                            |
|---------------------------------------------|:------:|:--------:|----------------------------------------------------------------------------------------------------------------------------------|
| Disabled or not configured<br>**(default)** | Blank  |  Blank   |                                                  Load the default New Tab page.                                                  |
|              Enabled - String               | String |  String  | Enter a URL in string format, for example, https://www.msn.com.<p>Enabling this policy prevents users from making changes.<p><p> |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Set New Tab page URL
- **GP name:** SetNewTabPageURL
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SetNewTabPageURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-setnewtabpageurl)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetNewTabPageURL 
- **Data type:** String

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings 
- **Value name:** NewTabPageUR
- **Value type:** REG_SZ


### Related policies

[Allow web content on New Tab page](../available-policies.md#allow-web-content-on-new-tab-page):  [!INCLUDE [allow-web-content-on-new-tab-page-shortdesc](../shortdesc/allow-web-content-on-new-tab-page-shortdesc.md)]



<hr>
