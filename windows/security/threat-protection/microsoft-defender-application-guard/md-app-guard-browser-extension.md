---
title: Microsoft Defender Application Guard Extension
description: Learn about the Microsoft Defender Application Guard browser extension, which extends Application Guard's protection to more web browsers.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: martyav
ms.author: v-maave
ms.date: 06/12/2020
ms.reviewer: 
manager: dansimp
ms.custom: asr
---

# Microsoft Defender Application Guard Extension

**Applies to:**

- Windows 10

[Microsoft Defender Application Guard Extension](https://www.microsoft.com/security/blog/2019/05/23/new-browser-extensions-for-integrating-microsofts-hardware-based-isolation/) is a web browser add-on available for [Chrome](https://chrome.google.com/webstore/detail/application-guard-extensi/mfjnknhkkiafjajicegabkbimfhplplj/) and [Firefox](https://addons.mozilla.org/en-US/firefox/addon/application-guard-extension/).

[Microsoft Defender Application Guard](md-app-guard-overview.md) provides Hyper-V isolation on Windows 10, to protect users from potentially harmful content on the web. The extension helps Application Guard protect users running other web browsers.

> [!TIP]
> Application Guard, by default, offers [native support](https://docs.microsoft.com/deployedge/microsoft-edge-security-windows-defender-application-guard) to both Microsoft Edge and Internet Explorer. These browsers do not need the extension described here for Application Guard to protect them.

Microsoft Defender Application Guard Extension defends devices in your organization from advanced attacks, by redirecting untrusted websites to an isolated version of [Microsoft Edge](https://www.microsoft.com/edge). If an untrusted website turns out to be malicious, it remains within Application Guard's secure container, keeping the device protected.

## Prerequisites

Microsoft Defender Application Guard Extension works with the following editions of Windows 10, version 1803 or later:

- Windows 10 Professional
- Windows 10 Enterprise
- Windows 10 Education

Application Guard itself is required for the extension to work. It has its own set of [requirements](reqs-md-app-guard.md). Check the Application Guard [installation guide](install-md-app-guard.md) for further steps, if you don't have it installed already.

## Installing the extension

Enterprise administrators running Application Guard under [managed mode](install-md-app-guard.md#enterprise-managed-mode) can follow these recommended steps:

1. Define Application Guard's [network isolation settings](configure-md-app-guard.md#network-isolation-settings), so a set of enterprise sites is already in place.
1. On the local device, download and install the Application Guard extension for Google [Chrome](https://chrome.google.com/webstore/detail/application-guard-extensi/mfjnknhkkiafjajicegabkbimfhplplj/) and/or Mozilla [Firefox](https://addons.mozilla.org/en-US/firefox/addon/application-guard-extension/).
1. Install the [Windows Defender Application Guard companion app](https://www.microsoft.com/p/windows-defender-application-guard-companion/9n8gnlc8z9c8#activetab=pivot:overviewtab) from the Microsoft Store. This companion app enables Application Guard to work with web browsers other than Microsoft Edge or Internet Explorer.
1. Restart the device.

## Troubleshooting guide

<!-- The in-line HTML in the following table is less than ideal, but MarkDown tables break if \r or \n characters are used within table cells -->

Error message | Cause | Actions
-|-|-
Application Guard undetermined state | The extension was unable to communicate with the companion app during the last information request. | &bull; Install the [companion app](https://www.microsoft.com/p/windows-defender-application-guard-companion/9n8gnlc8z9c8?activetab=pivot:overviewtab) and reboot</br> &bull; If the companion app is already installed, reboot and see if that resolves the error</br> &bull; If you still see the error after rebooting, uninstall and re-install the companion app</br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser
ExceptionThrown | An unexpected exception was thrown. | &bull; [File a bug](https://aka.ms/wdag-fb) </br> &bull; Retry the operation
Failed to determine if Application Guard is enabled | The extension was able to communicate with the companion app, but the information request failed in the app. | &bull; Restart the browser </br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser
Launch in WDAG failed with a companion communication error | The extension couldn't talk to the companion app, but was able to at the beginning of the session. This can be caused by the companion app being uninstalled while Chrome was running. | &bull; Make sure the companion app is installed </br> &bull; If the companion app is installed, reboot and see if that resolves the error </br> &bull; If you still see the error after rebooting, uninstall and re-install the companion app </br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser
Main page navigation caught an unexpected error | An unexpected exception was thrown during the main page navigation. | &bull; [File a bug](https://aka.ms/wdag-fb) </br> &bull; Retry the operation
Process trust response failed with a companion communication error | The extension couldn't talk to the companion app, but was able to at the beginning of the session. This can be caused by the companion app being uninstalled while Chrome was running.| &bull; Make sure the companion app is installed. </br> &bull; If the companion app is installed, reboot and see if that resolves the error </br> &bull; If you still see the error after rebooting, uninstall and re-install the companion app </br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser
Protocol out of sync | The extension and native app cannot communicate with each other. This is likely caused by one being updated without supporting the protocol of the other. | Check for updates in both the Microsoft store and the respective web store for the affected browser
Security patch level does not match | Microsoft determined that there was a security issue with either the extension or the companion app, and has issued a mandatory update. | Check for updates in both the Microsoft store and the respective web store for the affected browser
Unexpected response while processing trusted state | The extension was able to communicate with the companion app, but the API failed and a failure response code was sent back to the extension. | &bull; [File a bug](https://aka.ms/wdag-fb) </br> &bull; Check if Edge is working </br> &bull; Retry the operation

## Related articles

- [Microsoft Defender Application Guard overview](md-app-guard-overview.md)
- [Testing scenarios using Microsoft Defender Application Guard in your business or organization](test-scenarios-md-app-guard.md)
