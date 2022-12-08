---
title: Wifi Policy CSP
description: Learn more about the Wifi Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/07/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Wifi-Begin -->
# Policy CSP - Wifi

<!-- Wifi-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Wifi-Editable-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-Begin -->
## AllowAutoConnectToWiFiSenseHotspots

<!-- AllowAutoConnectToWiFiSenseHotspots-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowAutoConnectToWiFiSenseHotspots-Applicability-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Wifi/AllowAutoConnectToWiFiSenseHotspots
```
<!-- AllowAutoConnectToWiFiSenseHotspots-OmaUri-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users can enable the following WLAN settings: "Connect to suggested open hotspots," "Connect to networks shared by my contacts," and "Enable paid services".

"Connect to suggested open hotspots" enables Windows to automatically connect users to open hotspots it knows about by crowdsourcing networks that other people using Windows have connected to.

"Connect to networks shared by my contacts" enables Windows to automatically connect to networks that the user's contacts have shared with them, and enables users on this device to share networks with their contacts.

"Enable paid services" enables Windows to temporarily connect to open hotspots to determine if paid services are available.

If this policy setting is disabled, both "Connect to suggested open hotspots," "Connect to networks shared by my contacts," and "Enable paid services" will be turned off and users on this device will be prevented from enabling them.

If this policy setting is not configured or is enabled, users can choose to enable or disable either "Connect to suggested open hotspots" or "Connect to networks shared by my contacts".
<!-- AllowAutoConnectToWiFiSenseHotspots-Description-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAutoConnectToWiFiSenseHotspots-Editable-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowAutoConnectToWiFiSenseHotspots-DFProperties-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowAutoConnectToWiFiSenseHotspots-AllowedValues-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WiFiSense |
| Friendly Name | Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services |
| Location | Computer Configuration |
| Path | Network > WLAN Service > WLAN Settings |
| Registry Key Name | Software\Microsoft\wcmsvc\wifinetworkmanager\config |
| Registry Value Name | AutoConnectAllowedOEM |
| ADMX File Name | wlansvc.admx |
<!-- AllowAutoConnectToWiFiSenseHotspots-GpMapping-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAutoConnectToWiFiSenseHotspots-Examples-End -->

<!-- AllowAutoConnectToWiFiSenseHotspots-End -->

<!-- AllowInternetSharing-Begin -->
## AllowInternetSharing

<!-- AllowInternetSharing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowInternetSharing-Applicability-End -->

<!-- AllowInternetSharing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Wifi/AllowInternetSharing
```
<!-- AllowInternetSharing-OmaUri-End -->

<!-- AllowInternetSharing-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether administrators can enable and configure the Internet Connection Sharing (ICS) feature of an Internet connection and if the ICS service can run on the computer.

ICS lets administrators configure their system as an Internet gateway for a small network and provides network services, such as name resolution and addressing through DHCP, to the local private network.

If you enable this setting, ICS cannot be enabled or configured by administrators, and the ICS service cannot run on the computer. The Advanced tab in the Properties dialog box for a LAN or remote access connection is removed. The Internet Connection Sharing page is removed from the New Connection Wizard. The Network Setup Wizard is disabled.

If you disable this setting or do not configure it and have two or more connections, administrators can enable ICS. The Advanced tab in the properties dialog box for a LAN or remote access connection is available. In addition, the user is presented with the option to enable Internet Connection Sharing in the Network Setup Wizard and Make New Connection Wizard. (The Network Setup Wizard is available only in Windows XP Professional.)

By default, ICS is disabled when you create a remote access connection, but administrators can use the Advanced tab to enable it. When running the New Connection Wizard or Network Setup Wizard, administrators can choose to enable ICS.

Note: Internet Connection Sharing is only available when two or more network connections are present.

Note: When the "Prohibit access to properties of a LAN connection," "Ability to change properties of an all user remote access connection," or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the Connection Properties dialog box, the Advanced tab for the connection is blocked.

Note: Nonadministrators are already prohibited from configuring Internet Connection Sharing, regardless of this setting.

Note: Disabling this setting does not prevent Wireless Hosted Networking from using the ICS service for DHCP services. To prevent the ICS service from running, on the Network Permissions tab in the network's policy properties, select the "Don't use hosted networks" check box.
<!-- AllowInternetSharing-Description-End -->

<!-- AllowInternetSharing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowInternetSharing-Editable-End -->

<!-- AllowInternetSharing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowInternetSharing-DFProperties-End -->

<!-- AllowInternetSharing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowInternetSharing-AllowedValues-End -->

<!-- AllowInternetSharing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NC_ShowSharedAccessUI |
| Friendly Name | Prohibit use of Internet Connection Sharing on your DNS domain network |
| Location | Computer Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_ShowSharedAccessUI |
| ADMX File Name | NetworkConnections.admx |
<!-- AllowInternetSharing-GpMapping-End -->

<!-- AllowInternetSharing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowInternetSharing-Examples-End -->

<!-- AllowInternetSharing-End -->

<!-- AllowManualWiFiConfiguration-Begin -->
## AllowManualWiFiConfiguration

<!-- AllowManualWiFiConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowManualWiFiConfiguration-Applicability-End -->

<!-- AllowManualWiFiConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Wifi/AllowManualWiFiConfiguration
```
<!-- AllowManualWiFiConfiguration-OmaUri-End -->

<!-- AllowManualWiFiConfiguration-Description-Begin -->
<!-- Description-Source-DDF -->
Allow or disallow connecting to Wi-Fi outside of MDM server-installed networks. Most restricted value is 0. **Note**: Setting this policy deletes any previously installed user-configured and Wi-Fi sense Wi-Fi profiles from the device. Certain Wi-Fi profiles that are not user configured nor Wi-Fi sense might not be deleted. In addition, not all non-MDM profiles are completely deleted.
<!-- AllowManualWiFiConfiguration-Description-End -->

<!-- AllowManualWiFiConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowManualWiFiConfiguration-Editable-End -->

<!-- AllowManualWiFiConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowManualWiFiConfiguration-DFProperties-End -->

<!-- AllowManualWiFiConfiguration-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | No Wi-Fi connection outside of MDM provisioned network is allowed. |
| 1 (Default) | Adding new network SSIDs beyond the already MDM provisioned ones is allowed. |
<!-- AllowManualWiFiConfiguration-AllowedValues-End -->

<!-- AllowManualWiFiConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowManualWiFiConfiguration-Examples-End -->

<!-- AllowManualWiFiConfiguration-End -->

<!-- AllowWiFi-Begin -->
## AllowWiFi

<!-- AllowWiFi-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowWiFi-Applicability-End -->

<!-- AllowWiFi-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Wifi/AllowWiFi
```
<!-- AllowWiFi-OmaUri-End -->

<!-- AllowWiFi-Description-Begin -->
<!-- Description-Source-DDF -->
This policy has been deprecated.
<!-- AllowWiFi-Description-End -->

<!-- AllowWiFi-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWiFi-Editable-End -->

<!-- AllowWiFi-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowWiFi-DFProperties-End -->

<!-- AllowWiFi-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowWiFi-AllowedValues-End -->

<!-- AllowWiFi-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWiFi-Examples-End -->

<!-- AllowWiFi-End -->

<!-- AllowWiFiDirect-Begin -->
## AllowWiFiDirect

<!-- AllowWiFiDirect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowWiFiDirect-Applicability-End -->

<!-- AllowWiFiDirect-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Wifi/AllowWiFiDirect
```
<!-- AllowWiFiDirect-OmaUri-End -->

<!-- AllowWiFiDirect-Description-Begin -->
<!-- Description-Source-DDF -->
Allow WiFi Direct connection. .
<!-- AllowWiFiDirect-Description-End -->

<!-- AllowWiFiDirect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWiFiDirect-Editable-End -->

<!-- AllowWiFiDirect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowWiFiDirect-DFProperties-End -->

<!-- AllowWiFiDirect-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowWiFiDirect-AllowedValues-End -->

<!-- AllowWiFiDirect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWiFiDirect-Examples-End -->

<!-- AllowWiFiDirect-End -->

<!-- WLANScanMode-Begin -->
## WLANScanMode

<!-- WLANScanMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- WLANScanMode-Applicability-End -->

<!-- WLANScanMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Wifi/WLANScanMode
```
<!-- WLANScanMode-OmaUri-End -->

<!-- WLANScanMode-Description-Begin -->
<!-- Description-Source-DDF -->
Allow an enterprise to control the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected. Supported values are 0-500, where 100 = normal scan frequency and 500 = low scan frequency. The default value is 0. Supported operations are Add, Delete, Get, and Replace.
<!-- WLANScanMode-Description-End -->

<!-- WLANScanMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WLANScanMode-Editable-End -->

<!-- WLANScanMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-500]` |
| Default Value  | 0 |
<!-- WLANScanMode-DFProperties-End -->

<!-- WLANScanMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WLANScanMode-Examples-End -->

<!-- WLANScanMode-End -->

<!-- Wifi-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Wifi-CspMoreInfo-End -->

<!-- Wifi-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
