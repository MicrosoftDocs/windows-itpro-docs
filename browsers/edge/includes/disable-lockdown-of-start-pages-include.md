---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- Disable Lockdown of Start Pages -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting: Enabled (Start pages are not editable)*

[!INCLUDE [disable-lockdown-of-start-pages-shortdesc](../shortdesc/disable-lockdown-of-start-pages-shortdesc.md)]

### Supported values

|  Group Policy  | MDM | Registry |                                                                                                                      Description                                                                                                                      |                 Most restricted                  |
|----------------|:---:|:--------:|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------:|
| Not configured |  0  |    0     |                                                       Locked. Start pages configured in either the Configure Open Microsoft Edge With policy and Configure Start Pages policy are not editable.                                                       | ![Most restricted value](/images/check-gn.png) |
|    Enabled     |  1  |    1     | Unlocked. Users can make changes to all configured start pages.<p><p>When you enable this policy and define a set of URLs in the Configure Start Pages policy, Microsoft Edge uses the URLs defined in the Configure Open Microsoft Edge With policy. |                                                  |

---


### ADMX info and settings
#### ADMX info
- **GP English name:** Disable lockdown of Start pages
- **GP name:** DisableLockdownOfStartPages
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[DisableLockdownOfStartPages](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-disablelockdownofstartpages)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/DisableLockdownOfStartPages 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** DisableLockdownOfStartPages
- **Value type:** REG_SZ





### Related Policies
- [Configure Start pages](../available-policies.md#configure-start-pages): [!INCLUDE [configure-start-pages-shortdesc](../shortdesc/configure-start-pages-shortdesc.md)]  

- [Configure Open Microsoft Edge With](../available-policies.md#configure-open-microsoft-edge-with): [!INCLUDE [configure-open-microsoft-edge-with-shortdesc](../shortdesc/configure-open-microsoft-edge-with-shortdesc.md)]

### Related topics

[!INCLUDE [microsoft-browser-extension-policy-shortdesc](../shortdesc/microsoft-browser-extension-policy-shortdesc.md)]

<hr>
