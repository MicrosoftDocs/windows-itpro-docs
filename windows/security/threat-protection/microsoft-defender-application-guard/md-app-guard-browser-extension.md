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

Application Guard can be run under [managed mode](install-md-app-guard.md#enterprise-managed-mode) or [standalone mode](install-md-app-guard.md#atandalone-mode). The main difference between the two modes is whether policies have been set to define the organization's boundaries.

Enterprise administrators running Application Guard under managed mode should first define Application Guard's [network isolation settings](configure-md-app-guard.md#network-isolation-settings), so a set of enterprise sites is already in place.

From there, the steps for installing the extension are similar whether Application Guard is running in managed or standalone mode.

1. On the local device, download and install the Application Guard extension for Google [Chrome](https://chrome.google.com/webstore/detail/application-guard-extensi/mfjnknhkkiafjajicegabkbimfhplplj/) and/or Mozilla [Firefox](https://addons.mozilla.org/en-US/firefox/addon/application-guard-extension/).
1. Install the [Windows Defender Application Guard companion app](https://www.microsoft.com/p/windows-defender-application-guard-companion/9n8gnlc8z9c8#activetab=pivot:overviewtab) from the Microsoft Store. This companion app enables Application Guard to work with web browsers other than Microsoft Edge or Internet Explorer.
1. Restart the device.

### Recommended browser group policies

Both Chrome and Firefox have their own browser-specific group policies. We recommend that admins use the following policy settings.

#### Chrome policies

These policies can be found along the filepath, *Software\Policies\Google\Chrome\\*, followed by the policy name (e.g., *Software\Policies\Google\Chrome\IncognitoModeEnabled*).

Policy name  | Possible values | Recommended setting | Reason
-|-|-|-
[IncognitoModeAvailability](https://cloud.google.com/docs/chrome-enterprise/policies/?policy=IncognitoModeAvailability) | `0` = Enabled <br /> `1` = Disabled <br /> `2` = Forced (i.e. forces pages to only open in Incognito mode) | Disabled | This policy allows users to start Chrome in Incognito mode. In this mode, all extensions are turned off by default.
[BrowserGuestModeEnabled](https://cloud.google.com/docs/chrome-enterprise/policies/?policy=BrowserGuestModeEnabled) | `false` or `0` = Disabled <br /> `true`, `1`, or not configured = Enabled | Disabled | This policy allows users to login as *Guest*, which opens a session in Incognito mode. In this mode, all extensions are turned off by default.
[BackgroundModeEnabled](https://cloud.google.com/docs/chrome-enterprise/policies/?policy=BackgroundModeEnabled) | `false` or `0` = Disabled <br /> `true` or `1` = Enabled <br /> <br /> **Note:** If this policy is not set, the user can enable or disable background mode through local browser settings. | Enabled | This policy keeps Chrome running in the background, ensuring that all navigation is passed to the extension.
[ExtensionSettings](https://cloud.google.com/docs/chrome-enterprise/policies/?policy=ExtensionSettings) | This policy accepts a dictionary that configures multiple other management settings for Chrome. See the [Google Cloud documentation](https://cloud.google.com/docs/chrome-enterprise/policies/?policy=ExtensionSettings) for complete schema. | Include an entry for `force_installed` | This policy prevents users from manually removing the extension.

#### Firefox policies

These policies can be found along the filepath, *Software\Policies\Mozilla\Firefox\\*, followed by the policy name (e.g., *Software\Policies\Mozilla\Firefox\DisableSafeMode*).

Policy name | Possible values | Recommended setting | Reason
-|-|-|-|-
[DisableSafeMode](https://github.com/mozilla/policy-templates/blob/master/README.md#DisableSafeMode) | `false` or `0` = Safe mode is enabled <br /> `true` or `1` = Safe mode is disabled | True (i.e. the policy is enabled and Safe mode is *not* allowed to run) | Safe mode can allow users to circumvent Application Guard
[BlockAboutConfig](https://github.com/mozilla/policy-templates/blob/master/README.md#BlockAboutConfig) | `false` or `0` = User access to about:config is allowed <br /> `true` or `1` = User access to about:config is *not* allowed | True (i.e. the policy is enabled and access to about:config is *not* allowed) | About:config is a special page within Firefox that offers control over many settings that may compromise security
[Extensions - Locked](https://github.com/mozilla/policy-templates/blob/master/README.md#Extensions) | This setting accepts a list of UUIDs for extensions (these can be found by searching `extensions.webextensions.uuids` within the about:config page) | Software\Policies\Mozilla\Firefox\Extensions\Locked\1 = "`ApplicationGuardRel@microsoft.com`" | This setting allows you to lock the extension, so the user cannot disable or uninstall it.

## Troubleshooting guide

<!-- The in-line HTML in the following table is less than ideal, but MarkDown tables break if \r or \n characters are used within table cells -->

Error message | Cause | Actions
-|-|-
Application Guard undetermined state | The extension was unable to communicate with the companion app during the last information request. | 1. Install the [companion app](https://www.microsoft.com/p/windows-defender-application-guard-companion/9n8gnlc8z9c8?activetab=pivot:overviewtab) and reboot</br> 2. If the companion app is already installed, reboot and see if that resolves the error</br> 3. If you still see the error after rebooting, uninstall and re-install the companion app</br> 4. Check for updates in both the Microsoft store and the respective web store for the affected browser
ExceptionThrown | An unexpected exception was thrown. | 1. [File a bug](https://aka.ms/wdag-fb) </br> 2. Retry the operation
Failed to determine if Application Guard is enabled | The extension was able to communicate with the companion app, but the information request failed in the app. | 1. Restart the browser </br> 2. Check for updates in both the Microsoft store and the respective web store for the affected browser
Launch in WDAG failed with a companion communication error | The extension couldn't talk to the companion app, but was able to at the beginning of the session. This can be caused by the companion app being uninstalled while Chrome was running. | 1. Make sure the companion app is installed </br> 2. If the companion app is installed, reboot and see if that resolves the error </br> 3. If you still see the error after rebooting, uninstall and re-install the companion app </br> 4. Check for updates in both the Microsoft store and the respective web store for the affected browser
Main page navigation caught an unexpected error | An unexpected exception was thrown during the main page navigation. | 1. [File a bug](https://aka.ms/wdag-fb) </br> 2. Retry the operation
Process trust response failed with a companion communication error | The extension couldn't talk to the companion app, but was able to at the beginning of the session. This can be caused by the companion app being uninstalled while Chrome was running.| 1. Make sure the companion app is installed. </br> 2. If the companion app is installed, reboot and see if that resolves the error </br> 3. If you still see the error after rebooting, uninstall and re-install the companion app </br> 4. Check for updates in both the Microsoft store and the respective web store for the affected browser
Protocol out of sync | The extension and native app cannot communicate with each other. This is likely caused by one being updated without supporting the protocol of the other. | Check for updates in both the Microsoft store, and the web store for the affected browser
Security patch level does not match | Microsoft determined that there was a security issue with either the extension or the companion app, and has issued a mandatory update. | Check for updates in both the Microsoft store, and the web store for the affected browser
Unexpected response while processing trusted state | The extension was able to communicate with the companion app, but the API failed and a failure response code was sent back to the extension. | 1. [File a bug](https://aka.ms/wdag-fb) </br> 2. Check if Edge is working </br> 3. Retry the operation

## Related articles

- [Microsoft Defender Application Guard overview](md-app-guard-overview.md)
- [Testing scenarios using Microsoft Defender Application Guard in your business or organization](test-scenarios-md-app-guard.md)
