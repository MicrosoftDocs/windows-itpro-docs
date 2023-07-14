---
title: WirelessDisplay Policy CSP
description: Learn more about the WirelessDisplay Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- WirelessDisplay-Begin -->
# Policy CSP - WirelessDisplay

<!-- WirelessDisplay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WirelessDisplay-Editable-End -->

<!-- AllowMdnsAdvertisement-Begin -->
## AllowMdnsAdvertisement

<!-- AllowMdnsAdvertisement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowMdnsAdvertisement-Applicability-End -->

<!-- AllowMdnsAdvertisement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowMdnsAdvertisement
```
<!-- AllowMdnsAdvertisement-OmaUri-End -->

<!-- AllowMdnsAdvertisement-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to turn off the Wireless Display multicast DNS service advertisement from a Wireless Display receiver.
<!-- AllowMdnsAdvertisement-Description-End -->

<!-- AllowMdnsAdvertisement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMdnsAdvertisement-Editable-End -->

<!-- AllowMdnsAdvertisement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMdnsAdvertisement-DFProperties-End -->

<!-- AllowMdnsAdvertisement-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowMdnsAdvertisement-AllowedValues-End -->

<!-- AllowMdnsAdvertisement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMdnsAdvertisement-Examples-End -->

<!-- AllowMdnsAdvertisement-End -->

<!-- AllowMdnsDiscovery-Begin -->
## AllowMdnsDiscovery

<!-- AllowMdnsDiscovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowMdnsDiscovery-Applicability-End -->

<!-- AllowMdnsDiscovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowMdnsDiscovery
```
<!-- AllowMdnsDiscovery-OmaUri-End -->

<!-- AllowMdnsDiscovery-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to turn off discovering the display service advertised over multicast DNS by a Wireless Display receiver.
<!-- AllowMdnsDiscovery-Description-End -->

<!-- AllowMdnsDiscovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMdnsDiscovery-Editable-End -->

<!-- AllowMdnsDiscovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMdnsDiscovery-DFProperties-End -->

<!-- AllowMdnsDiscovery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowMdnsDiscovery-AllowedValues-End -->

<!-- AllowMdnsDiscovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMdnsDiscovery-Examples-End -->

<!-- AllowMdnsDiscovery-End -->

<!-- AllowMovementDetectionOnInfrastructure-Begin -->
## AllowMovementDetectionOnInfrastructure

<!-- AllowMovementDetectionOnInfrastructure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowMovementDetectionOnInfrastructure-Applicability-End -->

<!-- AllowMovementDetectionOnInfrastructure-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowMovementDetectionOnInfrastructure
```
<!-- AllowMovementDetectionOnInfrastructure-OmaUri-End -->

<!-- AllowMovementDetectionOnInfrastructure-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to disable the infrastructure movement detection feature.
If you set it to 0, your PC may stay connected and continue to project if you walk away from a Wireless Display receiver to which you are projecting over infrastructure.
If you set it to 1, your PC will detect that you have moved and will automatically disconnect your infrastructure Wireless Display session.
<!-- AllowMovementDetectionOnInfrastructure-Description-End -->

<!-- AllowMovementDetectionOnInfrastructure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMovementDetectionOnInfrastructure-Editable-End -->

<!-- AllowMovementDetectionOnInfrastructure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMovementDetectionOnInfrastructure-DFProperties-End -->

<!-- AllowMovementDetectionOnInfrastructure-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowMovementDetectionOnInfrastructure-AllowedValues-End -->

<!-- AllowMovementDetectionOnInfrastructure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMovementDetectionOnInfrastructure-Examples-End -->

<!-- AllowMovementDetectionOnInfrastructure-End -->

<!-- AllowPCReceiverToBeTCPServer-Begin -->
## AllowPCReceiverToBeTCPServer

<!-- AllowPCReceiverToBeTCPServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowPCReceiverToBeTCPServer-Applicability-End -->

<!-- AllowPCReceiverToBeTCPServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowPCReceiverToBeTCPServer
```
<!-- AllowPCReceiverToBeTCPServer-OmaUri-End -->

<!-- AllowPCReceiverToBeTCPServer-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows a PC acting as a Wireless Display receiver to be a TCP server for the TCP session carrying the projection stream to the receiver.
If you set it to 0, your PC receiver will start the outbound connection as a TCP client.
If you set it to 1, your PC may receive the incoming projection as a TCP server.
<!-- AllowPCReceiverToBeTCPServer-Description-End -->

<!-- AllowPCReceiverToBeTCPServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPCReceiverToBeTCPServer-Editable-End -->

<!-- AllowPCReceiverToBeTCPServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPCReceiverToBeTCPServer-DFProperties-End -->

<!-- AllowPCReceiverToBeTCPServer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowPCReceiverToBeTCPServer-AllowedValues-End -->

<!-- AllowPCReceiverToBeTCPServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPCReceiverToBeTCPServer-Examples-End -->

<!-- AllowPCReceiverToBeTCPServer-End -->

<!-- AllowPCSenderToBeTCPClient-Begin -->
## AllowPCSenderToBeTCPClient

<!-- AllowPCSenderToBeTCPClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowPCSenderToBeTCPClient-Applicability-End -->

<!-- AllowPCSenderToBeTCPClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowPCSenderToBeTCPClient
```
<!-- AllowPCSenderToBeTCPClient-OmaUri-End -->

<!-- AllowPCSenderToBeTCPClient-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows a PC acting as a Wireless Display sender to be a TCP client for the TCP session carrying the projection stream to the receiver.
If you set it to 0, your PC will only participate in an outgoing projection as a TCP server.
If you set it to 1, your PC may start an outgoing projection as a TCP client.
<!-- AllowPCSenderToBeTCPClient-Description-End -->

<!-- AllowPCSenderToBeTCPClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPCSenderToBeTCPClient-Editable-End -->

<!-- AllowPCSenderToBeTCPClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPCSenderToBeTCPClient-DFProperties-End -->

<!-- AllowPCSenderToBeTCPClient-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowPCSenderToBeTCPClient-AllowedValues-End -->

<!-- AllowPCSenderToBeTCPClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPCSenderToBeTCPClient-Examples-End -->

<!-- AllowPCSenderToBeTCPClient-End -->

<!-- AllowProjectionFromPC-Begin -->
## AllowProjectionFromPC

<!-- AllowProjectionFromPC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowProjectionFromPC-Applicability-End -->

<!-- AllowProjectionFromPC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowProjectionFromPC
```
<!-- AllowProjectionFromPC-OmaUri-End -->

<!-- AllowProjectionFromPC-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows you to turn off projection from a PC.
If you set it to 0, your PC can't discover or project to other devices.
If you set it to 1, your PC can discover and project to other devices.
<!-- AllowProjectionFromPC-Description-End -->

<!-- AllowProjectionFromPC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowProjectionFromPC-Editable-End -->

<!-- AllowProjectionFromPC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowProjectionFromPC-DFProperties-End -->

<!-- AllowProjectionFromPC-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Your PC can't discover or project to other devices. |
| 1 (Default) | Your PC can discover and project to other devices. |
<!-- AllowProjectionFromPC-AllowedValues-End -->

<!-- AllowProjectionFromPC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowProjectionFromPC-Examples-End -->

<!-- AllowProjectionFromPC-End -->

<!-- AllowProjectionFromPCOverInfrastructure-Begin -->
## AllowProjectionFromPCOverInfrastructure

<!-- AllowProjectionFromPCOverInfrastructure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowProjectionFromPCOverInfrastructure-Applicability-End -->

<!-- AllowProjectionFromPCOverInfrastructure-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowProjectionFromPCOverInfrastructure
```
<!-- AllowProjectionFromPCOverInfrastructure-OmaUri-End -->

<!-- AllowProjectionFromPCOverInfrastructure-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows you to turn off projection from a PC over infrastructure.
If you set it to 0, your PC can't discover or project to other infrastructure devices, though it may still be possible to discover and project over WiFi Direct.
If you set it to 1, your PC can discover and project to other devices over infrastructure.
<!-- AllowProjectionFromPCOverInfrastructure-Description-End -->

<!-- AllowProjectionFromPCOverInfrastructure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowProjectionFromPCOverInfrastructure-Editable-End -->

<!-- AllowProjectionFromPCOverInfrastructure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowProjectionFromPCOverInfrastructure-DFProperties-End -->

<!-- AllowProjectionFromPCOverInfrastructure-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Your PC can't discover or project to other infrastructure devices, although it's possible to discover and project over WiFi Direct. |
| 1 (Default) | Your PC can discover and project to other devices over infrastructure. |
<!-- AllowProjectionFromPCOverInfrastructure-AllowedValues-End -->

<!-- AllowProjectionFromPCOverInfrastructure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowProjectionFromPCOverInfrastructure-Examples-End -->

<!-- AllowProjectionFromPCOverInfrastructure-End -->

<!-- AllowProjectionToPC-Begin -->
## AllowProjectionToPC

<!-- AllowProjectionToPC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowProjectionToPC-Applicability-End -->

<!-- AllowProjectionToPC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowProjectionToPC
```
<!-- AllowProjectionToPC-OmaUri-End -->

<!-- AllowProjectionToPC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off projection to a PC.

If you turn it on, your PC isn't discoverable and can't be projected to except if the user manually launches the Wireless Display app.

If you turn it off or don't configure it, your PC is discoverable and can be projected to above lock screen only. The user has an option to turn it always on or off except for manual launch, too.
<!-- AllowProjectionToPC-Description-End -->

<!-- AllowProjectionToPC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowProjectionToPC-Editable-End -->

<!-- AllowProjectionToPC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowProjectionToPC-DFProperties-End -->

<!-- AllowProjectionToPC-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Projection to PC isn't allowed. Always off and the user can't enable it. |
| 1 (Default) | Projection to PC is allowed. Enabled only above the lock screen. |
<!-- AllowProjectionToPC-AllowedValues-End -->

<!-- AllowProjectionToPC-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowProjectionToPC |
| Friendly Name | Don't allow this PC to be projected to |
| Location | Computer Configuration |
| Path | Windows Components > Connect |
| Registry Key Name | Software\Policies\Microsoft\Windows\Connect |
| Registry Value Name | AllowProjectionToPC |
| ADMX File Name | WirelessDisplay.admx |
<!-- AllowProjectionToPC-GpMapping-End -->

<!-- AllowProjectionToPC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowProjectionToPC-Examples-End -->

<!-- AllowProjectionToPC-End -->

<!-- AllowProjectionToPCOverInfrastructure-Begin -->
## AllowProjectionToPCOverInfrastructure

<!-- AllowProjectionToPCOverInfrastructure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowProjectionToPCOverInfrastructure-Applicability-End -->

<!-- AllowProjectionToPCOverInfrastructure-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowProjectionToPCOverInfrastructure
```
<!-- AllowProjectionToPCOverInfrastructure-OmaUri-End -->

<!-- AllowProjectionToPCOverInfrastructure-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to turn off projection to a PC over infrastructure.
If you set it to 0, your PC can't be discoverable and can't be projected to over infrastructure, though it may still be possible to project over WiFi Direct.
If you set it to 1, your PC can be discoverable and can be projected to over infrastructure.
<!-- AllowProjectionToPCOverInfrastructure-Description-End -->

<!-- AllowProjectionToPCOverInfrastructure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowProjectionToPCOverInfrastructure-Editable-End -->

<!-- AllowProjectionToPCOverInfrastructure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowProjectionToPCOverInfrastructure-DFProperties-End -->

<!-- AllowProjectionToPCOverInfrastructure-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Your PC isn't discoverable and other devices can't project to it over infrastructure, although it's possible to project to it over WiFi Direct. |
| 1 (Default) | Your PC is discoverable and other devices can project to it over infrastructure. |
<!-- AllowProjectionToPCOverInfrastructure-AllowedValues-End -->

<!-- AllowProjectionToPCOverInfrastructure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowProjectionToPCOverInfrastructure-Examples-End -->

<!-- AllowProjectionToPCOverInfrastructure-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-Begin -->
## AllowUserInputFromWirelessDisplayReceiver

<!-- AllowUserInputFromWirelessDisplayReceiver-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- AllowUserInputFromWirelessDisplayReceiver-Applicability-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver
```
<!-- AllowUserInputFromWirelessDisplayReceiver-OmaUri-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-Description-Begin -->
<!-- Description-Source-DDF -->
Setting this policy controls whether or not the wireless display can send input-keyboard, mouse, pen, and touch input if the display supports it-back to the source device.
<!-- AllowUserInputFromWirelessDisplayReceiver-Description-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowUserInputFromWirelessDisplayReceiver-Editable-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowUserInputFromWirelessDisplayReceiver-DFProperties-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Wireless display input disabled. |
| 1 (Default) | Wireless display input enabled. |
<!-- AllowUserInputFromWirelessDisplayReceiver-AllowedValues-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUserInputFromWirelessDisplayReceiver-Examples-End -->

<!-- AllowUserInputFromWirelessDisplayReceiver-End -->

<!-- RequirePinForPairing-Begin -->
## RequirePinForPairing

<!-- RequirePinForPairing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- RequirePinForPairing-Applicability-End -->

<!-- RequirePinForPairing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WirelessDisplay/RequirePinForPairing
```
<!-- RequirePinForPairing-OmaUri-End -->

<!-- RequirePinForPairing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to require a pin for pairing.

If you set this to 'Never', a pin isn't required for pairing.

If you set this to 'First Time', the pairing ceremony for new devices will always require a PIN.

If you set this to 'Always', all pairings will require PIN.
<!-- RequirePinForPairing-Description-End -->

<!-- RequirePinForPairing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequirePinForPairing-Editable-End -->

<!-- RequirePinForPairing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RequirePinForPairing-DFProperties-End -->

<!-- RequirePinForPairing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | PIN isn't required. |
| 1 | Pairing ceremony for new devices will always require a PIN. |
| 2 | All pairings will require PIN. |
<!-- RequirePinForPairing-AllowedValues-End -->

<!-- RequirePinForPairing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RequirePinForPairing |
| Friendly Name | Require pin for pairing |
| Location | Computer Configuration |
| Path | Windows Components > Connect |
| Registry Key Name | Software\Policies\Microsoft\Windows\Connect |
| Registry Value Name | RequirePinForPairing |
| ADMX File Name | WirelessDisplay.admx |
<!-- RequirePinForPairing-GpMapping-End -->

<!-- RequirePinForPairing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequirePinForPairing-Examples-End -->

<!-- RequirePinForPairing-End -->

<!-- WirelessDisplay-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WirelessDisplay-CspMoreInfo-End -->

<!-- WirelessDisplay-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
