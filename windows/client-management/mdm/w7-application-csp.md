---
title: w7 APPLICATION CSP
description: w7 APPLICATION CSP
ms.assetid: 10f8aa16-5c89-455d-adcd-d7fb45d4e768
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 06/26/2017
---

# w7 APPLICATION CSP


The APPLICATION configuration service provider that has an APPID of w7 is used for bootstrapping a device with an OMA DM account. Although this configuration service provider is used to set up an OMA DM account, it is managed over OMA Client Provisioning.

> **Note**  This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_DEVICE\_MANAGEMENT\_ADMIN capabilities to be accessed from a network configuration application.

 

The following image shows the configuration service provider in tree format as used by OMA Client Provisioning.

![w7 application csp (dm)](images/provisioning-csp-w7-application-dm.png)

> **Note**   All parm names and characteristic types are case sensitive and must use all uppercase.
Both APPSRV and CLIENT credentials must be provided in provisioning XML.

 

<a href="" id="appaddr"></a>**APPADDR**  
This characteristic is used in the w7 APPLICATION characteristic to specify the DM server address.

<a href="" id="appaddr-addr"></a>**APPADDR/ADDR**  
Optional. The ADDR parameter is used in the APPADDR characteristic to get or set the address of the OMA DM server. This parameter takes a string value.

<a href="" id="appaddr-addrtype"></a>**APPADDR/ADDRTYPE**  
Optional. The ADDRTYPE parameter is used in the APPADDR characteristic to get or set the format of the ADDR parameter. This parameter takes a string value.

In OMA DM XML, if there are multiple instances of this parameter, the first valid parameter value is used.

<a href="" id="appaddr-port"></a>**APPADDR/PORT**  
This characteristic is used in the APPADDR characteristic to specify port information.

<a href="" id="appaddr-port-portnbr"></a>**APPADDR/PORT/PORTNBR**  
Required. The PORTNBR parameter is used in the PORT characteristic to get or set the number of the port to connect to. This parameter takes a numeric value in string format.

<a href="" id="appauth"></a>**APPAUTH**  
This characteristic is used in the w7 APPLICATION characteristic to specify authentication information.

<a href="" id="appauth-aauthdata"></a>**APPAUTH/AAUTHDATA**  
Optional. The AAUTHDATA parameter is used in the APPAUTH characteristic to get or set additional data used in authentication. This parameter is used to convey the nonce for digest authentication type. This parameter takes a string value. The value of this parameter is a base64-encoded in the form of a series of bytes. Note that if the AAUTHTYPE is DIGEST, this is used as a nonce value in the MD5 hash calculation, and the octal form of the binary data should be used when calculating the hash at the server side and device side.

<a href="" id="appauth-aauthlevel"></a>**APPAUTH/AAUTHLEVEL**  
Required. The AAUTHLEVEL parameter is used in the APPAUTH characteristic to indicate whether credentials are for server authentication or client authentication. This parameter takes a string value. You can set this value.

Valid values:

-   APPSRV - specifies that the client authenticates itself to the OMA DM Server at the DM protocol level.

-   CLIENT - specifies that the server authenticates itself to the OMA DM Client at the DM protocol level.

<a href="" id="appauth-aauthname"></a>**APPAUTH/AAUTHNAME**  
Optional. The AAUTHNAME parameter is used in the APPAUTH characteristic to differentiate OMA DM client names. This parameter takes a string value. You can set this value.

<a href="" id="appauth-aauthsecret"></a>**APPAUTH/AAUTHSECRET**  
Required. The AAUTHSECRET parameter is used in the APPAUTH characteristic to get or set the authentication secret used to authenticate the user. This parameter takes a string value.

<a href="" id="appauth-aauthtype"></a>**APPAUTH/AAUTHTYPE**  
Optional. The AAUTHTYPE parameter of the APPAUTH characteristic is used to get or set the method of authentication. This parameter takes a string value.

Valid values:

-   BASIC - specifies that the SyncML DM 'syncml:auth-basic' authentication type.

-   DIGEST - specifies that the SyncML DM 'syncml:auth-md5' authentication type.

-   When AAUTHLEVEL is CLIENT, then AAUTHTYPE must be DIGEST. When AAUTHLEVEL is APPSRV, AAUTHTYPE can be BASIC or DIGEST.

<a href="" id="appid"></a>**APPID**  
Required. The APPID parameter is used in the APPLICATION characteristic to differentiate the types of available application services and protocols. This parameter takes a string value. You can get or set this value. The only valid value to configure the OMA Client Provisioning bootstrap APPID is w7.

<a href="" id="backcompatretrydisabled"></a>**BACKCOMPATRETRYDISABLED**  
Optional. The BACKCOMPATRETRYDISABLED parameter is used in the APPLICATION characteristic to specify whether to retry resending a package with an older protocol version (for example, 1.1) in the SyncHdr (not including the first time).

> **Note**   This parameter does not contain a value. The existence of this parameter means backward compatibility retry is disabled. If the parameter is missing, it means backward compatibility retry is enabled.

 

<a href="" id="connretryfreq"></a>**CONNRETRYFREQ**  
Optional. The CONNRETRYFREQ parameter is used in the APPLICATION characteristic to specify how many retries the DM client performs when there are Connection Manager-level or WinInet-level errors. This parameter takes a numeric value in string format. The default value is “3”. You can set this parameter.

<a href="" id="defaultencoding"></a>**DEFAULTENCODING**  
Optional. The DEFAULTENCODING parameter is used in the APPLICATION characteristic to specify whether the DM client should use WBXML or XML for the DM package when communicating with the server. You can get or set this parameter.

The valid values are:

-   application/vnd.syncml.dm+xml (Default)

-   application/vnd.syncml.dm+wbxml

<a href="" id="init"></a>**INIT**  
Optional. The INIT parameter is used in the APPLICATION characteristic to indicate that the management server wants the client to initiate a management session immediately after settings approval. If the current w7 APPLICATION document will be put in ROM, the INIT parameter must not be present.

> **Note**   This node is only for mobile operators and MDM servers that try to use this will fail. This node is not supported in the enterprise MDM enrollment scenario.
This parameter forces the device to attempt to connect with the OMA DM server. The connection attempt fails if the XML is set during the coldinit phase. A common cause of this failure is that immediately after coldinit is finished the radio is not yet ready.

 

<a href="" id="initialbackofftime"></a>**INITIALBACKOFFTIME**  
Optional. The INITIALBACKOFFTIME parameter is used in the APPLICATION characteristic to specify the initial wait time in milliseconds when the DM client retries for the first time. The wait time grows exponentially. This parameter takes a numeric value in string format. The default value is “16000”. You can get or set this parameter.

<a href="" id="maxbackofftime"></a>**MAXBACKOFFTIME**  
Optional. The MAXBACKOFFTIME parameter is used in the APPLICATION characteristic to specify the maximum number of milliseconds to sleep after package-sending failure. This parameter takes numeric value in string format. The default value is “86400000”. You can set this parameter.

<a href="" id="name"></a>**NAME**  
Optional. The NAME parameter is used in the APPLICATION characteristic to specify a user readable application identity. This parameter is used to define part of the registry path for the APPLICATION parameters. You can set this parameter.

The NAME parameter can be a string or null (no value). If no value is specified, the registry location will default to &lt;unnamed&gt;.

<a href="" id="protover"></a>**PROTOVER**  
Optional. The PROTOVER parameter is used in the APPLICATION characteristic to specify the OMA DM Protocol version the server supports. No default value is assumed. The protocol version set by this node will match the protocol version that the DM client reports to the server in SyncHdr in package 1. If this node is not specified when adding a DM server account, the latest DM protocol version that the client supports is used. In Windows Phone this is 1.2. This is a Microsoft custom parameter. You can set this parameter.

Possible values:

-   1.1

-   1.2

<a href="" id="provider-id"></a>**PROVIDER-ID**  
Optional. The PROVIDER-ID parameter is used in the APPLICATION characteristic to differentiate OMA DM servers. It specifies the server identifier for a management server used in the current management session. This parameter takes a string value. You can set this parameter.

<a href="" id="role"></a>**ROLE**  
Optional. The ROLE parameter is used in the APPLICATION characteristic to specify the security application chamber that the DM session should run with when communicating with the DM server. The only supported roles are 8 (mobile operator) and 32 (enterprise). If this parameter is not present, the mobile operator role is assumed. The enterprise role can only be set by the enterprise enrollment client. The enterprise client cannot set the mobile operator role. This is a Microsoft custom parameter. This parameter takes a numeric value in string format. You can get or set this parameter.

<a href="" id="to-napid"></a>**TO-NAPID**  
Optional. The TO-NAPID parameter is used in the APPLICATION characteristic to specify the Network Access Point the client will use to connect to the OMA DM server. If multiple TO-NAPID parameters are specified, only the first TO-NAPID value will be stored. This parameter takes a string value. You can set this parameter.

<a href="" id="usehwdevid"></a>**USEHWDEVID**  
Optional. The USEHWDEVID parameter is used in the APPLICATION characteristic to specify use of device hardware identification. It does not have a value.

-   If the parameter is not present, the default behavior is to use an application-specific GUID used rather than the hardware device ID.

-   If the parameter is present, the hardware device ID will be provided at the **./DevInfo/DevID** node and in the Source LocURI for the DM package sent to the server. International Mobile Subscriber Identity (IMEI) is returned for a GSM device.

<a href="" id="sslclientcertsearchcriteria"></a>**SSLCLIENTCERTSEARCHCRITERIA**  
Optional. The SSLCLIENTCERTSEARCHCRITERIA parameter is used in the APPLICATION characteristic to specify the client certificate search criteria. This parameter supports search by subject attribute and certificate stores. If any other criteria are provided, it is ignored.

The string is a concatenation of name/value pairs, each member of the pair delimited by the "&" character. The name and values are delimited by the "=" character. If there are multiple values, each value is delimited by the Unicode character "U+F000". If the name or value contains characters not in the UNRESERVED set (as specified in RFC2396), then those characters are URI-escaped per the RFC.

The supported names are Subject and Stores; wildcard certificate search is not supported.

Stores specifies which certificate stores the DM client will search to find the SSL client certificate. The valid store value is My%5CUser. The store name is not case sensitive.

> **Note**   %EF%80%80 is the UTF8-encoded character U+F000.

 

Subject specifies the certificate to search for. For example, to specify that you want a certificate with a particular Subject attribute (“CN=Tester,O=Microsoft”), use the following:

``` syntax
<parm name="SSLCLIENTCERTSEARCHCRITERIA" 
   value="Subject=CN%3DTester,O%3DMicrosoft&amp;Stores=My%5CUser" />
```

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






