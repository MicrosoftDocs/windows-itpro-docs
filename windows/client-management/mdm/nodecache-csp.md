---
title: NodeCache CSP
description: Learn more about the NodeCache CSP.
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

<!-- NodeCache-Begin -->
# NodeCache CSP

<!-- NodeCache-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The NodeCache configuration service provider is used to manage the client cache. This configuration service provider is to be used only by enterprise management servers. It provides a level of abstraction that decouples the management of the node list from a specific backing store. It synchronizes the client cache with the server side cache. It also provides an API for monitoring device-side cache changes.

NodeCache supports the comparison of hash values instead of actual node values:

```xml
<Type xmlns="syncml:metinf">
application/x-nodemon-sha256
</type>
```

NodeCache will hash the values and compare with a hash value that was sent down by the server. This process supports checking a parent node and its children recursively.
<!-- NodeCache-Editable-End -->

<!-- NodeCache-Tree-Begin -->
The following list shows the NodeCache configuration service provider nodes:

- ./Device/Vendor/MSFT/NodeCache
  - [{ProviderID}](#deviceproviderid)
    - [CacheVersion](#deviceprovideridcacheversion)
    - [ChangedNodes](#deviceprovideridchangednodes)
    - [ChangedNodesData](#deviceprovideridchangednodesdata)
    - [Nodes](#deviceprovideridnodes)
      - [{NodeID}](#deviceprovideridnodesnodeid)
        - [AutoSetExpectedValue](#deviceprovideridnodesnodeidautosetexpectedvalue)
        - [ExpectedValue](#deviceprovideridnodesnodeidexpectedvalue)
        - [NodeURI](#deviceprovideridnodesnodeidnodeuri)
- ./User/Vendor/MSFT/NodeCache
  - [{ProviderID}](#userproviderid)
    - [CacheVersion](#userprovideridcacheversion)
    - [ChangedNodes](#userprovideridchangednodes)
    - [ChangedNodesData](#userprovideridchangednodesdata)
    - [Nodes](#userprovideridnodes)
      - [{NodeID}](#userprovideridnodesnodeid)
        - [AutoSetExpectedValue](#userprovideridnodesnodeidautosetexpectedvalue)
        - [ExpectedValue](#userprovideridnodesnodeidexpectedvalue)
        - [NodeURI](#userprovideridnodesnodeidnodeuri)
<!-- NodeCache-Tree-End -->

<!-- Device-{ProviderID}-Begin -->
## Device/{ProviderID}

<!-- Device-{ProviderID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProviderID}-Applicability-End -->

<!-- Device-{ProviderID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}
```
<!-- Device-{ProviderID}-OmaUri-End -->

<!-- Device-{ProviderID}-Description-Begin -->
<!-- Description-Source-DDF -->
Group settings per DM server. Each group of settings is distinguished by the server's Provider ID. It should be the same DM server PROVIDER-ID value that was supplied through the [w7 APPLICATION](w7-application-csp.md) configuration service provider XML during the enrollment process. In Windows Phone 8, only one enterprise management server is supported. That is, there should be only one ProviderID node under NodeCache.
<!-- Device-{ProviderID}-Description-End -->

<!-- Device-{ProviderID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Editable-End -->

<!-- Device-{ProviderID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName:  It should be the same DM server PROVIDER-ID value that was supplied through the w7 APPLICATION configuration service provider XML during the enrollment process. |
<!-- Device-{ProviderID}-DFProperties-End -->

<!-- Device-{ProviderID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Examples-End -->

<!-- Device-{ProviderID}-End -->

<!-- Device-{ProviderID}-CacheVersion-Begin -->
### Device/{ProviderID}/CacheVersion

<!-- Device-{ProviderID}-CacheVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProviderID}-CacheVersion-Applicability-End -->

<!-- Device-{ProviderID}-CacheVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/CacheVersion
```
<!-- Device-{ProviderID}-CacheVersion-OmaUri-End -->

<!-- Device-{ProviderID}-CacheVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Character string representing the cache version set by the server.
<!-- Device-{ProviderID}-CacheVersion-Description-End -->

<!-- Device-{ProviderID}-CacheVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-CacheVersion-Editable-End -->

<!-- Device-{ProviderID}-CacheVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- Device-{ProviderID}-CacheVersion-DFProperties-End -->

<!-- Device-{ProviderID}-CacheVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-CacheVersion-Examples-End -->

<!-- Device-{ProviderID}-CacheVersion-End -->

<!-- Device-{ProviderID}-ChangedNodes-Begin -->
### Device/{ProviderID}/ChangedNodes

<!-- Device-{ProviderID}-ChangedNodes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProviderID}-ChangedNodes-Applicability-End -->

<!-- Device-{ProviderID}-ChangedNodes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/ChangedNodes
```
<!-- Device-{ProviderID}-ChangedNodes-OmaUri-End -->

<!-- Device-{ProviderID}-ChangedNodes-Description-Begin -->
<!-- Description-Source-DDF -->
List of nodes whose values don't match their expected values as specified in /NodeID/ExpectedValue.
<!-- Device-{ProviderID}-ChangedNodes-Description-End -->

<!-- Device-{ProviderID}-ChangedNodes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-ChangedNodes-Editable-End -->

<!-- Device-{ProviderID}-ChangedNodes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-{ProviderID}-ChangedNodes-DFProperties-End -->

<!-- Device-{ProviderID}-ChangedNodes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-ChangedNodes-Examples-End -->

<!-- Device-{ProviderID}-ChangedNodes-End -->

<!-- Device-{ProviderID}-ChangedNodesData-Begin -->
### Device/{ProviderID}/ChangedNodesData

<!-- Device-{ProviderID}-ChangedNodesData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-{ProviderID}-ChangedNodesData-Applicability-End -->

<!-- Device-{ProviderID}-ChangedNodesData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/ChangedNodesData
```
<!-- Device-{ProviderID}-ChangedNodesData-OmaUri-End -->

<!-- Device-{ProviderID}-ChangedNodesData-Description-Begin -->
<!-- Description-Source-DDF -->
XML containing nodes whose values don't match their expected values as specified in /NodeID/ExpectedValue.
<!-- Device-{ProviderID}-ChangedNodesData-Description-End -->

<!-- Device-{ProviderID}-ChangedNodesData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-ChangedNodesData-Editable-End -->

<!-- Device-{ProviderID}-ChangedNodesData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Get |
<!-- Device-{ProviderID}-ChangedNodesData-DFProperties-End -->

<!-- Device-{ProviderID}-ChangedNodesData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-ChangedNodesData-Examples-End -->

<!-- Device-{ProviderID}-ChangedNodesData-End -->

<!-- Device-{ProviderID}-Nodes-Begin -->
### Device/{ProviderID}/Nodes

<!-- Device-{ProviderID}-Nodes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProviderID}-Nodes-Applicability-End -->

<!-- Device-{ProviderID}-Nodes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/Nodes
```
<!-- Device-{ProviderID}-Nodes-OmaUri-End -->

<!-- Device-{ProviderID}-Nodes-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for cached nodes.
<!-- Device-{ProviderID}-Nodes-Description-End -->

<!-- Device-{ProviderID}-Nodes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-Editable-End -->

<!-- Device-{ProviderID}-Nodes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-{ProviderID}-Nodes-DFProperties-End -->

<!-- Device-{ProviderID}-Nodes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-Examples-End -->

<!-- Device-{ProviderID}-Nodes-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-Begin -->
#### Device/{ProviderID}/Nodes/{NodeID}

<!-- Device-{ProviderID}-Nodes-{NodeID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProviderID}-Nodes-{NodeID}-Applicability-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}
```
<!-- Device-{ProviderID}-Nodes-{NodeID}-OmaUri-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-Description-Begin -->
<!-- Description-Source-DDF -->
Information about each cached node is stored under NodeID as specified by the server. This value mustn't contain a comma.
<!-- Device-{ProviderID}-Nodes-{NodeID}-Description-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-{NodeID}-Editable-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-{ProviderID}-Nodes-{NodeID}-DFProperties-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-{NodeID}-Examples-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Begin -->
##### Device/{ProviderID}/Nodes/{NodeID}/AutoSetExpectedValue

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Applicability-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}/AutoSetExpectedValue
```
<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-OmaUri-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Description-Begin -->
<!-- Description-Source-DDF -->
This will automatically set the value on the device to match the node's actual value. The node is specified in NodeURI.
<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Description-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Editable-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Add, Delete, Get |
<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-DFProperties-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Examples-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Begin -->
##### Device/{ProviderID}/Nodes/{NodeID}/ExpectedValue

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Applicability-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}/ExpectedValue
```
<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-OmaUri-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Description-Begin -->
<!-- Description-Source-DDF -->
This is the value that the server expects to be on the device. When the configuration service provider initiates a session, it checks the expected value against the node's actual value.
<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Description-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Supported values are string and x-nodemon-nonexistent.
<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Editable-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get |
<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-DFProperties-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example for setting the ExpectedValue to nonexistent.

```xml
<Add>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0002/ExpectedValue</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
         <Type xmlns="syncml:metinf">application/x-nodemon-nonexistent</Type>
      </Meta>
   </Item>
</Add>
```
<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Examples-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-ExpectedValue-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Begin -->
##### Device/{ProviderID}/Nodes/{NodeID}/NodeURI

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Applicability-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}/NodeURI
```
<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-OmaUri-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Description-Begin -->
<!-- Description-Source-DDF -->
This node's value is a complete OMA DM node URI. It can specify either an interior or leaf node in the device management tree.
<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Description-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Editable-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get |
<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-DFProperties-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-Examples-End -->

<!-- Device-{ProviderID}-Nodes-{NodeID}-NodeURI-End -->

<!-- User-{ProviderID}-Begin -->
## User/{ProviderID}

<!-- User-{ProviderID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-Applicability-End -->

<!-- User-{ProviderID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}
```
<!-- User-{ProviderID}-OmaUri-End -->

<!-- User-{ProviderID}-Description-Begin -->
<!-- Description-Source-DDF -->
Group settings per DM server. Each group of settings is distinguished by the server's Provider ID. It should be the same DM server PROVIDER-ID value that was supplied through the [w7 APPLICATION](w7-application-csp.md) configuration service provider XML during the enrollment process. In Windows Phone 8, only one enterprise management server is supported. That is, there should be only one ProviderID node under NodeCache.
<!-- User-{ProviderID}-Description-End -->

<!-- User-{ProviderID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-Editable-End -->

<!-- User-{ProviderID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName:  It should be the same DM server PROVIDER-ID value that was supplied through the w7 APPLICATION configuration service provider XML during the enrollment process. |
<!-- User-{ProviderID}-DFProperties-End -->

<!-- User-{ProviderID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-Examples-End -->

<!-- User-{ProviderID}-End -->

<!-- User-{ProviderID}-CacheVersion-Begin -->
### User/{ProviderID}/CacheVersion

<!-- User-{ProviderID}-CacheVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-CacheVersion-Applicability-End -->

<!-- User-{ProviderID}-CacheVersion-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/CacheVersion
```
<!-- User-{ProviderID}-CacheVersion-OmaUri-End -->

<!-- User-{ProviderID}-CacheVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Character string representing the cache version set by the server.
<!-- User-{ProviderID}-CacheVersion-Description-End -->

<!-- User-{ProviderID}-CacheVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-CacheVersion-Editable-End -->

<!-- User-{ProviderID}-CacheVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Get, Replace |
<!-- User-{ProviderID}-CacheVersion-DFProperties-End -->

<!-- User-{ProviderID}-CacheVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-CacheVersion-Examples-End -->

<!-- User-{ProviderID}-CacheVersion-End -->

<!-- User-{ProviderID}-ChangedNodes-Begin -->
### User/{ProviderID}/ChangedNodes

<!-- User-{ProviderID}-ChangedNodes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-ChangedNodes-Applicability-End -->

<!-- User-{ProviderID}-ChangedNodes-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/ChangedNodes
```
<!-- User-{ProviderID}-ChangedNodes-OmaUri-End -->

<!-- User-{ProviderID}-ChangedNodes-Description-Begin -->
<!-- Description-Source-DDF -->
List of nodes whose values don't match their expected values as specified in /NodeID/ExpectedValue.
<!-- User-{ProviderID}-ChangedNodes-Description-End -->

<!-- User-{ProviderID}-ChangedNodes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-ChangedNodes-Editable-End -->

<!-- User-{ProviderID}-ChangedNodes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-{ProviderID}-ChangedNodes-DFProperties-End -->

<!-- User-{ProviderID}-ChangedNodes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-ChangedNodes-Examples-End -->

<!-- User-{ProviderID}-ChangedNodes-End -->

<!-- User-{ProviderID}-ChangedNodesData-Begin -->
### User/{ProviderID}/ChangedNodesData

<!-- User-{ProviderID}-ChangedNodesData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-ChangedNodesData-Applicability-End -->

<!-- User-{ProviderID}-ChangedNodesData-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/ChangedNodesData
```
<!-- User-{ProviderID}-ChangedNodesData-OmaUri-End -->

<!-- User-{ProviderID}-ChangedNodesData-Description-Begin -->
<!-- Description-Source-DDF -->
XML containing nodes whose values don't match their expected values as specified in /NodeID/ExpectedValue.
<!-- User-{ProviderID}-ChangedNodesData-Description-End -->

<!-- User-{ProviderID}-ChangedNodesData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-ChangedNodesData-Editable-End -->

<!-- User-{ProviderID}-ChangedNodesData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Get |
<!-- User-{ProviderID}-ChangedNodesData-DFProperties-End -->

<!-- User-{ProviderID}-ChangedNodesData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-ChangedNodesData-Examples-End -->

<!-- User-{ProviderID}-ChangedNodesData-End -->

<!-- User-{ProviderID}-Nodes-Begin -->
### User/{ProviderID}/Nodes

<!-- User-{ProviderID}-Nodes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-Nodes-Applicability-End -->

<!-- User-{ProviderID}-Nodes-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/Nodes
```
<!-- User-{ProviderID}-Nodes-OmaUri-End -->

<!-- User-{ProviderID}-Nodes-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for cached nodes.
<!-- User-{ProviderID}-Nodes-Description-End -->

<!-- User-{ProviderID}-Nodes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-Editable-End -->

<!-- User-{ProviderID}-Nodes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-{ProviderID}-Nodes-DFProperties-End -->

<!-- User-{ProviderID}-Nodes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-Examples-End -->

<!-- User-{ProviderID}-Nodes-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-Begin -->
#### User/{ProviderID}/Nodes/{NodeID}

<!-- User-{ProviderID}-Nodes-{NodeID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-Nodes-{NodeID}-Applicability-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}
```
<!-- User-{ProviderID}-Nodes-{NodeID}-OmaUri-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-Description-Begin -->
<!-- Description-Source-DDF -->
Information about each cached node is stored under NodeID as specified by the server. This value mustn't contain a comma.
<!-- User-{ProviderID}-Nodes-{NodeID}-Description-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-{NodeID}-Editable-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- User-{ProviderID}-Nodes-{NodeID}-DFProperties-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-{NodeID}-Examples-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Begin -->
##### User/{ProviderID}/Nodes/{NodeID}/AutoSetExpectedValue

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Applicability-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}/AutoSetExpectedValue
```
<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-OmaUri-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Description-Begin -->
<!-- Description-Source-DDF -->
This will automatically set the value on the device to match the node's actual value. The node is specified in NodeURI.
<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Description-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Editable-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Add, Delete, Get |
<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-DFProperties-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-Examples-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-AutoSetExpectedValue-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Begin -->
##### User/{ProviderID}/Nodes/{NodeID}/ExpectedValue

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Applicability-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}/ExpectedValue
```
<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-OmaUri-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Description-Begin -->
<!-- Description-Source-DDF -->
This is the value that the server expects to be on the device. When the configuration service provider initiates a session, it checks the expected value against the node's actual value.
<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Description-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Supported values are string and x-nodemon-nonexistent.
<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Editable-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get |
<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-DFProperties-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example for setting the ExpectedValue to nonexistent.

```xml
<Add>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0002/ExpectedValue</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
         <Type xmlns="syncml:metinf">application/x-nodemon-nonexistent</Type>
      </Meta>
   </Item>
</Add>
```
<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-Examples-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-ExpectedValue-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Begin -->
##### User/{ProviderID}/Nodes/{NodeID}/NodeURI

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Applicability-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/NodeCache/{ProviderID}/Nodes/{NodeID}/NodeURI
```
<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-OmaUri-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Description-Begin -->
<!-- Description-Source-DDF -->
This node's value is a complete OMA DM node URI. It can specify either an interior or leaf node in the device management tree.
<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Description-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Editable-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get |
<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-DFProperties-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-Examples-End -->

<!-- User-{ProviderID}-Nodes-{NodeID}-NodeURI-End -->

<!-- NodeCache-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## A typical DM session with the NodeCache configuration service provider

1. The device connects to a DM server.
2. The server queries the **NodeCache** version by issuing a Get operation for ./Vendor/MSFT/NodeCache/*ProviderID*/CacheVersion LocURI
3. If the device **CacheVersion** and the server-side cache differ (due to a device crash or server crash), the server can clear the server-side cache and go to Step 5.
4. The server updates the server-side cache:
    1. Sends a Get operation for ./Vendor/MSFT/NodeCache/*ProviderID*/ChangedNodes LocURI
    2. Response is a list of changed node IDs. Each ID in the list corresponds to a node under ./Vendor/MSFT/NodeCache/*ProviderID*/Nodes root
    3. For each node in the invalid nodes list, the server sends a `GET` command to retrieve the actual value of the node. For example, `GET <NodeURI>`, where `NodeURI` is a full device LocURI that corresponds to the invalid cache node.
    4. Nodes in the server-side cache are updated with the actual values received from the device.
    5. For each updated node, a `REPLACE` command is sent to the device to update the device-side cache:
       `REPLACE ./Vendor/MSFT/NodeCache/ProviderID/Nodes/NodeID/ExpectedValue => ActualValue`
    6. A new cache version is created and sent to the device:
       `REPLACE ./Vendor/MSFT/NodeCache/ProviderID/CacheVersion => new_version`
       The `new_version` value is stored by the server.
5. The management server retrieves the corresponding value from the server-side cache:
    1. If a value already exists in the server-side cache, retrieve the value from the server-side cache instead of going to the device.
    2. If a value doesn't exist in the server-side cache, do the following tasks:
        1. Create a new entry with a unique *NodeID* in the server-side cache.
        2. Query the device to retrieve the actual value of the URI.
        3. Create a new node under ./Vendor/MSFT/NodeCache/*ProviderID*/Nodes with *NodeID* value.
        4. Set up **NodeURI** and **ExpectedValue** for the ./Vendor/MSFT/NodeCache/*ProviderID*/Nodes/*NodeID* node.
        5. Update the **CachedNodes** version.

## OMA DM examples

Creating settings for node caching:

```xml
<Add>
   <CmdID>2</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">node</Format>
      </Meta>
   </Item>
</Add>
<Add>
   <CmdID>4</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0001</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">node</Format>
      </Meta>
   </Item>
</Add>
<Add>
   <CmdID>5</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0001/NodeURI</LocURI>
      </Target>
      <Data>./Vendor/MSFT/DeviceLock/Provider/MDMSRV1/DevicePasswordEnabled</Data>
   </Item>
</Add>
<Add>
   <CmdID>6</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0001/ExpectedValue</LocURI>
      </Target>
      <Data>0</Data>
   </Item>
</Add>
<Add>
   <CmdID>8</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0002</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">node</Format>
      </Meta>
   </Item>
</Add>
<Add>
   <CmdID>9</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0002/NodeURI</LocURI>
      </Target>
      <Data>
         ./Vendor/MSFT/DeviceLock/Provider/MDMSRV1/AlphanumericDevicePasswordRequired
      </Data>
   </Item>
</Add>
<Add>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0002/ExpectedValue</LocURI>
      </Target>
      <Data>0</Data>
   </Item>
</Add>
```

Getting nodes under Provider ID MDMSRV1, cache version, changed nodes, node, expected value:

```xml
<Get>
   <CmdID>18</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1</LocURI>
      </Target>
   </Item>
</Get>
<Get>
   <CmdID>19</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/CacheVersion</LocURI>
      </Target>
   </Item>
</Get>
<Get>
   <CmdID>20</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/ChangedNodes</LocURI>
      </Target>
   </Item>
</Get>
<Get>
   <CmdID>21</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0001</LocURI>
      </Target>
   </Item>
</Get>
<Get>
   <CmdID>22</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0001/ExpectedValue</LocURI>
      </Target>
   </Item>
</Get>
```

Replacing the cache version, node URI, and expected value:

```xml
<Replace>
   <CmdID>2</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/CacheVersion</LocURI>
      </Target>
      <Data>SCCM0001@!Replace</Data>
   </Item>
</Replace>
<Replace>
   <CmdID>2</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0001/NodeURI</LocURI>
      </Target>
      <Data>./Vendor/MSFT/DeviceLock/DeviceValue/AllowSimpleDevicePassword</Data>
    </Item>
</Replace>
<Replace>
   <CmdID>2</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/NodeCache/MDMSRV1/Nodes/Node_0001/ExpectedValue</LocURI>
      </Target>
      <Data>2</Data>
   </Item>
</Replace>
```

For AutoSetExpectedValue, a Replace operation with empty data will query the ./DevDetail/Ext/Microsoft/DeviceName.

```xml
<Add>
    <CmdID>2001</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/NodeCache/MDM%20SyncML%20Server/Nodes/20</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">node</Format>
        </Meta>
    </Item>
</Add>
<Add>
    <CmdID>2002</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/NodeCache/MDM%20SyncML%20Server/Nodes/20/NodeURI</LocURI>
        </Target>
        <Data>./DevDetail/Ext/Microsoft/DeviceName</Data>
    </Item>
</Add>
<Replace>
    <CmdID>2003</CmdID>
    <Item>
        <Target>
            <LocURI>./Vendor/MSFT/NodeCache/MDM%20SyncML%20Server/Nodes/20/AutoSetExpectedValue</LocURI>
        </Target>
        <Data></Data>
    </Item>
</Replace>
```

A Get operation on `./Vendor/MSFT/NodeCache/MDM%20SyncML%20Server/Nodes/20/ExpectedValue` returns what the Device Name was when the AutoSet was called.

A Get operation on the ChangedNodesData returns an encoded XML. Here's an example:

```xml
<Nodes><Node Id="10" Uri=""></Node><Node Id="20" Uri="./DevDetail/Ext/Microsoft/DeviceName">U09NRU5FV1ZBTFVF</Node></Nodes>
```

It represents this example:

```xml
<Nodes>
    <Node Id="10" Uri=""></Node>
    <Node Id="20" Uri="./DevDetail/Ext/Microsoft/DeviceName">U09NRU5FV1ZBTFVF</Node>
</Nodes>
```

Id is the node ID that was added by the MDM server, and Uri is the path that the node is tracking.
If a Uri is not set, the node will always be reported as changed, as in Node ID 10.

The value inside of the node tag is the actual value returned by the Uri, which means that for Node ID 20 the DeviceName did not match what was previously expected, and the device name is now U09NRU5FV1ZBTFVF instead of what it was previously.
<!-- NodeCache-CspMoreInfo-End -->

<!-- NodeCache-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
