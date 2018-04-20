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

>Applies to: Windows 10, version 1703; Windows 10 version 1709

If you upgrade a Windows 10, version 1703 computer to Windows 10, version 1709 or Windows 10, version 1803 (or a Windows 10, version 1709 to Windows 10, version 1803 upgrade), provisioned apps that you've removed before the upgrade may return.  This can happen if the apps were removed while the computer was offline. If the provisioned apps were removed while online, the apps should not return after the upgrade.

There are two points during removing a provisioned package from a Windows installation where this problem can occur:

* If the packages are removed while the wim file is mounted when the device is offline.
* If the provisioned package is removed while inside of Windows when the device is online.

When this happens, we write a registry key for a deprovisioned app when each app is deprovisioned, so that when we upgrade setup can use that key as an indicator as to whether to install or not to install the app during the upgrade.

The registry keys where this is written is under the following location.  The keys listed serve as the list of apps to not be installed during the upgrade.

```[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned]```

There is a new registry key written for each app that is deprovisioned.  There are no data fields under that registry key.  The registry key is the package name of app to be removed.
Example Registry key for Calculator:

```[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsCalculator_8wekyb3d8bbwe]```

This functionality was built into Windows 10, version 1703 to capture the removal of the deprovisioned app and write the registry key.  The setup code in Windows 10, version 1709 knows to look for the registry key and not reinstall the app.
However, the offline scenario was not working in Windows 10, version 1703 and Windows 10, version 1703 so the registry keys were not written when the apps were removed while Offline, this was addressed in Windows 10, version 1803 so the registry key will be written when the app is deprovisioned while offline, so that RS5 setup can properly identify de-provisioned apps and not reinstall them.
The offline scenario was also released in a monthly quality update for Windows 10, version 1709 to properly write the registry key when the app is deprovisoned so when you upgrade to a future version the apps should not return.

There will be scenarios where the apps were deprovisoned while offline prior to any changes being installed to Windows that would have corrected the behavior when removing the apps.

The following is how to generate the registry keys of the deprovisoned apps so that setup will honor the state when upgrading.
The registry keys can be added that show the app that were deprovisioned so that when you upgrade to the next version the deprovisioned apps should not return.

The location in the registry where the keys are written is below

```<softwarehive>\microsoft\windows\currentversion\appx\appxalluserstore\deprovisioned\<packagefamilyname>```

Where ```<softwarehive>``` is HKLM\Software on an online running system. In the offline case, it's wherever you mounted the Software hive.
A new registry key is created for each de-provisioned app, there are no data values under the registry keys.  The existence of the key is all that needed.

Below are the lists of Provisioned apps with Windows 10, version 1703 and Windows 10, version 1709 including the Names of the apps as well as package names which can be used to generate the registry keys if they are not present in your installations that you wish to upgrade and do not want the deprovisioned apps to return

List from Windows 10, version 1709.
This is the list of apps that are provisioned with Windows 10 1709, listed by app name (DisplayName) and by the package name (PackageName) which is used when generating the registry key.

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

Below is this the list of registry keys created after removing all the provisioned apps in Windows 10 1709.  This registry list shows all the values for each of the provisioned apps that were deprovisioned.
The indented lines can be copied into notepad and saved as .reg file so they can be imported into a Windows 10 registry that has deprovisioned some or all of the apps and is missing these values, so the apps will not return after an upgrade.
This is the complete list, you would need to remove the lines for the apps you wish to retain during the upgrade.

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

List from Windows 10 1709 (Windows 10, version 1709).
This is the list of apps that are provisioned with Windows 10 1709, listed by app name (DisplayName) and by the package name (PackageName) which is used when generating the registry key. Packages can contain one of more apps.

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

Below is this the list of registry keys created after removing all the provisioned apps in Windows 10 1703.
The indented lines can be copied into notepad and saved as .reg file so they can be imported into a Windows 10 installation that has removed the apps and is missing these values, so the apps will not return after an upgrade. This is the complete list, you would need to remove the lines for the apps you wish to retain.

Windows 10 1703 Registry keys for removed provisioned apps

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

Notes:
If you remove the provisioned apps while online, the account that you logged on with will contain the apps, they were installed for that user.  Therefore, if you do an upgrade, that user will retain the apps.  Users that were created after the apps were removed, or after the upgrade will not get the Apps installed, the removed status is honored.

This setting only applies to 1st party apps that shipped with Windows 10, this does not apply to 3rd party apps or apps that were acquired from the Microsoft Store, nor does it apply to LOB apps.

The list of apps may vary with each feature release of Windows 10, apps may also change in Status for instance go from Provisioned Status to System app or Vice Versus.  This only applies to apps that are provisioned for the host OS and the OS you are upgrading to.

This does not apply to upgrades to Windows 10, version 1703; the setup code to honor the removal for all users was enabled in Windows 10, version 1709
