---
title: Test scenario 7 - Use Cortana and Windows Information Protection (WIP) to help protect your organization’s data on a device (Windows 10)
description: An optional test scenario about how to use Cortana at work with Windows Information Protection (WIP).
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.date: 10/05/2017
ms.reviewer: 
manager: dansimp
---

# Test scenario 7 - Use Cortana and Windows Information Protection (WIP) to help protect your organization’s data on a device

-   Windows 10, version 1703
-   Windows 10 Mobile, version 1703

>[!IMPORTANT]
>The data created as part of these scenarios will be uploaded to Microsoft’s Cloud to help Cortana learn and help your employees. This is the same info that Cortana uses in the consumer offering.

This optional scenario helps you to protect your organization’s data on a device, based on an inspection by Cortana.

## Use Cortana and WIP to protect your organization’s data 

1. Create and deploy an WIP policy to your organization. For info about how to do this, see [Protect your enterprise data using Windows Information Protection (WIP)](/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip).

2. Create a new email from a non-protected or personal mailbox, including the text _I’ll send you that presentation tomorrow_.

3. Wait up to 2 hours to make sure everything has updated, click the **Cortana** icon in the taskbar, and then click in the **Search** bar.

    Cortana automatically pulls your commitment to sending the presentation out of your email, showing it to you.

4. Create a new email from a protected mailbox, including the same text as above, _I’ll send you that presentation tomorrow_.

5. Wait until everything has updated again, click the **Cortana** icon in the taskbar, and then click in the **Search** bar.

    Because it was in an WIP-protected email, the presentation info isn’t pulled out and it isn’t shown to you.
