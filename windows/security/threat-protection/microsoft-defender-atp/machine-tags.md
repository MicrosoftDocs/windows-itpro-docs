---
title: Create and manage device tags
description: Use device tags to group devices to capture context and enable dynamic list creation as part of an incident
keywords: tags, device tags, device groups, groups, remediation, level, rules, aad group, role, assign, rank
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Create and manage device tags

Add tags on devices to create a logical group affiliation. Device tags support proper mapping of the network, enabling you to attach different tags to capture context and to enable dynamic list creation as part of an incident. Tags can be used as a filter in **Devices list** view, or to group devices. For more information on device grouping, see [Create and manage device groups](machine-groups.md).

You can add tags on devices using the following ways:

- Using the portal
- Setting a registry key value

> [!NOTE]
> There may be some latency between the time a tag is added to a device and its availability in the devices list and device page.  

To add device tags using API, see [Add or remove device tags API](add-or-remove-machine-tags.md).

## Add and manage device tags using the portal

1. Select the device that you want to manage tags on. You can select or search for a device from any of the following views:

   - **Security operations dashboard** - Select the device name from the Top devices with active alerts section.
   - **Alerts queue** - Select the device name beside the device icon from the alerts queue.
   - **Devices list** - Select the device name from the list of devices.
   - **Search box** - Select Device from the drop-down menu and enter the device name.

     You can also get to the alert page through the file and IP views.

2. Select **Manage Tags** from the row of Response actions.

    ![Image of manage tags button](images/manage-tags.png)

3. Type to find or create tags

    ![Image of adding tags on a device](images/new-tags.png)

Tags are added to the device view and will also be reflected on the **Devices list** view. You can then use the **Tags** filter to see the relevant list of devices.

>[!NOTE]
> Filtering might not work on tag names that contain parenthesis.

You can also delete tags from this view.

![Image of adding tags on a device](images/more-manage-tags.png)

## Add device tags by setting a registry key value

>[!NOTE]
> Applicable only on the following devices:
>- Windows 10, version 1709 or later
>- Windows Server, version 1803 or later
>- Windows Server 2016
>- Windows Server 2012 R2
>- Windows Server 2008 R2 SP1
>- Windows 8.1
>- Windows 7 SP1

> [!NOTE] 
> The maximum number of characters that can be set in a tag is 200.

Devices with similar tags can be handy when you need to apply contextual action on a specific list of devices.

Use the following registry key entry to add a tag on a device:

- Registry key: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection\DeviceTagging\`
- Registry key value (REG_SZ): `Group`
- Registry key data: `Name of the tag you want to set`

>[!NOTE]
>The device tag is part of the device information report that's generated once a day. As an alternative, you may choose to restart the endpoint that would transfer a new device information report.
> 
> If you need to remove a tag that was added using the above Registry key, clear the contents of the Registry key data instead of removing the 'Group' key.
