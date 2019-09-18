---
title: Preparing Your Environment for UE-V
description: Preparing Your Environment for UE-V
author: dansimp
ms.assetid: c93d3b33-e032-451a-9e1b-8534e1625396
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Preparing Your Environment for UE-V


Microsoft User Experience Virtualization (UE-V) roams settings between computers by the use of a settings storage location. The settings storage location is a file share and should be configured during the UE-V Agent deployment. It must be defined either as a settings storage location or as an Active Directory home directory. In addition, the administrator should configure a time server to support consistent synchronization. To prepare your environment for UE-V, you should consider the following:

-   [UE-V Settings Storage](#bkmk-uevsettingsstorage):

    -   [Defining a Settings Storage Location](#bkmk-definingsettingsstoragelocation)

    -   [Using Active Directory Home Directory with UE-V](#bkmk-usingactivedirectoryhomedirectory)

-   [Synchronize Computer Clocks for UE-V Settings Synchronization](#bkmk-synchronizecomputerclocks)

-   [Performance and Capacity Planning](#bkmk-performancecapacityplanning)

For more information about operating system and computer requirements, see [Supported Configurations for UE-V 1.0](supported-configurations-for-ue-v-10.md).

## <a href="" id="bkmk-uevsettingsstorage"></a>UE-V settings storage


You can define the User Experience Virtualization settings storage in one of two configurations: a settings storage location or an Active Directory home directory.

### <a href="" id="bkmk-definingsettingsstoragelocation"></a>Define a settings storage location

The UE-V settings storage location is a standard network share that is accessible by UE-V users. Before you define the settings storage location, you must create a root directory. Users who will store settings on the share must have read/write permissions to the storage location. The UE-V Agent will create user-specific folders under this root directory. The settings storage location is defined by setting the **SettingsStoragePath** configuration option. This option can be configured in the following ways:

-   During the installation of the UE-V agent through a command-line parameter or in a batch script.

-   Using Group Policy.

-   After installation, by using PowerShell or WMI.

The path must be in a universal naming convention (UNC) path of the server and share. For example, **\\\\server\\settingsshare\\**. This configuration option supports the use of variables to enable specific roaming scenarios.

You can use the `%username%` variable with the UNC path of the server and share. This will provide the same settings experience on all computers or sessions that a user logs into. Consider this configuration for the following scenarios:

1.  Users in the enterprise have multiple, similarly configured physical computers and each user’s settings should be the same across all computers.

2.  Users in the enterprise use virtual desktop infrastructure (VDI) pools where settings should be retained across each user’s VDI sessions.

3.  Users in the enterprise have one physical computer and additionally use a VDI. Each user’s settings experience should be the same whether using the physical computer or VDI session.

4.  Multiple enterprise computers are used by multiple users. Each user’s settings experience should be the same across all computers.

You can use the **%username%\\%computername%** variables with the UNC path of the server and share. This will preserve the settings experience for each computer. Consider this configuration for the following scenarios:

1.  Users in the enterprise have multiple physical computers and you want to preserve the settings experience for each computer.

2.  The enterprise computers are used by multiple users. The settings experience should be preserved for each computer that the user logs into.

The UE-V agent dynamically creates the user-specific settings storage path based on a UE-V `SettingsStoragePath` configuration setting and the variables that are defined.

The UE-V agent dynamically creates a hidden system folder named `SettingsPackages` within each user-specific storage location. The UE-V agent reads and writes settings to this location as defined by registered UE-V settings location templates.

If the settings storage location is the same for a set of managed computers of a user, the applicable UE-V settings are determined by a “Last write wins” rule. The agent that runs on one computer reads and writes to the settings location independently of agents that run on other computers. The last settings and values written are the settings that are applied when the next agent reads from the settings storage location. For more information, see [Deploying the Settings Storage Location for UE-V 1.0](deploying-the-settings-storage-location-for-ue-v-10.md).

### <a href="" id="bkmk-usingactivedirectoryhomedirectory"></a>Use Active Directory home directory with UE-V

If no settings storage location is configured for UE-V when the agent is deployed, then the user’s Active Directory (AD) home directory is used to store settings location packages. The UE-V agent dynamically creates the settings storage folder below the root of the AD home directory of each user. The agent only uses the Active Directory home directory if a settings storage location (SettingsStoragePath) is not otherwise defined.

## <a href="" id="bkmk-synchronizecomputerclocks"></a>Synchronize computer clocks for UE-V settings synchronization


Computers that run the UE-V agent to synchronize settings must use a time server. Time stamps are used to determine if settings need to be synchronized from the settings storage location. If the computer clock is inaccurate, older settings can overwrite newer settings, or the new settings might not be saved to the settings storage location. The use of a time server enables UE-V to maintain a consistent settings experience.

## <a href="" id="bkmk-performancecapacityplanning"></a>Performance and capacity planning


Capacity requirements for UE-V can be determined by use of standard disk capacity and network health monitoring. UE-V uses a Server Message Block (SMB) share for the storage of settings packages. The size of settings packages varies depending on the settings information for a specific application. While most settings packages are small, the synchronization of potentially large files, such as desktop images, can result in poor performance, particularly on slower networks. To minimize problems with network latency, you should create settings storage locations on the same local networks where the users’ computers reside.

By default, the UE-V synchronization will time out after 2 seconds if the network is slow or the settings package is large. You can configure the timeout with Group Policy. For more information about how to set the timeout, see [Configuring UE-V with Group Policy Objects](configuring-ue-v-with-group-policy-objects.md).

## Related topics


[Microsoft User Experience Virtualization (UE-V) 1.0](index.md)

[Planning for UE-V 1.0](planning-for-ue-v-10.md)

[Supported Configurations for UE-V 1.0](supported-configurations-for-ue-v-10.md)

 

 





