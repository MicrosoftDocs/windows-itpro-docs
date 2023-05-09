---
title: EnterpriseAPN CSP
description: The EnterpriseAPN configuration service provider is used by the enterprise to provision an APN for the Internet.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/22/2017
---

# EnterpriseAPN CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The EnterpriseAPN configuration service provider (CSP) is used by the enterprise to provision an APN for the Internet.

The following example shows the EnterpriseAPN configuration service provider in tree format.
```
./Vendor/MSFT
EnterpriseAPN
----ConnectionName
--------APNName
--------IPType
--------IsAttachAPN
--------ClassId
--------AuthType
--------UserName
--------Password
--------IccId
--------AlwaysOn
--------Enabled
----Settings
--------AllowUserControl
--------HideView
```
<a href="" id="enterpriseapn"></a>**EnterpriseAPN**
The root node for the EnterpriseAPN configuration service provider.

<a href="" id="enterpriseapn-connectionname"></a>**EnterpriseAPN/**<strong>*ConnectionName*</strong>
Name of the connection as seen by Windows Connection Manager.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-apnname"></a>**EnterpriseAPN/*ConnectionName*/APNName**
Enterprise APN name.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-iptype"></a>**EnterpriseAPN/*ConnectionName*/IPType**
This value can be one of the following:

- IPv4 - only IPV4 connection type.
- IPv6 - only IPv6 connection type.
- IPv4v6 (default)- IPv4 and IPv6 concurrently.
- IPv4v6xlat - IPv6 with IPv4 provided by 46xlat.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-isattachapn"></a>**EnterpriseAPN/*ConnectionName*/IsAttachAPN**
Boolean value that indicates whether this APN should be requested as part of an LTE Attach.

Default value is false.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-classid"></a>**EnterpriseAPN/*ConnectionName*/ClassId**
GUID that defines the APN class to the modem. This is the same as the OEMConnectionId in CM_CellularEntries CSP. Normally this setting isn't present. It's only required when IsAttachAPN is true and the attach APN isn't only used as the Internet APN.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-authtype"></a>**EnterpriseAPN/*ConnectionName*/AuthType**
Authentication type. This value can be one of the following:

- None (default)
- Auto
- PAP
- CHAP
- MSCHAPv2

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-username"></a>**EnterpriseAPN/*ConnectionName*/UserName**
User name for use with PAP, CHAP, or MSCHAPv2 authentication.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-password"></a>**EnterpriseAPN/*ConnectionName*/Password**
Password corresponding to the username.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-iccid"></a>**EnterpriseAPN/*ConnectionName*/IccId**
Integrated Circuit Card ID (ICCID) associated with the cellular connection profile. If this node isn't present, the connection is created on a single-slot device using the ICCID of the UICC and on a dual-slot device using the ICCID of the UICC that is active for data.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-alwayson"></a>**EnterpriseAPN/*ConnectionName*/AlwaysOn**
Added in Windows 10, version 1607. Boolean value that specifies whether the CM will automatically attempt to connect to the APN when a connection is available.

The default value is true.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-enabled"></a>**EnterpriseAPN/*ConnectionName*/Enabled**
Added in Windows 10, version 1607. Boolean that specifies whether the connection is enabled.

The default value is true.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-roaming"></a>**EnterpriseAPN/*ConnectionName*/Roaming**
Added in Windows 10, version 1703. Specifies whether the connection should be activated when the device is roaming. Valid values are:

- 0 - Disallowed
- 1 - Allowed
- 2 - DomesticRoaming
- 3 - UseOnlyForDomesticRoaming
- 4 - UseOnlyForNonDomesticRoaming
- 5 - UseOnlyForRoaming

Default is 1 (all roaming allowed).

Value type is string.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-settings"></a>**EnterpriseAPN/Settings**
Added in Windows 10, version 1607. Node that contains global settings.

<a href="" id="enterpriseapn-settings-allowusercontrol"></a>**EnterpriseAPN/Settings/AllowUserControl**
Added in Windows 10, version 1607. Boolean value that specifies whether the cellular UX will allow users to connect with other APNs other than the Enterprise APN.

The default value is false.

Supported operations are Get and Replace.

<a href="" id="enterpriseapn-settings-hideview"></a>**EnterpriseAPN/Settings/HideView**
Added in Windows 10, version 1607. Boolean that specifies whether the cellular UX will allow the user to view enterprise APNs. Only applicable if AllowUserControl is true.

The default value is false.

Supported operations are Get and Replace.

## Examples

```xml
<!--
Copyright (c) Microsoft Corporation.  All rights reserved.
-->
<!--
Use of this source code is subject to the terms of the Microsoft
premium shared source license agreement under which you licensed
this source code. If you did not accept the terms of the license
agreement, you are not authorized to use this source code.
For the terms of the license, please see the license agreement
signed by you and Microsoft.
THE SOURCE CODE IS PROVIDED "AS IS", WITH NO WARRANTIES OR INDEMNITIES.

-->

<SyncML>
  <SyncBody>
    <Atomic>
      <CmdID>8000</CmdID>
      <!-- Sub-tree 1 -->
      <add>
        <CmdID>8001</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/APNName</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>enterprise_apn1</Data>
        </Item>
      </add>
      <add>
        <CmdID>8002</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/IPType</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>IPv4</Data>
        </Item>
      </add>
      <add>
        <CmdID>8003</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/IsAttachAPN</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">bool</Format>
          </Meta>
          <Data>false</Data>
        </Item>
      </add>
      <add>
        <CmdID>8004</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/ClassId</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA</Data>
        </Item>
      </add>
      <add>
        <CmdID>8005</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/AuthType</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>CHAP</Data>
        </Item>
      </add>
      <add>
        <CmdID>8006</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/UserName</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>myusername</Data>
        </Item>
      </add>
      <add>
        <CmdID>8007</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/Password</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>mypassword</Data>
        </Item>
      </add>
      <add>
        <CmdID>8008</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAPN/E_APN1/IccId</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>FFFFFFFFFFFFFFFFFFFF</Data>
        </Item>
      </add>
    </Atomic>
    <Final/>
  </SyncBody>

<!--
===============================================================================
atomicA

add chr  EnterpriseAPN/E_APN1/APNName                     enterprise_apn1
add chr  EnterpriseAPN/E_APN1/IPType                      IPv4
add bool EnterpriseAPN/E_APN1/IsAttachAPN                 false
add chr  EnterpriseAPN/E_APN1/ClassId                     AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA
add chr  EnterpriseAPN/E_APN1/AuthType                    CHAP
add chr  EnterpriseAPN/E_APN1/UserName                    myusername
add chr  EnterpriseAPN/E_APN1/Password                    mypassword
add chr  EnterpriseAPN/E_APN1/IccId                       FFFFFFFFFFFFFFFFFFFF

atomicZ
===============================================================================
-->

</SyncML>

```

## Related topics

[Configuration service provider reference](index.yml)
