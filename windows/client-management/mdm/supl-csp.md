---
title: SUPL CSP
description: Learn more about the SUPL CSP.
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

<!-- SUPL-Begin -->
# SUPL CSP

<!-- SUPL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The SUPL configuration service provider is used to configure the location client, as shown in the following table:

- **Location Service**: Connection type
  - **SUPL**: All connections other than CDMA
  - **V2 UPL**: CDMA

- **Location Service**: Configuration
  - **SUPL**:
    - Settings that need to get pushed to the GNSS driver to configure the SUPL behavior:
      - Address of the Home SUPL (H-SLP) server.
      - H-SLP server certificate.
      - Positioning method.
      - Version of the protocol to use by default.
    - MCC/MNC value pairs that are used to specify which networks' UUIC the SUPL account matches.
  - **V2 UPL**:
    - Address of the server—a mobile positioning center for non-trusted mode.
    - The positioning method used by the MPC for non-trusted mode.

The SUPL or V2 UPL connection will be reconfigured every time the device is rebooted. A new UICC is inserted, or new settings are provisioned by using OMA Client Provisioning, OMA DM, or test tools. When the device is in roaming mode, it reverts to Mobile Station Standalone mode, in which only the built–in Microsoft location components are used.
<!-- SUPL-Editable-End -->

<!-- SUPL-Tree-Begin -->
The following list shows the SUPL configuration service provider nodes:

- ./Vendor/MSFT//SUPL
  - [SUPL1](#supl1)
    - [Addr](#supl1addr)
    - [AppID](#supl1appid)
    - [Ext](#supl1ext)
      - [Microsoft](#supl1extmicrosoft)
        - [FullVersion](#supl1extmicrosoftfullversion)
        - [HighAccPositioningMethod](#supl1extmicrosofthighaccpositioningmethod)
        - [LocMasterSwitchDependencyNII](#supl1extmicrosoftlocmasterswitchdependencynii)
        - [MCCMNCPairs](#supl1extmicrosoftmccmncpairs)
        - [NIDefaultTimeout](#supl1extmicrosoftnidefaulttimeout)
        - [RootCertificate](#supl1extmicrosoftrootcertificate)
          - [Data](#supl1extmicrosoftrootcertificatedata)
          - [Name](#supl1extmicrosoftrootcertificatename)
        - [RootCertificate2](#supl1extmicrosoftrootcertificate2)
          - [Data](#supl1extmicrosoftrootcertificate2data)
          - [Name](#supl1extmicrosoftrootcertificate2name)
        - [RootCertificate3](#supl1extmicrosoftrootcertificate3)
          - [Data](#supl1extmicrosoftrootcertificate3data)
          - [Name](#supl1extmicrosoftrootcertificate3name)
        - [RootCertificate4](#supl1extmicrosoftrootcertificate4)
          - [Data](#supl1extmicrosoftrootcertificate4data)
          - [Name](#supl1extmicrosoftrootcertificate4name)
        - [RootCertificate5](#supl1extmicrosoftrootcertificate5)
          - [Data](#supl1extmicrosoftrootcertificate5data)
          - [Name](#supl1extmicrosoftrootcertificate5name)
        - [RootCertificate6](#supl1extmicrosoftrootcertificate6)
          - [Data](#supl1extmicrosoftrootcertificate6data)
          - [Name](#supl1extmicrosoftrootcertificate6name)
        - [ServerAccessInterval](#supl1extmicrosoftserveraccessinterval)
        - [Version](#supl1extmicrosoftversion)
  - [V2UPL1](#v2upl1)
    - [ApplicationTypeIndicator_MR](#v2upl1applicationtypeindicator_mr)
    - [LocMasterSwitchDependencyNII](#v2upl1locmasterswitchdependencynii)
    - [MPC](#v2upl1mpc)
    - [NIDefaultTimeout](#v2upl1nidefaulttimeout)
    - [PDE](#v2upl1pde)
    - [PositioningMethod_MR](#v2upl1positioningmethod_mr)
    - [ServerAccessInterval](#v2upl1serveraccessinterval)
<!-- SUPL-Tree-End -->

<!-- Device-SUPL1-Begin -->
## SUPL1

<!-- Device-SUPL1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Applicability-End -->

<!-- Device-SUPL1-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1
```
<!-- Device-SUPL1-OmaUri-End -->

<!-- Device-SUPL1-Description-Begin -->
<!-- Description-Source-DDF -->
Required for SUPL. Defines the account for the SUPL Enabled Terminal (SET) node. Only one SUPL account is supported at a given time.
<!-- Device-SUPL1-Description-End -->

<!-- Device-SUPL1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Editable-End -->

<!-- Device-SUPL1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-DFProperties-End -->

<!-- Device-SUPL1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Examples-End -->

<!-- Device-SUPL1-End -->

<!-- Device-SUPL1-Addr-Begin -->
### SUPL1/Addr

<!-- Device-SUPL1-Addr-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Addr-Applicability-End -->

<!-- Device-SUPL1-Addr-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Addr
```
<!-- Device-SUPL1-Addr-OmaUri-End -->

<!-- Device-SUPL1-Addr-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specifies the address of the Home SUPL Location Platform (H-SLP) server for non-proxy mode. The value is a server address specified as a fully qualified domain name, and the port specified as an integer, with the format server: port.
<!-- Device-SUPL1-Addr-Description-End -->

<!-- Device-SUPL1-Addr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If this value isn't specified, the device infers the H-SLP address from the IMSI as defined in the SUPL standard. To use automatic generation of the H-SLP address based on the IMSI, the MNC length must be set correctly on the UICC. Generally, this value is 2 or 3.

For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned. But the configuration service provider will continue processing the rest of the parameters.
<!-- Device-SUPL1-Addr-Editable-End -->

<!-- Device-SUPL1-Addr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Addr-DFProperties-End -->

<!-- Device-SUPL1-Addr-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Addr-Examples-End -->

<!-- Device-SUPL1-Addr-End -->

<!-- Device-SUPL1-AppID-Begin -->
### SUPL1/AppID

<!-- Device-SUPL1-AppID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-AppID-Applicability-End -->

<!-- Device-SUPL1-AppID-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/AppID
```
<!-- Device-SUPL1-AppID-OmaUri-End -->

<!-- Device-SUPL1-AppID-Description-Begin -->
<!-- Description-Source-DDF -->
Required. The AppID for SUPL is automatically set to "ap0004". This is a read-only value.
<!-- Device-SUPL1-AppID-Description-End -->

<!-- Device-SUPL1-AppID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-AppID-Editable-End -->

<!-- Device-SUPL1-AppID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-SUPL1-AppID-DFProperties-End -->

<!-- Device-SUPL1-AppID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-AppID-Examples-End -->

<!-- Device-SUPL1-AppID-End -->

<!-- Device-SUPL1-Ext-Begin -->
### SUPL1/Ext

<!-- Device-SUPL1-Ext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Applicability-End -->

<!-- Device-SUPL1-Ext-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext
```
<!-- Device-SUPL1-Ext-OmaUri-End -->

<!-- Device-SUPL1-Ext-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-SUPL1-Ext-Description-End -->

<!-- Device-SUPL1-Ext-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Editable-End -->

<!-- Device-SUPL1-Ext-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-DFProperties-End -->

<!-- Device-SUPL1-Ext-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Examples-End -->

<!-- Device-SUPL1-Ext-End -->

<!-- Device-SUPL1-Ext-Microsoft-Begin -->
#### SUPL1/Ext/Microsoft

<!-- Device-SUPL1-Ext-Microsoft-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft
```
<!-- Device-SUPL1-Ext-Microsoft-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-SUPL1-Ext-Microsoft-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-Microsoft-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-End -->

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Begin -->
##### SUPL1/Ext/Microsoft/FullVersion

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/FullVersion
```
<!-- Device-SUPL1-Ext-Microsoft-FullVersion-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Determines the full version (X. Y. Z where X, Y and Z are major version, minor version, service indicator, respectively) of the SUPL protocol to use. The default is 1.0.0. If FullVersion is defined, Version field is ignored.
<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Allowed Values | Regular Expression: `^(\d+\.)?(\d+\.)?(\*|\d+)$` |
| Default Value  | 1.0.0 |
<!-- Device-SUPL1-Ext-Microsoft-FullVersion-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-FullVersion-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-FullVersion-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Begin -->
##### SUPL1/Ext/Microsoft/HighAccPositioningMethod

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/HighAccPositioningMethod
```
<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The default is 0. The default method in Windows provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator's network or location services. For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.
<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> The Mobile Station Assisted, OTDOA, and AFLT positioning methods must only be configured for test purposes.
<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | None: The device uses the default positioning method. In this default mode, the GNSS obtains assistance (time injection, coarse position injection and ephemeris data) from the Microsoft Positioning Service. |
| 1 | Mobile Station Assisted: The device contacts the H-SLP server to obtain a position. The H-SLP does the calculation of the position and returns it to the device. |
| 2 | Mobile Station Based: The device obtains location-aiding data (almanac, ephemeris data, time and coarse initial position of the device) from the H-SLP server, and the device uses this information to help GPS obtain a fix. All position calculations are done in the device. |
| 3 | Mobile Station Standalone: The device obtains assistance as required from the Microsoft location services. |
| 4 | OTDOA. |
| 5 | AFLT. |
<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-AllowedValues-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-HighAccPositioningMethod-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Begin -->
##### SUPL1/Ext/Microsoft/LocMasterSwitchDependencyNII

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/LocMasterSwitchDependencyNII
```
<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Description-Begin -->
<!-- Description-Source-DDF -->
This setting is deprecated in Windows 10. Optional. Boolean. Specifies whether the location toggle on the location screen in Settings is also used to manage SUPL network-initiated (NI) requests for location. If the value is set to 0, the NI behavior is independent from the current location toggle setting. If the value is set to 1, the NI behavior follows the current location toggle setting. The default value is 1. Note that most clients don't support this behavior. This value manages the settings for both SUPL and v2 UPL. If a phone is configured for both SUPL and V2 UPL and these values differ, the SUPL setting will always be used.
<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
| Location toggle setting | LocMasterSwitchDependencyNII setting | NI request processing allowed      |
|-------------------------|--------------------------------------|------------------------------------|
| On                      | 0                                    | Yes                                |
| On                      | 1                                    | Yes                                |
| Off                     | 0                                    | Yes                                |
| Off                     | 1                                    | No (unless privacyOverride is set) |

When the location toggle is set to Off and this value is set to 1, the following application requests will fail:

- `noNotificationNoVerification`
- `notificationOnly`
- `notificationAndVerficationAllowedNA`
- `notificationAndVerficationDeniedNA`

However, if `privacyOverride` is set in the message, the location will be returned.

When the location toggle is set to Off and this value is set to 0, the location toggle doesn't prevent SUPL network-initiated requests from working.

For OMA DM, if the format for this node is incorrect then an entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.
<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | The NI behavior is independent from the current location toggle setting. |
| true (Default) | The NI behavior follows the current location toggle setting. |
<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-AllowedValues-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-LocMasterSwitchDependencyNII-End -->

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Begin -->
##### SUPL1/Ext/Microsoft/MCCMNCPairs

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/MCCMNCPairs
```
<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Description-Begin -->
<!-- Description-Source-DDF -->
Required. List all of the MCC and MNC pairs owned by the mobile operator. This list is used to verify that the UICC matches the network and SUPL can be used. When the UICC and network don't match, the phone uses the default location service and doesn't use SUPL.
<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This value is a string with the format `(X1, Y1)(X2, Y2)…(Xn, Yn)`, in which `X` is an MCC and `Y` is an MNC.

For OMA DM, if the format for this node is incorrect then an entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.
<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-MCCMNCPairs-End -->

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Begin -->
##### SUPL1/Ext/Microsoft/NIDefaultTimeout

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/NIDefaultTimeout
```
<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Time in seconds that the network-initiated location request is displayed to the user, while awaiting a response and before doing the default action. The default is 30 seconds. A value between 20 and 60 seconds is recommended.
<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 30 |
<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-NIDefaultTimeout-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Begin -->
##### SUPL1/Ext/Microsoft/RootCertificate

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Description-Begin -->
<!-- Description-Source-DDF -->
Required. Specifies the root certificate for the H-SLP server. Windows doesn't support a non-secure mode. If this node isn't included, the configuration service provider will fail but may not return a specific error.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate/Data

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate/Data
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Description-Begin -->
<!-- Description-Source-DDF -->
The base 64 encoded blob of the H-SLP root certificate.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Data-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate/Name

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate/Name
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of the H-SLP root certificate as a string, in the format name.cer.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate-Name-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Begin -->
##### SUPL1/Ext/Microsoft/RootCertificate2

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate2
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the root certificate for the H-SLP server.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate2/Data

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate2/Data
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Description-Begin -->
<!-- Description-Source-DDF -->
The base 64 encoded blob of the H-SLP root certificate.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Data-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate2/Name

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate2/Name
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of the H-SLP root certificate as a string, in the format name.cer.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate2-Name-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Begin -->
##### SUPL1/Ext/Microsoft/RootCertificate3

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate3
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the root certificate for the H-SLP server.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate3/Data

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate3/Data
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Description-Begin -->
<!-- Description-Source-DDF -->
The base 64 encoded blob of the H-SLP root certificate.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Data-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate3/Name

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate3/Name
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of the H-SLP root certificate as a string, in the format name.cer.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate3-Name-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Begin -->
##### SUPL1/Ext/Microsoft/RootCertificate4

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate4
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the root certificate for the H-SLP server.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate4/Data

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate4/Data
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Description-Begin -->
<!-- Description-Source-DDF -->
The base 64 encoded blob of the H-SLP root certificate.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Data-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate4/Name

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate4/Name
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of the H-SLP root certificate as a string, in the format name.cer.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate4-Name-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Begin -->
##### SUPL1/Ext/Microsoft/RootCertificate5

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate5
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the root certificate for the H-SLP server.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate5/Data

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate5/Data
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Description-Begin -->
<!-- Description-Source-DDF -->
The base 64 encoded blob of the H-SLP root certificate.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Data-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate5/Name

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate5/Name
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of the H-SLP root certificate as a string, in the format name.cer.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate5-Name-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Begin -->
##### SUPL1/Ext/Microsoft/RootCertificate6

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate6
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the root certificate for the H-SLP server.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate6/Data

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate6/Data
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Description-Begin -->
<!-- Description-Source-DDF -->
The base 64 encoded blob of the H-SLP root certificate.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `b64` |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Data-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Begin -->
###### SUPL1/Ext/Microsoft/RootCertificate6/Name

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/RootCertificate6/Name
```
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of the H-SLP root certificate as a string, in the format name.cer.
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-RootCertificate6-Name-End -->

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Begin -->
##### SUPL1/Ext/Microsoft/ServerAccessInterval

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/ServerAccessInterval
```
<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Integer. Defines the minimum interval of time in seconds between mobile originated requests sent to the server to prevent overloading the mobile operator's network. The default value is 60.
<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 60 |
<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-ServerAccessInterval-End -->

<!-- Device-SUPL1-Ext-Microsoft-Version-Begin -->
##### SUPL1/Ext/Microsoft/Version

<!-- Device-SUPL1-Ext-Microsoft-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-SUPL1-Ext-Microsoft-Version-Applicability-End -->

<!-- Device-SUPL1-Ext-Microsoft-Version-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/SUPL1/Ext/Microsoft/Version
```
<!-- Device-SUPL1-Ext-Microsoft-Version-OmaUri-End -->

<!-- Device-SUPL1-Ext-Microsoft-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Determines the major version of the SUPL protocol to use. For SUPL 1.0.0, set this value to 1. For SUPL 2.0.0, set this value to 2. The default is 1. Refer to FullVersion to define minor verison and service indicator.
<!-- Device-SUPL1-Ext-Microsoft-Version-Description-End -->

<!-- Device-SUPL1-Ext-Microsoft-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-Version-Editable-End -->

<!-- Device-SUPL1-Ext-Microsoft-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Allowed Values | Range: `[1-2]` |
| Default Value  | 1 |
<!-- Device-SUPL1-Ext-Microsoft-Version-DFProperties-End -->

<!-- Device-SUPL1-Ext-Microsoft-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SUPL1-Ext-Microsoft-Version-Examples-End -->

<!-- Device-SUPL1-Ext-Microsoft-Version-End -->

<!-- Device-V2UPL1-Begin -->
## V2UPL1

<!-- Device-V2UPL1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-Applicability-End -->

<!-- Device-V2UPL1-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1
```
<!-- Device-V2UPL1-OmaUri-End -->

<!-- Device-V2UPL1-Description-Begin -->
<!-- Description-Source-DDF -->
Required for V2 UPL for CDMA. Specifies the account settings for user plane location and IS-801 for CDMA. Only one account is supported at a given time.
<!-- Device-V2UPL1-Description-End -->

<!-- Device-V2UPL1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-Editable-End -->

<!-- Device-V2UPL1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-V2UPL1-DFProperties-End -->

<!-- Device-V2UPL1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-Examples-End -->

<!-- Device-V2UPL1-End -->

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Begin -->
### V2UPL1/ApplicationTypeIndicator_MR

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Applicability-End -->

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1/ApplicationTypeIndicator_MR
```
<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-OmaUri-End -->

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Description-Begin -->
<!-- Description-Source-DDF -->
Required. This value must always be set to 00000011.
<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Description-End -->

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Editable-End -->

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-DFProperties-End -->

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-Examples-End -->

<!-- Device-V2UPL1-ApplicationTypeIndicator_MR-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Begin -->
### V2UPL1/LocMasterSwitchDependencyNII

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Applicability-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1/LocMasterSwitchDependencyNII
```
<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-OmaUri-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Boolean. Specifies whether the location toggle on the location screen in Settings is also used to manage network-initiated requests for location. If the value is set to 0, the NI behavior is independent from the current location toggle setting. If the value is set to 1, the NI behavior follows the current location toggle setting. For CDMA phones, this value must be set to 1. The default value is 1.
<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Description-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Editable-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get, Replace |
| Default Value  | true |
<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-DFProperties-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | The NI behavior is independent from the current location toggle setting. |
| true (Default) | The NI behavior follows the current location toggle setting. |
<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-AllowedValues-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-Examples-End -->

<!-- Device-V2UPL1-LocMasterSwitchDependencyNII-End -->

<!-- Device-V2UPL1-MPC-Begin -->
### V2UPL1/MPC

<!-- Device-V2UPL1-MPC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-MPC-Applicability-End -->

<!-- Device-V2UPL1-MPC-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1/MPC
```
<!-- Device-V2UPL1-MPC-OmaUri-End -->

<!-- Device-V2UPL1-MPC-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. The address of the mobile positioning center (MPC), in the format ipAddress: portNumber. For non-trusted mode of operation, this parameter is mandatory and the PDE parameter must be empty.
<!-- Device-V2UPL1-MPC-Description-End -->

<!-- Device-V2UPL1-MPC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-MPC-Editable-End -->

<!-- Device-V2UPL1-MPC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-V2UPL1-MPC-DFProperties-End -->

<!-- Device-V2UPL1-MPC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-MPC-Examples-End -->

<!-- Device-V2UPL1-MPC-End -->

<!-- Device-V2UPL1-NIDefaultTimeout-Begin -->
### V2UPL1/NIDefaultTimeout

<!-- Device-V2UPL1-NIDefaultTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-NIDefaultTimeout-Applicability-End -->

<!-- Device-V2UPL1-NIDefaultTimeout-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1/NIDefaultTimeout
```
<!-- Device-V2UPL1-NIDefaultTimeout-OmaUri-End -->

<!-- Device-V2UPL1-NIDefaultTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Time in seconds that the network-initiated location request is displayed to the user, while awaiting a response and before doing the default action. The default is 30 seconds. A value between 20 and 60 seconds is recommended.
<!-- Device-V2UPL1-NIDefaultTimeout-Description-End -->

<!-- Device-V2UPL1-NIDefaultTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-NIDefaultTimeout-Editable-End -->

<!-- Device-V2UPL1-NIDefaultTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 30 |
<!-- Device-V2UPL1-NIDefaultTimeout-DFProperties-End -->

<!-- Device-V2UPL1-NIDefaultTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-NIDefaultTimeout-Examples-End -->

<!-- Device-V2UPL1-NIDefaultTimeout-End -->

<!-- Device-V2UPL1-PDE-Begin -->
### V2UPL1/PDE

<!-- Device-V2UPL1-PDE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-PDE-Applicability-End -->

<!-- Device-V2UPL1-PDE-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1/PDE
```
<!-- Device-V2UPL1-PDE-OmaUri-End -->

<!-- Device-V2UPL1-PDE-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. The address of the Position Determination Entity (PDE), in the format ipAddress: portNumber. For non-trusted mode of operation, this parameter must be empty.
<!-- Device-V2UPL1-PDE-Description-End -->

<!-- Device-V2UPL1-PDE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-PDE-Editable-End -->

<!-- Device-V2UPL1-PDE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-V2UPL1-PDE-DFProperties-End -->

<!-- Device-V2UPL1-PDE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-PDE-Examples-End -->

<!-- Device-V2UPL1-PDE-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-Begin -->
### V2UPL1/PositioningMethod_MR

<!-- Device-V2UPL1-PositioningMethod_MR-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-PositioningMethod_MR-Applicability-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1/PositioningMethod_MR
```
<!-- Device-V2UPL1-PositioningMethod_MR-OmaUri-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Specifies the positioning method that the SUPL client will use for mobile originated position requests. The default is 0. The default method in Windows provides high-quality assisted GNSS positioning for mobile originated position requests without loading the mobile operator's network or location services. The Mobile Station Assisted and AFLT positioning methods must only be configured for test purposes. For OMA DM, if the format for this node is incorrect the entry will be ignored and an error will be returned, but the configuration service provider will continue processing the rest of the parameters.
<!-- Device-V2UPL1-PositioningMethod_MR-Description-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-PositioningMethod_MR-Editable-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 0 |
<!-- Device-V2UPL1-PositioningMethod_MR-DFProperties-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | None: The device uses the default positioning method. In this default mode, the GNSS obtains assistance (time injection, coarse position injection, and ephemeris data) from the Microsoft Positioning Service. |
| 1 | Mobile Station Assisted: The device contacts the H-SLP server to obtain a position. The H-SLP does the calculation of the position and returns it to the device. |
| 2 | Mobile Station Based: The device obtains location-aiding data (almanac, ephemeris data, time and coarse initial position of the device) from the H-SLP server, and the device uses this information to help GPS obtain a fix. All position calculations are done in the device. |
| 3 | Mobile Station Standalone: The device obtains assistance as required from the Microsoft location services. |
| 4 | AFLT. |
<!-- Device-V2UPL1-PositioningMethod_MR-AllowedValues-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-PositioningMethod_MR-Examples-End -->

<!-- Device-V2UPL1-PositioningMethod_MR-End -->

<!-- Device-V2UPL1-ServerAccessInterval-Begin -->
### V2UPL1/ServerAccessInterval

<!-- Device-V2UPL1-ServerAccessInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-V2UPL1-ServerAccessInterval-Applicability-End -->

<!-- Device-V2UPL1-ServerAccessInterval-OmaUri-Begin -->
```Device
./Vendor/MSFT//SUPL/V2UPL1/ServerAccessInterval
```
<!-- Device-V2UPL1-ServerAccessInterval-OmaUri-End -->

<!-- Device-V2UPL1-ServerAccessInterval-Description-Begin -->
<!-- Description-Source-DDF -->
Optional. Integer. Defines the minimum interval of time in seconds between mobile originated requests sent to the server to prevent overloading the mobile operator's network. The default value is 60.
<!-- Device-V2UPL1-ServerAccessInterval-Description-End -->

<!-- Device-V2UPL1-ServerAccessInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-V2UPL1-ServerAccessInterval-Editable-End -->

<!-- Device-V2UPL1-ServerAccessInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get, Replace |
| Default Value  | 60 |
<!-- Device-V2UPL1-ServerAccessInterval-DFProperties-End -->

<!-- Device-V2UPL1-ServerAccessInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-V2UPL1-ServerAccessInterval-Examples-End -->

<!-- Device-V2UPL1-ServerAccessInterval-End -->

<!-- SUPL-CspMoreInfo-Begin -->
## Unsupported Nodes

The following optional nodes aren't supported on Windows devices.

- ProviderID
- Name
- PrefConRef
- ToConRef
- ToConRef/&lt;X&gt;
- ToConRef/&lt;X&gt;/ConRef
- AddrType

If the configuration application tries to set, delete or query these nodes, a response indicating this node isn't implemented will be returned over OMA DM. In OMA Client Provisioning, the request to set this node will be ignored and the configuration service provider will continue processing the rest of the nodes.

If a mobile operator requires the communication with the H-SLP to take place over a specific connection rather than a default cellular connection, then this configuration must be done by using the [CM\_CellularEntries configuration service provider](cm-cellularentries-csp.md) and the [CM\_ProxyEntries configuration service provider](cm-proxyentries-csp.md) to map the H-SLP server with the required connection.

## OMA Client Provisioning examples

Adding new configuration information for an H-SLP server for SUPL. Values in italic must be replaced with correct settings for the mobile operator network. A valid binary blob must be included for the root certificate data value.

```xml
<?xml version="1.0" encoding="utf-8"?>
<wap-provisioningdoc>
  <characteristic type="SUPL">
    <characteristic type="SUPL1">
      <parm name="Addr" value="supl.abc.def.example.com: 7777" />
      <characteristic type="Ext">
      <characteristic type="Microsoft">
      <characteristic type="RootCertificate">
        <parm name="Name" value="certName.cer" />
        <parm name="Data" value="" datatype="binary"/>
      </characteristic>
         <parm name="MCCMNCPairs" value="(111,000)(222,111)(333,333)(444,222)" />
         <parm name="HighAccPositioningMethod" datatype="integer" value="0" />
         <parm name="LocMasterSwitchDependencyNII" datatype="integer" value="1" />
      </characteristic>
      </characteristic>
    </characteristic>
  </characteristic>
</wap-provisioningdoc>
```

Adding a SUPL and a V2 UPL account to the same device. Values in italic must be replaced with correct settings for the mobile operator network. A valid binary BLOB must be included for the root certificate data value.

```xml
<?xml version="1.0" encoding="utf-8"?>
<wap-provisioningdoc>
  <characteristic type="SUPL">
    <characteristic type="V2UPL1">
      <parm name="MPC" value="192.0.2.1:7777" />
      <parm name="PDE" value="192.0.2.1:7778" />
      <parm name="PositioningMethod_MR" datatype="integer" value="1" />
    </characteristic>
    <characteristic type="SUPL1">
      <parm name="Addr" value="supl.abc.def.example.com:7777" />
      <characteristic type="Ext">
      <characteristic type="Microsoft">
      <characteristic type="RootCertificate">
        <parm name="Name" value="certName.cer" />
        <parm name="Data" value="" datatype="binary"/>
      </characteristic>
         <parm name="MCCMNCPairs" value="(111,000)(222,111)(333,333)(444,222)" />
         <parm name="HighAccPositioningMethod" datatype="integer" value="2" />
         <parm name="LocMasterSwitchDependencyNII" datatype="integer" value="1" />
      </characteristic>
      </characteristic>
    </characteristic>
  </characteristic>
</wap-provisioningdoc>
```

## OMA DM examples

Adding a SUPL account to a device. Values in italic must be replaced with correct settings for the mobile operator network. A valid binary blob must be included for the root certificate data value.

```xml
<SyncML xmlns="SYNCML:SYNCML1.1">
    <SyncBody>
        <Add>
            <CmdID>Add FQDN</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Addr</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>supl.abc.def.example.com:2222</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add MCCMNC</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/MCCMNCPairs</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>(111,000)(222,111)(333,333)(444,222)</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add HighAccPositioningMethod</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/HighAccPositioningMethod</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>2</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add LocMasterSWDepend</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/LocMasterSwitchDependencyNII</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>1</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add Cert name</CmdID>

            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/RootCertificate/Name</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>certName.cer</Data>
            </Item>
        </Add>
        <Add>
            <CmdID>Add Cert data - 200</CmdID>

            <Item>
                <Target><LocURI>./Vendor/MSFT/SUPL/SUPL1/Ext/Microsoft/RootCertificate/Data</LocURI></Target>
                <Meta>
                <Format xmlns="syncml:metinf">b64</Format>
                </Meta>
                <Data></Data>
            </Item>
        </Add>
        <Final/>
    </SyncBody>
</SyncML>
```

## Microsoft Custom Elements

The following table shows the Microsoft custom elements that this configuration service provider supports for OMA Client Provisioning.

|Elements|Available|
|--- |--- |
|parm-query|Yes|
|characteristic-query|Yes <br/><br/>Recursive query: No<br/><br/>Top level query: No|
<!-- SUPL-CspMoreInfo-End -->

<!-- SUPL-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
