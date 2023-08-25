---
title: NetworkProxy CSP
description: Learn more about the NetworkProxy CSP.
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

<!-- NetworkProxy-Begin -->
# NetworkProxy CSP

<!-- NetworkProxy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The NetworkProxy configuration service provider (CSP) is used to configure a proxy server for ethernet and Wi-Fi connections. These settings do not apply to VPN connections. This CSP was added in Windows 10, version 1703.

How the settings work:

- If auto-detect is enabled, the system tries to find the path to a Proxy Auto Config (PAC) script and download it.
- If #1 fails and a setup script is specified, the system tries to download the explicitly configured PAC script.
- If #2 fails and a proxy server is specified, the system tries to use the explicitly configured proxy server.
- Otherwise, the system tries to reach the site directly.
<!-- NetworkProxy-Editable-End -->

<!-- NetworkProxy-Tree-Begin -->
The following list shows the NetworkProxy configuration service provider nodes:

- ./Vendor/MSFT/NetworkProxy
  - [AutoDetect](#autodetect)
  - [ProxyServer](#proxyserver)
    - [Exceptions](#proxyserverexceptions)
    - [ProxyAddress](#proxyserverproxyaddress)
    - [UseProxyForLocalAddresses](#proxyserveruseproxyforlocaladdresses)
  - [ProxySettingsPerUser](#proxysettingsperuser)
  - [SetupScriptUrl](#setupscripturl)
<!-- NetworkProxy-Tree-End -->

<!-- Device-AutoDetect-Begin -->
## AutoDetect

<!-- Device-AutoDetect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-AutoDetect-Applicability-End -->

<!-- Device-AutoDetect-OmaUri-Begin -->
```Device
./Vendor/MSFT/NetworkProxy/AutoDetect
```
<!-- Device-AutoDetect-OmaUri-End -->

<!-- Device-AutoDetect-Description-Begin -->
<!-- Description-Source-DDF -->
Automatically detect settings. If enabled, the system tries to find the path to a PAC script.
<!-- Device-AutoDetect-Description-End -->

<!-- Device-AutoDetect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AutoDetect-Editable-End -->

<!-- Device-AutoDetect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-AutoDetect-DFProperties-End -->

<!-- Device-AutoDetect-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- Device-AutoDetect-AllowedValues-End -->

<!-- Device-AutoDetect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-AutoDetect-Examples-End -->

<!-- Device-AutoDetect-End -->

<!-- Device-ProxyServer-Begin -->
## ProxyServer

<!-- Device-ProxyServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-ProxyServer-Applicability-End -->

<!-- Device-ProxyServer-OmaUri-Begin -->
```Device
./Vendor/MSFT/NetworkProxy/ProxyServer
```
<!-- Device-ProxyServer-OmaUri-End -->

<!-- Device-ProxyServer-Description-Begin -->
<!-- Description-Source-DDF -->
Node for configuring a static proxy for Ethernet and Wi-Fi connections. The same proxy server is used for all protocols - including HTTP, HTTPS, FTP, and SOCKS. These settings don't apply to VPN connections.
<!-- Device-ProxyServer-Description-End -->

<!-- Device-ProxyServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ProxyServer-Editable-End -->

<!-- Device-ProxyServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-ProxyServer-DFProperties-End -->

<!-- Device-ProxyServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ProxyServer-Examples-End -->

<!-- Device-ProxyServer-End -->

<!-- Device-ProxyServer-Exceptions-Begin -->
### ProxyServer/Exceptions

<!-- Device-ProxyServer-Exceptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-ProxyServer-Exceptions-Applicability-End -->

<!-- Device-ProxyServer-Exceptions-OmaUri-Begin -->
```Device
./Vendor/MSFT/NetworkProxy/ProxyServer/Exceptions
```
<!-- Device-ProxyServer-Exceptions-OmaUri-End -->

<!-- Device-ProxyServer-Exceptions-Description-Begin -->
<!-- Description-Source-DDF -->
Addresses that shouldn't use the proxy server. The system won't use the proxy server for addresses beginning with what's specified in this node. Use semicolons (;) to separate entries.
<!-- Device-ProxyServer-Exceptions-Description-End -->

<!-- Device-ProxyServer-Exceptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ProxyServer-Exceptions-Editable-End -->

<!-- Device-ProxyServer-Exceptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- Device-ProxyServer-Exceptions-DFProperties-End -->

<!-- Device-ProxyServer-Exceptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ProxyServer-Exceptions-Examples-End -->

<!-- Device-ProxyServer-Exceptions-End -->

<!-- Device-ProxyServer-ProxyAddress-Begin -->
### ProxyServer/ProxyAddress

<!-- Device-ProxyServer-ProxyAddress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-ProxyServer-ProxyAddress-Applicability-End -->

<!-- Device-ProxyServer-ProxyAddress-OmaUri-Begin -->
```Device
./Vendor/MSFT/NetworkProxy/ProxyServer/ProxyAddress
```
<!-- Device-ProxyServer-ProxyAddress-OmaUri-End -->

<!-- Device-ProxyServer-ProxyAddress-Description-Begin -->
<!-- Description-Source-DDF -->
Address to the proxy server. Specify an address in the format `<server>`[":"`<port>`].
<!-- Device-ProxyServer-ProxyAddress-Description-End -->

<!-- Device-ProxyServer-ProxyAddress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ProxyServer-ProxyAddress-Editable-End -->

<!-- Device-ProxyServer-ProxyAddress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Delete, Get, Replace |
<!-- Device-ProxyServer-ProxyAddress-DFProperties-End -->

<!-- Device-ProxyServer-ProxyAddress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ProxyServer-ProxyAddress-Examples-End -->

<!-- Device-ProxyServer-ProxyAddress-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-Begin -->
### ProxyServer/UseProxyForLocalAddresses

<!-- Device-ProxyServer-UseProxyForLocalAddresses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-ProxyServer-UseProxyForLocalAddresses-Applicability-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-OmaUri-Begin -->
```Device
./Vendor/MSFT/NetworkProxy/ProxyServer/UseProxyForLocalAddresses
```
<!-- Device-ProxyServer-UseProxyForLocalAddresses-OmaUri-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the proxy server should be used for local (intranet) addresses.
<!-- Device-ProxyServer-UseProxyForLocalAddresses-Description-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ProxyServer-UseProxyForLocalAddresses-Editable-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-ProxyServer-UseProxyForLocalAddresses-DFProperties-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Use proxy server for local addresses. |
| 1 | Don't use proxy server for local addresses. |
<!-- Device-ProxyServer-UseProxyForLocalAddresses-AllowedValues-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ProxyServer-UseProxyForLocalAddresses-Examples-End -->

<!-- Device-ProxyServer-UseProxyForLocalAddresses-End -->

<!-- Device-ProxySettingsPerUser-Begin -->
## ProxySettingsPerUser

<!-- Device-ProxySettingsPerUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-ProxySettingsPerUser-Applicability-End -->

<!-- Device-ProxySettingsPerUser-OmaUri-Begin -->
```Device
./Vendor/MSFT/NetworkProxy/ProxySettingsPerUser
```
<!-- Device-ProxySettingsPerUser-OmaUri-End -->

<!-- Device-ProxySettingsPerUser-Description-Begin -->
<!-- Description-Source-DDF -->
When set to 0, it enables proxy configuration as global, machine wide.
<!-- Device-ProxySettingsPerUser-Description-End -->

<!-- Device-ProxySettingsPerUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Per user proxy configuration setting is not supported using a configuration file, only modifying registry settings on a local machine.
<!-- Device-ProxySettingsPerUser-Editable-End -->

<!-- Device-ProxySettingsPerUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-ProxySettingsPerUser-DFProperties-End -->

<!-- Device-ProxySettingsPerUser-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Proxy configuration is global, machine wide. |
| 1 (Default) | Proxy configuration is per user. |
<!-- Device-ProxySettingsPerUser-AllowedValues-End -->

<!-- Device-ProxySettingsPerUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ProxySettingsPerUser-Examples-End -->

<!-- Device-ProxySettingsPerUser-End -->

<!-- Device-SetupScriptUrl-Begin -->
## SetupScriptUrl

<!-- Device-SetupScriptUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-SetupScriptUrl-Applicability-End -->

<!-- Device-SetupScriptUrl-OmaUri-Begin -->
```Device
./Vendor/MSFT/NetworkProxy/SetupScriptUrl
```
<!-- Device-SetupScriptUrl-OmaUri-End -->

<!-- Device-SetupScriptUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Address to the PAC script you want to use.
<!-- Device-SetupScriptUrl-Description-End -->

<!-- Device-SetupScriptUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SetupScriptUrl-Editable-End -->

<!-- Device-SetupScriptUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Delete, Get, Replace |
<!-- Device-SetupScriptUrl-DFProperties-End -->

<!-- Device-SetupScriptUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SetupScriptUrl-Examples-End -->

<!-- Device-SetupScriptUrl-End -->

<!-- NetworkProxy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Examples

These generic code portions for the options **ProxySettingsPerUser**, **Autodetect**, and **SetupScriptURL** can be used for a specific operation, for example Replace.  Only enter the portion of code needed in the **Replace** section.

```xml
<Replace>
    <CmdID>1</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/NetworkProxy/ProxySettingsPerUser</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">int</Format>
            <Type>text/plain</Type>
        </Meta>
        <Data>0</Data>
    </Item>
</Replace>
```

```xml
<Replace>
    <CmdID>2</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/NetworkProxy/AutoDetect</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">int</Format>
            <Type>text/plain</Type>
        </Meta>
        <Data>1</Data>
    </Item>
</Replace>
```

```xml
<Replace>
    <CmdID>3</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/NetworkProxy/SetupScriptUrl</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
            <Type>text/plain</Type>
        </Meta>
        <Data>Insert the proxy PAC URL location here:</Data>
    </Item>
</Replace>
```
<!-- NetworkProxy-CspMoreInfo-End -->

<!-- NetworkProxy-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
