---
title: Unenlightened and enlightened app behavior while using Windows Information Protection (WIP) 
description: Learn how unenlightened and enlightened apps might behave, based on Windows Information Protection (WIP) network policies, app configuration, and other criteria
ms.prod: windows-client
ms.localizationpriority: medium
author: aczechowski
ms.author: aaroncz
manager: dougeby
ms.topic: conceptual
ms.date: 02/26/2019
ms.reviewer: 
ms.technology: itpro-security
---

# Unenlightened and enlightened app behavior while using Windows Information Protection (WIP)
**Applies to:**

- Windows 10, version 1607 and later

Windows Information Protection (WIP) classifies apps into two categories: enlightened and unenlightened. Enlighted apps can differentiate between corporate and personal data, correctly determining which to protect based on internal policies. Corporate data is encrypted on the managed device and attempts to copy/paste or share this information with non-corporate apps or people will fail. Unenlightened apps, when marked as corporate-managed, consider all data corporate and encrypt everything by default.

To avoid the automatic encryption of data, developers can enlighten apps by adding and compiling code using the Windows Information Protection application programming interfaces. The most likely candidates for enlightenment are apps that:

- Don't use common controls for saving files.
- Don't use common controls for text boxes.
- Simultaneously work on personal and corporate data (for example, contact apps that display personal and corporate data in a single view or a browser that displays personal and corporate web pages on tabs within a single instance).

We strongly suggest that the only unenlightened apps you add to your allowed apps list are Line-of-Business (LOB) apps.

> [!IMPORTANT]
> After revoking WIP, unenlightened apps will have to be uninstalled and re-installed since their settings files will remain encrypted. For more info about creating enlightened apps, see the [Windows Information Protection (WIP)](/windows/uwp/enterprise/wip-hub) topic in the Windows Dev Center.

## Unenlightened app behavior
This table includes info about how unenlightened apps might behave, based on your Windows Information Protection (WIP) networking policies, your app configuration, and potentially whether the app connects to network resources directly by using IP addresses or by using hostnames.

|App rule setting|Networking policy configuration|
|--- |--- |
|**Not required.** App connects to enterprise cloud resources directly, using an IP address.| **Name-based policies, without the `/*AppCompat*/` string:**<li>App is entirely blocked from both personal and enterprise cloud resources.<li>No encryption is applied.<li>App can't access local Work files.<br/><br/>**Name-based policies, using the `/*AppCompat*/` string or proxy-based policies:**<li>App can access both personal and enterprise cloud resources. However, you might encounter apps using policies that restrict access to enterprise cloud resources.<li>No encryption is applied.<li>App can't access local Work files.|
|**Not required.** App connects to enterprise cloud resources, using a hostname.|<li>App is blocked from accessing enterprise cloud resources, but can access other network resources.<li>No encryption is applied.<li>App can't access local Work files.|
|**Allow.** App connects to enterprise cloud resources, using an IP address or a hostname.|<li>App can access both personal and enterprise cloud resources.<li>Auto-encryption is applied.<li>App can access local Work files.|
|**Exempt.** App connects to enterprise cloud resources, using an IP address or a hostname.|<li>App can access both personal and enterprise cloud resources.<li>No encryption is applied.<li>App can access local Work files.|

## Enlightened app behavior
This table includes info about how enlightened apps might behave, based on your Windows Information Protection (WIP) networking policies, your app configuration, and potentially whether the app connects to network resources directly by using IP addresses or by using hostnames.

|App rule setting|Networking policy configuration for name-based policies, possibly using the /&#42;AppCompat&#42;/ string, or proxy-based policies|
|--- |--- |
|**Not required.** App connects to enterprise cloud resources, using an IP address or a hostname.|<li>App is blocked from accessing enterprise cloud resources, but can access other network resources.<li> No encryption is applied.<li> App can't access local Work files.|
|**Allow.** App connects to enterprise cloud resources, using an IP address or a hostname.|<li>App can access both personal and enterprise cloud resources.<li> App protects work data and leaves personal data unprotected.<li> App can access local Work files.|
|**Exempt.** App connects to enterprise cloud resources, using an IP address or a hostname.|<li>App can access both personal and enterprise cloud resources.<li> App protects work data and leaves personal data unprotected.<li> App can access local Work files.|

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
