---
title: NetworkQoSPolicy CSP
description: Learn more about the NetworkQoSPolicy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- NetworkQoSPolicy-Begin -->
# NetworkQoSPolicy CSP

<!-- NetworkQoSPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The NetworkQoSPolicy configuration service provider creates network Quality of Service (QoS) policies. A QoS policy performs a set of actions on network traffic based on a set of matching conditions. This CSP was added in Windows 10, version 1703.

The following conditions are supported:

- Network traffic from a specific application name
- Network traffic from specific source or destination ports
- Network traffic from a specific IP protocol (TCP, UDP, or both)

The following actions are supported:

- Layer 2 tagging using a IEEE 802.1p priority value
- Layer 3 tagging using a differentiated services code point (DSCP) value

> [!NOTE]
> The NetworkQoSPolicy configuration service provider is officially supported for devices that are Intune managed and Microsoft Entra joined. Currently, this CSP is not supported on the following devices:
>
> - Microsoft Entra hybrid joined devices.
> - Devices that use both GPO and CSP at the same time.
>
> The minimum operating system requirement for this CSP is Windows 10, version 1703. This CSP is not supported in Microsoft Surface Hub prior to Windows 10, version 1703.
<!-- NetworkQoSPolicy-Editable-End -->

<!-- NetworkQoSPolicy-Tree-Begin -->
The following list shows the NetworkQoSPolicy configuration service provider nodes:

- ./Device/Vendor/MSFT/NetworkQoSPolicy
  - [{Name}](#name)
    - [AppPathNameMatchCondition](#nameapppathnamematchcondition)
    - [DestinationPortMatchCondition](#namedestinationportmatchcondition)
    - [DSCPAction](#namedscpaction)
    - [IPProtocolMatchCondition](#nameipprotocolmatchcondition)
    - [PriorityValue8021Action](#namepriorityvalue8021action)
    - [SourcePortMatchCondition](#namesourceportmatchcondition)
  - [Version](#version)
<!-- NetworkQoSPolicy-Tree-End -->

<!-- Device-{Name}-Begin -->
## {Name}

<!-- Device-{Name}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-{Name}-Applicability-End -->

<!-- Device-{Name}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/{Name}
```
<!-- Device-{Name}-OmaUri-End -->

<!-- Device-{Name}-Description-Begin -->
<!-- Description-Source-DDF -->
The value of this node should be a policy name.
<!-- Device-{Name}-Description-End -->

<!-- Device-{Name}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{Name}-Editable-End -->

<!-- Device-{Name}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | UniqueName: The value of this node should be a policy name. |
<!-- Device-{Name}-DFProperties-End -->

<!-- Device-{Name}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{Name}-Examples-End -->

<!-- Device-{Name}-End -->

<!-- Device-{Name}-AppPathNameMatchCondition-Begin -->
### {Name}/AppPathNameMatchCondition

<!-- Device-{Name}-AppPathNameMatchCondition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-{Name}-AppPathNameMatchCondition-Applicability-End -->

<!-- Device-{Name}-AppPathNameMatchCondition-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/{Name}/AppPathNameMatchCondition
```
<!-- Device-{Name}-AppPathNameMatchCondition-OmaUri-End -->

<!-- Device-{Name}-AppPathNameMatchCondition-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of an application to be used to match the network traffic, such as application.exe or %ProgramFiles%\application.exe.
<!-- Device-{Name}-AppPathNameMatchCondition-Description-End -->

<!-- Device-{Name}-AppPathNameMatchCondition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{Name}-AppPathNameMatchCondition-Editable-End -->

<!-- Device-{Name}-AppPathNameMatchCondition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{Name}-AppPathNameMatchCondition-DFProperties-End -->

<!-- Device-{Name}-AppPathNameMatchCondition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{Name}-AppPathNameMatchCondition-Examples-End -->

<!-- Device-{Name}-AppPathNameMatchCondition-End -->

<!-- Device-{Name}-DestinationPortMatchCondition-Begin -->
### {Name}/DestinationPortMatchCondition

<!-- Device-{Name}-DestinationPortMatchCondition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-{Name}-DestinationPortMatchCondition-Applicability-End -->

<!-- Device-{Name}-DestinationPortMatchCondition-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/{Name}/DestinationPortMatchCondition
```
<!-- Device-{Name}-DestinationPortMatchCondition-OmaUri-End -->

<!-- Device-{Name}-DestinationPortMatchCondition-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies a single port or a range of ports to be used to match the network traffic. Valid values are [first port number]-[last port number] or [port number].
<!-- Device-{Name}-DestinationPortMatchCondition-Description-End -->

<!-- Device-{Name}-DestinationPortMatchCondition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{Name}-DestinationPortMatchCondition-Editable-End -->

<!-- Device-{Name}-DestinationPortMatchCondition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{Name}-DestinationPortMatchCondition-DFProperties-End -->

<!-- Device-{Name}-DestinationPortMatchCondition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{Name}-DestinationPortMatchCondition-Examples-End -->

<!-- Device-{Name}-DestinationPortMatchCondition-End -->

<!-- Device-{Name}-DSCPAction-Begin -->
### {Name}/DSCPAction

<!-- Device-{Name}-DSCPAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-{Name}-DSCPAction-Applicability-End -->

<!-- Device-{Name}-DSCPAction-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/{Name}/DSCPAction
```
<!-- Device-{Name}-DSCPAction-OmaUri-End -->

<!-- Device-{Name}-DSCPAction-Description-Begin -->
<!-- Description-Source-DDF -->
The differentiated services code point (DSCP) value to apply to matching network traffic. Valid values are 0-63.
<!-- Device-{Name}-DSCPAction-Description-End -->

<!-- Device-{Name}-DSCPAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{Name}-DSCPAction-Editable-End -->

<!-- Device-{Name}-DSCPAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-63]` |
<!-- Device-{Name}-DSCPAction-DFProperties-End -->

<!-- Device-{Name}-DSCPAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{Name}-DSCPAction-Examples-End -->

<!-- Device-{Name}-DSCPAction-End -->

<!-- Device-{Name}-IPProtocolMatchCondition-Begin -->
### {Name}/IPProtocolMatchCondition

<!-- Device-{Name}-IPProtocolMatchCondition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-{Name}-IPProtocolMatchCondition-Applicability-End -->

<!-- Device-{Name}-IPProtocolMatchCondition-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/{Name}/IPProtocolMatchCondition
```
<!-- Device-{Name}-IPProtocolMatchCondition-OmaUri-End -->

<!-- Device-{Name}-IPProtocolMatchCondition-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the IP protocol used to match the network traffic. Valid values are 0: Both TCP and UDP (default), 1: TCP, 2: UDP.
<!-- Device-{Name}-IPProtocolMatchCondition-Description-End -->

<!-- Device-{Name}-IPProtocolMatchCondition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{Name}-IPProtocolMatchCondition-Editable-End -->

<!-- Device-{Name}-IPProtocolMatchCondition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-{Name}-IPProtocolMatchCondition-DFProperties-End -->

<!-- Device-{Name}-IPProtocolMatchCondition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{Name}-IPProtocolMatchCondition-Examples-End -->

<!-- Device-{Name}-IPProtocolMatchCondition-End -->

<!-- Device-{Name}-PriorityValue8021Action-Begin -->
### {Name}/PriorityValue8021Action

<!-- Device-{Name}-PriorityValue8021Action-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-{Name}-PriorityValue8021Action-Applicability-End -->

<!-- Device-{Name}-PriorityValue8021Action-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/{Name}/PriorityValue8021Action
```
<!-- Device-{Name}-PriorityValue8021Action-OmaUri-End -->

<!-- Device-{Name}-PriorityValue8021Action-Description-Begin -->
<!-- Description-Source-DDF -->
The IEEE 802.1p value to apply to matching network traffice. Valid values are 0-7.
<!-- Device-{Name}-PriorityValue8021Action-Description-End -->

<!-- Device-{Name}-PriorityValue8021Action-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{Name}-PriorityValue8021Action-Editable-End -->

<!-- Device-{Name}-PriorityValue8021Action-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-7]` |
<!-- Device-{Name}-PriorityValue8021Action-DFProperties-End -->

<!-- Device-{Name}-PriorityValue8021Action-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{Name}-PriorityValue8021Action-Examples-End -->

<!-- Device-{Name}-PriorityValue8021Action-End -->

<!-- Device-{Name}-SourcePortMatchCondition-Begin -->
### {Name}/SourcePortMatchCondition

<!-- Device-{Name}-SourcePortMatchCondition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-{Name}-SourcePortMatchCondition-Applicability-End -->

<!-- Device-{Name}-SourcePortMatchCondition-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/{Name}/SourcePortMatchCondition
```
<!-- Device-{Name}-SourcePortMatchCondition-OmaUri-End -->

<!-- Device-{Name}-SourcePortMatchCondition-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies a single port or a range of ports to be used to match the network traffic. Valid values are [first port number]-[last port number] or [port number].
<!-- Device-{Name}-SourcePortMatchCondition-Description-End -->

<!-- Device-{Name}-SourcePortMatchCondition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{Name}-SourcePortMatchCondition-Editable-End -->

<!-- Device-{Name}-SourcePortMatchCondition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-{Name}-SourcePortMatchCondition-DFProperties-End -->

<!-- Device-{Name}-SourcePortMatchCondition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{Name}-SourcePortMatchCondition-Examples-End -->

<!-- Device-{Name}-SourcePortMatchCondition-End -->

<!-- Device-Version-Begin -->
## Version

<!-- Device-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 [10.0.19042] and later |
<!-- Device-Version-Applicability-End -->

<!-- Device-Version-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NetworkQoSPolicy/Version
```
<!-- Device-Version-OmaUri-End -->

<!-- Device-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version information.
<!-- Device-Version-Description-End -->

<!-- Device-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Version-Editable-End -->

<!-- Device-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Version-DFProperties-End -->

<!-- Device-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Version-Examples-End -->

<!-- Device-Version-End -->

<!-- NetworkQoSPolicy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- NetworkQoSPolicy-CspMoreInfo-End -->

<!-- NetworkQoSPolicy-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
