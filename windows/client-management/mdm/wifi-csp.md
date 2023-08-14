---
title: WiFi CSP
description: Learn more about the WiFi CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- WiFi-Begin -->
# WiFi CSP

<!-- WiFi-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The WiFi configuration service provider provides the functionality to add or delete Wi-Fi networks on a Windows device. The configuration service provider accepts SyncML input and converts it to a network profile that is installed on the device. This profile enables the device to connect to the Wi-Fi network when it's in range.

Programming considerations:

- If the authentication method needs a certificate, for example, EAP-TLS requires client certificates, you must configure it through the CertificateStore configuration service provider. The WiFi configuration service provider doesn't provide that functionality; instead, the Wi-Fi profile can specify characteristics of the certificate to be used for choosing the right certificate for that network. The server must successfully enroll the certificate first before deploying the Wi-Fi network configuration. For example, for an EAP-TLS profile, the server must successfully configure and enroll the required client certificate before deploying the Wi-Fi profile. Self-signed certificate works for EAP-TLS/PEAP-MSCHAPv2, but it isn't supported in EAP-TLS.
- For WEP, WPA, and WPA2-based networks, include the passkey in the network configuration in plaintext. The passkey is encrypted automatically when it's stored on the device.
- The SSID of the Wi-Fi network part of the LocURI node must be a valid URI based on RFC 2396. This condition requires that all non-ASCII characters must be escaped using a %-character. Unicode characters without the necessary escaping aren't supported.
- The `<name>name_goes_here</name>\<SSIDConfig>` must match `<SSID><name>name_goes_here</name></SSID>`.
- For the WiFi CSP, you can't use the Replace command unless the node already exists.
- Using ProxyPacUrl or ProxyWPAD in Windows 10 client editions (Home, Pro, Enterprise, and Education) will result in failure.
<!-- WiFi-Editable-End -->

<!-- WiFi-Tree-Begin -->
The following list shows the WiFi configuration service provider nodes:

- ./Device/Vendor/MSFT/WiFi
  - [Profile](#deviceprofile)
    - [{SSID}](#deviceprofilessid)
      - [ProfileSource](#deviceprofilessidprofilesource)
      - [Proxy](#deviceprofilessidproxy)
      - [ProxyPacUrl](#deviceprofilessidproxypacurl)
      - [ProxyWPAD](#deviceprofilessidproxywpad)
      - [WiFiCost](#deviceprofilessidwificost)
      - [WlanXml](#deviceprofilessidwlanxml)
- ./User/Vendor/MSFT/WiFi
  - [Profile](#userprofile)
    - [{SSID}](#userprofilessid)
      - [ProfileSource](#userprofilessidprofilesource)
      - [Proxy](#userprofilessidproxy)
      - [ProxyPacUrl](#userprofilessidproxypacurl)
      - [ProxyWPAD](#userprofilessidproxywpad)
      - [WiFiCost](#userprofilessidwificost)
      - [WlanXml](#userprofilessidwlanxml)
<!-- WiFi-Tree-End -->

<!-- Device-Profile-Begin -->
## Device/Profile

<!-- Device-Profile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Profile-Applicability-End -->

<!-- Device-Profile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile
```
<!-- Device-Profile-OmaUri-End -->

<!-- Device-Profile-Description-Begin -->
<!-- Description-Source-DDF -->
Identifies the Wi-Fi network configuration. Each Wi-Fi network configuration is represented by a profile object. This network profile includes all the information required for the device to connect to that network - for example, the SSID, authentication and encryption methods and passphrase in case of WEP or WPA2 networks.
<!-- Device-Profile-Description-End -->

<!-- Device-Profile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Profile-Editable-End -->

<!-- Device-Profile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Profile-DFProperties-End -->

<!-- Device-Profile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-Examples-End -->

<!-- Device-Profile-End -->

<!-- Device-Profile-{SSID}-Begin -->
### Device/Profile/{SSID}

<!-- Device-Profile-{SSID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Profile-{SSID}-Applicability-End -->

<!-- Device-Profile-{SSID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile/{SSID}
```
<!-- Device-Profile-{SSID}-OmaUri-End -->

<!-- Device-Profile-{SSID}-Description-Begin -->
<!-- Description-Source-DDF -->
The Profile name of the Wi-Fi network. This is added when WlanXml node is added and deleted when WlanXml is deleted.
<!-- Device-Profile-{SSID}-Description-End -->

<!-- Device-Profile-{SSID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies the name of the Wi-Fi network (32 bytes maximum) to create, configure, query, or delete. The name is case sensitive and can be represented in ASCII.

SSID is the name of network you're connecting to, while Profile name is the name of the Profile that contains the WiFi settings information. If the Profile name isn't set right in the MDM SyncML, as per the information in the WiFi settings XML, it could lead to some unexpected errors. For example, `<LocURI>./Vendor/MSFT/WiFi/Profile/<MUST BE NAME OF PROFILE AS PER WIFI XML>/WlanXml</LocURI>`.
<!-- Device-Profile-{SSID}-Editable-End -->

<!-- Device-Profile-{SSID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-Profile-{SSID}-DFProperties-End -->

<!-- Device-Profile-{SSID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-Examples-End -->

<!-- Device-Profile-{SSID}-End -->

<!-- Device-Profile-{SSID}-ProfileSource-Begin -->
#### Device/Profile/{SSID}/ProfileSource

<!-- Device-Profile-{SSID}-ProfileSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Profile-{SSID}-ProfileSource-Applicability-End -->

<!-- Device-Profile-{SSID}-ProfileSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile/{SSID}/ProfileSource
```
<!-- Device-Profile-{SSID}-ProfileSource-OmaUri-End -->

<!-- Device-Profile-{SSID}-ProfileSource-Description-Begin -->
<!-- Description-Source-DDF -->
Allows for defining which administrative entity is setting this Wi-Fi profile. This can currently be set to either 0=Enterprise or 1=Mobile Operator.
<!-- Device-Profile-{SSID}-ProfileSource-Description-End -->

<!-- Device-Profile-{SSID}-ProfileSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-ProfileSource-Editable-End -->

<!-- Device-Profile-{SSID}-ProfileSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-Profile-{SSID}-ProfileSource-DFProperties-End -->

<!-- Device-Profile-{SSID}-ProfileSource-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enterprise. |
| 1 | Mobile Operator. |
<!-- Device-Profile-{SSID}-ProfileSource-AllowedValues-End -->

<!-- Device-Profile-{SSID}-ProfileSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-ProfileSource-Examples-End -->

<!-- Device-Profile-{SSID}-ProfileSource-End -->

<!-- Device-Profile-{SSID}-Proxy-Begin -->
#### Device/Profile/{SSID}/Proxy

<!-- Device-Profile-{SSID}-Proxy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Profile-{SSID}-Proxy-Applicability-End -->

<!-- Device-Profile-{SSID}-Proxy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile/{SSID}/Proxy
```
<!-- Device-Profile-{SSID}-Proxy-OmaUri-End -->

<!-- Device-Profile-{SSID}-Proxy-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. The format is url:port. Configuration of the network proxy (if any).
<!-- Device-Profile-{SSID}-Proxy-Description-End -->

<!-- Device-Profile-{SSID}-Proxy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-Proxy-Editable-End -->

<!-- Device-Profile-{SSID}-Proxy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Profile-{SSID}-Proxy-DFProperties-End -->

<!-- Device-Profile-{SSID}-Proxy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-Proxy-Examples-End -->

<!-- Device-Profile-{SSID}-Proxy-End -->

<!-- Device-Profile-{SSID}-ProxyPacUrl-Begin -->
#### Device/Profile/{SSID}/ProxyPacUrl

<!-- Device-Profile-{SSID}-ProxyPacUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Profile-{SSID}-ProxyPacUrl-Applicability-End -->

<!-- Device-Profile-{SSID}-ProxyPacUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile/{SSID}/ProxyPacUrl
```
<!-- Device-Profile-{SSID}-ProxyPacUrl-OmaUri-End -->

<!-- Device-Profile-{SSID}-ProxyPacUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. URL to the PAC file location.
<!-- Device-Profile-{SSID}-ProxyPacUrl-Description-End -->

<!-- Device-Profile-{SSID}-ProxyPacUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Don't use. Using this configuration in Windows 10 client editions will result in failure.
<!-- Device-Profile-{SSID}-ProxyPacUrl-Editable-End -->

<!-- Device-Profile-{SSID}-ProxyPacUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Profile-{SSID}-ProxyPacUrl-DFProperties-End -->

<!-- Device-Profile-{SSID}-ProxyPacUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-ProxyPacUrl-Examples-End -->

<!-- Device-Profile-{SSID}-ProxyPacUrl-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-Begin -->
#### Device/Profile/{SSID}/ProxyWPAD

<!-- Device-Profile-{SSID}-ProxyWPAD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Profile-{SSID}-ProxyWPAD-Applicability-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile/{SSID}/ProxyWPAD
```
<!-- Device-Profile-{SSID}-ProxyWPAD-OmaUri-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. The presence of the field enables WPAD for proxy lookup.
<!-- Device-Profile-{SSID}-ProxyWPAD-Description-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Don't use. Using this configuration in Windows 10 client editions will result in failure.
<!-- Device-Profile-{SSID}-ProxyWPAD-Editable-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Profile-{SSID}-ProxyWPAD-DFProperties-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable WPAD for proxy lookup. |
| true | Enable WPAD for proxy lookup. |
<!-- Device-Profile-{SSID}-ProxyWPAD-AllowedValues-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-ProxyWPAD-Examples-End -->

<!-- Device-Profile-{SSID}-ProxyWPAD-End -->

<!-- Device-Profile-{SSID}-WiFiCost-Begin -->
#### Device/Profile/{SSID}/WiFiCost

<!-- Device-Profile-{SSID}-WiFiCost-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Profile-{SSID}-WiFiCost-Applicability-End -->

<!-- Device-Profile-{SSID}-WiFiCost-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile/{SSID}/WiFiCost
```
<!-- Device-Profile-{SSID}-WiFiCost-OmaUri-End -->

<!-- Device-Profile-{SSID}-WiFiCost-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. If the policy is active selecting one of the values from the following list will set the cost of WLAN connection for the Wi-Fi profile. (1:Unrestricted - unlimited connection, 2: Fixed - capacity constraints up to a certain data limit, 3: Variable - costed on per byte basic) Default behavior: Unrestricted.
<!-- Device-Profile-{SSID}-WiFiCost-Description-End -->

<!-- Device-Profile-{SSID}-WiFiCost-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-WiFiCost-Editable-End -->

<!-- Device-Profile-{SSID}-WiFiCost-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Profile-{SSID}-WiFiCost-DFProperties-End -->

<!-- Device-Profile-{SSID}-WiFiCost-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Unrestricted - unlimited connection. |
| 2 | Fixed - capacity constraints up to a certain data limit. |
| 3 | Variable - paid on per byte basic. |
<!-- Device-Profile-{SSID}-WiFiCost-AllowedValues-End -->

<!-- Device-Profile-{SSID}-WiFiCost-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-WiFiCost-Examples-End -->

<!-- Device-Profile-{SSID}-WiFiCost-End -->

<!-- Device-Profile-{SSID}-WlanXml-Begin -->
#### Device/Profile/{SSID}/WlanXml

<!-- Device-Profile-{SSID}-WlanXml-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Profile-{SSID}-WlanXml-Applicability-End -->

<!-- Device-Profile-{SSID}-WlanXml-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/WiFi/Profile/{SSID}/WlanXml
```
<!-- Device-Profile-{SSID}-WlanXml-OmaUri-End -->

<!-- Device-Profile-{SSID}-WlanXml-Description-Begin -->
<!-- Description-Source-DDF -->
XML describing the network configuration and follows Windows WLAN_profile schema.

Link to schema: <https://msdn.microsoft.com/library/windows/desktop/ms707341(v=vs.85).aspx>
<!-- Device-Profile-{SSID}-WlanXml-Description-End -->

<!-- Device-Profile-{SSID}-WlanXml-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The profile XML must be escaped, as shown in the examples below.

If it exists in the blob, the **keyType** and **protected** elements must come before **keyMaterial**, as shown in the example in [WPA2-Personal Profile Sample](/windows/win32/nativewifi/wpa2-personal-profile-sample).

> [!NOTE]
> If you need to specify other advanced conditions, such as specifying criteria for certificates that can be used by the Wi-Fi profile, you can do so by specifying this through the EapHostConfig portion of the WlanXML. For more information, see [EAP configuration](./eap-configuration.md).
<!-- Device-Profile-{SSID}-WlanXml-Editable-End -->

<!-- Device-Profile-{SSID}-WlanXml-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Profile-{SSID}-WlanXml-DFProperties-End -->

<!-- Device-Profile-{SSID}-WlanXml-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Profile-{SSID}-WlanXml-Examples-End -->

<!-- Device-Profile-{SSID}-WlanXml-End -->

<!-- User-Profile-Begin -->
## User/Profile

<!-- User-Profile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-Profile-Applicability-End -->

<!-- User-Profile-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile
```
<!-- User-Profile-OmaUri-End -->

<!-- User-Profile-Description-Begin -->
<!-- Description-Source-DDF -->
Identifies the Wi-Fi network configuration. Each Wi-Fi network configuration is represented by a profile object. This network profile includes all the information required for the device to connect to that network - for example, the SSID, authentication and encryption methods and passphrase in case of WEP or WPA2 networks.
<!-- User-Profile-Description-End -->

<!-- User-Profile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Profile-Editable-End -->

<!-- User-Profile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Profile-DFProperties-End -->

<!-- User-Profile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-Examples-End -->

<!-- User-Profile-End -->

<!-- User-Profile-{SSID}-Begin -->
### User/Profile/{SSID}

<!-- User-Profile-{SSID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-Profile-{SSID}-Applicability-End -->

<!-- User-Profile-{SSID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile/{SSID}
```
<!-- User-Profile-{SSID}-OmaUri-End -->

<!-- User-Profile-{SSID}-Description-Begin -->
<!-- Description-Source-DDF -->
The Profile name of the Wi-Fi network. This is added when WlanXml node is added and deleted when WlanXml is deleted.
<!-- User-Profile-{SSID}-Description-End -->

<!-- User-Profile-{SSID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies the name of the Wi-Fi network (32 bytes maximum) to create, configure, query, or delete. The name is case sensitive and can be represented in ASCII.

SSID is the name of network you're connecting to, while Profile name is the name of the Profile that contains the WiFi settings information. If the Profile name isn't set right in the MDM SyncML, as per the information in the WiFi settings XML, it could lead to some unexpected errors. For example, `<LocURI>./Vendor/MSFT/WiFi/Profile/<MUST BE NAME OF PROFILE AS PER WIFI XML>/WlanXml</LocURI>`.
<!-- User-Profile-{SSID}-Editable-End -->

<!-- User-Profile-{SSID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- User-Profile-{SSID}-DFProperties-End -->

<!-- User-Profile-{SSID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-Examples-End -->

<!-- User-Profile-{SSID}-End -->

<!-- User-Profile-{SSID}-ProfileSource-Begin -->
#### User/Profile/{SSID}/ProfileSource

<!-- User-Profile-{SSID}-ProfileSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-Profile-{SSID}-ProfileSource-Applicability-End -->

<!-- User-Profile-{SSID}-ProfileSource-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile/{SSID}/ProfileSource
```
<!-- User-Profile-{SSID}-ProfileSource-OmaUri-End -->

<!-- User-Profile-{SSID}-ProfileSource-Description-Begin -->
<!-- Description-Source-DDF -->
Allows for defining which administrative entity is setting this Wi-Fi profile. This can currently be set to either 0=Enterprise or 1=Mobile Operator.
<!-- User-Profile-{SSID}-ProfileSource-Description-End -->

<!-- User-Profile-{SSID}-ProfileSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-ProfileSource-Editable-End -->

<!-- User-Profile-{SSID}-ProfileSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- User-Profile-{SSID}-ProfileSource-DFProperties-End -->

<!-- User-Profile-{SSID}-ProfileSource-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enterprise. |
| 1 | Mobile Operator. |
<!-- User-Profile-{SSID}-ProfileSource-AllowedValues-End -->

<!-- User-Profile-{SSID}-ProfileSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-ProfileSource-Examples-End -->

<!-- User-Profile-{SSID}-ProfileSource-End -->

<!-- User-Profile-{SSID}-Proxy-Begin -->
#### User/Profile/{SSID}/Proxy

<!-- User-Profile-{SSID}-Proxy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-Profile-{SSID}-Proxy-Applicability-End -->

<!-- User-Profile-{SSID}-Proxy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile/{SSID}/Proxy
```
<!-- User-Profile-{SSID}-Proxy-OmaUri-End -->

<!-- User-Profile-{SSID}-Proxy-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. The format is url:port. Configuration of the network proxy (if any).
<!-- User-Profile-{SSID}-Proxy-Description-End -->

<!-- User-Profile-{SSID}-Proxy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-Proxy-Editable-End -->

<!-- User-Profile-{SSID}-Proxy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Profile-{SSID}-Proxy-DFProperties-End -->

<!-- User-Profile-{SSID}-Proxy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-Proxy-Examples-End -->

<!-- User-Profile-{SSID}-Proxy-End -->

<!-- User-Profile-{SSID}-ProxyPacUrl-Begin -->
#### User/Profile/{SSID}/ProxyPacUrl

<!-- User-Profile-{SSID}-ProxyPacUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-Profile-{SSID}-ProxyPacUrl-Applicability-End -->

<!-- User-Profile-{SSID}-ProxyPacUrl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile/{SSID}/ProxyPacUrl
```
<!-- User-Profile-{SSID}-ProxyPacUrl-OmaUri-End -->

<!-- User-Profile-{SSID}-ProxyPacUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. URL to the PAC file location.
<!-- User-Profile-{SSID}-ProxyPacUrl-Description-End -->

<!-- User-Profile-{SSID}-ProxyPacUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Don't use. Using this configuration in Windows 10 client editions will result in failure.
<!-- User-Profile-{SSID}-ProxyPacUrl-Editable-End -->

<!-- User-Profile-{SSID}-ProxyPacUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Profile-{SSID}-ProxyPacUrl-DFProperties-End -->

<!-- User-Profile-{SSID}-ProxyPacUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-ProxyPacUrl-Examples-End -->

<!-- User-Profile-{SSID}-ProxyPacUrl-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-Begin -->
#### User/Profile/{SSID}/ProxyWPAD

<!-- User-Profile-{SSID}-ProxyWPAD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-Profile-{SSID}-ProxyWPAD-Applicability-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile/{SSID}/ProxyWPAD
```
<!-- User-Profile-{SSID}-ProxyWPAD-OmaUri-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. The presence of the field enables WPAD for proxy lookup.
<!-- User-Profile-{SSID}-ProxyWPAD-Description-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Don't use. Using this configuration in Windows 10 client editions will result in failure.
<!-- User-Profile-{SSID}-ProxyWPAD-Editable-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Profile-{SSID}-ProxyWPAD-DFProperties-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disable WPAD for proxy lookup. |
| true | Enable WPAD for proxy lookup. |
<!-- User-Profile-{SSID}-ProxyWPAD-AllowedValues-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-ProxyWPAD-Examples-End -->

<!-- User-Profile-{SSID}-ProxyWPAD-End -->

<!-- User-Profile-{SSID}-WiFiCost-Begin -->
#### User/Profile/{SSID}/WiFiCost

<!-- User-Profile-{SSID}-WiFiCost-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- User-Profile-{SSID}-WiFiCost-Applicability-End -->

<!-- User-Profile-{SSID}-WiFiCost-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile/{SSID}/WiFiCost
```
<!-- User-Profile-{SSID}-WiFiCost-OmaUri-End -->

<!-- User-Profile-{SSID}-WiFiCost-Description-Begin -->
<!-- Description-Source-DDF -->
Optional node. If the policy is active selecting one of the values from the following list will set the cost of WLAN connection for the Wi-Fi profile. (1:Unrestricted - unlimited connection, 2: Fixed - capacity constraints up to a certain data limit, 3: Variable - costed on per byte basic) Default behavior: Unrestricted.
<!-- User-Profile-{SSID}-WiFiCost-Description-End -->

<!-- User-Profile-{SSID}-WiFiCost-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-WiFiCost-Editable-End -->

<!-- User-Profile-{SSID}-WiFiCost-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- User-Profile-{SSID}-WiFiCost-DFProperties-End -->

<!-- User-Profile-{SSID}-WiFiCost-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Unrestricted - unlimited connection. |
| 2 | Fixed - capacity constraints up to a certain data limit. |
| 3 | Variable - paid on per byte basic. |
<!-- User-Profile-{SSID}-WiFiCost-AllowedValues-End -->

<!-- User-Profile-{SSID}-WiFiCost-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-WiFiCost-Examples-End -->

<!-- User-Profile-{SSID}-WiFiCost-End -->

<!-- User-Profile-{SSID}-WlanXml-Begin -->
#### User/Profile/{SSID}/WlanXml

<!-- User-Profile-{SSID}-WlanXml-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-Profile-{SSID}-WlanXml-Applicability-End -->

<!-- User-Profile-{SSID}-WlanXml-OmaUri-Begin -->
```User
./User/Vendor/MSFT/WiFi/Profile/{SSID}/WlanXml
```
<!-- User-Profile-{SSID}-WlanXml-OmaUri-End -->

<!-- User-Profile-{SSID}-WlanXml-Description-Begin -->
<!-- Description-Source-DDF -->
XML describing the network configuration and follows Windows WLAN_profile schema.

Link to schema: <https://msdn.microsoft.com/library/windows/desktop/ms707341(v=vs.85).aspx>
<!-- User-Profile-{SSID}-WlanXml-Description-End -->

<!-- User-Profile-{SSID}-WlanXml-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The profile XML must be escaped, as shown in the examples below.

If it exists in the blob, the **keyType** and **protected** elements must come before **keyMaterial**, as shown in the example in [WPA2-Personal Profile Sample](/windows/win32/nativewifi/wpa2-personal-profile-sample).

> [!NOTE]
> If you need to specify other advanced conditions, such as specifying criteria for certificates that can be used by the Wi-Fi profile, you can do so by specifying this through the EapHostConfig portion of the WlanXML. For more information, see [EAP configuration](./eap-configuration.md).
<!-- User-Profile-{SSID}-WlanXml-Editable-End -->

<!-- User-Profile-{SSID}-WlanXml-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Profile-{SSID}-WlanXml-DFProperties-End -->

<!-- User-Profile-{SSID}-WlanXml-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Profile-{SSID}-WlanXml-Examples-End -->

<!-- User-Profile-{SSID}-WlanXml-End -->

<!-- WiFi-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Examples

These XML examples show how to perform various tasks using OMA DM.

### Add a network

The following example shows how to add PEAP-MSCHAPv2 network with SSID 'MyNetwork'.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Atomic>
      <CmdID>301</CmdID>
      <Add>
        <CmdID>302</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/WiFi/Profile/MyNetwork/WlanXml</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data><?xml version="1.0"?><WLANProfile xmlns="http://contoso.com/networking/WLAN/profile/v1"><name>MyNetwork</name><SSIDConfig><SSID><hex>412D4D534654574C414E</hex><name>MyNetwork</name></SSID><nonBroadcast>false</nonBroadcast></SSIDConfig><connectionType>ESS</connectionType><connectionMode>manual</connectionMode><MSM><security><authEncryption><authentication>WPA2</authentication><encryption>AES</encryption><useOneX>true</useOneX></authEncryption><OneX xmlns="http://contoso.com/networking/OneX/v1"><authMode>user</authMode><EAPConfig><EapHostConfig xmlns="http://contoso.com/provisioning/EapHostConfig"><EapMethod><Type xmlns="http://contoso.com/provisioning/EapCommon">25</Type><VendorId xmlns="http://contoso.com/provisioning/EapCommon">0</VendorId><VendorType xmlns="http://contoso.com/provisioning/EapCommon">0</VendorType><AuthorId xmlns="http://contoso.com/provisioning/EapCommon">0</AuthorId></EapMethod><Config xmlns="http://contoso.com/provisioning/EapHostConfig"><Eap xmlns="http://contoso.com/provisioning/BaseEapConnectionPropertiesV1"><Type>25</Type><EapType xmlns="http://contoso.com/provisioning/MsPeapConnectionPropertiesV1"><ServerValidation><DisableUserPromptForServerValidation>true</DisableUserPromptForServerValidation><ServerNames></ServerNames></ServerValidation><FastReconnect>true</FastReconnect><InnerEapOptional>false</InnerEapOptional><Eap xmlns="http://contoso.com/provisioning/BaseEapConnectionPropertiesV1"><Type>26</Type><EapType xmlns="http://contoso.com/provisioning/MsChapV2ConnectionPropertiesV1"><UseWinLogonCredentials>false</UseWinLogonCredentials></EapType></Eap><EnableQuarantineChecks>false</EnableQuarantineChecks><RequireCryptoBinding>false</RequireCryptoBinding><PeapExtensions><PerformServerValidation xmlns="http://contoso.com/provisioning/MsPeapConnectionPropertiesV2">false</PerformServerValidation><AcceptServerName xmlns="http://contoso.com/provisioning/MsPeapConnectionPropertiesV2">false</AcceptServerName></PeapExtensions></EapType></Eap></Config></EapHostConfig></EAPConfig></OneX></security></MSM></WLANProfile> </Data>
        </Item>
      </Add>
    </Atomic>
    <Final/>
  </SyncBody>
</SyncML>
```

### Query network profiles

The following example shows how to query Wi-Fi profiles installed on an MDM server.

```xml
<Get>
   <CmdID>301</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/WiFi/Profile</LocURI>
      </Target>
   </Item>
</Get>
```

The following example shows the response.

```xml
<Results>
   <CmdID>3</CmdID>
   <MsgRef>1</MsgRef>
   <CmdRef>301</CmdRef>
   <Item>
      <Source><LocURI>./Vendor/MSFT/WiFi/Profile</LocURI></Source>
      <Meta><Format xmlns="syncml:metinf">node</Format></Meta>
      <Data>TestWLAN1/TestWLAN2</Data>
   </Item>
</Results>
```

### Remove a network

The following example shows how to remove a network with SSID 'MyNetwork' and no proxy. Removing all network authentication types is done in this same manner.

```xml
<Atomic>
  <CmdID>300</CmdID>
  <Delete>
    <CmdID>301</CmdID>
    <Item>
      <Target>
        <LocURI>./Vendor/MSFT/WiFi/Profile/MyNetwork/WlanXml</LocURI>
      </Target>
    </Item>
  </Delete>
</Atomic>
```

### Add a network and certification authority for a server certificate

The following example shows how to add PEAP-MSCHAPv2 network with SSID 'MyNetwork' and root CA validation for server certificate.

```xml
<Atomic>
  <CmdID>300</CmdID>
  <Add>
    <CmdID>301</CmdID>
    <Item>
      <Target>
        <LocURI>./Vendor/MSFT/WiFi/Profile/MyNetwork/WlanXml</LocURI>
      </Target>
      <Meta>
        <Format xmlns="syncml:metinf">chr</Format>
      </Meta>
      <Data><?xml version="1.0"?><WLANProfile xmlns="http://www.microsoft.com/networking/WLAN/profile/v1"><name>MyNetwork</name><SSIDConfig><SSID><name>MyNetwork</name></SSID><nonBroadcast>false</nonBroadcast></SSIDConfig><connectionType>ESS</connectionType><connectionMode>manual</connectionMode><MSM><security><authEncryption><authentication>WPA2</authentication><encryption>AES</encryption><useOneX>true</useOneX></authEncryption><OneX xmlns="http://www.microsoft.com/networking/OneX/v1"><authMode>user</authMode><EAPConfig><EapHostConfig xmlns="http://www.microsoft.com/provisioning/EapHostConfig"><EapMethod><Type xmlns="http://www.microsoft.com/provisioning/EapCommon">25</Type><VendorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorId><VendorType xmlns="http://www.microsoft.com/provisioning/EapCommon">0</VendorType><AuthorId xmlns="http://www.microsoft.com/provisioning/EapCommon">0</AuthorId></EapMethod><Config xmlns="http://www.microsoft.com/provisioning/EapHostConfig"><Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1"><Type>25</Type><EapType xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV1"><ServerValidation><DisableUserPromptForServerValidation>true</DisableUserPromptForServerValidation><ServerNames></ServerNames><TrustedRootCA> InsertCertThumbPrintHere </TrustedRootCA></ServerValidation><FastReconnect>true</FastReconnect><InnerEapOptional>false</InnerEapOptional><Eap xmlns="http://www.microsoft.com/provisioning/BaseEapConnectionPropertiesV1"><Type>26</Type><EapType xmlns="http://www.microsoft.com/provisioning/MsChapV2ConnectionPropertiesV1"><UseWinLogonCredentials>false</UseWinLogonCredentials></EapType></Eap><EnableQuarantineChecks>false</EnableQuarantineChecks><RequireCryptoBinding>false</RequireCryptoBinding><PeapExtensions><PerformServerValidation xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV2">true</PerformServerValidation><AcceptServerName xmlns="http://www.microsoft.com/provisioning/MsPeapConnectionPropertiesV2">false</AcceptServerName></PeapExtensions></EapType></Eap></Config></EapHostConfig></EAPConfig></OneX></security></MSM></WLANProfile> </Data>
    </Item>
  </Add>
</Atomic>
```
<!-- WiFi-CspMoreInfo-End -->

<!-- WiFi-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
