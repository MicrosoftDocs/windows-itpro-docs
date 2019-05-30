---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

<!-- ## Prevent using Localhost IP address for WebRTC -->
>*Supported versions: Microsoft Edge on Windows 10, version 1511 or later*<br>
>*Default setting:  Disabled or not configured (Allowed/show localhost IP addresses)*

[!INCLUDE [prevent-using-localhost-ip-address-for-webrtc-shortdesc](../shortdesc/prevent-using-localhost-ip-address-for-webrtc-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Allowed. Show localhost IP addresses. | |
|Enabled |1 |1 |Prevented. |![Most restricted value](../images/check-gn.png) |
---

### ADMX info and settings
#### ADMX info 
- **GP English name:** Prevent using Localhost IP address for WebRTC 
- **GP name:** HideLocalHostIPAddress 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings 
- **MDM name:** Browser/[PreventUsingLocalHostIPAddressForWebRTC](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventusinglocalhostipaddressforwebrtc)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventUsingLocalHostIPAddressForWebRTC
- **Data type:** Integer

#### Registry settings 
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** HideLocalHostIPAddress 
- **Value type:** REG_DWORD

<hr>
