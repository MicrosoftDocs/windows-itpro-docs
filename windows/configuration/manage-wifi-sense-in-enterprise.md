---
title: Manage Wi-Fi Sense in your company (Windows 10)
description: Wi-Fi Sense automatically connects you to Wi-Fi, so you can get online quickly in more places.
ms.assetid: 1845e00d-c4ee-4a8f-a5e5-d00f2735a271
ms.reviewer: 
manager: dansimp
ms.author: dansimp
keywords: ["WiFi Sense", "automatically connect to wi-fi", "wi-fi hotspot connection"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: mobile
author: dansimp
ms.localizationpriority: medium
ms.date: 05/02/2018
ms.topic: article
---

# Manage Wi-Fi Sense in your company
**Applies to:**

-   Windows 10
-   Windows 10 Mobile

>[!IMPORTANT]
>Beginning with Windows 10, version 1803, Wifi-Sense is no longer available. The following information only applies to Windows 10, version 1709 and prior. Please see [Connecting to open Wi-Fi hotspots in Windows 10](https://privacy.microsoft.com/windows-10-open-wi-fi-hotspots) for more details.

Wi-Fi Sense learns about open Wi-Fi hotspots your Windows PC or Windows phone connects to by collecting information about the network, like whether the open Wi-Fi network has a high-quality connection to the Internet. By using that information from your device and from other Wi-Fi Sense customers' devices too, Wi-Fi Sense builds a database of these high-quality networks. When you’re in range of one of these Wi-Fi hotspots, you automatically get connected to it.

The initial settings for Wi-Fi Sense are determined by the options you chose when you first set up your PC with Windows 10.

**Note**<br>Wi-Fi Sense isn’t available in all countries or regions.

## How does Wi-Fi Sense work?
Wi-Fi Sense connects your employees to open Wi-Fi networks. Typically, these are the open (no password required) Wi-Fi hotspots you see when you’re out and about.

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

1. Open your Registry Editor and go to `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config\`

2. Create and set a new **DWORD (32-bit) Value** named, **AutoConnectAllowedOEM**, with a **Value data** of **0 (zero)**.
   <p>Setting this value to <strong>0</strong> turns off Wi-Fi Sense and all Wi-Fi sense features. When turned off, the Wi-Fi Sense settings still appear on the <strong>Wi-Fi Settings</strong> screen, but can&#39;t be controlled by the employee and all of the Wi-Fi Sense features are turned off. For more info, see <a href="https://go.microsoft.com/fwlink/p/?LinkId=620959" data-raw-source="[How to configure Wi-Fi Sense on Windows 10 in an enterprise](https://go.microsoft.com/fwlink/p/?LinkId=620959)">How to configure Wi-Fi Sense on Windows 10 in an enterprise</a>.

   ![Registry Editor, showing the creation of a new DWORD value](images/wifisense-registry.png)

### Using the Windows Provisioning settings
You can manage your Wi-Fi Sense settings by changing the Windows provisioning setting, **WiFISenseAllowed**.

**To set up Wi-Fi Sense using WiFISenseAllowed**

- Change the Windows Provisioning setting, **WiFISenseAllowed**, to **0**.
  <p>Setting this value to <strong>0</strong> turns off Wi-Fi Sense and all Wi-Fi sense features. When turned off, the Wi-Fi Sense settings still appear on the <strong>Wi-Fi Settings</strong> screen, but can&#39;t be controlled by the employee and all of the Wi-Fi Sense features are turned off. For more info, see the Windows Provisioning settings reference topic, <a href="https://go.microsoft.com/fwlink/p/?LinkId=620909" data-raw-source="[WiFiSenseAllowed](https://go.microsoft.com/fwlink/p/?LinkId=620909)">WiFiSenseAllowed</a>.

### Using Unattended Windows Setup settings
If your company still uses Unattend, you can manage your Wi-Fi Sense settings by changing the Unattended Windows Setup setting, **WiFiSenseAllowed**.

**To set up Wi-Fi Sense using WiFISenseAllowed**

- Change the Unattended Windows Setup setting, **WiFISenseAllowed**, to **0**.
  <p>Setting this value to <strong>0</strong> turns off Wi-Fi Sense and all Wi-Fi sense features. When turned off, the Wi-Fi Sense settings still appear on the <strong>Wi-Fi Settings</strong> screen, but can&#39;t be controlled by the employee and all of the Wi-Fi Sense features are turned off. For more info, see the Unattended Windows Setup Reference topic, <a href="https://go.microsoft.com/fwlink/p/?LinkId=620910" data-raw-source="[WiFiSenseAllowed](https://go.microsoft.com/fwlink/p/?LinkId=620910)">WiFiSenseAllowed</a>.

### How employees can change their own Wi-Fi Sense settings
If you don’t turn off the ability for your employees to use Wi-Fi Sense, they can turn it on locally by selecting **Settings &gt; Network & Internet &gt; Wi-Fi &gt; Manage Wi-Fi settings**, and then turning on **Connect to suggested open hotspots**.

![Wi-Fi Sense options shown to employees if it's not turned off](images/wifisense-settingscreens.png)

**Important**<br>The service that was used to share networks with Facebook friends, Outlook.com contacts, or Skype contacts is no longer available. This means:

The **Connect to networks shared by my contacts** setting will still appear in **Settings &gt; Network & Internet &gt; Wi-Fi &gt; Manage Wi-Fi settings** on your PC and in **Settings &gt; Network & wireless &gt; Wi‑Fi &gt; Wi‑Fi Sense** on your phone. However, this setting will have no effect now. Regardless of what it’s set to, networks won’t be shared with your contacts. Your contacts won’t be connected to networks you’ve shared with them, and you won’t be connected to networks they’ve shared with you.

Even if you selected **Automatically connect to networks shared by your contacts** when you first set up your Windows 10 device, you still won’t be connected to networks your contacts have shared with you.

If you select the **Share network with my contacts** check box the first time you connect to a new network, the network won’t be shared.

## Related topics
- [Wi-Fi Sense and Privacy](https://go.microsoft.com/fwlink/p/?LinkId=620911)
- [How to configure Wi-Fi Sense on Windows 10 in an enterprise](https://go.microsoft.com/fwlink/p/?LinkId=620959)

 

 





