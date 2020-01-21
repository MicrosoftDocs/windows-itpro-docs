---
title: Blue screen occurs when you update the in-box Broadcom NIC driver
description: Describes an issue that causes a blue screen error when you update a in-box Broadcom driver on Windows Server 2019, version 1809.
author: Teresa-Motiv
ms.author: v-tea
ms.date: 1/24/2020
ms.prod: win10
ms.topic: article
ms.custom: 
- CI 113175
- CSSTroubleshooting
audience: ITPro
ms.localizationpriority: medium
keywords: 
manager: kaushika
---

# Blue screen occurs when you update the in-box Broadcom NIC driver

This issue affects computers that meet the following criteria:

- The operating system is Windows Server 2019, version 1809
- The network card is a Broadcom NX1 Gigabit Ethernet NIC
- The number of logical processors is large (for example, a computer that has more than 38 logical processors may be affected)

On such a computer, when you update the in-box Broadcom NIC driver to a newer version, the computer experiences a blue screen error (also referred to as a Stop error or Bugcheck error).

## Cause

The operating system media for Windows Server 2019, version 1809, contains version 17.2 of the Broadcom NIC driver. When you upgrade this driver to a newer version, the process of uninstalling the version 17.2 driver generates an error. This behavior is a known issue.  

This issue has been eliminated in Windows Server 2019 version 1903 and newer versions. The operating system media use a newer version of the Broadcom NIC driver.

## Workaround

To update the Broadcom NIC driver on an affected computer, follow these steps:

1. Download the driver update to the affected computer.
1. Open Device Manager, and then select the Broadcom network adapter.
1. Right-click the adapter and select **Disable device**.
1. Right-click the adapter again and select **Update driver** > **Browse my computer for driver software**.
1. Select the update that you downloaded, and start the update.
1. After the update finishes, right-click the adapter and select **Enable device**.
