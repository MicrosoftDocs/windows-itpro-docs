---
title: Troubleshoot multi-app kiosk (Windows 10)
description: Tips for troubleshooting multi-app kiosk configuration.
ms.assetid: 14DDDC96-88C7-4181-8415-B371F25726C8
keywords: ["lockdown", "app restrictions"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: edu, security
author: jdeckerms
ms.localizationpriority: medium
---

# Troubleshoot multi-app kiosk


**Applies to**

-   Windows 10

## Unexpected results

For example:
- Start is not launched in full-screen
- Blocked hotkeys are allowed
- Task Manager, Cortana, or Settings can be launched
- Start layout has more apps than expected

**Troubleshooting steps**

1. [Verify that the provisioning package is applied successfully](lock-down-windows-10-to-specific-apps.md#validate-provisioning).
2. Verify that the account (config) is mapped to a profile in the configuration XML file.
3. Verify that the configuration XML file is authored and formatted correctly. Correct any configuration errors, then create and apply a new provisioning package. Sign out and sign in again to check the new configuration.
4. If the issue persists, [capture traces](https://msdn.microsoft.com/library/windows/desktop/dn904629.aspx) for components with the following GUIDs:
    - 94097d3d-2a5a-5b8a-cdbd-194dd2e51a00
    - ab84611c-2678-5cd7-d292-c940f9be6c6d
    - f9f7f27c-5e5d-5273-468f-038e61965660
    - 3e8fb07b-3e10-5981-01a9-fbd924fd5436

## Apps configured in AllowedList are blocked

1. Ensure the account is mapped to the correct profile and that the apps are specific for that profile. 
2. Check the EventViewer logs for Applocker and AppxDeployment (under **Application and Services Logs\Microsoft\Windows**).


## Start layout not as expected

- Make sure the Start layout is authored correctly. Ensure that the attributes **Size**, **Row**, and **Column** are specified for each application and are valid.
- Check if the apps included in the Start layout are installed for the assigned access user.
- Check if the shortcut exists on the target device, if a desktop app is missing on Start.

## Feedback

Feedback and bugs can be submitted in the Feedback Hub. You can use the Problems Steps Recorder to reproduce the issue, and attach the resulting .zip file to your feedback.