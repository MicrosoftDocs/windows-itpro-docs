---
title: # Microsoft Endpoint Manager support
description: # How to obtain Microsoft support from Microsoft Endpoint Manager admin center.
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
---

# Set up School PCs

The Set Up School PCs app is especially useful in scenarios where large numbers of school-owned devices need to be enrolled. The app helps you configure Surface Laptop SE devices with the features students need, remove those they do not need, and enroll the devices into Intune for Education. With the Set Up School PCs app, you create a provisioning package to enroll devices using a USB drive. For more information on prerequisites, configuration, and recommendations, see [Use the Set Up School PCs app](https://docs.microsoft.com/en-us/education/windows/use-set-up-school-pcs-app). Then, return to this document to continue with the steps below. 

### Create the provisioning package

The Set Up School PCs app guides you through configuration choices for school-owned devices. Review the [Set Up School PCs demo](https://www.microsoft.com/en-us/education/interactive-demos/enroll-devices-at-scale) to step through how to create provisioning packages and save them to USB. 

![Configure device settings in Set Up School PCs app](./image12.png)

**NOTE:** Importantly, for **Configure device settings** → **OS version**, you must select **Windows 11 SE**.

The devices will be joined to Azure Active Directory and automatically enrolled in Intune. Note that the Set Up School PCs app will configure many settings, allowing you to optimize devices for shared use and other scenarios. 

### Provision devices with USB

To provision Surface Laptop SE devices with USB, insert the provisioning package saved to USB during manual OOBE. For more information, see [Run package - Install package on PC](https://docs.microsoft.com/en-us/education/windows/use-set-up-school-pcs-app), which steps through running and installing the provisioning package. 