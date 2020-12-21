---
title: Stop error occurs when you update the in-box Broadcom network adapter driver
description: Describes an issue that causes a stop error when you update an in-box Broadcom driver on Windows Server 2019, version 1809.
author: Teresa-Motiv
ms.author: v-tea
ms.date: 2/3/2020
ms.prod: w10
ms.topic: article
ms.custom: 
- CI 113175
- CSSTroubleshooting
audience: ITPro
ms.localizationpriority: medium
keywords: 
manager: kaushika
---

# Stop error occurs when you update the in-box Broadcom network adapter driver

This issue affects computers that meet the following criteria:

- The operating system is Windows Server 2019, version 1809.
- The network adapter is a Broadcom NX1 Gigabit Ethernet network adapter.
- The number of logical processors is large (for example, a computer that has more than 38 logical processors).

On such a computer, when you update the in-box Broadcom network adapter driver to a later version or when you install the Intel chipset driver, the computer experiences a Stop error (also known as a blue screen error or bug check error).

## Cause

The operating system media for Windows Server 2019, version 1809, contains version 17.2 of the Broadcom NIC driver. When you upgrade this driver to a later version, the process of uninstalling the version 17.2 driver generates an error. This is a known issue.  

This issue was resolved in Windows Server 2019 version 1903. The operating system media use a later version of the Broadcom network adapter driver.

## Workaround

To update the Broadcom network adapter driver on an affected computer, follow these steps:

> [!NOTE]  
> This procedure describes how to use Device Manager to disable and re-enable the Broadcom network adapter. Alternatively, you can use the computer BIOS to disable and re-enable the adapter. For specific instructions, see your OEM BIOS configuration guide.

1. Download the driver update to the affected computer.
1. Open Device Manager, and then select the Broadcom network adapter.
1. Right-click the adapter and then select **Disable device**.
1. Right-click the adapter again and then select **Update driver** > **Browse my computer for driver software**.
1. Select the update that you downloaded, and then start the update.
1. After the update finishes, right-click the adapter and then select **Enable device**.
