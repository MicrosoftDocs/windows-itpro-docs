---
title: NAPDEF CSP
description: Learn how the NAPDEF configuration service provider (CSP) is used to add, modify, or delete WAP network access points (NAPs).
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# NAPDEF CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The NAPDEF configuration service provider is used to add, modify, or delete WAP Network Access Points (NAPs). For complete information about these settings, see the standard WAP specification WAP-183-ProvCont-20010724-a.

> [!Note]
> You cannot use NAPDEF CSP on the desktop to update the Push Proxy Gateway (PPG) list.
>
> This configuration service provider requires the `ID_CAP_CSP_FOUNDATION` and `ID_CAP_NETWORKING_ADMIN` capabilities to be accessed from a network configuration application.

The following shows the NAPDEF configuration service provider management object in tree format as used by OMA Client Provisioning for **initial bootstrapping of the phone**. The OMA DM protocol isn't supported by this configuration service provider.

```console
NAPDEF
----NAPAUTHINFO
------AUTHNAME
------AUTHSECRET
------AUTHTYPE
----BEARER
----INTERNET
----LOCAL-ADDR
----LOCAL-ADDRTYPE
----NAME
----NAP-ADDRESS
----NAP-ADDRTYPE
----NAPID
```

The following shows the NAPDEF configuration service provider management object in tree format as used by OMA Client Provisioning for **updating the bootstrapping of the phone**. The OMA DM protocol isn't supported by this configuration service provider.

```console
NAPDEF
--NAPID
----NAPAUTHINFO
------AUTHNAME
------AUTHSECRET
------AUTHTYPE
----BEARER
----INTERNET
----LOCAL-ADDR
----LOCAL-ADDRTYPE
----NAME
----NAP-ADDRESS
----NAP-ADDRTYPE
```

<a href="" id="napauthinfo"></a>**NAPAUTHINFO**
Defines a group of authentication settings.

<a href="" id="authname"></a>**AUTHNAME**
Specifies the name used to authenticate the user.

<a href="" id="authsecret"></a>**AUTHSECRET**
Specifies the password used to authenticate the user.

A query of this parameter returns asterisks (\*) in the results.

<a href="" id="authtype"></a>**AUTHTYPE**
Specifies the protocol used to authenticate the user.

The only permitted values for this element are "POP" (Password Authentication Protocol) and "CHAP" (Challenge Handshake Authentication Protocol) authentication protocols.

> [!Note]
> **AuthName** and **AuthSecret** are not created if **AuthType** isn't included in the initial device configuration. **AuthName** and **AuthSecret** cannot be changed if **AuthType** isn't included in the provisioning XML used to make the change.

<a href="" id="bearer"></a>**BEARER**
Specifies the type of bearer.

Only Global System for Mobile Communication (GSM) and GSM-General Packet Radio Services (GPRS) are supported.

<a href="" id="internet"></a>**INTERNET**
Optional. Specifies whether this connection is an AlwaysOn connection.

If **INTERNET** exists, the connection is an AlwaysOn connection and doesn't require a connection manager policy.

If **INTERNET** doesn't exist, the connection isn't an AlwaysOn connection and the connection requires a connection manager connection policy to be set.

<a href="" id="local-addr"></a>**LOCAL-ADDR**
Required for GPRS. Specifies the local address of the WAP client for GPRS access points.

<a href="" id="local-addrtype"></a>**LOCAL-ADDRTYPE**
Required for GPRS. Specifies the address format of the **LOCAL-ADDR** element.

The value of LOCAL-ADDRTYPE can be "IPv4".

<a href="" id="name"></a>**NAME**
Specifies the logical, user-readable identity of the NAP.

<a href="" id="nap-address"></a>**NAP-ADDRESS**
Specifies the address of the NAP.

<a href="" id="nap-addrtype"></a>**NAP-ADDRTYPE**
Specifies the format and protocol of the **NAP-ADDRESS** element.

Only Access Point Name (APN) and E164 are supported.

<a href="" id="napid"></a>**NAPID**
Required for initial bootstrapping. Specifies the name of the NAP.

The maximum length of the **NAPID** value is 16 characters.

<a href="" id="napid"></a>***NAPID***
Required for bootstrapping updating. Defines the name of the NAP.

The name of the *NAPID* element is the same as the value passed during initial bootstrapping. In addition, the Microsoft format for NAPDEF contains the provisioning XML attribute mwid. This custom attribute is optional when adding a NAP or a proxy. It's required for *NAPID* when updating and deleting existing NAPs and proxies and must have its value set to 1.

## Microsoft Custom Elements

The following table shows the Microsoft custom elements that this configuration service provider supports for OMA Client Provisioning.

|Elements|Available|
|--- |--- |
|Parm-query|Yes <br>Some GPRS parameters won't necessarily contain the exact same value as was set.|
|Noparm|Yes|
|Nocharacteristic|Yes|
|Characteristic-query|Yes|

## Related articles

[Configuration service provider reference](index.yml)
