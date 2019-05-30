---
title: DeviceInfo (Windows 10)
description: This section describes the DeviceInfo settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/21/2017
---

# DeviceInfo (Windows Configuration Designer reference)

Use to configure settings for DeviceInfo.

>[!IMPORTANT]
>These settings are intended to be used only by manufacturers, mobile operators, and solution providers when configuring devices, and are not intended for use by administrators in the enterprise.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |  |  X  |  |  |  |


## PhoneMobileOperatorDisplayName

Enter a friendly name for the mobile operator. This string is displayed in the support section of the **Settings > About** screen and in the ringtone list.

## PhoneMobileOperatorName

This setting is used for targeting phone updates. It must contain a code specified by Microsoft that corresponds to the mobile operator. These codes are provided in [Registry values for mobile operator IDs](https://msdn.microsoft.com/library/windows/hardware/dn772250.aspx). For open market phones, in which the mobile operator is not known, use the codes in [Registry values for carrier-unlocked phones](https://msdn.microsoft.com/library/windows/hardware/dn772248.aspx) instead.

This string is not visible to the user.

This setting must not be changed over time even if the user switches SIMs or mobile operators, as updates are always targeted based on the first mobile operator associated with the phone.

The [PhoneManufacturer](https://msdn.microsoft.com/library/windows/hardware/mt138328.aspx), [PhoneManufacturerModelName](https://msdn.microsoft.com/library/windows/hardware/mt138336.aspx), and PhoneMobileOperatorName should create a unique Phone-Operator-Pairing (POP).



## PhoneOEMSupportLink

This should be a functional link that starts with http://. The link should be a URL that redirects to the mobile version of the web page. The content in the webpage should reflow to the screen width. This can be achieved by adding the CSS Tag `"@-ms-viewport { width: device-width; }"`.

The default is an empty string (""), which means that a support link will not be displayed to the user.

This setting varies by OEM.


## PhoneSupportLink

This should be a functional link that starts with http://. The link should be a URL that redirects to the mobile version of the web page. The content in the webpage should reflow to the screen width. This can be achieved by adding the CSS Tag `"@-ms-viewport { width: device-width; }"`.

The default is an empty string (""), which means that a support link will not be displayed to the user.

This setting varies by OEM.


## PhoneSupportPhoneNumber

Use to specify the OEM or mobile operator's support contact phone number. The country code is not required. This string is displayed in the About screen in Settings. This setting also corresponds to the Genuine Windows Phone Certificates (GWPC) support number. 

