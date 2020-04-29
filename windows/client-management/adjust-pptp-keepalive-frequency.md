---
title: How to adjust PPTP keepalive frequency
description: Administrative Tools is a folder in Control Panel that contains tools for system administrators and advanced users.
ms.assetid: FDC63933-C94C-43CB-8373-629795926DC8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.topic: article
---

# Adjusting PPTP keepalive frequency

## Summary

Some ISDN Connected Clients/Networks that use PPTP might notice high costs associated with a continuous ISDN link caused by the idle inactivity timer never expiring. This PPTP keepalive packet can be controlled to reduce the frequency of this test so that it is greater than the idle inactivity timeout value.

PPTP, by default, sends a "keepalive" packet every 60 seconds to verify the tunnel. This frequency can be adjusted by altering the registry.

## More information

The keepalive traffic consists of an echo request and an echo reply. When there is no traffic through the tunnel for 60 seconds, the client sends an echo request to confirm the validity of the tunnel. To confirm that these keepalive packets are being sent, the user can use Network Monitor to parse the traffic.

The packets appear similar to the following examples:

PPTP: Control Packet (1): Echo Request (5)

PPTP: Control Packet (1): Echo Reply (6)

The packets must be set at both ends of the connection to limit the "tunnel test".

The **InactivityIdleSeconds** registry setting starts a timer that measures the number of seconds between packets. When the timer reaches the default of 60 seconds, it instructs the system to send a control channel packet to the server. The **EchoReplyTimeoutSeconds** registry setting defines how long the client will wait for a response to the echo request.

> [!IMPORTANT]
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/help/322756) in case problems occur.

To alter the default setting, the user must add the following registry parameters to the system:

```
HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Raspptpe\Parameters \Configuration\
```

InactivityIdleSeconds: REG_DWORD: default: 60<br/>
Number of seconds PPTP will go with no activity on the control channel.

EchoReplyTimeoutSeconds: REG_DWORD: default: 60<br/>
Number of seconds PPTP will wait for a reply from an echo request.

If reply is not received, PPTP drops the connection.

For additional information, see the RAS section in [Getting Auto-Disconnected from NT4](http://www.windowsnetworking.com/j_helmig/autodscn.htm).
