---
title: How to Configure Windows Server 2008 Firewall for App-V
description: How to Configure Windows Server 2008 Firewall for App-V
author: dansimp
ms.assetid: 57f4ed17-0651-4a3c-be1e-29d9520c6aeb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Configure Windows Server 2008 Firewall for App-V


With the introduction of Windows Server 2008, the firewall and IPsec components were merged into one service, and the capabilities of this service were enhanced. The new firewall service supports incoming and outgoing stateful inspection. Also, you can configure specific firewall rules and IPsec policies through group policies. For additional information about the Windows firewall in Windows Server 2008, see <https://go.microsoft.com/fwlink/?LinkId=151980>.

The following procedure does not include adding an exception for ICO and OSD publishing through SMB or HTTP/HTTPS. Those exceptions are automatically added based on the network profile and roles installed on the Windows Server 2008 firewall.

**Note**  
If the Management Server is configured to use RTSP, repeat this procedure to add the `sghwsvr.exe` program as an exception.

The App-V Streaming Server requires the program exception `sglwdsptr.exe` for RTSPS communication. An App-V Streaming Server that uses RTSP for communication also requires a program exception for `sglwsvr.exe`.

 

**To configure Windows Server 2008 firewall for App-V**

1.  Open the **Windows Firewall with Advanced Security** management console through the Control Panel or by typing `wf.msc` on the Run line.

2.  Create a new inbound rule, and select **Program**.

3.  Select the program path, and browse to `sghwdsptr.exe`, which is located by default at `%ProgramFiles%\Microsoft System Center App Virt Management Server\App Virt Management Server\bin`.

4.  Click **Next**.

5.  On the **Action** page, select **Allow the connection**, and then click **Next**.

6.  Select the appropriate **Profiles** to apply to the inbound rule.

7.  Provide a name and description for the rule, and click **Finish**.

## Related topics


[How to Configure Windows Server 2003 Firewall for App-V](how-to-configure-windows-server-2003-firewall-for-app-v.md)

 

 





