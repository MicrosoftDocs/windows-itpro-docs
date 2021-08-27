---
title: Advanced Troubleshooting 802.1X Authentication
ms.reviewer: 
manager: dansimp
description: Troubleshoot authentication flow by learning how 802.1X Authentication works for wired and wireless clients.
keywords: advanced troubleshooting, 802.1X authentication, troubleshooting, authentication, Wi-Fi
ms.prod: w10
ms.mktglfcycl: 
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: tracyp
ms.topic: troubleshooting
---
 
# Advanced troubleshooting 802.1X authentication
 
## Overview

This article includes general troubleshooting for 802.1X wireless and wired clients. While troubleshooting 802.1X and wireless, it's important to know how the flow of authentication works, and then figure out where it's breaking. It involves a lot of third-party devices and software. Most of the time, we have to identify where the problem is, and another vendor has to fix it. We don't make access points or switches, so it's not an end-to-end Microsoft solution.
 
## Scenarios

This troubleshooting technique applies to any scenario in which wireless or wired connections with 802.1X authentication is attempted and then fails to establish. The workflow covers Windows 7 through Windows 10 for clients, and Windows Server 2008 R2 through Windows Server 2012 R2 for NPS.
 
## Known issues

None
 
## Data collection

See [Advanced troubleshooting 802.1X authentication data collection](data-collection-for-802-authentication.md).
 
## Troubleshooting

Viewing [NPS authentication status events](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc735320(v%3dws.10)) in the Windows Security [event log](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc722404(v%3dws.11)) is one of the most useful troubleshooting methods to obtain information about failed authentications.

NPS event log entries contain information about the connection attempt, including the name of the connection request policy that matched the connection attempt and the network policy that accepted or rejected the connection attempt. If you don't see both success and failure events, see the [NPS audit policy](#audit-policy) section later in this article.

Check Windows Security Event log on the NPS Server for NPS events that correspond to rejected ([event ID 6273](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc735399(v%3dws.10))) or accepted ([event ID 6272](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc735388(v%3dws.10))) connection attempts.
 
In the event message, scroll to the very bottom, and then check the [Reason Code](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd197570(v%3dws.10)) field and the text that's associated with it.
 
   ![example of an audit failure.](images/auditfailure.png)
   *Example: event ID 6273 (Audit Failure)*<br><br>
‎
   ![example of an audit success.](images/auditsuccess.png)
   *Example: event ID 6272 (Audit Success)*<br>

‎The WLAN AutoConfig operational log lists information and error events based on conditions detected by or reported to the WLAN AutoConfig service. The operational log contains information about the wireless network adapter, the properties of the wireless connection profile, the specified network authentication, and, in the event of connectivity problems, the reason for the failure. For wired network access, the Wired AutoConfig operational log is an equivalent one.

On the client side, go to **Event Viewer (Local)\Applications and Services Logs\Microsoft\Windows\WLAN-AutoConfig/Operational** for wireless issues. For wired network access issues, go to  **..\Wired-AutoConfig/Operational**. See the following example:

![event viewer screenshot showing wired-autoconfig and WLAN autoconfig.](images/eventviewer.png)
 
Most 802.1X authentication issues are because of problems with the certificate that's used for client or server authentication. Examples include invalid certificate, expiration, chain verification failure, and revocation check failure. 

First, validate the type of EAP method that's used:
 
![eap authentication type comparison.](images/comparisontable.png)

If a certificate is used for its authentication method, check whether the certificate is valid. For the server (NPS) side, you can confirm what certificate is being used from the EAP property menu. In **NPS snap-in**, go to **Policies** > **Network Policies**. Select and hold (or right-click) the policy, and then select **Properties**. In the pop-up window, go to the **Constraints** tab, and then select the **Authentication Methods** section.

![Constraints tab of the secure wireless connections properties.](images/eappropertymenu.png)
 
The CAPI2 event log is useful for troubleshooting certificate-related issues.
By default, this log isn't enabled. To enable this log, expand **Event Viewer (Local)\Applications and Services Logs\Microsoft\Windows\CAPI2**, select and hold (or right-click) **Operational**, and then select **Enable Log**.

![screenshot of event viewer.](images/capi.png)
 
For information about how to analyze CAPI2 event logs, see
[Troubleshooting PKI Problems on Windows Vista](/previous-versions/windows/it-pro/windows-vista/cc749296%28v=ws.10%29).

When troubleshooting complex 802.1X authentication issues, it's important to understand the 802.1X authentication process. Here's an example of wireless connection process with 802.1X authentication:

![authenticator flow chart.](images/authenticator_flow_chart.png)
 
If you [collect a network packet capture](troubleshoot-tcpip-netmon.md) on both the client and the server (NPS) side, you can see a flow like the one below. Type **EAPOL** in the Display Filter for a client-side capture, and **EAP** for an NPS-side capture. See the following examples:

![client-side packet capture data.](images/clientsidepacket_cap_data.png)
*Client-side packet capture data*<br><br>

![NPS-side packet capture data.](images/NPS_sidepacket_capture_data.png) 
*NPS-side packet capture data*<br>
‎

> [!NOTE]
> If you have a wireless trace, you can also [view ETL files with network monitor](/windows/desktop/ndf/using-network-monitor-to-view-etl-files) and apply the **ONEX_MicrosoftWindowsOneX** and **WLAN_MicrosoftWindowsWLANAutoConfig** Network Monitor filters. If you need to load the required [parser](/archive/blogs/netmon/parser-profiles-in-network-monitor-3-4), see the instructions under the **Help** menu in Network Monitor. Here's an example:

![ETL parse.](images/etl.png) 

## Audit policy

By default, NPS audit policy (event logging) for connection success and failure is enabled. If you find that one or both types of logging are disabled, use the following steps to troubleshoot.

View the current audit policy settings by running the following command on the NPS server:
```console
auditpol /get /subcategory:"Network Policy Server"
```

If both success and failure events are enabled, the output should be:
<pre>
System audit policy
Category/Subcategory                      Setting
Logon/Logoff
  Network Policy Server                   Success and Failure
</pre>

If it says, "No auditing," you can run this command to enable it:
```console
auditpol /set /subcategory:"Network Policy Server" /success:enable /failure:enable
```

Even if audit policy appears to be fully enabled, it sometimes helps to disable and then re-enable this setting. You can also enable Network Policy Server logon/logoff auditing by using Group Policy. To get to the success/failure setting, select **Computer Configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Advanced Audit Policy Configuration** > **Audit Policies** > **Logon/Logoff** > **Audit Network Policy Server**.

## Additional references

[Troubleshooting Windows Vista 802.11 Wireless Connections](/previous-versions/windows/it-pro/windows-vista/cc766215(v=ws.10))<br>
[Troubleshooting Windows Vista Secure 802.3 Wired Connections](/previous-versions/windows/it-pro/windows-vista/cc749352(v=ws.10))