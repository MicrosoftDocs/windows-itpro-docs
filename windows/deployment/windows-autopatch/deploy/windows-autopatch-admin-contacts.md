---
title: Add and verify admin contacts
description: This article explains how to add and verify admin contacts
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - tier2
---

# Add and verify admin contacts

There are several ways that Windows Autopatch service communicates with customers. To streamline communication and ensure we're checking with the right people when you [submit a support request](../operate/windows-autopatch-support-request.md), you must provide a set of admin contacts when you onboard with Windows Autopatch.

> [!IMPORTANT]
> You might have already added these contacts in the Microsoft Intune admin center during the [enrollment process](../prepare/windows-autopatch-enroll-tenant.md#step-4-enroll-your-tenant), or if you've [submitted a tenant enrollment support request](../prepare/windows-autopatch-enrollment-support-request.md). However, take a moment to double-check that the contact list is accurate, since the Windows Autopatch Service Engineering Team must be able to reach them if a severe incident occurs.

You must have an admin contact for each specified area of focus. The Windows Autopatch Service Engineering Team will contact these individuals for assistance with your support request. Admin contacts should be the best person or group that can answer questions and make decisions for different [areas of focus](#area-of-focus).

> [!IMPORTANT]
> Whoever you choose as admin contacts, they must have the knowledge and authority to make decisions for your Windows Autopatch environment. The Windows Autopatch Service Engineering Team will contact these admin contacts for questions involving support requests.

## Area of focus

Your admin contacts will receive notifications about support request updates and new messages. These areas include the following:

| Area of focus | Description |
| ----- | ----- |
| Devices | <uL><li>Device registration</li><li>Device health</li></ul> |
| Updates | <ul><li>Windows quality updates</li><li>Windows feature updates</li><li>Microsoft 365 Apps for enterprise updates</li><li>Microsoft Edge updates</li><li>Microsoft Teams updates</li></ul> |

**To add admin contacts:**

1. Sign into the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Under **Tenant administration** in the **Windows Autopatch** section, select **Admin contacts**.
1. Select **+Add**.
1. Enter the contact details including name, email, phone number and preferred language. For a support ticket, the ticket's primary contact's preferred language will determine the language used for email communications.
1. Select an [Area of focus](#area-of-focus) and enter details of the contact's knowledge and authority in the specified area of focus.
1. Select **Save** to add the contact.
1. Repeat for each area of focus.
