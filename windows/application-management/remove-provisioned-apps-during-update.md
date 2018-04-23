---
title: How to keep apps removed from Windows 10 from returning during an upgrade
description: How to keep provisioned apps that were removed from your machine from returning during an upgrade.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.author: helohr
author: HeidiLohr
ms.date: 04/20/2018
---
# How to keep apps removed from Windows 10 from returning during an upgrade

>Applies to: Windows 10, version 1703; Windows 10 version 1709; Windows 10, version 1803

If you upgrade a Windows 10, version 1703 computer to Windows 10, version 1709 or Windows 10, version 1803 (or a Windows 10, version 1709 to Windows 10, version 1803 upgrade), provisioned apps that you've removed before the upgrade may return.  This can happen if the apps were removed while the computer was offline. If the provisioned (added) apps were removed while online, the apps should not return after the upgrade.

There are two points during removing a provisioned package from a Windows installation where this problem can occur:

* If the packages are removed while the wim file is mounted when the device is offline.
* If the provisioned package is removed while inside of Windows when the device is online.

When this happens, write a registry key for the removed app when removing each one. This way, you can use the registry key to indicate to your deployment whether to install or not install the app while you're upgrading it.

Registry keys for removed apps are listed as "deprovisioned" and written to the following location. The keys listed here are for apps that should not be installed during the upgrade.

```[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned]```

Each deprovisioned app gets a registry key with no data fields under it, just the package name of the app to be removed. For example, the following registry key is for the Calculator app:

```[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsCalculator_8wekyb3d8bbwe]```

Starting with Windows 10, version 1703, the setup code knows to look for registry keys in this folder and will not reinstall the apps listed here. However, in offline mode, the registry keys were not written when the apps were removed. This issue was addressed in Windows 10, version 1803, which ensures registry keys will be written for apps deprovisioned while offline so that setup can properly identify deprovisioned apps and not reinstall them during updates. Windows 10, version 1709 was also patched to correct this issue.

There will be scenarios where the apps were deprovisoned while offline prior to any changes being installed to Windows that would have corrected the behavior when removing the apps.

## How to generate registry keys for deprovisioned apps

The following registry is where the registry keys for deprovisioned apps will be written to:

```<softwarehive>\microsoft\windows\currentversion\appx\appxalluserstore\deprovisioned\<packagefamilyname>```

Where ```<softwarehive>``` is HKLM\\Software on an online running system. For an offline scenario, this location is wherever you mounted the Software hive.

The key won't have any data values, as all the system needs to understand that the deprovisioned app should remain uninstalled is the existence of the key within the proper registry folder.

The following tables list the display and package names for provisioned apps for Windows 10, version 1703 and Windows 10, version 1709 that can be used to generate the registry keys if they are not already present in your installation.

### Windows 10, version 1703 provisioned apps

The following table is a list of provisioned apps for Windows 10, version 1703, listed by app name (DisplayName) and by the package name (PackageName) used for generating the registry key.

>[!NOTE]
>The list of apps may vary with each feature release of Windows 10, apps may also change in Status for instance go from Provisioned Status to System app or Vice Versus. This only applies to apps provisioned for the host OS and the OS you are upgrading to.

|DisplayName|PackageName|
|---|---|
|Microsoft.3DBuilder|Microsoft.3DBuilder_15.2.10821.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.BingWeather|Microsoft.BingWeather_4.23.10923.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.DesktopAppInstaller|Microsoft.DesktopAppInstaller_1.10.16004.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.GetHelp|Microsoft.GetHelp_10.1706.1811.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Getstarted|Microsoft.Getstarted_5.12.2691.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.HEVCVideoExtension|Microsoft.HEVCVideoExtension_1.0.2512.0_x64__8wekyb3d8bbwe|
|Microsoft.Messaging|Microsoft.Messaging_2018.124.707.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Microsoft3DViewer|Microsoft.Microsoft3DViewer_3.1803.29012.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MicrosoftOfficeHub|Microsoft.MicrosoftOfficeHub_2017.715.118.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MicrosoftSolitaireCollection|Microsoft.MicrosoftSolitaireCollection_3.18.12091.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MicrosoftStickyNotes|Microsoft.MicrosoftStickyNotes_2.1.18.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MSPaint|Microsoft.MSPaint_4.1803.21027.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Office.OneNote|Microsoft.Office.OneNote_2015.9126.21251.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.OneConnect|Microsoft.OneConnect_3.1708.2224.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.People|Microsoft.People_2017.1006.1846.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.Print3D|Microsoft.Print3D_1.0.2422.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.SkypeApp|Microsoft.SkypeApp_12.1811.248.1000_neutral_~_kzf8qxf38zg5c|
|Microsoft.StorePurchaseApp|Microsoft.StorePurchaseApp_11802.1802.23014.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Wallet|Microsoft.Wallet_1.0.16328.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Windows.Photos|Microsoft.Windows.Photos_2018.18022.15810.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsAlarms|Microsoft.WindowsAlarms_2017.920.157.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsCalculator|Microsoft.WindowsCalculator_2017.928.0.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsCamera|Microsoft.WindowsCamera_2017.1117.10.1000_neutral_~_8wekyb3d8bbwe|
|microsoft.windowscommunicationsapps|microsoft.windowscommunicationsapps_2015.9126.21425.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsFeedbackHub|Microsoft.WindowsFeedbackHub_2018.323.50.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsMaps|Microsoft.WindowsMaps_2017.1003.1829.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsSoundRecorder|Microsoft.WindowsSoundRecorder_2017.928.5.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsStore|Microsoft.WindowsStore_11803.1001.613.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Xbox.TCUI|Microsoft.Xbox.TCUI_1.8.24001.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxApp|Microsoft.XboxApp_39.39.21002.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxGameOverlay|Microsoft.XboxGameOverlay_1.24.5001.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxIdentityProvider|Microsoft.XboxIdentityProvider_2017.605.1240.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxSpeechToTextOverlay|Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.ZuneMusic|Microsoft.ZuneMusic_2019.18011.13411.1000_neutral_~_8wekyb3d8bbwe|
|Microsoft.ZuneVideo|Microsoft.ZuneVideo_2019.17122.16211.1000_neutral_~_8wekyb3d8bbwe|

The following is a list of registry keys created after removing all the provisioned apps in Windows 10 1709. This list can be copied into Notepad and saved as .reg file for importing into a Windows 10 registry for deprovisioned apps that's missing these values, preventing the removed apps from returning after an upgrade.

Before importing this list, make sure you remove the lines for any apps you wish to retain.

```syntax
Windows Registry Editor Version 5.00
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.3DBuilder_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.BingWeather_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.GetHelp_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Getstarted_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.HEVCVideoExtension_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Messaging_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Microsoft3DViewer_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MSPaint_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Office.OneNote_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.OneConnect_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.People_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.SkypeApp_kzf8qxf38zg5c]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.StorePurchaseApp_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Wallet_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Windows.Photos_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsAlarms_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsCalculator_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsCamera_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\microsoft.windowscommunicationsapps_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsMaps_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsStore_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Xbox.TCUI_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxApp_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxGameOverlay_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxIdentityProvider_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.ZuneMusic_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.ZuneVideo_8wekyb3d8bbwe]
```

### Windows 10, version 1709 provisioned apps

The following table is a list of provisioned apps for Windows 10 1709, listed by app name (DisplayName) and by the package name (PackageName) used for generating the registry key.

|DisplayName|PackageName|
|---|---|
|Microsoft.BingWeather|Microsoft.BingWeather_4.21.2492.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.DesktopAppInstaller|Microsoft.DesktopAppInstaller_1.8.4001.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.GetHelp|Microsoft.GetHelp_10.1706.1811.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Getstarted|Microsoft.Getstarted_5.11.1641.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Messaging|Microsoft.Messaging_2017.815.2052.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Microsoft3DViewer|Microsoft.Microsoft3DViewer_1.1707.26019.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MicrosoftOfficeHub|Microsoft.MicrosoftOfficeHub_2017.715.118.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MicrosoftSolitaireCollection|Microsoft.MicrosoftSolitaireCollection_3.17.8162.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MicrosoftStickyNotes|Microsoft.MicrosoftStickyNotes_1.8.2.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.MSPaint|Microsoft.MSPaint_2.1709.4027.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Office.OneNote|Microsoft.Office.OneNote_2015.8366.57611.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.OneConnect|Microsoft.OneConnect_3.1708.2224.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.People|Microsoft.People_2017.823.2207.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Print3D|Microsoft.Print3D_1.0.2422.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.SkypeApp|Microsoft.SkypeApp_11.18.596.0_neutral_~_kzf8qxf38zg5c|
|Microsoft.StorePurchaseApp|Microsoft.StorePurchaseApp_11706.1707.7104.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Wallet|Microsoft.Wallet_1.0.16328.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Windows.Photos|Microsoft.Windows.Photos_2017.37071.16410.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsAlarms|Microsoft.WindowsAlarms_2017.828.2050.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsCalculator|Microsoft.WindowsCalculator_2017.828.2012.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsCamera|Microsoft.WindowsCamera_2017.727.20.0_neutral_~_8wekyb3d8bbwe|
|microsoft.windowscommunicationsapps|microsoft.windowscommunicationsapps_2015.8241.41275.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsFeedbackHub|Microsoft.WindowsFeedbackHub_1.1705.2121.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsMaps|Microsoft.WindowsMaps_2017.814.2249.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsSoundRecorder|Microsoft.WindowsSoundRecorder_2017.605.2103.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.WindowsStore|Microsoft.WindowsStore_11706.1002.94.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.Xbox.TCUI|Microsoft.Xbox.TCUI_1.8.24001.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxApp|Microsoft.XboxApp_31.32.16002.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxGameOverlay|Microsoft.XboxGameOverlay_1.20.25002.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxIdentityProvider|Microsoft.XboxIdentityProvider_2017.605.1240.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.XboxSpeechToTextOverlay|Microsoft.XboxSpeechToTextOverlay_1.17.29001.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.ZuneMusic|Microsoft.ZuneMusic_2019.17063.24021.0_neutral_~_8wekyb3d8bbwe|
|Microsoft.ZuneVideo|Microsoft.ZuneVideo_2019.17063.24021.0_neutral_~_8wekyb3d8bbwe|

The following list is a list of registry keys created after removing all the provisioned apps in Windows 10 1709. This list can be copied into notepad and saved as .reg file for importing into a Windows 10 registry for deprovisioned apps that's missing these values, preventing the removed apps from returning after an upgrade.

Before importing this list, make sure you remove the lines for any apps you wish to retain.

```syntax
1709 Registry Keys
Windows Registry Editor Version 5.00
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.BingWeather_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.GetHelp_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Getstarted_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Microsoft3DViewer_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MSPaint_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Office.OneNote_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.OneConnect_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.People_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Print3D_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.SkypeApp_kzf8qxf38zg5c]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.StorePurchaseApp_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Wallet_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Windows.Photos_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsAlarms_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsCalculator_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsCamera_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\microsoft.windowscommunicationsapps_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsMaps_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsStore_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Xbox.TCUI_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxApp_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxGameOverlay_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxIdentityProvider_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.ZuneMusic_8wekyb3d8bbwe]
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.ZuneVideo_8wekyb3d8bbwe]
```

>[!NOTE]
>If you remove the provisioned apps while online, the account that you logged on with will contain the apps, they were installed for that user. Therefore, if you do an upgrade, that user will retain the apps.  Users that were created after the apps were removed, or after the upgrade will not get the Apps installed, the removed status is honored.
>
>This setting only applies to first-party apps that shipped with Windows 10, this does not apply to third-party apps or apps that were acquired from the Microsoft Store, nor does it apply to LOB apps.
>
>This does not apply to upgrades to Windows 10, version 1703; the setup code to honor the removal for all users was enabled in Windows 10, version 1709

**How do you create a registry key from the information listed in the previous sections?**