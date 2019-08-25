---
title: How to use cloud recovery for BitLocker on a Surface Hub
description: How to use cloud recovery for BitLocker on a Surface Hub
ms.assetid: c0bde23a-49de-40f3-a675-701e3576d44d
keywords: Accessibility settings, Settings app, Ease of Access
ms.prod: surface-hub
ms.sitesec: library
author: v-miegge
ms.author: v-miegge
ms.topic: article
ms.localizationpriority: medium
---

# Summary

This article describes how to use the cloud recovery function if you are unexpectedly prompted by BitLocker on a Surface Hub device.

> [!NOTE]
> You should follow these steps only if a BitLocker recovery key isn't available.

> [!WARNING]
> * This recovery process deletes the contents of the internal drive. If the process fails, the internal drive will become completely unusable. If this occurs, you will have to log a service request with Microsoft for a resolution.
> * After the recovery process is complete, the device will be reset to the factory settings and returned to its Out of Box Experience state.
> * After the recovery, the Surface Hub must be completely reconfigured.

> [!IMPORTANT]
> This process requires an open Internet connection that does not use a proxy or other authentication method.

## Cloud recovery process

To perform a cloud recovery, follow these steps:

1. Select **Press Esc for more recovery options**.

   ![Screenshot of Escape](images/01-escape.png)

1. Select **Skip this drive**.

   ![Screenshot of Skip this drive](images/02-skip-this-drive.png)

1. Select **Recover from the cloud**.

   ![Screenshot of Recover from the cloud](images/03-recover-from-cloud.png)

1. Select **Yes**.

   ![Screenshot of Yes](images/04-yes.png)

1. Select **Reinstall**.

   ![Screenshot of Reinstall](images/05a-reinstall.png)

   ![Screenshot of Downloading](images/05b-downloading.png)

1. After the cloud recovery process is complete, start the reconfiguration by using the **Out of Box Experience**.

   ![Screenshot of Out of the Box](images/06-out-of-box.png)

## "Something went Wrong" error message

This error is usually caused by network issues that occur during the recovery download. When this issue occurs, don't turn off the Hub because you won't be able to restart it. If you receive this error message, return to the "Recover from the cloud" step, and then restart the recovery process.

1. Select **Cancel**.

   ![Screenshot of Cancel](images/07-cancel.png)

1. Select **Troubleshoot**.

   ![Screenshot of Troubleshoot](images/08-troubleshoot.png)

1. Select **Recover from the cloud**.

   ![Screenshot of Recover from the cloud](images/09-recover-from-cloud2.png)

1. If the **Wired network isn't found** error occurs, select **Cancel**, and then let the Surface Hub rediscover the wired network.

   ![Screenshot of Wired network isn't found](images/10-cancel.png)