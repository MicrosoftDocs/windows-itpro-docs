---
title: How to keep apps removed from Windows 10 from returning during an update
description: How to keep provisioned apps that were removed from your machine from returning during an update.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.author: tracyp
author: msfttracyp
ms.date: 05/25/2018
ms.reviewer: 
manager: dansimp
---
# How to keep apps removed from Windows 10 from returning during an update

>Applies to: Windows 10 (Semi-Annual Channel)

When you update a computer running Windows 10, version 1703 or 1709, you might see provisioned apps that you previously removed return post-update. This can happen if the computer was offline when you removed the apps. This issue was fixed in Windows 10, version 1803.

>[!NOTE]
>* This issue only occurs after a feature update (from one version to the next), not monthly updates or security-related updates.
>* This only applies to first-party apps that shipped with Windows 10. This doesn't apply to third-party apps, Microsoft Store apps, or LOB apps.
>* This issue can occur whether you removed the app using `Remove-appxprovisionedpackage` or `Get-AppxPackage -allusers | Remove-AppxPackage -Allusers`.

To remove a provisioned app, you need to remove the provisioning package. The apps might reappear if you [removed the packages](https://docs.microsoft.com/powershell/module/dism/remove-appxprovisionedpackage) in one of the following ways:

* If you removed the packages while the wim file was mounted when the device was offline.
* If you removed the packages by running a PowerShell cmdlet on the device while Windows was online. Although the apps won't appear for new users, you'll still see the apps for the user account you signed in as.

When you [remove a provisioned app](https://docs.microsoft.com/powershell/module/dism/remove-appxprovisionedpackage), we create a registry key that tells Windows not to reinstall or update that app the next time Windows is updated. If the computer isn't online when you deprovision the app, then we don't create that registry key. (This behavior is fixed in Windows 10, version 1803. If you're running Windows 10, version 1709, apply the latest security update to fix it.)


>[!NOTE]
>If you remove a provisioned app while Windows is online, it's only removed for *new users*—the user that you signed in as will still have that provisioned app. That's because the registry key created when you deprovision the app only applies to new users created *after* the key is created. This doesn't happen if you remove the provisioned app while Windows is offline.


To prevent these apps from reappearing at the next update, manually create a registry key for each app, then update the computer.

## Create registry keys for deprovisioned apps

Use the following steps to create a registry key:

1. Identify any provisioned apps you want removed. Record the package name for each app.
2. Create a .reg file to generate a registry key for each app. Use [this list of Windows 10, version 1709 registry keys](#registry-keys-for-provisioned-apps) as your starting point.
    1. Paste the list of registry keys into Notepad (or a text editor).
    2. Remove the registry keys belonging to the apps you want to keep. For example, if you want to keep the Bing Weather app, delete this registry key:
       ```yaml
       HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\A ppxAllUserStore\Deprovisioned\Microsoft.BingWeather_8wekyb3d8bbwe]
       ```
    3. Save the file with a .txt extension, then right-click the file and change the extension to .reg.
3. Double-click the .reg file to create the registry keys. You can see the new keys in HKLM\\path-to-reg-keys.

You're now ready to update your computer. After the update, check the list of apps in the computer to confirm the removed apps are still gone.

## Package names for apps provisioned in Windows 10, version 1709

|Displayed app name|Package name|
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

## Registry keys for provisioned apps

```syntax
Windows Registry Editor Version 5.00
;1709 Registry Keys

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



[Get-AppxPackage](https://docs.microsoft.com/powershell/module/appx/get-appxpackage)
[Get-AppxPackage -allusers](https://docs.microsoft.com/powershell/module/appx/get-appxpackage)
[Remove-AppxPackage](https://docs.microsoft.com/powershell/module/appx/remove-appxpackage)
