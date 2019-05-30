---
title: Troubleshoot Miracast on Surface Hub
description: Learn how to resolve issues with Miracast on Surface Hub.
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
ms.localizationpriority: medium
---

# Troubleshoot Miracast on Surface Hub

Surface Hub supports wireless projection through the Miracast protocol. Most wireless monitors and adapters available today use the original implementation of Miracast. Surface Hub uses a slightly different version of Miracast known as **Miracast Autonomous Group Owner (AGO)**. A common troubleshooting step when projecting wirelessly to Surface Hub fails is to test projecting to another wireless monitor or adapter. However, in most cases, these devices are not using Miracast AGO and do not handle wireless projection the same way that Surface Hub does.

In traditional Miracast, the projecting device will connect the access point set up by the Miracast-enabled monitor, and then the monitor will send traffic back to the projecting device using the network channel of the projecting device. Miracast AGO is a two-step connection process:

- The first step is an initial connection using 2.4GHz. 
- After that initial handshake, the projecting device sends traffic to the monitor using the wireless channel settings on the monitor. If Surface Hub is connected to a Wi-Fi network, the access point, it will use the same channel as the connected network, otherwise it will use the Miracast channel from Settings.

There are generally two types of issues with Miracast to Surface Hub: [connection](#connect-issues) and [performance](#performance-issues). In either case, it is a good idea to get a general picture of wireless network activity in the Surface Hub’s location. Running a network scanning tool will show you the available networks and channel usage in the environment.

## Connect issues

Ensure both Wi-Fi and Miracast are both enabled in Settings on Surface Hub. 

If you ran a network scan, you should see Surface Hub Miracast listed as an access point. If Surface Hub’s Miracast network shows up on the scan, but you cannot not see it as an available device, you can try to adjust the Miracast channel used by Surface Hub. 

When Surface Hub is connected to a Wi-Fi network it will use the same channel settings as the Wi-Fi access point for its Miracast access point. For troubleshooting purposes, disconnect Surface Hub from any Wi-Fi networks (but keep Wi-Fi enabled), so you can control the channel used for Miracast. You can manually select the Miracast channel in Settings. You will need to restart Surface Hub after each change. Generally speaking, you will want to use channels that do not show heavy utilization from the network scan.

It is also possible that the connect issue can be the result of a problem on the connecting device. If the projecting device is running Windows, it should be Windows 8.1 or newer for full Miracast support. Again, for troubleshooting, disconnect the projecting device from any Wi-Fi networks. This will eliminate any channel switching between the access point channel and the Miracast channel set on Surface Hub. Also, some Group Policy and firewall settings may be tied to a Wi-Fi network.

### Check drivers

It is also a good idea to ensure the latest drivers and updates are installed on the projecting device. In Device Manager, open the Wi-Fi adapter and video adapter and check for an updated driver version. [Hotfix 3120232](https://support.microsoft.com/help/3120232/poor-wireless-performance-on-5-ghz-connections-on-surface-pro-3-and-surface-3) is highly recommended for Surface Pro 3 and Surface Pro 4 if they are on an older Wi-Fi driver. 

### Check for Miracast support

Next, ensure Miracast is supported on the device. 

1. Press Windows Key + R and type `dxdiag`. 
2. Click “Save all information”. 
3. Open the saved dxdiag.txt and find **Miracast**. It should say **Available, with HDCP**. 
    
### Check firewall
    
The Windows firewall can block Miracast traffic. The simplest test is to disable the firewall and test projection. If Miracast works with the firewall disabled, add an exception for

    C:\Windows\System32\WUDFHost.exe
    Allow In/Out connections for TCP and UDP, Ports: All.

### Check Group Policy settings

On domain-joined devices, Group Policy can also block Miracast. 

1. Use the Windows Key + R and type `rsop.msc` to execute the **Resultant Set of Policy** snap-in. This will show the current policies applied to the PC. 
2. Review **Computer Configuration** > **Windows Settings** > **Security Settings** > **Wireless Network (IEEE 802.11) Policies**. There should be a setting for wireless policies. 
3. Double click the setting for wireless policies and a dialog box will appear. 
4. Open the **Network Permissions** tab and select **Allow everyone to create all user profiles**.

### Check event logs

The last place to check is in the Event logs. Miracast events will be logged to **Wlanautoconfig**. This is true on both Surface Hub and the projecting device. If you export Surface Hub logs, you can view Surface Hub’s Wlanautoconfig in the **WindowsEventLog** folder. Errors in the event log can provide some additional details on where the connection fails.

## Performance issues

After wireless projection is connected, it is possible to see performance issues causing latency. This is generally a result of overall channel saturation or a situation that causes channel switching. 

For channel saturation, refer to the network scan and try to use channels with less traffic.

Channel switching is caused when the Wi-Fi adapter needs to send traffic to multiple channels. Certain channels support Dynamic Frequency Selection (DFS). DFS is used on channels 49 through 148. Some Wi-Fi drivers will show poor performance when connected to a DFS channel. If you are seeing poor Miracast performance while connected to a DFS channel, try the projection on a non-DFS channel. Both Surface Hub and projecting device should use non-DFS channels.

If Surface Hub and the projecting device are both connected to Wi-Fi but using different access points with different channels, this will force Surface Hub and the projecting device to channel switch while Miracast is connected. This will result in both poor wireless project and poor network performance over Wi-Fi. The channel switching will affect the performance of all wireless traffic, not just wireless projection. 

Channel switching will also occur if the projecting device is connected to an Wi-Fi network using a different channel than the channel that Surface Hub uses for Miracast. So, a best practice is to set Surface Hub’s Miracast channel to the same channel as the most commonly used access point. 

If there are multiple Wi-Fi networks or access points in the environment, some channel switching is unavoidable. This is best addressed by ensuring all Wi-Fi drivers are up to date.

