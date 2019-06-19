---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Allow Address bar drop-down list suggestions -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-address-bar-drop-down-shortdesc](../shortdesc/allow-address-bar-drop-down-shortdesc.md)]


### Supported values


|              Group Policy               | MDM | Registry |                                                           Description                                                           |                 Most restricted                  |
|-----------------------------------------|:---:|:--------:|---------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------:|
|                Disabled                 |  0  |    0     | Prevented. Hide the Address bar drop-down list and disable the *Show search and site suggestions as I type* toggle in Settings. | ![Most restricted value](/images/check-gn.png) |
| Enabled or not configured **(default)** |  1  |    1     |                               Allowed. Show the Address bar drop-down list and make it available.                               |                                                  |

---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Address bar drop-down list suggestions
- **GP name:** AllowAddressBarDropdown
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowAddressBarDropdown](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser\#browser-allowaddressbardropdown)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\ServiceUI 
- **Value name:** ShowOneBox
- **Value type:** REG_DWORD


### Related policies

[Configure search suggestions in Address bar](../available-policies.md#configure-search-suggestions-in-address-bar): [!INCLUDE [configure-additional-search-engines-shortdesc](../shortdesc/configure-additional-search-engines-shortdesc.md)]

<hr>
