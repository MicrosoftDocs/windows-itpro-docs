---
title: Add and verify admin contacts
description: This article explains how to add and verify admin contacts
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Add and verify admin contacts

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

There are several ways that Windows Autopatch service communicates with customers. To streamline communication and ensure we're checking with the right people when you [submit a support request](../manage/windows-autopatch-support-request.md), you must provide a set of admin contacts when you onboard with Windows Autopatch.

You must have an admin contact for each specified area of focus. The Windows Autopatch Service Engineering Team contacts these individuals for assistance with your support request. Admin contacts should be the best person or group that can answer questions and make decisions for different [areas of focus](#area-of-focus).

> [!IMPORTANT]
> Whoever you choose as admin contacts, they must have the knowledge and authority to make decisions for your Windows Autopatch environment. The Windows Autopatch Service Engineering Team will contact these admin contacts for questions involving support requests.

## Area of focus

Our admin contacts receive notifications about support request updates and new messages. These areas include the following areas of focus:

| Area of focus | Description |
| ----- | ----- |
| Devices | <uL><li>Device registration</li><li>Device health</li></ul> |
| Updates | <ul><li>Windows quality updates</li><li>Windows feature updates</li><li>Microsoft 365 Apps for enterprise updates</li><li>Microsoft Edge updates</li><li>Microsoft Teams updates</li></ul> |

**To add admin contacts:**

1. Sign into the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Under **Tenant administration** in the **Windows Autopatch** section, select **Admin contacts**.
3. Select **+Add**.
4. Enter the contact details including name, email, phone number, and preferred language. For a support ticket, the ticket's primary contact's preferred language determines the language used for email communications.
5. Select an [Area of focus](#area-of-focus) and enter details of the contact's knowledge and authority in the specified area of focus.
6. Select **Save** to add the contact.
7. Repeat for each area of focus.
