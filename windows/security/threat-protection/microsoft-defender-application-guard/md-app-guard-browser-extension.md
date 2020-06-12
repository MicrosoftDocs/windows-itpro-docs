---
title: Microsoft Defender Application Guard Extension
description: Learn about the Microsoft Defender Application Guard browser extension for Chrome, and how you can manage it for yourself and your users.
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

Microsoft Defender Application Guard Extension is a web browser extension that protects your device from advanced attacks, by redirecting untrusted websites to an isolated version of the [Microsoft Edge](https://www.microsoft.com/edge) browser. If an untrusted website turns out to be malicious, it remains within Application Guard's secure container, keeping your device protected.

## Prerequisites

Application Guard (the feature, not the browser extension) must be installed and enabled — either locally, in Standalone mode, or as part of an enterprise environment, in Enterprise-managed mode. Application Guard itself has its own set of [requirements](reqs-md-app-guard.md).

> [!TIP]
> Application Guard offers [native support](https://docs.microsoft.com/deployedge/microsoft-edge-security-windows-defender-application-guard) to Microsoft Edge and Internet Explorer, so the extension and companion app are not necessary for users running those browsers.

The Microsoft Defender Application Guard Extension works with the following editions of Windows 10, version 1803 or later:

- Windows 10 Professional
- Windows 10 Enterprise
- Windows 10 Education

The Microsoft Defender Application Guard Extension is available for [Chrome](https://chrome.google.com/webstore/detail/application-guard-extensi/mfjnknhkkiafjajicegabkbimfhplplj/) and [Firefox](https://addons.mozilla.org/en-US/firefox/addon/application-guard-extension/). It can be deployed across the enterprise by an administrator, or downloaded and installed manually by a user on their own device.

The extension also requires that the [Application Guard companion app](https://www.microsoft.com/p/windows-defender-application-guard-companion/9n8gnlc8z9c8?activetab=pivot:overviewtab) be installed locally. The app enables Application Guard to work with web browsers other than Microsoft Edge.

## Known issues

Issue | Mitigation | Notes
-|-|-
Extensions cannot automatically turn on for private browsing or "Incognito" mode | Disable Incognito via policy, by setting **IncognitoModeAvailablity** to **1** | Chrome and Firefox extensions are turned off by default when running those browsers in Incognito mode.
Extensions can be turned off | Use ExtensionSettings policy by setting **Installation_mode** to **force_installed**. | 
Chrome does not offer url to extensions on cold start | Don’t let users disable background process via policy, by setting **backgroundModeEnabled** to **1**. | The cold start issue is caused by a user abruptly exiting Chrome, via the tray icon or task manager, then re-starting the browser.
If the user's network roams or the network isolation policy changes, an untrusted page may load | N/A | Although Application Guard will attempt to redirect the untrusted page and invalidate the cache, under certain circumstances, this issue leaves browsers open to drive-by attacks.

## Troubleshooting guide

<!-- The in-line HTML in the following table is less than ideal, but MarkDown tables break if \r or \n characters are used within table cells -->

Error message | Cause | Actions
-|-|-
Application Guard undetermined state | The extension was unable to communicate with the companion app during the last information request. | &bull; Install the [companion app](https://www.microsoft.com/p/windows-defender-application-guard-companion/9n8gnlc8z9c8?activetab=pivot:overviewtab) and reboot</br> &bull; If the companion app is already installed, reboot and see if that resolves the error</br> &bull; If you still see the error after rebooting, uninstall and re-install the companion app</br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser (Chrome or Firefox)
ExceptionThrown | An unexpected exception was thrown. | &bull; File a bug </br> &bull; Retry the operation
Failed to determine if Application Guard is enabled | The extension was able to communicate with the companion app, but the information request failed in the app. | &bull; Restart the browser </br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser (Chrome or Firefox)
Launch in WDAG failed with a companion communication error | The extension couldn't talk to the companion app, but was able to at the beginning of the session. This can be caused by the companion app being uninstalled while Chrome was running. | &bull; Make sure the companion app is installed </br> &bull; If the companion app is installed, reboot and see if that resolves the error </br> &bull; If you still see the error after rebooting, uninstall and re-install the companion app </br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser (Chrome or Firefox)
Main page navigation caught an unexpected error | An unexpected exception was thrown during the main page navigation. | &bull; File a bug </br> &bull; Retry the operation
Process trust response failed with a companion communication error | The extension couldn't talk to the companion app, but was able to at the beginning of the session. This can be caused by the companion app being uninstalled while Chrome was running.| &bull; Make sure the companion app is installed. </br> &bull; If the companion app is installed, reboot and see if that resolves the error </br> &bull; If you still see the error after rebooting, uninstall and re-install the companion app </br> &bull; Check for updates in both the Microsoft store and the respective web store for the affected browser (Chrome or Firefox)
Protocol out of sync | The extension and native app cannot communicate with each other. This is likely caused by one being updated without supporting the protocol of the other. | Check for updates in both the Microsoft store and the respective web store for the affected browser (Chrome or Firefox)
Security patch level does not match | Microsoft determined that there was a security issue with either the extension or the companion app, and has issued a mandatory update. | Check for updates in both the Microsoft store and the respective web store for the affected browser (Chrome or Firefox)
Unexpected response while processing trusted state | The extension was able to communicate with the companion app, but the API failed and a failure response code was sent back to the extension. | &bull; File a bug </br> &bull; Check if Edge is working </br> &bull; Retry the operation

## Related articles

- [Microsoft Defender Application Guard overview](md-app-guard-overview.md)
- [Testing scenarios using Microsoft Defender Application Guard in your business or organization](test-scenarios-md-app-guard.md)
