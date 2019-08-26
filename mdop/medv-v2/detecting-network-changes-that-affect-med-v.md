---
title: Detecting Network Changes that Affect MED-V
description: Detecting Network Changes that Affect MED-V
author: levinec
ms.assetid: fd29b95a-cda2-464d-b86d-50b6bd64b4ca
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Detecting Network Changes that Affect MED-V


The Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 solution lets you configure your environment to detect certain network changes that might occur after MED-V workspaces are deployed and that can affect MED-V.

The feature includes a component running in the guest operating system that is notified of network configuration changes on the host computer. It allows a non-Microsoft ESD or other application that is running in the guest to resolve to the same network endpoints that the host ESD or application resolves to.

**Note**  
This feature is only available if the virtual machine is configured for network address translation (NAT) mode. If the virtual machine is configured for BRIDGED mode, no change indications are generated.

 

This section provides information and instruction to assist you in monitoring those network changes that can affect MED-V.

## To detect network changes for MED-V


After you have deployed your MED-V workspaces, you can monitor changes to certain network configurations by preforming the following tasks:

1. Create a Managed Object Format (MOF) file that will look for the network configuration changes that you want to monitor. The following code shows an example of the MOF file that you can create.

   ``` syntax
   #pragma namespace ("\\\\.\\root\\ccm\\NetworkConfig")

   class CCM_IPConfig
   {
       [NotNull: ToInstance ToSubClass] uint32 AddressFamily; // AF_INET, AF_INET6
       [Key, NotNull: ToInstance ToSubClass] string IPAddress; // IPv4 or IPv6 address
       [NotNull: ToInstance ToSubClass] string SubnetMask; // IPv4 subnet mask
   };

   class CCM_NetworkAdapter
   {
       [Key, NotNull: ToInstance ToSubClass] string Name;
       [NotNull: ToInstance ToSubClass] uint32 DHCPEnabled = 0; 
       [NotNull: ToInstance ToSubClass] uint32 Quarantined = 0; // To check if it is quarantined.
       CCM_IPConfig IPConfigInfo[];
   };

   [singleton]
   class CCM_NetworkAdapters
   {
       [NotNull: ToInstance ToSubClass] String ProviderName; // MED-V or other provider
       CCM_NetworkAdapter AdaptersInfo[];
   };
   ```

2. Compile the MOF file.

3. Install the MOF file in the guest.

After you have installed the MOF file, you can create an event subscription that subscribes to Windows Management Instrumentation (WMI) creation, modification, or deletion events for the **CCM\_NetworkAdapters** class. This detects the following changes to the host:

Are there any configuration changes to the network, such as changes to the IP address or network adapter?

Is the network available or unavailable?

Was the network setup changed from BRIDGED mode to NAT mode?

Was the network setup changed from NAT mode to BRIDGED mode?

A MED-V component on the host monitors the network for these changes and then signals the guest of the change. A component in the guest creates a WMI instance to monitor the MED-V workspace for these changes.

The event subscription you created provides notification through the WMI system when one or more of these network changes – creation, modification, or deletion – occurs.

## Related topics


[Monitor MED-V Workspaces](monitor-med-v-workspaces.md)

[Manage MED-V Workspace Settings](manage-med-v-workspace-settings.md)

 

 





