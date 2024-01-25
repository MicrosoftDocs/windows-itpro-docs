---
title: Audit Filtering Platform Connection 
description: The policy setting, Audit Filtering Platform Connection, decides if audit events are generated when connections are allow/blocked by Windows Filtering Platform.
ms.assetid: d72936e9-ff01-4d18-b864-a4958815df59
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.topic: reference
---

# Audit Filtering Platform Connection


Audit Filtering Platform Connection determines whether the operating system generates audit events when connections are allowed or blocked by the [Windows Filtering Platform](/windows/win32/fwp/windows-filtering-platform-start-page).

Windows Filtering Platform (WFP) enables independent software vendors (ISVs) to filter and modify TCP/IP packets, monitor or authorize connections, filter Internet Protocol security (IPsec)-protected traffic, and filter remote procedure calls (RPCs).

This subcategory contains Windows Filtering Platform events about blocked and allowed connections, blocked and allowed port bindings, blocked and allowed port listening actions, and blocked to accept incoming connections applications.

**Event volume**: High.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|-------------------|-----------------|-----------------|------------------|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | Yes             | IF               | Yes              | Success auditing for this subcategory typically generates a very high volume of events, for example, one event for every connection that was made to the system. It is much more important to audit Failure events (blocked connections, for example). For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>IF - Enable Success audit in case you need to monitor successful outbound or inbound connections to and from untrusted IP addresses on high value computers or devices. |
| Member Server     | No              | Yes             | IF               | Yes              | Success auditing for this subcategory typically generates a very high volume of events, for example, one event for every connection that was made to the system. It is much more important to audit Failure events (blocked connections, for example). For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>IF - Enable Success audit in case you need to monitor successful outbound or inbound connections to and from untrusted IP addresses on high value computers or devices. |
| Workstation       | No              | Yes             | IF               | Yes              | Success auditing for this subcategory typically generates a very high volume of events, for example, one event for every connection that was made to the system. It is much more important to audit Failure events (blocked connections, for example). For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>IF - Enable Success audit in case you need to monitor successful outbound or inbound connections to and from untrusted IP addresses on high value computers or devices. |

**Events List:**

-   [5031](event-5031.md)(F): The Windows Firewall Service blocked an application from accepting incoming connections on the network.

-   [5150](event-5150.md)(-): The Windows Filtering Platform blocked a packet.

-   [5151](event-5151.md)(-): A more restrictive Windows Filtering Platform filter has blocked a packet.

-   [5154](event-5154.md)(S): The Windows Filtering Platform has permitted an application or service to listen on a port for incoming connections.

-   [5155](event-5155.md)(F): The Windows Filtering Platform has blocked an application or service from listening on a port for incoming connections.

-   [5156](event-5156.md)(S): The Windows Filtering Platform has permitted a connection.

-   [5157](event-5157.md)(F): The Windows Filtering Platform has blocked a connection.

-   [5158](event-5158.md)(S): The Windows Filtering Platform has permitted a bind to a local port.

-   [5159](event-5159.md)(F): The Windows Filtering Platform has blocked a bind to a local port.