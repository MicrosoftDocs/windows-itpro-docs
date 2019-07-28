---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Configure kiosk reset after idle timeout-->  

>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br> 
>*Default setting: 5 minutes*

[!INCLUDE [configure-kiosk-reset-after-idle-timeout-shortdesc](../shortdesc/configure-kiosk-reset-after-idle-timeout-shortdesc.md)]

You must set the Configure kiosk mode policy to enabled (1 - InPrivate public browsing) and configure Microsoft Edge as a single-app in assigned access for this policy to take effect; otherwise, Microsoft Edge ignores this setting. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](https://docs.microsoft.com/windows/configuration/kiosk-shared-pc).

### Supported values

-   **Any integer from 1-1440 (5 minutes is the default)** – The time in minutes from the last user activity before Microsoft Edge kiosk mode resets to the default kiosk configuration. A confirmation dialog displays for the user to cancel or continue and automatically continues after 30 seconds.

-   **0** – No idle timer.

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure kiosk reset after idle timeout
- **GP name:** ConfigureKioskResetAfterIdleTimeout
- **GP element:** ConfigureKioskResetAfterIdleTimeout_TextBox
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureKioskResetAfterIdleTimeout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskresetafteridletimeout)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureKioskResetAfterIdleTimeout 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\KioskMode
- <strong>Value name:</strong>ConfigureKioskResetAfterIdleTimeout
- **Value type:** REG_DWORD



### Related policies

[Configure kiosk mode](../available-policies.md#configure-kiosk-mode): [!INCLUDE [configure-kiosk-mode-shortdesc](../shortdesc/configure-kiosk-mode-shortdesc.md)] 



### Related topics
[Deploy Microsoft Edge kiosk mode](../microsoft-edge-kiosk-mode-deploy.md): Microsoft Edge kiosk mode works with assigned access to allow IT administrators, to create a tailored browsing experience designed for kiosk devices. In this deployment guidance, you learn about the different Microsoft Edge kiosk mode types to help you determine what configuration is best suited for your kiosk device.  You also learn about the other group policies to help you enhance the how to set up your Microsoft Edge kiosk mode experience.

<hr>
