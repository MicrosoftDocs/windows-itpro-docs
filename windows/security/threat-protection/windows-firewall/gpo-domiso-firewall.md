---
title: GPO\_DOMISO\_Firewall (Windows)
description: Learn about the settings and rules in this example GPO, which is authored by using the Group Policy editing tools.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# GPO\_DOMISO\_Firewall


This GPO is authored by using the Windows Defender Firewall 
with Advanced Security interface in the Group Policy editing tools. The User Configuration section of the GPO is disabled. It is intended to only apply to devices that are running at least Windows 7 or Windows Server 2008.

## Firewall settings

This GPO provides the following settings:

-   Unless otherwise stated, the firewall rules and settings described here are applied to all profiles.

-   The firewall is enabled, with inbound, unsolicited connections blocked and outbound connections allowed.

-   Under the domain profile, the settings **Display notifications to the user**, **Apply local firewall rules**, and **Apply local connection security rules** are all set to **No**. These settings are applied only to the domain profile because the devices can only receive an exception rule for a required program from a GPO if they are connected to the domain. Under the public and private profiles, those settings are all set to **Yes**.

    >**Note:**  Enforcing these settings requires that you define any firewall exceptions for programs, because the user cannot manually permit a new program. You must deploy the exception rules by adding them to this GPO. We recommend that you do not enable these settings until you have tested all your applications and have tested the resulting rules in a test lab and then on pilot devices.

## Firewall rules

This GPO provides the following rules:

-   Built-in firewall rule groups are configured to support typically required network operation. The following rule groups are set to **Allow the connection**:

    -   Core Networking

    -   File and Printer Sharing

    -   Network Discovery

    -   Remote Administration

    -   Remote Desktop

    -   Remote Event Log Management

    -   Remote Scheduled Tasks Management

    -   Remote Service Management

    -   Remote Volume Management

    -   Windows Defender Firewall Remote Management

    -   Windows Management Instrumentation (WMI)

    -   Windows Remote Management

-   A firewall exception rule to allow required network traffic for the WGBank dashboard program. This inbound rule allows network traffic for the program Dashboard.exe in the %ProgramFiles%\\WGBank folder. The rule is also filtered to only allow traffic on port 1551. This rule is applied only to the domain profile.

**Next:** [Isolated Domain GPOs](isolated-domain-gpos.md)
