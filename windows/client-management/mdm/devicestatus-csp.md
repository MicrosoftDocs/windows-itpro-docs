---
title: DeviceStatus CSP
description: Learn more about the DeviceStatus CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DeviceStatus-Begin -->
# DeviceStatus CSP

<!-- DeviceStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceStatus-Editable-End -->

<!-- DeviceStatus-Tree-Begin -->
The following list shows the DeviceStatus configuration service provider nodes:

- ./Vendor/MSFT/DeviceStatus
  - [Antispyware](#antispyware)
    - [SignatureStatus](#antispywaresignaturestatus)
    - [Status](#antispywarestatus)
  - [Antivirus](#antivirus)
    - [SignatureStatus](#antivirussignaturestatus)
    - [Status](#antivirusstatus)
  - [Battery](#battery)
    - [EstimatedChargeRemaining](#batteryestimatedchargeremaining)
    - [EstimatedRuntime](#batteryestimatedruntime)
    - [Status](#batterystatus)
  - [CellularIdentities](#cellularidentities)
    - [{IMEI}](#cellularidentitiesimei)
      - [CommercializationOperator](#cellularidentitiesimeicommercializationoperator)
      - [ICCID](#cellularidentitiesimeiiccid)
      - [IMSI](#cellularidentitiesimeiimsi)
      - [PhoneNumber](#cellularidentitiesimeiphonenumber)
      - [RoamingCompliance](#cellularidentitiesimeiroamingcompliance)
      - [RoamingStatus](#cellularidentitiesimeiroamingstatus)
  - [CertAttestation](#certattestation)
    - [MDMClientCertAttestation](#certattestationmdmclientcertattestation)
  - [Compliance](#compliance)
    - [EncryptionCompliance](#complianceencryptioncompliance)
  - [DeviceGuard](#deviceguard)
    - [HypervisorEnforcedCodeIntegrityStatus](#deviceguardhypervisorenforcedcodeintegritystatus)
    - [LsaCfgCredGuardStatus](#deviceguardlsacfgcredguardstatus)
    - [SystemGuardStatus](#deviceguardsystemguardstatus)
    - [VirtualizationBasedSecurityHwReq](#deviceguardvirtualizationbasedsecurityhwreq)
    - [VirtualizationBasedSecurityStatus](#deviceguardvirtualizationbasedsecuritystatus)
  - [DMA](#dma)
    - [BootDMAProtectionStatus](#dmabootdmaprotectionstatus)
  - [DomainName](#domainname)
  - [Firewall](#firewall)
    - [Status](#firewallstatus)
  - [NetworkIdentifiers](#networkidentifiers)
    - [{MacAddress}](#networkidentifiersmacaddress)
      - [IPAddressV4](#networkidentifiersmacaddressipaddressv4)
      - [IPAddressV6](#networkidentifiersmacaddressipaddressv6)
      - [IsConnected](#networkidentifiersmacaddressisconnected)
      - [Type](#networkidentifiersmacaddresstype)
  - [OS](#os)
    - [Edition](#osedition)
    - [Mode](#osmode)
  - [SecureBootState](#securebootstate)
  - [TPM](#tpm)
    - [ManufacturerId](#tpmmanufacturerid)
    - [ManufacturerIdTxt](#tpmmanufactureridtxt)
    - [ManufacturerVersion](#tpmmanufacturerversion)
    - [SpecificationVersion](#tpmspecificationversion)
  - [UAC](#uac)
    - [Status](#uacstatus)
<!-- DeviceStatus-Tree-End -->

<!-- Device-Antispyware-Begin -->
## Antispyware

<!-- Device-Antispyware-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Antispyware-Applicability-End -->

<!-- Device-Antispyware-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Antispyware
```
<!-- Device-Antispyware-OmaUri-End -->

<!-- Device-Antispyware-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the antispyware query.
<!-- Device-Antispyware-Description-End -->

<!-- Device-Antispyware-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Antispyware-Editable-End -->

<!-- Device-Antispyware-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Antispyware-DFProperties-End -->

<!-- Device-Antispyware-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Antispyware-Examples-End -->

<!-- Device-Antispyware-End -->

<!-- Device-Antispyware-SignatureStatus-Begin -->
### Antispyware/SignatureStatus

<!-- Device-Antispyware-SignatureStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Antispyware-SignatureStatus-Applicability-End -->

<!-- Device-Antispyware-SignatureStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Antispyware/SignatureStatus
```
<!-- Device-Antispyware-SignatureStatus-OmaUri-End -->

<!-- Device-Antispyware-SignatureStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the status of the antispyware signature. Valid values: 0 - The security software reports that it isn't the most recent version. 1 - The security software reports that it's the most recent version. 2 - Not applicable. This is returned for devices like the phone that don't have an antivirus (where the API doesn't exist). If more than one antispyware provider is active, this node returns: 1 - If every active antispyware provider has a valid signature status. 0 - If any of the active antispyware providers has an invalid signature status.
<!-- Device-Antispyware-SignatureStatus-Description-End -->

<!-- Device-Antispyware-SignatureStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This node also returns 0 when no anti-spyware provider is active.
<!-- Device-Antispyware-SignatureStatus-Editable-End -->

<!-- Device-Antispyware-SignatureStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 1 |
<!-- Device-Antispyware-SignatureStatus-DFProperties-End -->

<!-- Device-Antispyware-SignatureStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Antispyware-SignatureStatus-Examples-End -->

<!-- Device-Antispyware-SignatureStatus-End -->

<!-- Device-Antispyware-Status-Begin -->
### Antispyware/Status

<!-- Device-Antispyware-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Antispyware-Status-Applicability-End -->

<!-- Device-Antispyware-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Antispyware/Status
```
<!-- Device-Antispyware-Status-OmaUri-End -->

<!-- Device-Antispyware-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the status of the antispyware. Valid values: 0 - The status of the security provider category is good and doesn't need user attention. 1 - The status of the security provider category isn't monitored by Windows Security Center (WSC). 2 - The status of the security provider category is poor and the computer may be at risk. 3 - The security provider category is in snooze state. Snooze indicates that WSC isn't actively protecting the computer.
<!-- Device-Antispyware-Status-Description-End -->

<!-- Device-Antispyware-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Antispyware-Status-Editable-End -->

<!-- Device-Antispyware-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 3 |
<!-- Device-Antispyware-Status-DFProperties-End -->

<!-- Device-Antispyware-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Antispyware-Status-Examples-End -->

<!-- Device-Antispyware-Status-End -->

<!-- Device-Antivirus-Begin -->
## Antivirus

<!-- Device-Antivirus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Antivirus-Applicability-End -->

<!-- Device-Antivirus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Antivirus
```
<!-- Device-Antivirus-OmaUri-End -->

<!-- Device-Antivirus-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the antivirus query.
<!-- Device-Antivirus-Description-End -->

<!-- Device-Antivirus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Antivirus-Editable-End -->

<!-- Device-Antivirus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Antivirus-DFProperties-End -->

<!-- Device-Antivirus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Antivirus-Examples-End -->

<!-- Device-Antivirus-End -->

<!-- Device-Antivirus-SignatureStatus-Begin -->
### Antivirus/SignatureStatus

<!-- Device-Antivirus-SignatureStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Antivirus-SignatureStatus-Applicability-End -->

<!-- Device-Antivirus-SignatureStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Antivirus/SignatureStatus
```
<!-- Device-Antivirus-SignatureStatus-OmaUri-End -->

<!-- Device-Antivirus-SignatureStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the status of the antivirus signature. Valid values: 0 - The security software reports that it isn't the most recent version. 1 (default) - The security software reports that it's the most recent version. 2 - Not applicable. This is returned for devices like the phone that don't have an antivirus (where the API doesn't exist). If more than one antivirus provider is active, this node returns: 1 - If every active antivirus provider has a valid signature status. 0 - If any of the active antivirus providers has an invalid signature status.
<!-- Device-Antivirus-SignatureStatus-Description-End -->

<!-- Device-Antivirus-SignatureStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This node also returns 0 when no antivirus provider is active.
<!-- Device-Antivirus-SignatureStatus-Editable-End -->

<!-- Device-Antivirus-SignatureStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 1 |
<!-- Device-Antivirus-SignatureStatus-DFProperties-End -->

<!-- Device-Antivirus-SignatureStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Antivirus-SignatureStatus-Examples-End -->

<!-- Device-Antivirus-SignatureStatus-End -->

<!-- Device-Antivirus-Status-Begin -->
### Antivirus/Status

<!-- Device-Antivirus-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Antivirus-Status-Applicability-End -->

<!-- Device-Antivirus-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Antivirus/Status
```
<!-- Device-Antivirus-Status-OmaUri-End -->

<!-- Device-Antivirus-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the status of the antivirus. Valid values: 0 - Antivirus is on and monitoring, 1 - Antivirus is disabled, 2 - Antivirus isn't monitoring the device/PC or some options have been turned off, 3 (default) - Antivirus is temporarily not completely monitoring the device/PC, 4 - Antivirus not applicable for this device. This is returned for devices like the phone that don't have an antivirus (where the API doesn't exist).
<!-- Device-Antivirus-Status-Description-End -->

<!-- Device-Antivirus-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Antivirus-Status-Editable-End -->

<!-- Device-Antivirus-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 3 |
<!-- Device-Antivirus-Status-DFProperties-End -->

<!-- Device-Antivirus-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Antivirus-Status-Examples-End -->

<!-- Device-Antivirus-Status-End -->

<!-- Device-Battery-Begin -->
## Battery

<!-- Device-Battery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Battery-Applicability-End -->

<!-- Device-Battery-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Battery
```
<!-- Device-Battery-OmaUri-End -->

<!-- Device-Battery-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the battery query.
<!-- Device-Battery-Description-End -->

<!-- Device-Battery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Battery-Editable-End -->

<!-- Device-Battery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Battery-DFProperties-End -->

<!-- Device-Battery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Battery-Examples-End -->

<!-- Device-Battery-End -->

<!-- Device-Battery-EstimatedChargeRemaining-Begin -->
### Battery/EstimatedChargeRemaining

<!-- Device-Battery-EstimatedChargeRemaining-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Battery-EstimatedChargeRemaining-Applicability-End -->

<!-- Device-Battery-EstimatedChargeRemaining-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Battery/EstimatedChargeRemaining
```
<!-- Device-Battery-EstimatedChargeRemaining-OmaUri-End -->

<!-- Device-Battery-EstimatedChargeRemaining-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the estimated battery charge remaining. This is the value returned in BatteryLifeTime in SYSTEM_POWER_STATUS structure. The value is the number of seconds of battery life remaining when the device isn't connected to an AC power source. When it's connected to a power source, the value is -1. When the estimation is unknown, the value is -1.
<!-- Device-Battery-EstimatedChargeRemaining-Description-End -->

<!-- Device-Battery-EstimatedChargeRemaining-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Battery-EstimatedChargeRemaining-Editable-End -->

<!-- Device-Battery-EstimatedChargeRemaining-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-Battery-EstimatedChargeRemaining-DFProperties-End -->

<!-- Device-Battery-EstimatedChargeRemaining-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Battery-EstimatedChargeRemaining-Examples-End -->

<!-- Device-Battery-EstimatedChargeRemaining-End -->

<!-- Device-Battery-EstimatedRuntime-Begin -->
### Battery/EstimatedRuntime

<!-- Device-Battery-EstimatedRuntime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Battery-EstimatedRuntime-Applicability-End -->

<!-- Device-Battery-EstimatedRuntime-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Battery/EstimatedRuntime
```
<!-- Device-Battery-EstimatedRuntime-OmaUri-End -->

<!-- Device-Battery-EstimatedRuntime-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the estimated runtime of the battery. This is the value returned in BatteryLifeTime in SYSTEM_POWER_STATUS structure. The value is the number of seconds of battery life remaining when the device isn't connected to an AC power source. When it's connected to a power source, the value is -1. When the estimation is unknown, the value is -1.
<!-- Device-Battery-EstimatedRuntime-Description-End -->

<!-- Device-Battery-EstimatedRuntime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Battery-EstimatedRuntime-Editable-End -->

<!-- Device-Battery-EstimatedRuntime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-Battery-EstimatedRuntime-DFProperties-End -->

<!-- Device-Battery-EstimatedRuntime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Battery-EstimatedRuntime-Examples-End -->

<!-- Device-Battery-EstimatedRuntime-End -->

<!-- Device-Battery-Status-Begin -->
### Battery/Status

<!-- Device-Battery-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Battery-Status-Applicability-End -->

<!-- Device-Battery-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Battery/Status
```
<!-- Device-Battery-Status-OmaUri-End -->

<!-- Device-Battery-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the status of the battery.
<!-- Device-Battery-Status-Description-End -->

<!-- Device-Battery-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Battery-Status-Editable-End -->

<!-- Device-Battery-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-Battery-Status-DFProperties-End -->

<!-- Device-Battery-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Battery-Status-Examples-End -->

<!-- Device-Battery-Status-End -->

<!-- Device-CellularIdentities-Begin -->
## CellularIdentities

<!-- Device-CellularIdentities-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-Applicability-End -->

<!-- Device-CellularIdentities-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities
```
<!-- Device-CellularIdentities-OmaUri-End -->

<!-- Device-CellularIdentities-Description-Begin -->
<!-- Description-Source-DDF -->
Node for queries on the SIM cards.
<!-- Device-CellularIdentities-Description-End -->

<!-- Device-CellularIdentities-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Multiple SIMs are supported.
<!-- Device-CellularIdentities-Editable-End -->

<!-- Device-CellularIdentities-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-CellularIdentities-DFProperties-End -->

<!-- Device-CellularIdentities-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-Examples-End -->

<!-- Device-CellularIdentities-End -->

<!-- Device-CellularIdentities-{IMEI}-Begin -->
### CellularIdentities/{IMEI}

<!-- Device-CellularIdentities-{IMEI}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-{IMEI}-Applicability-End -->

<!-- Device-CellularIdentities-{IMEI}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities/{IMEI}
```
<!-- Device-CellularIdentities-{IMEI}-OmaUri-End -->

<!-- Device-CellularIdentities-{IMEI}-Description-Begin -->
<!-- Description-Source-DDF -->
The unique International Mobile Station Equipment Identity (IMEI) number of the mobile device. An IMEI is present for each SIM card on the device.
<!-- Device-CellularIdentities-{IMEI}-Description-End -->

<!-- Device-CellularIdentities-{IMEI}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-Editable-End -->

<!-- Device-CellularIdentities-{IMEI}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-CellularIdentities-{IMEI}-DFProperties-End -->

<!-- Device-CellularIdentities-{IMEI}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-Examples-End -->

<!-- Device-CellularIdentities-{IMEI}-End -->

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Begin -->
#### CellularIdentities/{IMEI}/CommercializationOperator

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Applicability-End -->

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities/{IMEI}/CommercializationOperator
```
<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-OmaUri-End -->

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Description-Begin -->
<!-- Description-Source-DDF -->
The mobile service provider or mobile operator associated with the specific IMEI number.
<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Description-End -->

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Editable-End -->

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-DFProperties-End -->

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-Examples-End -->

<!-- Device-CellularIdentities-{IMEI}-CommercializationOperator-End -->

<!-- Device-CellularIdentities-{IMEI}-ICCID-Begin -->
#### CellularIdentities/{IMEI}/ICCID

<!-- Device-CellularIdentities-{IMEI}-ICCID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-{IMEI}-ICCID-Applicability-End -->

<!-- Device-CellularIdentities-{IMEI}-ICCID-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities/{IMEI}/ICCID
```
<!-- Device-CellularIdentities-{IMEI}-ICCID-OmaUri-End -->

<!-- Device-CellularIdentities-{IMEI}-ICCID-Description-Begin -->
<!-- Description-Source-DDF -->
The Integrated Circuit Card ID (ICCID) of the SIM card associated with the specific IMEI number.
<!-- Device-CellularIdentities-{IMEI}-ICCID-Description-End -->

<!-- Device-CellularIdentities-{IMEI}-ICCID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-ICCID-Editable-End -->

<!-- Device-CellularIdentities-{IMEI}-ICCID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CellularIdentities-{IMEI}-ICCID-DFProperties-End -->

<!-- Device-CellularIdentities-{IMEI}-ICCID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-ICCID-Examples-End -->

<!-- Device-CellularIdentities-{IMEI}-ICCID-End -->

<!-- Device-CellularIdentities-{IMEI}-IMSI-Begin -->
#### CellularIdentities/{IMEI}/IMSI

<!-- Device-CellularIdentities-{IMEI}-IMSI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-{IMEI}-IMSI-Applicability-End -->

<!-- Device-CellularIdentities-{IMEI}-IMSI-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities/{IMEI}/IMSI
```
<!-- Device-CellularIdentities-{IMEI}-IMSI-OmaUri-End -->

<!-- Device-CellularIdentities-{IMEI}-IMSI-Description-Begin -->
<!-- Description-Source-DDF -->
The International Mobile Subscriber Identity (IMSI) associated with the IMEI number.
<!-- Device-CellularIdentities-{IMEI}-IMSI-Description-End -->

<!-- Device-CellularIdentities-{IMEI}-IMSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-IMSI-Editable-End -->

<!-- Device-CellularIdentities-{IMEI}-IMSI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CellularIdentities-{IMEI}-IMSI-DFProperties-End -->

<!-- Device-CellularIdentities-{IMEI}-IMSI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-IMSI-Examples-End -->

<!-- Device-CellularIdentities-{IMEI}-IMSI-End -->

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Begin -->
#### CellularIdentities/{IMEI}/PhoneNumber

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Applicability-End -->

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities/{IMEI}/PhoneNumber
```
<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-OmaUri-End -->

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Description-Begin -->
<!-- Description-Source-DDF -->
Phone number associated with the specific IMEI number.
<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Description-End -->

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Editable-End -->

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-DFProperties-End -->

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-Examples-End -->

<!-- Device-CellularIdentities-{IMEI}-PhoneNumber-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Begin -->
#### CellularIdentities/{IMEI}/RoamingCompliance

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Applicability-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities/{IMEI}/RoamingCompliance
```
<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-OmaUri-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value that indicates compliance with the enforced enterprise roaming policy.
<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Description-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Editable-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-DFProperties-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-Examples-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingCompliance-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Begin -->
#### CellularIdentities/{IMEI}/RoamingStatus

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Applicability-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CellularIdentities/{IMEI}/RoamingStatus
```
<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-OmaUri-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the SIM card associated with the specific IMEI number is roaming.
<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Description-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Editable-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-DFProperties-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-Examples-End -->

<!-- Device-CellularIdentities-{IMEI}-RoamingStatus-End -->

<!-- Device-CertAttestation-Begin -->
## CertAttestation

<!-- Device-CertAttestation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 with [KB5018483](https://support.microsoft.com/help/5018483) [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-CertAttestation-Applicability-End -->

<!-- Device-CertAttestation-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CertAttestation
```
<!-- Device-CertAttestation-OmaUri-End -->

<!-- Device-CertAttestation-Description-Begin -->
<!-- Description-Source-DDF -->
Node for Certificate Attestation.
<!-- Device-CertAttestation-Description-End -->

<!-- Device-CertAttestation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CertAttestation-Editable-End -->

<!-- Device-CertAttestation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-CertAttestation-DFProperties-End -->

<!-- Device-CertAttestation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CertAttestation-Examples-End -->

<!-- Device-CertAttestation-End -->

<!-- Device-CertAttestation-MDMClientCertAttestation-Begin -->
### CertAttestation/MDMClientCertAttestation

<!-- Device-CertAttestation-MDMClientCertAttestation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 with [KB5018483](https://support.microsoft.com/help/5018483) [10.0.22000.1165] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-CertAttestation-MDMClientCertAttestation-Applicability-End -->

<!-- Device-CertAttestation-MDMClientCertAttestation-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/CertAttestation/MDMClientCertAttestation
```
<!-- Device-CertAttestation-MDMClientCertAttestation-OmaUri-End -->

<!-- Device-CertAttestation-MDMClientCertAttestation-Description-Begin -->
<!-- Description-Source-DDF -->
MDM Certificate attestation information. This will return an XML blob containing the relevant attestation fields.
<!-- Device-CertAttestation-MDMClientCertAttestation-Description-End -->

<!-- Device-CertAttestation-MDMClientCertAttestation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-CertAttestation-MDMClientCertAttestation-Editable-End -->

<!-- Device-CertAttestation-MDMClientCertAttestation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-CertAttestation-MDMClientCertAttestation-DFProperties-End -->

<!-- Device-CertAttestation-MDMClientCertAttestation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-CertAttestation-MDMClientCertAttestation-Examples-End -->

<!-- Device-CertAttestation-MDMClientCertAttestation-End -->

<!-- Device-Compliance-Begin -->
## Compliance

<!-- Device-Compliance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Compliance-Applicability-End -->

<!-- Device-Compliance-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Compliance
```
<!-- Device-Compliance-OmaUri-End -->

<!-- Device-Compliance-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the compliance query.
<!-- Device-Compliance-Description-End -->

<!-- Device-Compliance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Compliance-Editable-End -->

<!-- Device-Compliance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Compliance-DFProperties-End -->

<!-- Device-Compliance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Compliance-Examples-End -->

<!-- Device-Compliance-End -->

<!-- Device-Compliance-EncryptionCompliance-Begin -->
### Compliance/EncryptionCompliance

<!-- Device-Compliance-EncryptionCompliance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Compliance-EncryptionCompliance-Applicability-End -->

<!-- Device-Compliance-EncryptionCompliance-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Compliance/EncryptionCompliance
```
<!-- Device-Compliance-EncryptionCompliance-OmaUri-End -->

<!-- Device-Compliance-EncryptionCompliance-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value that indicates compliance with the enterprise encryption policy for OS (system) drives. The value is one of the following: 0 - not encrypted, 1 - encrypted.
<!-- Device-Compliance-EncryptionCompliance-Description-End -->

<!-- Device-Compliance-EncryptionCompliance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Compliance-EncryptionCompliance-Editable-End -->

<!-- Device-Compliance-EncryptionCompliance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Compliance-EncryptionCompliance-DFProperties-End -->

<!-- Device-Compliance-EncryptionCompliance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Compliance-EncryptionCompliance-Examples-End -->

<!-- Device-Compliance-EncryptionCompliance-End -->

<!-- Device-DeviceGuard-Begin -->
## DeviceGuard

<!-- Device-DeviceGuard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceGuard-Applicability-End -->

<!-- Device-DeviceGuard-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DeviceGuard
```
<!-- Device-DeviceGuard-OmaUri-End -->

<!-- Device-DeviceGuard-Description-Begin -->
<!-- Description-Source-DDF -->
Node for Device Guard query.
<!-- Device-DeviceGuard-Description-End -->

<!-- Device-DeviceGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceGuard-Editable-End -->

<!-- Device-DeviceGuard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-DeviceGuard-DFProperties-End -->

<!-- Device-DeviceGuard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceGuard-Examples-End -->

<!-- Device-DeviceGuard-End -->

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Begin -->
### DeviceGuard/HypervisorEnforcedCodeIntegrityStatus

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Applicability-End -->

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DeviceGuard/HypervisorEnforcedCodeIntegrityStatus
```
<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-OmaUri-End -->

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Hypervisor Enforced Code Integrity (HVCI) status. 0 - Running, 1 - Reboot required, 2 - Not configured, 3 - VBS not running.
<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Description-End -->

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Editable-End -->

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-DFProperties-End -->

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-Examples-End -->

<!-- Device-DeviceGuard-HypervisorEnforcedCodeIntegrityStatus-End -->

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Begin -->
### DeviceGuard/LsaCfgCredGuardStatus

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Applicability-End -->

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DeviceGuard/LsaCfgCredGuardStatus
```
<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-OmaUri-End -->

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Local System Authority (LSA) credential guard status. 0 - Running, 1 - Reboot required, 2 - Not licensed for Credential Guard, 3 - Not configured, 4 - VBS not running.
<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Description-End -->

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Editable-End -->

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-DFProperties-End -->

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-Examples-End -->

<!-- Device-DeviceGuard-LsaCfgCredGuardStatus-End -->

<!-- Device-DeviceGuard-SystemGuardStatus-Begin -->
### DeviceGuard/SystemGuardStatus

<!-- Device-DeviceGuard-SystemGuardStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-DeviceGuard-SystemGuardStatus-Applicability-End -->

<!-- Device-DeviceGuard-SystemGuardStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DeviceGuard/SystemGuardStatus
```
<!-- Device-DeviceGuard-SystemGuardStatus-OmaUri-End -->

<!-- Device-DeviceGuard-SystemGuardStatus-Description-Begin -->
<!-- Description-Source-DDF -->
System Guard status. 0 - Running, 1 - Reboot required, 2 - Not configured, 3 - System doesn't meet hardware requirements.
<!-- Device-DeviceGuard-SystemGuardStatus-Description-End -->

<!-- Device-DeviceGuard-SystemGuardStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceGuard-SystemGuardStatus-Editable-End -->

<!-- Device-DeviceGuard-SystemGuardStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceGuard-SystemGuardStatus-DFProperties-End -->

<!-- Device-DeviceGuard-SystemGuardStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceGuard-SystemGuardStatus-Examples-End -->

<!-- Device-DeviceGuard-SystemGuardStatus-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Begin -->
### DeviceGuard/VirtualizationBasedSecurityHwReq

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Applicability-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DeviceGuard/VirtualizationBasedSecurityHwReq
```
<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-OmaUri-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Description-Begin -->
<!-- Description-Source-DDF -->
Virtualization-based security hardware requirement status. The value is a 256 value bitmask. 0x0: System meets hardware configuration requirements, 0x1: SecureBoot required, 0x2: DMA Protection required, 0x4: HyperV not supported for Guest VM, 0x8: HyperV feature isn't available.
<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Description-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Editable-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-DFProperties-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-Examples-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityHwReq-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Begin -->
### DeviceGuard/VirtualizationBasedSecurityStatus

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Applicability-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DeviceGuard/VirtualizationBasedSecurityStatus
```
<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-OmaUri-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Virtualization-based security status. Value is one of the following: 0 - Running, 1 - Reboot required, 2 - 64 bit architecture required, 3 - not licensed, 4 - not configured, 5 - System doesn't meet hardware requirements, 42 - Other. Event logs in Microsoft-Windows-DeviceGuard have more details.
<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Description-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Editable-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-DFProperties-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-Examples-End -->

<!-- Device-DeviceGuard-VirtualizationBasedSecurityStatus-End -->

<!-- Device-DMA-Begin -->
## DMA

<!-- Device-DMA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-DMA-Applicability-End -->

<!-- Device-DMA-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DMA
```
<!-- Device-DMA-OmaUri-End -->

<!-- Device-DMA-Description-Begin -->
<!-- Description-Source-DDF -->
Node for DMA query.
<!-- Device-DMA-Description-End -->

<!-- Device-DMA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DMA-Editable-End -->

<!-- Device-DMA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-DMA-DFProperties-End -->

<!-- Device-DMA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DMA-Examples-End -->

<!-- Device-DMA-End -->

<!-- Device-DMA-BootDMAProtectionStatus-Begin -->
### DMA/BootDMAProtectionStatus

<!-- Device-DMA-BootDMAProtectionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-DMA-BootDMAProtectionStatus-Applicability-End -->

<!-- Device-DMA-BootDMAProtectionStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DMA/BootDMAProtectionStatus
```
<!-- Device-DMA-BootDMAProtectionStatus-OmaUri-End -->

<!-- Device-DMA-BootDMAProtectionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Boot DMA Protection status. 1 - Enabled, 2 - Disabled.
<!-- Device-DMA-BootDMAProtectionStatus-Description-End -->

<!-- Device-DMA-BootDMAProtectionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DMA-BootDMAProtectionStatus-Editable-End -->

<!-- Device-DMA-BootDMAProtectionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DMA-BootDMAProtectionStatus-DFProperties-End -->

<!-- Device-DMA-BootDMAProtectionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DMA-BootDMAProtectionStatus-Examples-End -->

<!-- Device-DMA-BootDMAProtectionStatus-End -->

<!-- Device-DomainName-Begin -->
## DomainName

<!-- Device-DomainName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DomainName-Applicability-End -->

<!-- Device-DomainName-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/DomainName
```
<!-- Device-DomainName-OmaUri-End -->

<!-- Device-DomainName-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the fully qualified domain name of the device(if any).
<!-- Device-DomainName-Description-End -->

<!-- Device-DomainName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DomainName-Editable-End -->

<!-- Device-DomainName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-DomainName-DFProperties-End -->

<!-- Device-DomainName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DomainName-Examples-End -->

<!-- Device-DomainName-End -->

<!-- Device-Firewall-Begin -->
## Firewall

<!-- Device-Firewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Firewall-Applicability-End -->

<!-- Device-Firewall-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Firewall
```
<!-- Device-Firewall-OmaUri-End -->

<!-- Device-Firewall-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the firewall query.
<!-- Device-Firewall-Description-End -->

<!-- Device-Firewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Firewall-Editable-End -->

<!-- Device-Firewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Firewall-DFProperties-End -->

<!-- Device-Firewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Firewall-Examples-End -->

<!-- Device-Firewall-End -->

<!-- Device-Firewall-Status-Begin -->
### Firewall/Status

<!-- Device-Firewall-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Firewall-Status-Applicability-End -->

<!-- Device-Firewall-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/Firewall/Status
```
<!-- Device-Firewall-Status-OmaUri-End -->

<!-- Device-Firewall-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the status of the firewall. Valid values: 0 - Firewall is on and monitoring, 1 - Firewall has been disabled, 2 - Firewall isn't monitoring all networks or some rules have been turned off, 3 (default) - Firewall is temporarily not monitoring all networks, 4 - Not applicable. This is returned for devices like the phone that don't have an antivirus (where the API doesn't exist).
<!-- Device-Firewall-Status-Description-End -->

<!-- Device-Firewall-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Firewall-Status-Editable-End -->

<!-- Device-Firewall-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 3 |
<!-- Device-Firewall-Status-DFProperties-End -->

<!-- Device-Firewall-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Firewall-Status-Examples-End -->

<!-- Device-Firewall-Status-End -->

<!-- Device-NetworkIdentifiers-Begin -->
## NetworkIdentifiers

<!-- Device-NetworkIdentifiers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-NetworkIdentifiers-Applicability-End -->

<!-- Device-NetworkIdentifiers-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/NetworkIdentifiers
```
<!-- Device-NetworkIdentifiers-OmaUri-End -->

<!-- Device-NetworkIdentifiers-Description-Begin -->
<!-- Description-Source-DDF -->
Node for queries on network and device properties.
<!-- Device-NetworkIdentifiers-Description-End -->

<!-- Device-NetworkIdentifiers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-Editable-End -->

<!-- Device-NetworkIdentifiers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-NetworkIdentifiers-DFProperties-End -->

<!-- Device-NetworkIdentifiers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-Examples-End -->

<!-- Device-NetworkIdentifiers-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Begin -->
### NetworkIdentifiers/{MacAddress}

<!-- Device-NetworkIdentifiers-{MacAddress}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-NetworkIdentifiers-{MacAddress}-Applicability-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/NetworkIdentifiers/{MacAddress}
```
<!-- Device-NetworkIdentifiers-{MacAddress}-OmaUri-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Description-Begin -->
<!-- Description-Source-DDF -->
MAC address of the wireless network card. A MAC address is present for each network card on the device.
<!-- Device-NetworkIdentifiers-{MacAddress}-Description-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-Editable-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-NetworkIdentifiers-{MacAddress}-DFProperties-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-Examples-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Begin -->
#### NetworkIdentifiers/{MacAddress}/IPAddressV4

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Applicability-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/NetworkIdentifiers/{MacAddress}/IPAddressV4
```
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-OmaUri-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Description-Begin -->
<!-- Description-Source-DDF -->
IPv4 address of the network card associated with the MAC address.
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Description-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Editable-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-DFProperties-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-Examples-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV4-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Begin -->
#### NetworkIdentifiers/{MacAddress}/IPAddressV6

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Applicability-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/NetworkIdentifiers/{MacAddress}/IPAddressV6
```
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-OmaUri-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Description-Begin -->
<!-- Description-Source-DDF -->
IPv6 address of the network card associated with the MAC address.
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Description-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Editable-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-DFProperties-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-Examples-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IPAddressV6-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Begin -->
#### NetworkIdentifiers/{MacAddress}/IsConnected

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Applicability-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/NetworkIdentifiers/{MacAddress}/IsConnected
```
<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-OmaUri-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value that indicates whether the network card associated with the MAC address has an active network connection.
<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Description-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Editable-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-DFProperties-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-Examples-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-IsConnected-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Begin -->
#### NetworkIdentifiers/{MacAddress}/Type

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Applicability-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/NetworkIdentifiers/{MacAddress}/Type
```
<!-- Device-NetworkIdentifiers-{MacAddress}-Type-OmaUri-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Description-Begin -->
<!-- Description-Source-DDF -->
Type of network connection. The value is one of the following: 2 - WLAN (or other Wireless interface), 1 - LAN (or other Wired interface), 0 - Unknown.
<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Description-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Editable-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-NetworkIdentifiers-{MacAddress}-Type-DFProperties-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-NetworkIdentifiers-{MacAddress}-Type-Examples-End -->

<!-- Device-NetworkIdentifiers-{MacAddress}-Type-End -->

<!-- Device-OS-Begin -->
## OS

<!-- Device-OS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-OS-Applicability-End -->

<!-- Device-OS-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/OS
```
<!-- Device-OS-OmaUri-End -->

<!-- Device-OS-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the OS query.
<!-- Device-OS-Description-End -->

<!-- Device-OS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OS-Editable-End -->

<!-- Device-OS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-OS-DFProperties-End -->

<!-- Device-OS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OS-Examples-End -->

<!-- Device-OS-End -->

<!-- Device-OS-Edition-Begin -->
### OS/Edition

<!-- Device-OS-Edition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-OS-Edition-Applicability-End -->

<!-- Device-OS-Edition-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/OS/Edition
```
<!-- Device-OS-Edition-OmaUri-End -->

<!-- Device-OS-Edition-Description-Begin -->
<!-- Description-Source-DDF -->
String that specifies the OS edition.
<!-- Device-OS-Edition-Description-End -->

<!-- Device-OS-Edition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OS-Edition-Editable-End -->

<!-- Device-OS-Edition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
| Default Value  | Not available |
<!-- Device-OS-Edition-DFProperties-End -->

<!-- Device-OS-Edition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OS-Edition-Examples-End -->

<!-- Device-OS-Edition-End -->

<!-- Device-OS-Mode-Begin -->
### OS/Mode

<!-- Device-OS-Mode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-OS-Mode-Applicability-End -->

<!-- Device-OS-Mode-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/OS/Mode
```
<!-- Device-OS-Mode-OmaUri-End -->

<!-- Device-OS-Mode-Description-Begin -->
<!-- Description-Source-DDF -->
Read only node that specifies the device mode. Valid values: 0 - the device is in standard configuration, 1 - the device is in S mode configuration.
<!-- Device-OS-Mode-Description-End -->

<!-- Device-OS-Mode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OS-Mode-Editable-End -->

<!-- Device-OS-Mode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | Not available |
<!-- Device-OS-Mode-DFProperties-End -->

<!-- Device-OS-Mode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OS-Mode-Examples-End -->

<!-- Device-OS-Mode-End -->

<!-- Device-SecureBootState-Begin -->
## SecureBootState

<!-- Device-SecureBootState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SecureBootState-Applicability-End -->

<!-- Device-SecureBootState-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/SecureBootState
```
<!-- Device-SecureBootState-OmaUri-End -->

<!-- Device-SecureBootState-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether secure boot is enabled. The value is one of the following: 0 - Not supported, 1 - Enabled, 2 - Disabled.
<!-- Device-SecureBootState-Description-End -->

<!-- Device-SecureBootState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SecureBootState-Editable-End -->

<!-- Device-SecureBootState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-SecureBootState-DFProperties-End -->

<!-- Device-SecureBootState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SecureBootState-Examples-End -->

<!-- Device-SecureBootState-End -->

<!-- Device-TPM-Begin -->
## TPM

<!-- Device-TPM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-TPM-Applicability-End -->

<!-- Device-TPM-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/TPM
```
<!-- Device-TPM-OmaUri-End -->

<!-- Device-TPM-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the TPM query.
<!-- Device-TPM-Description-End -->

<!-- Device-TPM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TPM-Editable-End -->

<!-- Device-TPM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-TPM-DFProperties-End -->

<!-- Device-TPM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TPM-Examples-End -->

<!-- Device-TPM-End -->

<!-- Device-TPM-ManufacturerId-Begin -->
### TPM/ManufacturerId

<!-- Device-TPM-ManufacturerId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19041.1387] and later <br> ✅ Windows 10, version 20H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19042.1387] and later <br> ✅ Windows 10, version 21H1 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19043.1387] and later <br> ✅ Windows 10, version 21H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19044.1387] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-TPM-ManufacturerId-Applicability-End -->

<!-- Device-TPM-ManufacturerId-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/TPM/ManufacturerId
```
<!-- Device-TPM-ManufacturerId-OmaUri-End -->

<!-- Device-TPM-ManufacturerId-Description-Begin -->
<!-- Description-Source-DDF -->
String that specifies the TPM manufacturer ID as a number.
<!-- Device-TPM-ManufacturerId-Description-End -->

<!-- Device-TPM-ManufacturerId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TPM-ManufacturerId-Editable-End -->

<!-- Device-TPM-ManufacturerId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
| Default Value  | Not available |
<!-- Device-TPM-ManufacturerId-DFProperties-End -->

<!-- Device-TPM-ManufacturerId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TPM-ManufacturerId-Examples-End -->

<!-- Device-TPM-ManufacturerId-End -->

<!-- Device-TPM-ManufacturerIdTxt-Begin -->
### TPM/ManufacturerIdTxt

<!-- Device-TPM-ManufacturerIdTxt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19041.1387] and later <br> ✅ Windows 10, version 20H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19042.1387] and later <br> ✅ Windows 10, version 21H1 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19043.1387] and later <br> ✅ Windows 10, version 21H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19044.1387] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-TPM-ManufacturerIdTxt-Applicability-End -->

<!-- Device-TPM-ManufacturerIdTxt-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/TPM/ManufacturerIdTxt
```
<!-- Device-TPM-ManufacturerIdTxt-OmaUri-End -->

<!-- Device-TPM-ManufacturerIdTxt-Description-Begin -->
<!-- Description-Source-DDF -->
String that specifies the TPM manufacturer ID as text.
<!-- Device-TPM-ManufacturerIdTxt-Description-End -->

<!-- Device-TPM-ManufacturerIdTxt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TPM-ManufacturerIdTxt-Editable-End -->

<!-- Device-TPM-ManufacturerIdTxt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
| Default Value  | Not available |
<!-- Device-TPM-ManufacturerIdTxt-DFProperties-End -->

<!-- Device-TPM-ManufacturerIdTxt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TPM-ManufacturerIdTxt-Examples-End -->

<!-- Device-TPM-ManufacturerIdTxt-End -->

<!-- Device-TPM-ManufacturerVersion-Begin -->
### TPM/ManufacturerVersion

<!-- Device-TPM-ManufacturerVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19041.1387] and later <br> ✅ Windows 10, version 20H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19042.1387] and later <br> ✅ Windows 10, version 21H1 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19043.1387] and later <br> ✅ Windows 10, version 21H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19044.1387] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-TPM-ManufacturerVersion-Applicability-End -->

<!-- Device-TPM-ManufacturerVersion-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/TPM/ManufacturerVersion
```
<!-- Device-TPM-ManufacturerVersion-OmaUri-End -->

<!-- Device-TPM-ManufacturerVersion-Description-Begin -->
<!-- Description-Source-DDF -->
String that specifies the manufacturer version.
<!-- Device-TPM-ManufacturerVersion-Description-End -->

<!-- Device-TPM-ManufacturerVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TPM-ManufacturerVersion-Editable-End -->

<!-- Device-TPM-ManufacturerVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
| Default Value  | Not available |
<!-- Device-TPM-ManufacturerVersion-DFProperties-End -->

<!-- Device-TPM-ManufacturerVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TPM-ManufacturerVersion-Examples-End -->

<!-- Device-TPM-ManufacturerVersion-End -->

<!-- Device-TPM-SpecificationVersion-Begin -->
### TPM/SpecificationVersion

<!-- Device-TPM-SpecificationVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-TPM-SpecificationVersion-Applicability-End -->

<!-- Device-TPM-SpecificationVersion-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/TPM/SpecificationVersion
```
<!-- Device-TPM-SpecificationVersion-OmaUri-End -->

<!-- Device-TPM-SpecificationVersion-Description-Begin -->
<!-- Description-Source-DDF -->
String that specifies the specification version.
<!-- Device-TPM-SpecificationVersion-Description-End -->

<!-- Device-TPM-SpecificationVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-TPM-SpecificationVersion-Editable-End -->

<!-- Device-TPM-SpecificationVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
| Default Value  | Not available |
<!-- Device-TPM-SpecificationVersion-DFProperties-End -->

<!-- Device-TPM-SpecificationVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-TPM-SpecificationVersion-Examples-End -->

<!-- Device-TPM-SpecificationVersion-End -->

<!-- Device-UAC-Begin -->
## UAC

<!-- Device-UAC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-UAC-Applicability-End -->

<!-- Device-UAC-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/UAC
```
<!-- Device-UAC-OmaUri-End -->

<!-- Device-UAC-Description-Begin -->
<!-- Description-Source-DDF -->
Node for the UAC query.
<!-- Device-UAC-Description-End -->

<!-- Device-UAC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UAC-Editable-End -->

<!-- Device-UAC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-UAC-DFProperties-End -->

<!-- Device-UAC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UAC-Examples-End -->

<!-- Device-UAC-End -->

<!-- Device-UAC-Status-Begin -->
### UAC/Status

<!-- Device-UAC-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-UAC-Status-Applicability-End -->

<!-- Device-UAC-Status-OmaUri-Begin -->
```Device
./Vendor/MSFT/DeviceStatus/UAC/Status
```
<!-- Device-UAC-Status-OmaUri-End -->

<!-- Device-UAC-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Integer that specifies the status of the UAC.
<!-- Device-UAC-Status-Description-End -->

<!-- Device-UAC-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UAC-Status-Editable-End -->

<!-- Device-UAC-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-UAC-Status-DFProperties-End -->

<!-- Device-UAC-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UAC-Status-Examples-End -->

<!-- Device-UAC-Status-End -->

<!-- DeviceStatus-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DeviceStatus-CspMoreInfo-End -->

<!-- DeviceStatus-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
