---
title: DMAcc CSP
description: Learn more about the DMAcc CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DMAcc-Begin -->
# DMAcc CSP

<!-- DMAcc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The DMAcc configuration service provider allows an OMA Device Management (DM) version 1.2 server to handle OMA DM account objects. The server can use this configuration service provider to add a new account or to manage an existing account, including an account that was bootstrapped by using the [w7 APPLICATION](w7-application-csp.md) configuration service provider.

> [!NOTE]
>This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_DEVICE\_MANAGEMENT\_ADMIN capabilities to be accessed from a network configuration application.

For the DMAcc CSP, you can't use the Replace command unless the node already exists.
<!-- DMAcc-Editable-End -->

<!-- DMAcc-Tree-Begin -->
The following list shows the DMAcc configuration service provider nodes:

- ./SyncML/DMAcc
  - [{AccountUID}](#accountuid)
    - [AAuthPref](#accountuidaauthpref)
    - [AppAddr](#accountuidappaddr)
      - [{ObjectName}](#accountuidappaddrobjectname)
        - [Addr](#accountuidappaddrobjectnameaddr)
        - [AddrType](#accountuidappaddrobjectnameaddrtype)
        - [Port](#accountuidappaddrobjectnameport)
          - [{ObjectName}](#accountuidappaddrobjectnameportobjectname)
            - [PortNbr](#accountuidappaddrobjectnameportobjectnameportnbr)
    - [AppAuth](#accountuidappauth)
      - [{ObjectName}](#accountuidappauthobjectname)
        - [AAuthData](#accountuidappauthobjectnameaauthdata)
        - [AAuthLevel](#accountuidappauthobjectnameaauthlevel)
        - [AAuthName](#accountuidappauthobjectnameaauthname)
        - [AAuthSecret](#accountuidappauthobjectnameaauthsecret)
        - [AAuthType](#accountuidappauthobjectnameaauthtype)
    - [AppID](#accountuidappid)
    - [Ext](#accountuidext)
      - [Microsoft](#accountuidextmicrosoft)
        - [BackCompatRetryDisabled](#accountuidextmicrosoftbackcompatretrydisabled)
        - [ConnRetryFreq](#accountuidextmicrosoftconnretryfreq)
        - [CRLCheck](#accountuidextmicrosoftcrlcheck)
        - [DefaultEncoding](#accountuidextmicrosoftdefaultencoding)
        - [DisableOnRoaming](#accountuidextmicrosoftdisableonroaming)
        - [InitialBackOffTime](#accountuidextmicrosoftinitialbackofftime)
        - [InitiateSession](#accountuidextmicrosoftinitiatesession)
        - [MaxBackOffTime](#accountuidextmicrosoftmaxbackofftime)
        - [ProtoVer](#accountuidextmicrosoftprotover)
        - [Role](#accountuidextmicrosoftrole)
        - [SSLCLIENTCERTSEARCHCRITERIA](#accountuidextmicrosoftsslclientcertsearchcriteria)
        - [UseHwDevID](#accountuidextmicrosoftusehwdevid)
        - [UseNonceResync](#accountuidextmicrosoftusenonceresync)
    - [Name](#accountuidname)
    - [PrefConRef](#accountuidprefconref)
    - [ServerID](#accountuidserverid)
<!-- DMAcc-Tree-End -->

<!-- Device-{AccountUID}-Begin -->
## {AccountUID}

<!-- Device-{AccountUID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Applicability-End -->

<!-- Device-{AccountUID}-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}
```
<!-- Device-{AccountUID}-OmaUri-End -->

<!-- Device-{AccountUID}-Description-Begin -->
<!-- Description-Source-DDF -->
This interior node acts as a placeholder for zero or more OMA DM server accounts. If this OMA DM server account is bootstrapped using the [w7 APPLICATION](w7-application-csp.md), the name of this
node is generated from the 256-bit version of SHA-2 hash of the w7 PROVIDER-ID parm.
<!-- Device-{AccountUID}-Description-End -->

<!-- Device-{AccountUID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Editable-End -->

<!-- Device-{AccountUID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ClientInventory |
<!-- Device-{AccountUID}-DFProperties-End -->

<!-- Device-{AccountUID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Examples-End -->

<!-- Device-{AccountUID}-End -->

<!-- Device-{AccountUID}-AAuthPref-Begin -->
### {AccountUID}/AAuthPref

<!-- Device-{AccountUID}-AAuthPref-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AAuthPref-Applicability-End -->

<!-- Device-{AccountUID}-AAuthPref-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AAuthPref
```
<!-- Device-{AccountUID}-AAuthPref-OmaUri-End -->

<!-- Device-{AccountUID}-AAuthPref-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the application authentication preference. Supported values: BASIC, DIGEST. If this value is empty, the client attempts to use the authentication mechanism negotiated in the previous session if one exists. If the value is empty, no previous session exists, and MD5 credentials exist, clients try MD5 authorization first. If the criteria aren't met then the client tries BASIC authorization first.
<!-- Device-{AccountUID}-AAuthPref-Description-End -->

<!-- Device-{AccountUID}-AAuthPref-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AAuthPref-Editable-End -->

<!-- Device-{AccountUID}-AAuthPref-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-AAuthPref-DFProperties-End -->

<!-- Device-{AccountUID}-AAuthPref-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| BASIC | The client attempts BASIC authentication. |
| DIGEST | The client attempts MD5 authentication. |
<!-- Device-{AccountUID}-AAuthPref-AllowedValues-End -->

<!-- Device-{AccountUID}-AAuthPref-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AAuthPref-Examples-End -->

<!-- Device-{AccountUID}-AAuthPref-End -->

<!-- Device-{AccountUID}-AppAddr-Begin -->
### {AccountUID}/AppAddr

<!-- Device-{AccountUID}-AppAddr-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAddr-Applicability-End -->

<!-- Device-{AccountUID}-AppAddr-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAddr
```
<!-- Device-{AccountUID}-AppAddr-OmaUri-End -->

<!-- Device-{AccountUID}-AppAddr-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for DM server address.
<!-- Device-{AccountUID}-AppAddr-Description-End -->

<!-- Device-{AccountUID}-AppAddr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-Editable-End -->

<!-- Device-{AccountUID}-AppAddr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- Device-{AccountUID}-AppAddr-DFProperties-End -->

<!-- Device-{AccountUID}-AppAddr-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-Examples-End -->

<!-- Device-{AccountUID}-AppAddr-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Begin -->
#### {AccountUID}/AppAddr/{ObjectName}

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Applicability-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAddr/{ObjectName}
```
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-OmaUri-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines the OMA DM server address. Only one server address can be configured. When mapping the [w7 APPLICATION](w7-application-csp.md) configuration service provider to the DMAcc Configuration Service Provider, the name of this element is "1". This is the first DM address encountered in the [w7 APPLICATION](w7-application-csp.md) configuration service provider, other DM accounts are ignored.
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Description-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Editable-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-DFProperties-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Examples-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Begin -->
##### {AccountUID}/AppAddr/{ObjectName}/Addr

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Applicability-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAddr/{ObjectName}/Addr
```
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-OmaUri-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the address of the OMA DM account. The type of address stored is specified by the AddrType element.
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Description-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Editable-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-DFProperties-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-Examples-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Addr-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Begin -->
##### {AccountUID}/AppAddr/{ObjectName}/AddrType

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Applicability-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAddr/{ObjectName}/AddrType
```
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-OmaUri-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the format and interpretation of the Addr node value. The default is "URI". The default value of "URI" specifies that the OMA DM account address in Addr is a URI address. A value of "IPv4" specifies that the OMA DM account address in Addr is an IP address.
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Description-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Editable-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
| Default Value  | URI |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-DFProperties-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| URI (Default) | The OMA DM account address in Addr is a URI address. |
| IPv4 | The OMA DM account address in Addr is an IP address. |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-AllowedValues-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-Examples-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-AddrType-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Begin -->
##### {AccountUID}/AppAddr/{ObjectName}/Port

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Applicability-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAddr/{ObjectName}/Port
```
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-OmaUri-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Description-Begin -->
<!-- Description-Source-DDF -->
Interior node for port information.
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Description-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Editable-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-DFProperties-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-Examples-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Begin -->
###### {AccountUID}/AppAddr/{ObjectName}/Port/{ObjectName}

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Applicability-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAddr/{ObjectName}/Port/{ObjectName}
```
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-OmaUri-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Description-Begin -->
<!-- Description-Source-DDF -->
Only one port number can be configured. When mapping the [w7 APPLICATION](w7-application-csp.md) configuration service provider to the DMAcc Configuration Service Provider, the name of this element is "1".
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Description-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Editable-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get, Replace |
| Dynamic Node Naming | ClientInventory |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-DFProperties-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-Examples-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Begin -->
###### {AccountUID}/AppAddr/{ObjectName}/Port/{ObjectName}/PortNbr

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Applicability-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAddr/{ObjectName}/Port/{ObjectName}/PortNbr
```
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-OmaUri-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the port number of the OMA MD account address. This must be a decimal number that fits within the range of a 16-bit unsigned integer.
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Description-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Editable-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-DFProperties-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-Examples-End -->

<!-- Device-{AccountUID}-AppAddr-{ObjectName}-Port-{ObjectName}-PortNbr-End -->

<!-- Device-{AccountUID}-AppAuth-Begin -->
### {AccountUID}/AppAuth

<!-- Device-{AccountUID}-AppAuth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAuth-Applicability-End -->

<!-- Device-{AccountUID}-AppAuth-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAuth
```
<!-- Device-{AccountUID}-AppAuth-OmaUri-End -->

<!-- Device-{AccountUID}-AppAuth-Description-Begin -->
<!-- Description-Source-DDF -->
Defines authentication settings.
<!-- Device-{AccountUID}-AppAuth-Description-End -->

<!-- Device-{AccountUID}-AppAuth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-Editable-End -->

<!-- Device-{AccountUID}-AppAuth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
<!-- Device-{AccountUID}-AppAuth-DFProperties-End -->

<!-- Device-{AccountUID}-AppAuth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-Examples-End -->

<!-- Device-{AccountUID}-AppAuth-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Begin -->
#### {AccountUID}/AppAuth/{ObjectName}

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Applicability-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAuth/{ObjectName}
```
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-OmaUri-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Description-Begin -->
<!-- Description-Source-DDF -->
Defines one set of authentication settings. When mapping the [w7 APPLICATION](w7-application-csp.md) configuration service provider to the DMAcc Configuration Service Provider, the name of this element is same name as the AAuthLevel value ("CLRED" or "SRVCRED").
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Description-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Editable-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-DFProperties-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-Examples-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Begin -->
##### {AccountUID}/AppAuth/{ObjectName}/AAuthData

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Applicability-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAuth/{ObjectName}/AAuthData
```
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-OmaUri-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the next nonce used for authentication. "Nonce" refers to a number used once. It's often a random or pseudo-random number issued in an authentication protocol to ensure that old communications can't be reused in repeat attacks.
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Description-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Editable-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bin` |
| Access Type | Add, Replace |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-DFProperties-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-Examples-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthData-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Begin -->
##### {AccountUID}/AppAuth/{ObjectName}/AAuthLevel

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Applicability-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAuth/{ObjectName}/AAuthLevel
```
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-OmaUri-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the application authentication level. A value of "CLCRED" indicates that the credentials client will authenticate itself to the OMA DM server at the OMA DM protocol level. A value of "SRVCRED" indicates that the credentials server will authenticate itself to the OMA DM Client at the OMA DM protocol level.
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Description-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Editable-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-DFProperties-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| CLCRED | The credentials client will authenticate itself to the OMA DM server at the OMA DM protocol level. |
| SRVCRED | The credentials server will authenticate itself to the OMA DM Client at the OMA DM protocol level. |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-AllowedValues-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-Examples-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthLevel-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Begin -->
##### {AccountUID}/AppAuth/{ObjectName}/AAuthName

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Applicability-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAuth/{ObjectName}/AAuthName
```
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-OmaUri-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the authentication name.
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Description-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Editable-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-DFProperties-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-Examples-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthName-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Begin -->
##### {AccountUID}/AppAuth/{ObjectName}/AAuthSecret

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Applicability-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAuth/{ObjectName}/AAuthSecret
```
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-OmaUri-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the password or secret used for authentication.
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Description-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Editable-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Replace |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-DFProperties-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-Examples-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthSecret-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Begin -->
##### {AccountUID}/AppAuth/{ObjectName}/AAuthType

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Applicability-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppAuth/{ObjectName}/AAuthType
```
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-OmaUri-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the authentication type. If AAuthLevel is CLCRED, the supported types include BASIC and DIGEST. If AAuthLevel is SRVCRED, the only supported type is DIGEST.
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Description-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Editable-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
| Dependency [AAuthlevelDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/DMAcc/[AccountUID]/AppAuth/[ObjectName]/AAuthLevel` <br> Dependency Allowed Value: `SRVCRED` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-DFProperties-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| BASIC | BASIC. |
| DIGEST | DIGEST. |
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-AllowedValues-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-Examples-End -->

<!-- Device-{AccountUID}-AppAuth-{ObjectName}-AAuthType-End -->

<!-- Device-{AccountUID}-AppID-Begin -->
### {AccountUID}/AppID

<!-- Device-{AccountUID}-AppID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-AppID-Applicability-End -->

<!-- Device-{AccountUID}-AppID-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/AppID
```
<!-- Device-{AccountUID}-AppID-OmaUri-End -->

<!-- Device-{AccountUID}-AppID-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the application identifier for the OMA DM account. The only supported value is w7.
<!-- Device-{AccountUID}-AppID-Description-End -->

<!-- Device-{AccountUID}-AppID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppID-Editable-End -->

<!-- Device-{AccountUID}-AppID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
| Default Value  | w7 |
<!-- Device-{AccountUID}-AppID-DFProperties-End -->

<!-- Device-{AccountUID}-AppID-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| w7 (Default) | The only supported value. |
<!-- Device-{AccountUID}-AppID-AllowedValues-End -->

<!-- Device-{AccountUID}-AppID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-AppID-Examples-End -->

<!-- Device-{AccountUID}-AppID-End -->

<!-- Device-{AccountUID}-Ext-Begin -->
### {AccountUID}/Ext

<!-- Device-{AccountUID}-Ext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Applicability-End -->

<!-- Device-{AccountUID}-Ext-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext
```
<!-- Device-{AccountUID}-Ext-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Description-Begin -->
<!-- Description-Source-DDF -->
Defines a set of extended parameters. This element holds vendor-specific information about the OMA DM account and is created automatically when the OMA DM account is created.
<!-- Device-{AccountUID}-Ext-Description-End -->

<!-- Device-{AccountUID}-Ext-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Editable-End -->

<!-- Device-{AccountUID}-Ext-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{AccountUID}-Ext-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Examples-End -->

<!-- Device-{AccountUID}-Ext-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Begin -->
#### {AccountUID}/Ext/Microsoft

<!-- Device-{AccountUID}-Ext-Microsoft-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft
```
<!-- Device-{AccountUID}-Ext-Microsoft-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Description-Begin -->
<!-- Description-Source-DDF -->
Defines a set of Microsoft-specific extended parameters. This element is created automatically when the OMA DM account is created.
<!-- Device-{AccountUID}-Ext-Microsoft-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{AccountUID}-Ext-Microsoft-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Begin -->
##### {AccountUID}/Ext/Microsoft/BackCompatRetryDisabled

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/BackCompatRetryDisabled
```
<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies whether to disable the ability of the DM client to communicate with a down-level server.

Possible Values:

false (default) -- Compatibility with down-level servers is enabled true -- Compatibility with down-level servers is disabled.
<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
| Default Value  | 0 |
<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Backward-compatible retries are enabled. |
| 1 | Backward-compatible retries are disabled. |
<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-BackCompatRetryDisabled-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Begin -->
##### {AccountUID}/Ext/Microsoft/ConnRetryFreq

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/ConnRetryFreq
```
<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies how many times DM client will retry a connection to the server if the connection fails. The default value is 3 retries.
<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
| Default Value  | 3 |
<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ConnRetryFreq-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Begin -->
##### {AccountUID}/Ext/Microsoft/CRLCheck

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/CRLCheck
```
<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Description-Begin -->
<!-- Description-Source-DDF -->
Allows connection to the DM server to check the Certificate Revocation List (CRL). Set to true to enable SSL revocation.
<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-CRLCheck-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Begin -->
##### {AccountUID}/Ext/Microsoft/DefaultEncoding

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/DefaultEncoding
```
<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies the encoding that the OMA-DM client will use to encode its first package. Valid values include "application/vnd.syncml.dm+xml" (for XML) and
"application/vnd.syncml.dm+wbxml" (for WBXML). If this node is left unspecified, the OMA-DM client defaults to "application/vnd.syncml.dm+xml".
<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| application/vnd.syncml.dm+xml | XML is used. |
| application/vnd.syncml.dm+wbxml | WBXML is used. |
<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DefaultEncoding-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Begin -->
##### {AccountUID}/Ext/Microsoft/DisableOnRoaming

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/DisableOnRoaming
```
<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Description-Begin -->
<!-- Description-Source-DDF -->
Determines whether the OMA DM client should be launched when roaming.
<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | False. |
| 1 | True. |
<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-DisableOnRoaming-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Begin -->
##### {AccountUID}/Ext/Microsoft/InitialBackOffTime

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/InitialBackOffTime
```
<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies the initial amount of time (in milliseconds) that the DM client waits before attempting a connection retry. After the initial wait, the wait
time grows exponentially. The default value is 16000 milliseconds.
<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
| Default Value  | 16000 |
<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitialBackOffTime-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Begin -->
##### {AccountUID}/Ext/Microsoft/InitiateSession

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/InitiateSession
```
<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Description-Begin -->
<!-- Description-Source-DDF -->
When this node is added, a session is started with the MDM server.
<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Add, Replace |
<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-InitiateSession-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Begin -->
##### {AccountUID}/Ext/Microsoft/MaxBackOffTime

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/MaxBackOffTime
```
<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies the maximum number of milliseconds to wait before attempting a connection retry. The default value is 86400000.
<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Get, Replace |
| Default Value  | 86400000 |
<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-MaxBackOffTime-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Begin -->
##### {AccountUID}/Ext/Microsoft/ProtoVer

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/ProtoVer
```
<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Description-Begin -->
<!-- Description-Source-DDF -->
This node value corresponds to what the client would put in the VerDTD element of an OMA-DM package. No default value is assumed. The only valid value for this
node is 1.1 or 1.2.
<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The protocol version set by this element will match the protocol version that the DM client reports to the server in SyncHdr in package 1. If this element isn't specified when adding a DM server account, the latest DM protocol version that the client supports is used.
<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1.1 | 1.1. |
| 1.2 | 1.2. |
<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-ProtoVer-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-Begin -->
##### {AccountUID}/Ext/Microsoft/Role

<!-- Device-{AccountUID}-Ext-Microsoft-Role-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-Role-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/Role
```
<!-- Device-{AccountUID}-Ext-Microsoft-Role-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-Description-Begin -->
<!-- Description-Source-DDF -->
If this node is unspecified, its default value is the access role of the session that created the server account. The value for this node must be a subset of the
roles used in creating this server account.
<!-- Device-{AccountUID}-Ext-Microsoft-Role-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The acceptable access roles for this node can't be more than the roles assigned to the DMAcc object.
<!-- Device-{AccountUID}-Ext-Microsoft-Role-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
<!-- Device-{AccountUID}-Ext-Microsoft-Role-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 4 | SECROLE_OPERATOR. |
| 8 | SECROLE_MANAGER. |
| 16 | SECROLE_USER_AUTH. |
| 128 | SECROLE_OPERATOR_TPS. |
<!-- Device-{AccountUID}-Ext-Microsoft-Role-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-Role-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-Role-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Begin -->
##### {AccountUID}/Ext/Microsoft/SSLCLIENTCERTSEARCHCRITERIA

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/SSLCLIENTCERTSEARCHCRITERIA
```
<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Description-Begin -->
<!-- Description-Source-DDF -->
The SSLCLIENTCERTSEARCHCRITERIA parameter is used to specify the client certificate search criteria. This parameter supports search by subject attribute and certificate stores. If any other criteria are provided, it's ignored. The string is a concatenation of name/value pairs, each member of the pair delimited by the "&" character. The name and values are delimited by the "=" character. If there are multiple values, each value is delimited by the Unicode character "U+F000". If the name or value contains characters not in the UNRESERVED set (as specified in RFC2396), then those characters are URI-escaped per the RFC. The supported names are Subject and Stores; wildcard certificate search isn't supported. Stores specifies which certificate stores the DM client will search to find the SSL client certificate. The valid store value is My%5CUser. The store name isn't case sensitive. Subject specifies the certificate to search for. For example, to specify that you want a certificate with a particular Subject attribute ("CN=Tester,O=Microsoft"), use the following:
<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
```xml
<parm name="SSLCLIENTCERTSEARCHCRITERIA"
      value="Subject=CN%3DTester,O%3DMicrosoft&amp;Stores=My%5CUser" />
```
<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-SSLCLIENTCERTSEARCHCRITERIA-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Begin -->
##### {AccountUID}/Ext/Microsoft/UseHwDevID

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/UseHwDevID
```
<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Description-Begin -->
<!-- Description-Source-DDF -->
A value of true indicates that, during an OMA-DM session with this server, the value of the ./DevInfo/DevId node is the hardware ID of device (e.g, IMEI for a
GSM device, ESN for a CDMA Device, hashed UUID for a non-radio device). The default value of false indicates that the value of ./DevInfo/DevId node is a hash of
the UUID of the device.
<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
| Default Value  | 0 |
<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | An application-specific GUID is returned for the ./DevInfo/DevID rather than the hardware device ID. |
| 1 | The hardware device ID will be provided for the ./DevInfo/DevID element and the Source LocURI for the OMA DM package that's sent to the server. |
<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseHwDevID-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Begin -->
##### {AccountUID}/Ext/Microsoft/UseNonceResync

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Applicability-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Ext/Microsoft/UseNonceResync
```
<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-OmaUri-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies whether the DM client can use the nonce resynchronization protocol when authentication of a server notification fails. If nonce
resynchronization is disabled and authentication of the server notification fails, the notification is dropped.

Possible Values:

false (default) : Nonce resynchronization is disabled.

true: Nonce resynchronization is enabled.
<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Description-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Editable-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Get, Replace |
| Default Value  | 0 |
<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-DFProperties-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The client doesn't try to authenticate the notification with the backup server nonce if authentication to the stored nonce fails. |
| 1 | The client initiates a DM session if the backup server nonce is received after authentication failed. |
<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-AllowedValues-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-Examples-End -->

<!-- Device-{AccountUID}-Ext-Microsoft-UseNonceResync-End -->

<!-- Device-{AccountUID}-Name-Begin -->
### {AccountUID}/Name

<!-- Device-{AccountUID}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-Name-Applicability-End -->

<!-- Device-{AccountUID}-Name-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/Name
```
<!-- Device-{AccountUID}-Name-OmaUri-End -->

<!-- Device-{AccountUID}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the display name of the application.
<!-- Device-{AccountUID}-Name-Description-End -->

<!-- Device-{AccountUID}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Name-Editable-End -->

<!-- Device-{AccountUID}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-Name-DFProperties-End -->

<!-- Device-{AccountUID}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-Name-Examples-End -->

<!-- Device-{AccountUID}-Name-End -->

<!-- Device-{AccountUID}-PrefConRef-Begin -->
### {AccountUID}/PrefConRef

<!-- Device-{AccountUID}-PrefConRef-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-PrefConRef-Applicability-End -->

<!-- Device-{AccountUID}-PrefConRef-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/PrefConRef
```
<!-- Device-{AccountUID}-PrefConRef-OmaUri-End -->

<!-- Device-{AccountUID}-PrefConRef-Description-Begin -->
<!-- Description-Source-DDF -->
The only supported values include the NAPID of a bootstrapped NAP management object or a connection GUID used by connection manager. If this node is missing, the device
will use the default connection provided by connection manager.
<!-- Device-{AccountUID}-PrefConRef-Description-End -->

<!-- Device-{AccountUID}-PrefConRef-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-PrefConRef-Editable-End -->

<!-- Device-{AccountUID}-PrefConRef-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-PrefConRef-DFProperties-End -->

<!-- Device-{AccountUID}-PrefConRef-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-PrefConRef-Examples-End -->

<!-- Device-{AccountUID}-PrefConRef-End -->

<!-- Device-{AccountUID}-ServerID-Begin -->
### {AccountUID}/ServerID

<!-- Device-{AccountUID}-ServerID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{AccountUID}-ServerID-Applicability-End -->

<!-- Device-{AccountUID}-ServerID-OmaUri-Begin -->
```Device
./SyncML/DMAcc/{AccountUID}/ServerID
```
<!-- Device-{AccountUID}-ServerID-OmaUri-End -->

<!-- Device-{AccountUID}-ServerID-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the OMA DM server's unique identifier for the current OMA DM account. This value is case-sensitive.
<!-- Device-{AccountUID}-ServerID-Description-End -->

<!-- Device-{AccountUID}-ServerID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{AccountUID}-ServerID-Editable-End -->

<!-- Device-{AccountUID}-ServerID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{AccountUID}-ServerID-DFProperties-End -->

<!-- Device-{AccountUID}-ServerID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{AccountUID}-ServerID-Examples-End -->

<!-- Device-{AccountUID}-ServerID-End -->

<!-- DMAcc-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DMAcc-CspMoreInfo-End -->

<!-- DMAcc-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
