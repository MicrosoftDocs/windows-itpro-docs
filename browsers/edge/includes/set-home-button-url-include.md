---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Set Home Button URL--> 
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting: Disabled or not configured (Blank)*

[!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Disabled or not configured<br>**(default)** |Blank |Blank |Show the home button, load the Start pages, and lock down the home button to prevent users from changing what page loads. |
|Enabled - String |String |String |Enter a URL in string format, for example, https://www.msn.com.<p>For this policy to work, you must also enable the [Configure Home Button](../available-policies.md#configure-home-button) policy and select the _Show home button & set a specific page_ option.  |
---


### ADMX info and settings
#### ADMX info
- **GP English name:** Set Home Button URL
- **GP name:** SetHomeButtonURL
- **GP element:** SetHomeButtonURLPrompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SetHomeButtonURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetHomeButtonURL 
- **Data type:** String

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** ConfigureHomeButtonURL
- **Value type:** REG_SZ

### Related policies

- [Configure Home Button](../available-policies.md#configure-home-button): [!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)]

- [Unlock Home Button](../available-policies.md#unlock-home-button): [!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)]

<hr>
