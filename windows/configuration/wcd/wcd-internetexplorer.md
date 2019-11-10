---
title: InternetExplorer (Windows 10)
description: This section describes the InternetExplorer settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
ms.reviewer: 
manager: dansimp
---

# InternetExplorer (Windows Configuration Designer reference)

Use to configure settings related to Internet Explorer.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [CustomHTTPHeaders](#customhttpheaders) |   | X |  |  |  |
| [CustomUserAgentString](#customuseragentstring) |   | X |  |  |  |
| DataSaving > [BrowseDataSaver](#browsedatasaver) |   | X |  |  |  |
| DataSaving > [ShowPicturesAutomatically](#showpicturesautomatically) |   | X |  |  |  |
| [FirstRunURL](#firstrunurl) |   | X |  |  |  |

## CustomHTTPHeaders

Configure Microsoft Edge to send custom HTTP headers. These will be sent in addition to the default HTTP headers with all HTTP and HTTPS requests. The header is the portion of the HTTP request that defines the form of the message.

- A maximum of 16 custom headers can be defined.
- Custom headers cannot be used to modify the user agent string.
- Each header must be no more than 1 KB in length.

The following header names are reserved and must not be overwritten:

- Accept
- Accept-Charset
- Accept-Encoding
- Authorization
- Expect
- Host
- If-Match
- If-Modified-Since
- If-None-Match
- If-Range
- If-Unmodified-Since
- Max-Forwards
- Proxy-Authorization
- Range
- Referer
- TE
- USER-AGENT
- X-WAP-PROFILE

1. In **Available customizations**, select **CustomHTTPHeaders**, enter a name, and then click **Add**. 
2. In **Available customizations**, select the name that you just created. 
3. Enter the custom header.

## CustomUserAgentString

The user agent string indicates which browser you are using, its version number, and details about your system, such as operating system and version. A web server can use this information to provide content that is tailored for your specific browser and phone.

The user agent string for the browser cannot be modified. By default, the string has the following format: 

`Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; <Manufacturer>; <Device>) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Mobile Safari/537.36 Edge/12.10166` 

- `<Manufacturer>` is automatically replaced with the OEM name. This is the same as the PhoneManufacturer setting value that is set as part of the customization Phone metadata in DeviceTargetingInfo.
- `<Device>` is replaced with the device name or phone name. This is the same as the PhoneModelName setting value that is set as part of the customization Phone metadata in DeviceTargetingInfo.


**Limitations and restrictions:**

- The user agent string for the browser cannot be modified outside of the customizations listed above.
- The user agent type registry setting cannot be modified or used to change the default browser view from Mobile to Desktop.



## BrowseDataSaver

Use to set the browser data saver default setting. **True** turns on the browser data saver feature.

Partners can configure the default setting for the browser data saver feature by turning the browser optimization service (through the BrowserDataSaver setting) on or off.


## ShowPicturesAutomatically

Use to enable or disable whether the **Show pictures automatically** setting is available in Internet Explorer **advanced settings**.


## FirstRunURL

Use to set the home page that appears the first time that Microsoft Edge is opened. This page is only shown the first time the browser is opened. After that, the browser displays either the most recently viewed page or an empty page if the user has closed all tabs or opens a new tab.

Specify the **FirstRunURL** value with a valid link that starts with http://. It is recommended you use a forward link that redirects the user to a localized page.
