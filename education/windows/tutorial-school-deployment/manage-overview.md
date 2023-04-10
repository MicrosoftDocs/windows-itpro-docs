---
title: Manage devices with Microsoft Intune
description: Overview of device management capabilities in Intune for Education, including remote actions, remote assistance and inventory/reporting.
ms.date: 08/31/2022
ms.topic: tutorial
---

# Manage devices with Microsoft Intune

Microsoft Intune offers a streamlined remote device management experience throughout the school year. IT administrators can optimize device settings, deploy new applications, updates, ensuring that security and privacy are maintained.

:::image type="content" source="./images/protect-manage.png" alt-text="The device lifecycle for Intune-managed devices - protect and manage devices" border="false":::

## Remote device management

With Intune for Education, there are several ways to manage students' devices. Groups can be created to organize devices and students, to facilitate remote management. You can determine which applications students have access to, and fine tune device settings and restrictions. You can also monitor which devices students sign in to, and troubleshoot devices remotely.

### Remote actions

Intune fo Education allows you to perform actions on devices without having to sign in to the devices. For example, you can send a command to a device to restart or to turn off, or you can locate a device.

:::image type="content" source="./images/remote-actions.png" alt-text="Remote actions available in Intune for Education when selecting a Windows device" lightbox="./images/remote-actions.png" border="true":::

With bulk actions, remote actions can be performed on multiple devices at once.

To learn more about remote actions in Intune for Education, see [Remote actions][EDU-1].

## Remote assistance

With devices managed by Intune for Education, you can remotely assist students and teachers that are having issues with their devices.

For more information, see [Remote assistance for managed devices - Intune for Education][EDU-2].

## Device inventory and reporting

With Intune for Education, it's possible view and report on current devices, applications, settings, and overall health. You can also download reports to review or share offline.

Here are the steps for generating reports in Intune for Education:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Reports**
1. Select between one of the report types:
    - Device inventory
    - Device actions
    - Application inventory
    - Settings errors
    - Windows Defender
    - Autopilot deployment
1. If needed, use the search box to find specific devices, applications, and settings
1. To download a report, select **Download**. The report will download as a comma-separated value (CSV) file, which you can view and modify in a spreadsheet app like Microsoft Excel.
    :::image type="content" source="./images/inventory-reporting.png" alt-text="Reporting options available in Intune for Education when selecting the reports blade" border="true":::

To learn more about reports in Intune for Education, see [Reports in Intune for Education][EDU-3].

<!-- Reference links in article -->

[EDU-1]: /intune-education/edu-device-remote-actions
[EDU-2]: /intune-education/remote-assist-mobile-devices
[EDU-3]: /intune-education/what-are-reports
