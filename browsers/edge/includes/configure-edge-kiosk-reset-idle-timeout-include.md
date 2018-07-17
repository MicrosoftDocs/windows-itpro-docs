<!-- ## Configure kiosk reset after idle timeout -->
>*Supported versions: Microsoft Edge on Windows 10, version 1810*<br>
>*Default setting: 5 minutes*

[!INCLUDE [configure-kiosk-reset-after-idle-timeout-shortdesc](../shortdesc/configure-kiosk-reset-after-idle-timeout-shortdesc.md)]

For this policy to work, you must leave the default setting (not configured) for the Configure kiosk mode policy. You need to configure Microsoft Edge in assigned access for this policy to take effect; otherwise, Microsoft Edge ignores these settings. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](https://aka.ms/E489vw).

### Allowed values

-   0-1440 - Any integer from 1-1440 (5 minutes is the default) – The time in minutes from the last user activity before Microsoft Edge kiosk mode resets to the default kiosk configuration. A confirmation dialog displays for the user to cancel or continue and automatically continues after 30 seconds.

-   0 – No restart after idle timer.

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure kiosk reset after idle timeout
- **GP name:** ConfigureKioskResetAfterIdleTimeout
- **GP element:** ConfigureKioskResetAfterIdleTimeout_TextBox
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureKioskResetAfterIdleTimeout]()
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureKioskResetAfterIdleTimeout 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\KioskMode
- **Value name:**ConfigureKioskResetAfterIdleTimeout
- **Value type:** REG_DWORD



### Related policies

[Configure kiosk mode](#configure-microsoft-edge-kiosk-mode-include): [!INCLUDE [configure-kiosk-mode-shortdesc](../shortdesc/configure-kiosk-mode-shortdesc.md)] 


### Related topics:

- [Create a Kiosk Experience](https://aka.ms/Sed1cr)

- [Configure assigned access](https://aka.ms/Xscxri)

- [Configure a Windows 10 kiosk that runs multiple apps](https://aka.ms/Ckmq4n)

- [Set up a kiosk or digital signage on Windows 10 Pro, Enterprise, or Education](https://aka.ms/R4cdff)

- [Kiosk apps for assigned access: Best practices](https://aka.ms/H1s8y4)

- [Guidelines for choosing an app for assigned access (kiosk mode)](https://aka.ms/Ul7dw3)​

<br>