---
title: NAP CSP
description: Learn how the Network Access Point (NAP) configuration service provider (CSP) is used to manage and query GPRS and CDMA connections.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# NAP CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The NAP (Network Access Point) Configuration Service Provider is used to manage and query GPRS and CDMA connections.

> [!Note]
> This configuration service provider requires the `ID_CAP_CSP_FOUNDATION` and `ID_CAP_NETWORKING_ADMIN` capabilities to be accessed from a network configuration application.

For the NAP CSP, you can't use the Replace command unless the node already exists.

The following example shows the NAP configuration service provider management object in tree format as used by OMA DM. The OMA Client Provisioning protocol isn't supported by this configuration service provider.

```console
./Vendor/MSFT
NAP
----*
--------NapId
--------Name
--------Addr
--------AddrType
--------IPv4
------------AutoConfig
------------LocalAddr
------------NetMask
------------Gateway
------------DNS
----------------*
--------------------DNSAddr
--------IPv6
------------AutoConfig
------------LocalAddr
--------Linger
--------AuthInfo
------------AuthType
------------AuthName
------------AuthSecret
------------AuthEntities
----------------*
--------------------AuthEntity
------------SPI
--------Bearer
------------BearerType
--------Ext
------------Microsoft
----------------Guid
----------------AlwaysOn
----------------Secure
----------------SecureLevel
```

<a href="" id="--vendor-msft-nap"></a>**./Vendor/MSFT/NAP**
Root node.

<a href="" id="napx"></a>***NAPX***
Required. Defines the name of the network access point.

It is recommended that this element name is specified as a numbered node beginning at zero. For example, to provision two network access points, use "NAP0" and "NAP1" as the element names. Any unique name can be used if desired (such as "GPRS-NAP"), however, no spaces may appear in the name (use %20 instead).

<a href="" id="napx-napid"></a>***NAPX*/NAPID**
Required. Specifies the identifier of the destination network.

The NAPID value must not include a "@" character. If the NAPDEF configuration service provider defines it as “connectionID@WAP”, this value should be set to “connectionID”.

<a href="" id="napx-name"></a>***NAPX*/NAME**
Optional. Specifies the user-friendly name of the connection.

<a href="" id="napx-addr"></a>***NAPX*/ADDR**
Required. Specifies the address of the destination network.

The ADDR may be the URL of an access point, the APN name for a GPRS access point, the telephone number of an answering modem, or any other string used to uniquely identify the address of the destination network.

<a href="" id="napx-addrtype"></a>***NAPX*/ADDRTYPE**
Required. Specifies the type of address used to identify the destination network.

The following table shows some commonly used ADDRTYPE values and the types of connection that corresponds with each value.

|ADDRTYPE Value|Connection Type|
|--- |--- |
|E164|RAS connections|
|APN|GPRS connections|
|ALPHA|Wi-Fi-based connections|

<a href="" id="napx-authinfo"></a>***NAPX*/AuthInfo**
Optional node. Specifies the authentication information, including the protocol, user name, and password.

<a href="" id="napx-authinfo-authtype"></a>***NAPX*/AuthInfo/AuthType**
Optional. Specifies the method of authentication. Some supported protocols are PAP, CHAP, HTTP-BASIC, HTTP-DIGEST, WTLS-SS, and MD5.

<a href="" id="napx-authinfo-authname"></a>***NAPX*/AuthInfo/AuthName**
Optional. Specifies the user name and domain to be used during authentication. This field is in the form *Domain*\\*UserName*.

<a href="" id="napx-authinfo-authsecret"></a>***NAPX*/AuthInfo/AuthSecret**
Optional. Specifies the password used during authentication.

Queries of this field will return a string composed of 16 asterisks (\*).

<a href="" id="napx-bearer"></a>***NAPX*/Bearer**
Node.

<a href="" id="napx-bearer-bearertype"></a>***NAPX*/Bearer/BearerType**

Required. Specifies the network type of the destination network. This can be set to GPRS, CDMA2000, WCDMA, TDMA, CSD, DTPT, and Wi-Fi.

## Related articles

[Configuration service provider reference](index.yml)
 
