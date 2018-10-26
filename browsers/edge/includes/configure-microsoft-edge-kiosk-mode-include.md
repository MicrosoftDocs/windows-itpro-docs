---
author: shortpatti
ms.author: pashort
ms.date:  10/26/2018
ms.prod: edge
ms:topic: include
---


<!-- ## Configure kiosk mode --> 
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Not configured*

[!INCLUDE [configure-kiosk-mode-shortdesc](../shortdesc/configure-kiosk-mode-shortdesc.md)]

For this policy to work, you must configure Microsoft Edge in assigned access; otherwise, Microsoft Edge ignores the settings in this policy. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](https://aka.ms/E489vw).

### Supported values

|   |   |
|---|---|
| **Single-app**<p>![Single-app digital/interactive signage](../images/Picture1-sm.png)<p>**Digital/interactive signage**<p>Displays a site InPrivate full-screen mode.<ol><li>**Digital signage** does not require user interaction. Use digital signage for things like a rotating advertisement or menu.</li><li>**Interactive signage**, on the other hand, requires user interaction within the page but doesn’t allow for any other uses, such as browsing the internet. Use interactive signage for things like a building business directory or restaurant order/pay station.</li></ol><p>**Policy setting** = Not configured (0 default)<p> | <p>&nbsp;<p>![Single-app public browsing experience](../images/Picture2-sm.png)<p>**Public browsing**<p>Runs InPrivate with a tailored experience for kiosks and is the only app available for public browsing. Users can only browse publically or end their browsing session. The single app public browsing mode is the only kiosk mode that has an End session button and an idle timer that resets the session after a specified time of user inactivity.<p>**Note.** If you do not configure the Configure kiosk reset after idle timeout policy and you enable this policy, Microsoft Edge kiosk resets after 5 minutes of idle time.<p>**Policy setting** = Enabled (1) |
| **Multi-app**<p>![Multi-app normal browsing experience](../images/Picture5-sm.png)<p>**Normal browsing**<p>Runs a full-version of Microsoft Edge with all browsing features and preserves the user data and state between sessions.<p>Some features may not work depending on what other apps you have configured in assigned access. For example, installing extensions or books from the Microsoft store are not allowed if the store is not available. Also, if Internet Explorer 11 is set up in assigned access, you can enable Enterprise Mode to automatically switch users to Internet Explorer 11 for sites that need backward compatibility support.<p>**Policy setting** = Not configured (0 default)  | <p>&nbsp;<p>![Multi-app public browsing experience](../images/Picture6-sm.png)<p>**Public browsing**<p>Runs InPrivate with a tailored experience for kiosks.<p>In this configuration, Microsoft Edge interacts with other applications. For example, if IE11 is set up in multi-app assigned access, you can enable Enterprise Mode to automatically switch users to IE11 for sites that need backward compatibility support.<p>**Policy setting** = Enabled (1)  |
---


### ADMX info and settings
#### ADMX info
- **GP English name:** Configure kiosk mode
- **GP name:** ConfigureKioskMode
- **GP element:** ConfigureKioskMode_TextBox
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureKioskMode](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode)
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