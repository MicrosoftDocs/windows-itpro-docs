---
title: w4 APPLICATION CSP
description: Use an APPLICATION configuration service provider (CSP) that has an APPID of w4 to configure Multimedia Messaging Service (MMS).
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# w4 APPLICATION CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

Use an **APPLICATION** configuration service provider that has an APPID of w4 to configure Multimedia Messaging Service (MMS).

The default security roles are defined in the root characteristic, and map to each subnode unless specific permission is granted to the subnode. The default security roles are Manager, Operator, and Operator – TPS.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_CSP\_W4\_APPLICATION capabilities to be accessed from a network configuration application.

The following shows the configuration service provider in tree format as used by OMA Client Provisioning.

```cmd
APPLICATION
----APPID
----NAME
----TO-PROXY
----TO-NAPID
----ADDR
----MS
```

<a href="" id="appid"></a>**APPID**
Required. This parameter takes a string value. The only supported value for configuring MMS is "w4".

<a href="" id="name"></a>**NAME**
Optional. Specifies a user–readable application identity. This parameter is also used to define part of the registry path for the APPLICATION parameters.

This parameter takes a string value. The possible values to configure the NAME parameter are:

-   Character string containing the name.
-   no value specified

> [!NOTE]
> The APPLICATION/NAME value is displayed in the UI. The APPLICATION/NAME value might not be saved on the device. Hence, after an upgrade, the MDM servers should resend APPLICATION/NAME to DMAcc.

If no value is specified, the registry location will default to `<unnamed>`.

If `Name` is greater than 40 characters, it will be truncated to 40 characters.

<a href="" id="to-proxy"></a>**TO-PROXY**
Required. Specifies one logical proxy with a matching PROXY-ID. It's only possible to refer to proxies defined within the same provisioning file. Only one proxy can be listed.

The TO-PROXY value must be set to the value of the PROXY ID in PXLOGICAL that defines the MMS specific-proxy.

<a href="" id="to-napid"></a>**TO-NAPID**
Required. Specifies the network access point identification name (NAPID) defined in the provisioning file. This parameter takes a string value. It's only possible to refer to network access points defined within the same provisioning file (except if the INTERNET attribute is set in the NAPDEF characteristic). For more information about the NAPDEF characteristic, see [NAPDEF configuration service provider](napdef-csp.md).

<a href="" id="addr"></a>**ADDR**
Required. Specifies the address of the MMS application server, as a string. The possible values to configure the ADDR parameter are:

-   A Uniform Resource Identifier (URI)
-   An IPv4 address represented in decimal format with dots as delimiters
-   A fully qualified Internet domain name

<a href="" id="ms"></a>**MS**
Optional. The maximum authorized size, in KB, for multimedia content. This parameter takes a numeric value in string format. If the value isn't a number, or is less than or equal to 10, it will be ignored and outgoing MMS won't be resized.

## Related topics


[Configuration service provider reference](index.yml)
