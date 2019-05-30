---
title: Configure Client Computers (Windows 10)
description: Configure Client Computers
ms.assetid: a48176c9-b05c-4dd5-a9ef-83073e2370fc
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# Configure Client Computers

To enable the Volume Activation Management Tool (VAMT) to function correctly, certain configuration changes are required on all client computers:

-   An exception must be set in the client computer's firewall.
-   A registry key must be created and set properly, for computers in a workgroup; otherwise, Windows® User Account Control (UAC) will not allow remote administrative operations.

Organizations where the VAMT will be widely used may benefit from making these changes inside the master image for Windows.

**Important**  
This procedure only applies to clients running Windows Vista or later. For clients running Windows XP Service Pack 1, see [Connecting Through Windows Firewall](https://go.microsoft.com/fwlink/p/?LinkId=182933).

## Configuring the Windows Firewall to allow VAMT access

Enable the VAMT to access client computers using the **Windows Firewall** Control Panel:
1.  Open Control Panel and double-click **System and Security**.
2.  Click **Windows Firewall**.
3.  Click **Allow a program or feature through Windows Firewall**.
4.  Click the **Change settings** option.
5.  Select the **Windows Management Instrumentation (WMI)** checkbox.
6.  Click **OK**.

    **Warning**  
    By default, Windows Firewall Exceptions only apply to traffic originating on the local subnet. To expand the exception to apply to multiple subnets, you need to change the exception settings in the Windows Firewall with Advanced Security, as described below.

## Configure Windows Firewall to allow VAMT access across multiple subnets

Enable the VAMT to access client computers across multiple subnets using the **Windows Firewall with Advanced Security** Control Panel:

![VAMT Firewall configuration for multiple subnets](images/dep-win8-l-vamt-firewallconfigurationformultiplesubnets.gif)

1.  Open the Control Panel and double-click **Administrative Tools**.
2.  Click **Windows Firewall with Advanced Security**.
3.  Make your changes for each of the following three WMI items, for the applicable Network Profile (Domain, Public, Private):
    -   Windows Management Instrumentation (ASync-In)
    -   Windows Management Instrumentation (DCOM-In)
    -   Windows Management Instrumentation (WMI-In)

4. In the **Windows Firewall with Advanced Security** dialog box, select **Inbound Rules** from the left-hand panel.
        
5. Right-click the desired rule and select **Properties** to open the **Properties** dialog box.
        
    - On the **General** tab, select the **Allow the connection** checkbox.
    - On the **Scope** tab, change the Remote IP Address setting from "Local Subnet" (default) to allow the specific access you need.
    - On the **Advanced** tab, verify selection of all profiles that are applicable to the network (Domain or Private/Public).

In certain scenarios, only a limited set of TCP/IP ports are allowed through a hardware firewall. Administrators must ensure that WMI (which relies on RPC over TCP/IP) is allowed through these types of firewalls. By default, the WMI port is a dynamically allocated random port above 1024. The following Microsoft knowledge article discusses how administrators can limit the range of dynamically-allocated ports. This is useful if, for example, the hardware firewall only allows traffic in a certain range of ports.
For more info, see [How to configure RPC dynamic port allocation to work with firewalls](https://go.microsoft.com/fwlink/p/?LinkId=182911).

## Create a registry value for the VAMT to access workgroup-joined computer

**Caution**  
This section contains information about how to modify the registry. Make sure to back up the registry before you modify it; in addition, ensure that you know how to restore the registry, if a problem occurs. For more information about how to back up, restore, and modify the registry, see [Windows registry information for advanced users](https://go.microsoft.com/fwlink/p/?LinkId=182912).

On the client computer, create the following registry key using regedit.exe.

1.  Navigate to `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system`
2.  Enter the following details:
    **Value Name: LocalAccountTokenFilterPolicy**
    **Type: DWORD**
    **Value Data: 1**
    **Note**  
    To discover VAMT-manageable Windows computers in workgroups, you must enable network discovery on each client.

## Deployment options

There are several options for organizations to configure the WMI firewall exception for computers:
-   **Image.** Add the configurations to the master Windows image deployed to all clients.
-   **Group Policy.** If the clients are part of a domain, then all clients can be configured using Group Policy. The Group Policy setting for the WMI firewall exception is found in GPMC.MSC at: **Computer Configuration\\Windows Settings\\Security Settings\\Windows Firewall with Advanced Security\\Windows Firewall with Advanced Security\\Inbound Rules**.
-   **Script.** Execute a script using Microsoft System Center Configuration Manager or a third-party remote script execution facility.
-   **Manual.** Configure the WMI firewall exception individually on each client.
The above configurations will open an additional port through the Windows Firewall on target computers and should be performed on computers that are protected by a network firewall. In order to allow VAMT to query the up-to-date licensing status, the WMI exception must be maintained. We recommend administrators consult their network security policies and make clear decisions when creating the WMI exception.

## Related topics

- [Install and Configure VAMT](install-configure-vamt.md)
 
 
