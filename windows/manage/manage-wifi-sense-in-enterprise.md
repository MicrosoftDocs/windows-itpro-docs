---
title: Manage Wi-Fi Sense in your company (Windows 10)
description: Wi-Fi Sense automatically connects you to Wi-Fi, so you can get online quickly in more places.
ms.assetid: 1845e00d-c4ee-4a8f-a5e5-d00f2735a271
keywords: ["WiFi Sense", "automatically connect to wi-fi", "wi-fi hotspot connection"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: eross-msft
---

# Manage Wi-Fi Sense in your company
**Applies to:**

-   Windows 10
-   Windows 10 Mobile

Wi-Fi Sense learns about open Wi-Fi hotspots your Windows PC or Windows phone connects to by collecting information about the network, like whether the open Wi-Fi network has a high-quality connection to the Internet. By using that information from your device and from other Wi-Fi Sense customers' devices too, Wi-Fi Sense builds a database of these high-quality networks. When you’re in range of one of these Wi-Fi hotspots, you automatically get connected to it.

The initial settings for Wi-Fi Sense are determined by the options you chose when you first set up your PC with Windows 10.

**Note**<br>Wi-Fi Sense isn’t available in all countries or regions. 

**Important**<br>We've deprecated the Wi-Fi Sense credential sharing functionality, which means that while you currently see it in the user interface, it's non-functional. The feature and its associated text will be fully-removed from future releases.

## How does Wi-Fi Sense work?
Wi-Fi Sense connects your employees to open Wi-Fi networks, using crowdsourcing to find the networks that other Windows users are connected to. Typically, these are the open (no password required) Wi-Fi hotspots you see when you’re out and about.


## How to manage Wi-Fi Sense in your company
In a company environment, you will most likely deploy Windows 10 to your employees' PCs using your preferred deployment method and then manage their settings globally. With that in mind, you have a few options for managing how your employees will use Wi-Fi Sense.

**Important**<br>Turning off Wi-Fi Sense stops employees from connecting automatically to open hotspots.

### Using Group Policy (available starting with Windows 10, version 1511)
You can manage your Wi-Fi Sense settings by using Group Policy and your Group Policy editor.

**To set up Wi-Fi Sense using Group Policy**

1.  Open your Group Policy editor and go to the `Computer Configuration\Administrative Templates\Network\WLAN Service\WLAN Settings\Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services` setting.

    ![Group Policy Editor, showing the Wi-Fi Sense setting](images/wifisense-grouppolicy.png)

2.  Turn Wi-Fi Sense on (enabled) or off (disabled), based on your company's environment.

### Using the Registry Editor
You can manage your Wi-Fi Sense settings by using registry keys and the Registry Editor.

**To set up Wi-Fi Sense using the Registry Editor**

1.  Open your Registry Editor and go to `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config\`

2.  Create and set a new **DWORD (32-bit) Value** named, **AutoConnectAllowedOEM**, with a **Value data** of **0 (zero)**.
<p>Setting this value to **0** turns off Wi-Fi Sense and all Wi-Fi sense features. When turned off, the Wi-Fi Sense settings still appear on the **Wi-Fi Settings** screen, but can't be controlled by the employee and all of the Wi-Fi Sense features are turned off. For more info, see [How to configure Wi-Fi Sense on Windows 10 in an enterprise](http://go.microsoft.com/fwlink/p/?LinkId=620959).

    ![Registry Editor, showing the creation of a new DWORD value](images/wifisense-registry.png)

### Using the Windows Provisioning settings
You can manage your Wi-Fi Sense settings by changing the Windows provisioning setting, **WiFISenseAllowed**.

**To set up Wi-Fi Sense using WiFISenseAllowed**

-   Change the Windows Provisioning setting, **WiFISenseAllowed**, to **0**.
<p>Setting this value to **0** turns off Wi-Fi Sense and all Wi-Fi sense features. When turned off, the Wi-Fi Sense settings still appear on the **Wi-Fi Settings** screen, but can't be controlled by the employee and all of the Wi-Fi Sense features are turned off. For more info, see the Windows Provisioning settings reference topic, [WiFiSenseAllowed](http://go.microsoft.com/fwlink/p/?LinkId=620909).

### Using Unattended Windows Setup settings
If your company still uses Unattend, you can manage your Wi-Fi Sense settings by changing the Unattended Windows Setup setting, **WiFiSenseAllowed**.

**To set up Wi-Fi Sense using WiFISenseAllowed**

-   Change the Unattended Windows Setup setting, **WiFISenseAllowed**, to **0**.
<p>Setting this value to **0** turns off Wi-Fi Sense and all Wi-Fi sense features. When turned off, the Wi-Fi Sense settings still appear on the **Wi-Fi Settings** screen, but can't be controlled by the employee and all of the Wi-Fi Sense features are turned off. For more info, see the Unattended Windows Setup Reference topic, [WiFiSenseAllowed](http://go.microsoft.com/fwlink/p/?LinkId=620910).

### How employees can change their own Wi-Fi Sense settings
If you don’t turn off the ability for your employees to use Wi-Fi Sense, they can turn it on locally by selecting **Settings &gt; Network & Internet &gt; Wi-Fi &gt; Manage Wi-Fi settings**, and then turning on **Connect to suggested open hotspots**.

    ![Wi-Fi Sense options shown to employees if it's not turned off](images/wifisense-settingscreens.png)

## Related topics
- [Wi-Fi Sense FAQ](http://go.microsoft.com/fwlink/p/?LinkId=620911)
- [How to configure Wi-Fi Sense on Windows 10 in an enterprise](http://go.microsoft.com/fwlink/p/?LinkId=620959)

 

 





