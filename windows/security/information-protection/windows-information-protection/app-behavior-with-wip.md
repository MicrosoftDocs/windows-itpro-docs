---
title: Unenlightened and enlightened app behavior while using Windows Information Protection (WIP) (Windows 10)
description: How unenlightened and enlightened apps might behave, based on Windows Information Protection (WIP) networking policies, app configuration, and potentially whether the app connects to network resources directly by using IP addresses or by using hostnames.
keywords: WIP, Enterprise Data Protection, EDP, Windows Information Protection, unenlightened apps, enlightened apps
ms.prod: w10
ms.mktglfcycl: explore
ms.pagetype: security
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/26/2019
---

# Unenlightened and enlightened app behavior while using Windows Information Protection (WIP)
**Applies to:**

- Windows 10, version 1607 and later
- Windows 10 Mobile, version 1607 and later

Windows Information Protection (WIP) classifies apps into two categories: enlightened and unenlightened. Enlighted apps can differentiate between corporate and personal data, correctly determining which to protect based on internal policies. Corporate data is encrypted on the managed device and attempts to copy/paste or share this information with non-corporate apps or people will fail. Unenlightened apps, when marked as corporate-managed, consider all data corporate and encrypt everything by default.

To avoid the automatic encryption of data, developers can enlighten apps by adding and compiling code using the Windows Information Protection application programming interfaces. The most likely candidates for enlightenment are apps that:

- Don’t use common controls for saving files.
- Don’t use common controls for text boxes.
- Simultaneously work on personal and corporate data (for example, contact apps that display personal and corporate data in a single view or a browser that displays personal and corporate web pages on tabs within a single instance).

We strongly suggest that the only unenlightened apps you add to your allowed apps list are Line-of-Business (LOB) apps.

>[!IMPORTANT]
>After revoking WIP, unenlightened apps will have to be uninstalled and re-installed since their settings files will remain encrypted.

>[!Note]
>For more info about creating enlightened apps, see the [Windows Information Protection (WIP)](https://msdn.microsoft.com/windows/uwp/enterprise/wip-hub) topic in the Windows Dev Center.

## Unenlightened app behavior
This table includes info about how unenlightened apps might behave, based on your Windows Information Protection (WIP) networking policies, your app configuration, and potentially whether the app connects to network resources directly by using IP addresses or by using hostnames.

<table>
   <tr>
     <th>App rule setting</th>
     <th align="center" colspan="2">Networking policy configuration</th>
   </tr>
   <tr>
        <th>&nbsp;</th>
        <th align="center">Name-based policies, without the /&#42;AppCompat&#42;/ string</th>
        <th align="center">Name-based policies, using the /&#42;AppCompat&#42;/ string or proxy-based policies</th>
    </tr>
   <tr align="left">
     <td><strong>Not required.</strong> App connects to enterprise cloud resources directly, using an IP address.</td>
     <td>
        <ul>
            <li>App is entirely blocked from both personal and enterprise cloud resources.</li>
            <li>No encryption is applied.</li>
            <li>App can’t access local Work files.</li>
        </ul>
    </td>
    <td>
        <ul>
            <li>App can access both personal and enterprise cloud resources. However, you might encounter apps using policies that restrict access to enterprise cloud resources.</li>
            <li>No encryption is applied.</li>
            <li>App can’t access local Work files.</li>
        </ul>
    </td>
   </tr>
    <tr align="left">
     <td><strong>Not required.</strong> App connects to enterprise cloud resources, using a hostname.</td>
     <td colspan="2">
        <ul>
            <li>App is blocked from accessing enterprise cloud resources, but can access other network resources.</li>
            <li>No encryption is applied.</li>
            <li>App can’t access local Work files.</li>
        </ul>
    </td>
   </tr>
    <tr align="left">
     <td><strong>Allow.</strong> App connects to enterprise cloud resources, using an IP address or a hostname.</td>
     <td colspan="2">
        <ul>
            <li>App can access both personal and enterprise cloud resources.</li>
            <li>Auto-encryption is applied.</li>
            <li>App can access local Work files.</li>
        </ul>
    </td>
   </tr>
    <tr align="left" colspan="2">
     <td><strong>Exempt.</strong> App connects to enterprise cloud resources, using an IP address or a hostname.</td>
     <td colspan="2">
        <ul>
            <li>App can access both personal and enterprise cloud resources.</li>
            <li>No encryption is applied.</li>
            <li>App can access local Work files.</li>
        </ul>
    </td>
   </tr>
</table>

## Enlightened app behavior
This table includes info about how enlightened apps might behave, based on your Windows Information Protection (WIP) networking policies, your app configuration, and potentially whether the app connects to network resources directly by using IP addresses or by using hostnames.

<table>
   <tr>
     <th>App rule setting</th>
     <th>Networking policy configuration for name-based policies, possibly using the /&#42;AppCompat&#42;/ string, or proxy-based policies</th>
   </tr>
    <tr>
        <td><strong>Not required.</strong> App connects to enterprise cloud resources, using an IP address or a hostname.</td>
        <td>
            <ul>
                <li>App is blocked from accessing enterprise cloud resources, but can access other network resources.</li>
                <li>No encryption is applied.</li>
                <li>App can't access local Work files.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td><strong>Allow.</strong> App connects to enterprise cloud resources, using an IP address or a hostname.</td>
        <td>
            <ul>
                <li>App can access both personal and enterprise cloud resources.</li>
                <li>App protects work data and leaves personal data unprotected.</li>
                <li>App can access local Work files.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td><strong>Exempt.</strong> App connects to enterprise cloud resources, using an IP address or a hostname.</td>
        <td>
            <ul>
                <li>App can access both personal and enterprise cloud resources.</li>
                <li>App protects work data and leaves personal data unprotected.</li>
                <li>App can access local Work files.</li>
            </ul>
        </td>
    </tr>
</table>

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
