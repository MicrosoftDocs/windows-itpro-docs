
<!-- ## Configure kiosk mode -->
>*Supported versions: Microsoft Edge on Windows 10, version 1810*<br>
>*Default setting:  Not configured*

[!INCLUDE [configure-kiosk-mode-shortdesc](../shortdesc/configure-kiosk-mode-shortdesc.md)]


You need to configure Microsoft Edge in assigned access for this policy to take effect; otherwise, Microsoft Edge ignores these settings. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](https://aka.ms/E489vw).

>[!NOTE]
>If you do not configure the [Configure kiosk reset after idle timeout](../available-policies.md#configure-kiosk-reset-after-idle-timeout) policy and you enable this policy, Microsoft Edge kiosk resets after 5 minutes of idle time.

### Allowed values

| | |
|---|---|
|(0) Default or not configured |<ul><li>If it’s a single app, it runs InPrivate full screen for digital signage or interactive displays.</li><li>If it’s one of many apps, Microsoft Edge runs as normal.</li></ul> |
|(1) Enabled |<ul><li>If it’s a single app, it runs a limited multi-tab version of InPrivate and is the only app available for public browsing. Users can’t minimize, close, or open windows or customize Microsoft Edge, but can clear browsing data and downloads and restart by clicking “End session.” You can configure Microsoft Edge to restart after a period of inactivity by using the “Configure kiosk reset after idle timeout” policy.</li><li>If it’s one of many apps, it runs in a limited multi-tab version of InPrivate for public browsing with other apps. Users can minimize, close, and open multiple InPrivate windows, but they can’t customize Microsoft Edge.</li></ul> |
---

For single app assigned access:

- 0 = Full-screen digital signage and interactive display

- 1 = InPrivate public browsing (limited features)

For multi-app assigned access:

- 0 = Normal Microsoft Edge running in assigned access

- 1 = InPrivate public browsing

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure kiosk mode
- **GP name:** ConfigureKioskMode
- **GP element:** ConfigureKioskMode_TextBox
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
**<ul><li>**MDM name:** Browser/[ConfigureKioskMode]()
**Supported devices:** Desktop
**URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureKioskMode 
**Data type:** Integer

#### Registry settings
**<ul><li>**Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\KioskMode
**Value name:** ConfigureKioskMode
**Value type:** REG_SZ

### Related policies
[Configure kiosk reset after idle timeout](../new-policies.md#configure-kiosk-reset-after-idle-timeout): [!INCLUDE [configure-kiosk-reset-after-idle-timeout-shortdesc](../shortdesc/configure-kiosk-reset-after-idle-timeout-shortdesc.md)] 


### Related documents

- [Create a Kiosk Experience](https://aka.ms/Sed1cr)

- [Configure assigned access](https://aka.ms/Xscxri)

- [Configure a Windows 10 kiosk that runs multiple apps](https://aka.ms/Ckmq4n)

- [Set up a kiosk or digital signage on Windows 10 Pro, Enterprise, or Education](https://aka.ms/R4cdff)

- [Kiosk apps for assigned access: Best practices](https://aka.ms/H1s8y4)

- [Guidelines for choosing an app for assigned access (kiosk mode)](https://aka.ms/Ul7dw3)

<hr>