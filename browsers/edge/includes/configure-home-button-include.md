---
author: eavena
ms.author: eravena
ms.date:  10/28/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Configure Home Button-->  
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting: Disabled or not configured (Show home button and load the Start page)*


[!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)]


### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Disabled or not configured<br>**(default)** |0 |0 |Load the Start page. |
|Enabled |1 |1 |Load the New Tab page. |
|Enabled |2 |2 |Load the custom URL defined in the Set Home Button URL policy. |
|Enabled |3 |3 |Hide the home button. |
---


>[!TIP]
>If you want to make changes to this policy:<ol><li>Enable the **Unlock Home Button** policy.</li><li>Make changes to the **Configure Home Button** policy or **Set Home Button URL** policy.</li><li>Disable the **Unlock Home Button** policy.</li></ol>


### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Home Button
- **GP name:** ConfigureHomeButton
- **GP element:** ConfigureHomeButtonDropdown
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureHomeButton 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings 
- **Value name:** ConfigureHomeButton
- **Value type:** REG_DWORD

### Related policies

- [Set Home Button URL](../available-policies.md#set-home-button-url): [!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]
 
- [Unlock Home Button](../available-policies.md#unlock-home-button): [!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)] 


<hr>
