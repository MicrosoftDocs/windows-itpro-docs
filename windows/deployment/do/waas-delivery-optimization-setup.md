---
title: Set up Delivery Optimization
ms.reviewer: 
manager: dougeby
description: In this article, learn how to set up Delivery Optimization.
ms.prod: windows-client
author: carmenf
ms.localizationpriority: medium
ms.author: carmenf
ms.collection: M365-modern-desktop
ms.topic: article
ms.custom: seo-marvel-apr2020
ms.technology: itpro-updates
---

# Set up Delivery Optimization for Windows

**Applies to**

- Windows 10
- Windows 11

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

## Set up Delivery Optimization

You can use Group Policy or an MDM solution like Intune to configure Delivery Optimization.

You will find the Delivery Optimization settings in Group Policy under **Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization**.

Starting with Microsoft Intune version 1902, you can set many Delivery Optimization policies as a profile, which you can then apply to groups of devices. For more information, see [Delivery Optimization settings in Microsoft Intune](/intune/delivery-optimization-windows).

**Starting with Windows 10, version 1903**, you can use the Azure Active Directory (Azure AD) Tenant ID as a means to define groups. To do this set the value for DOGroupIdSource to its new maximum value of 5.

## Allow content endpoints

When using a firewall, it is important that the content endpoints are allowed and associated ports are open. For more information, see [Endpoints for Delivery Optimization and Microsoft Connected Cache content](delivery-optimization-endpoints.md).


## Recommended Delivery Optimization settings

Delivery Optimization offers a great many settings to fine-tune its behavior (see [Delivery Optimization reference](waas-delivery-optimization-reference.md) for a comprehensive list), but for the most efficient performance, there are just a few key parameters that will have the greatest impact if particular situations exist in your deployment. If you just need an overview of Delivery Optimization, see [Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md).

- Does your topology include multiple breakouts to the internet (i.e., a "hybrid WAN") or are there only a few connections to the internet, so that all requests appear to come from a single external IP address (a "hub and spoke" topology)?
- If you use boundary groups in your topology, how many devices are present in a given group?
- What percentage of your devices are mobile?
- Do your devices have a lot of free space on their drives?
- Do you have a lab scenario with many devices on AC power?

> [!NOTE]
> These scenarios (and the recommended settings for each) are not mutually exclusive. It's possible that your deployment might involve more than one of these scenarios, in which case you can employ the related settings in any combination as needed. In all cases, however, "download mode" is the most important one to set.
>
> [!NOTE]
> Microsoft Intune includes a profile to make it easier to set Delivery Optimization policies. For details, see [Delivery Optimization settings for Intune](/mem/intune/configuration/delivery-optimization-settings).

Quick-reference table:

| Use case | Policy | Recommended value | Reason |
| --- | --- | --- | --- |
| Hub & spoke topology | Download mode | 1 or 2 | Automatic grouping of peers to match your topology |
| Sites with > 30 devices | Minimum file size to cache | 10 MB (or 1 MB) | Leverage peers-to-peer capability in more downloads |
| Large number of mobile devices | Allow uploads on battery power | 60% | Increase # of devices that can upload while limiting battery drain |
| Labs with AC-powered devices | Content Expiration | 7 (up to 30) days | Leverage devices that can upload more for a longer period |

### Hybrid WAN scenario

For this scenario, grouping devices by domain allows devices to be included in peer downloads and uploads across VLANs. **Set Download Mode to 2 - Group**. The default group is the authenticated domain or Active Directory site. If your domain-based group is too wide, or your Active Directory sites aren't aligned with your site network topology, then you should consider additional options for dynamically creating groups, for example by using the GroupIDSrc parameter.

To do this in Group Policy go to **Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization** and set **Download mode** to **2**.

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set DODownloadMode to 1 or 2.

### Hub and spoke topology with boundary groups

The default download mode setting is **1**; this means all devices breaking out to the internet using the same public IP will be considered as a single peer group. To prevent peer-to-peer activity across groups, you should set the download mode to **2**. If you have already defined Active Directory sites per hub or branch office, then you don't need to do anything else. If you're not using Active Directory sites, you should set *RestrictPeerSelectionBy* policies to restrict the activity to the subnet or set a different source for Groups by using the GroupIDSrc parameter. See [Select a method to restrict peer selection](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection).

To do this in Group Policy go to ****Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization** and set **Download mode** to **2**.

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set **DODownloadMode** to **2**.

> [!NOTE]
> For more about using Delivery Optimization with Configuration Manager boundary groups, see [Delivery Optmization](/mem/configmgr/core/plan-design/hierarchy/fundamental-concepts-for-content-management#delivery-optimization).

### Large number of mobile devices

If you have a mobile workforce with a great many mobile devices, set Delivery Optimization to allow uploads on battery power, while limiting the use to prevent battery drain. A setting for **DOMinBatteryPercentageAllowedToUpload** of 60% is a good starting point, though you might want to adjust it later.

To do this in Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization** and set **Allow uploads while the device is on battery while under set Battery level** to 60.

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set **DOMinBatteryPercentageAllowedToUpload** to 60.

### Plentiful free space and large numbers of devices

Many devices now come with large internal drives. You can set Delivery Optimization to take better advantage of this space (especially if you have large numbers of devices) by changing the minimum file size to cache. If you have more than 30 devices in your local network or group, change it from the default 50 MB to 10 MB. If you have more than 100 devices (and are running Windows 10, version 1803 or later), set this value to 1 MB.

[//]: # (default of 50 aimed at consumer)

To do this in Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization** and set **Minimum Peer Caching Content File Size** to 10 (if you have more than 30 devices) or 1 (if you have more than 100 devices).

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set **DOMinFileSizeToCache** to 100 (if you have more than 30 devices) or 1 (if you have more than 100 devices).

### Lab scenario

In a lab situation, you typically have a large number of devices that are plugged in and have a lot of free disk space. By increasing the content expiration interval, you can take advantage of these devices, using them as excellent upload sources in order to upload much more content over a longer period.

To do this in Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization** and set **Max Cache Age** to **604800** (7 days) or more (up to 30 days).

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set DOMaxCacheAge to 7 or more (up to 30 days).


<!--Using include file, waas-delivery-optimization-monitor.md, for shared content on DO monitoring-->
[!INCLUDE [Monitor Delivery Optimization](includes/waas-delivery-optimization-monitor.md)]


### Monitor with Update Compliance

Update Compliance provides you with information about your Delivery Optimization configuration, including the observed bandwidth savings across all devices that used peer-to-peer distribution over the past 28 days.

[[DO status](images/UC_workspace_DO_status.png)](images/UC_workspace_DO_status.png#lightbox)

For details, see [Delivery Optimization in Update Compliance](../update/update-compliance-delivery-optimization.md).

## Troubleshooting

This section summarizes common problems and some solutions to try.

### If you don't see any bytes from peers

If you don't see any bytes coming from peers the cause might be one of the following issues:

- Clients aren’t able to reach the Delivery Optimization cloud services.
- The cloud service doesn’t see other peers on the network.
- Clients aren’t able to connect to peers that are offered back from the cloud service.
- None of the computers on the network are getting updates from peers.

### Clients aren't able to reach the Delivery Optimization cloud services

Try these steps:

1. Start a download of an app that is larger than 50 MB from the Store (for example "Candy Crush Saga").
2. Run `Get-DeliveryOptimizationStatus` from an elevated PowerShell window and observe the [DownloadMode](waas-delivery-optimization-reference.md#download-mode) setting. For peering to work, DownloadMode should be 1, 2, or 3.
3. If DownloadMode is 99, it could indicate your device is unable to reach the Delivery Optimization cloud services. Ensure that the Delivery Optimization host names are allowed access: most importantly **\*.do.dsp.mp.microsoft.com**.

### The cloud service doesn't see other peers on the network

Try these steps:

1. Download the same app on two different devices on the same network, waiting 10 – 15 minutes between downloads.
2. Run `Get-DeliveryOptimizationStatus` from an elevated PowerShell window and ensure that **[DownloadMode](waas-delivery-optimization-reference.md#download-mode)** is 1 or 2 on both devices.
3. Run `Get-DeliveryOptimizationPerfSnap` from an elevated PowerShell window on the second device. The **NumberOfPeers** field should be non-zero.
4. If the number of peers is zero and **[DownloadMode](waas-delivery-optimization-reference.md#download-mode)** is 1, ensure that both devices are using the same public IP address to reach the internet (you can easily do this by opening a browser window and do a search for “what is my IP”). In the case where devices are not reporting the same public IP address, configure **[DownloadMode](waas-delivery-optimization-reference.md#download-mode)** to 2 (Group) and use a custom **[GroupID (Guid)](waas-delivery-optimization-reference.md#group-id)**, to fix this.

> [!NOTE]
> Starting in Windows 10, version 2004, `Get-DeliveryOptimizationStatus` has a new option `-PeerInfo` which returns a real-time list of the connected peers.

### Clients aren't able to connect to peers offered by the cloud service

Try a Telnet test between two devices on the network to ensure they can connect using port 7680. Follow these steps:

1. Install Telnet by running `dism /online /Enable-Feature /FeatureName:TelnetClient` from an elevated command prompt.
2. Run the test. For example, if you are on device with IP 192.168.8.12 and you are trying to test the connection to 192.168.9.17 run `telnet 192.168.9.17 7680` (the syntax is *telnet [destination IP] [port]*. You will either see a connection error or a blinking cursor like this /_. The blinking cursor means success.

> [!NOTE]
> You can also use [Test-NetConnection](/powershell/module/nettcpip/test-netconnection) instead of Telnet to run the test.
> **Test-NetConnection -ComputerName 192.168.9.17 -Port 7680**

### None of the computers on the network are getting updates from peers

Check Delivery Optimization settings that could limit participation in peer caching. Check whether the following settings in assigned group policies, local group policies, or MDM policies are too restrictive:

- Minimum RAM (inclusive) allowed to use peer caching
- Minimum disk size allowed to use peer caching
- Enable peer caching while the device connects using VPN.
- Allow uploads when the device is on battery while under the set battery level
