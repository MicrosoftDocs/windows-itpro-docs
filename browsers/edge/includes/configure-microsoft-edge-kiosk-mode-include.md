---
author: eavena
ms.author: eravena
ms.date:  10/27/2018
ms.prod: edge
ms:topic: include
---


<!-- ## Configure kiosk mode --> 
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Not configured*

[!INCLUDE [configure-kiosk-mode-shortdesc](../shortdesc/configure-kiosk-mode-shortdesc.md)]

For this policy to work, you must configure Microsoft Edge in assigned access; otherwise, Microsoft Edge ignores the settings in this policy. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](https://aka.ms/E489vw).

### Supported values

[!INCLUDE [configure-kiosk-mode-supported-values-include](configure-kiosk-mode-supported-values-include.md)]


### ADMX info and settings
#### ADMX info
- **GP English name:** Configure kiosk mode
- **GP name:** ConfigureKioskMode
- **GP element:** ConfigureKioskMode_TextBox
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureKioskMode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureKioskMode 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\KioskMode
- **Value name:** ConfigureKioskMode
- **Value type:** REG_SZ

### Related policies
[Configure kiosk reset after idle timeout](../available-policies.md#configure-kiosk-reset-after-idle-timeout): [!INCLUDE [configure-kiosk-reset-after-idle-timeout-shortdesc](../shortdesc/configure-kiosk-reset-after-idle-timeout-shortdesc.md)] 


### Related topics
[Deploy Microsoft Edge kiosk mode](../microsoft-edge-kiosk-mode-deploy.md): Microsoft Edge kiosk mode works with assigned access to allow IT administrators, to create a tailored browsing experience designed for kiosk devices. In this deployment guidance, you learn about the different Microsoft Edge kiosk mode types to help you determine what configuration is best suited for your kiosk device.  You also learn about the other group policies to help you enhance the how to set up your Microsoft Edge kiosk mode experience.

<hr>
