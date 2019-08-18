---
title: Troubleshoot kiosk mode issues (Windows 10)
description: Tips for troubleshooting multi-app kiosk configuration.
ms.assetid: 14DDDC96-88C7-4181-8415-B371F25726C8
ms.reviewer: 
manager: dansimp
keywords: ["lockdown", "app restrictions"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: edu, security
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
---

# Troubleshoot kiosk mode issues


**Applies to**

-   Windows 10

## Single-app kiosk issues

>[!TIP]
>We recommend that you [enable logging for kiosk issues](kiosk-prepare.md#enable-logging). For some failures, events are only captured once. If you enable logging after an issue occurs with your kiosk, the logs may not capture those one-time events. In that case, prepare a new kiosk environment (such as a [virtual machine (VM)](kiosk-prepare.md#test-vm)), set up your kiosk account and configuration, and try to reproduce the problem.

### Sign-in issues 

1. Verify that User Account Control (UAC) is turned on. 
2. Check the Event Viewer logs for sign-in issues under **Applications and Services Logs\Microsoft\Windows\Authentication User Interface\Operational**.

### Automatic logon issues 

Check the Event Viewer logs for auto logon issues under **Applications and Services Logs\Microsoft\Windows\Authentication User Interface\Operational**.

## Multi-app kiosk issues

### Unexpected results 

For example:
- Start is not launched in full-screen
- Blocked hotkeys are allowed
- Task Manager, Cortana, or Settings can be launched
- Start layout has more apps than expected

**Troubleshooting steps**

1. [Verify that the provisioning package is applied successfully](kiosk-validate.md).
2. Verify that the account (config) is mapped to a profile in the configuration XML file.
3. Verify that the configuration XML file is authored and formatted correctly. Correct any configuration errors, then create and apply a new provisioning package. Sign out and sign in again to check the new configuration.
4. Additional logs about configuration and runtime issues can be obtained by enabling the **Applications and Services Logs\Microsoft\Windows\AssignedAccess\Operational** channel, which is disabled by default.

![Event Viewer, right-click Operational, select enable log](images/enable-assigned-access-log.png)


### Automatic logon issues 

Check the Event Viewer logs for auto logon issues under **Applications and Services Logs\Microsoft\Windows\Authentication User Interface\Operational**.

### Apps configured in AllowedList are blocked 

1. Ensure the account is mapped to the correct profile and that the apps are specific for that profile. 
2. Check the EventViewer logs for Applocker and AppxDeployment (under **Application and Services Logs\Microsoft\Windows**).


### Start layout not as expected 

- Make sure the Start layout is authored correctly. Ensure that the attributes **Size**, **Row**, and **Column** are specified for each application and are valid.
- Check if the apps included in the Start layout are installed for the assigned access user.
- Check if the shortcut exists on the target device, if a desktop app is missing on Start.

