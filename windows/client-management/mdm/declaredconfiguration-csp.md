---
title: DeclaredConfiguration CSP
description: Learn more about the DeclaredConfiguration CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 09/27/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- DeclaredConfiguration-Begin -->
# DeclaredConfiguration CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- DeclaredConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The primary MDM model is one where the MDM server is solely responsible for orchestration and continuous maintenance of the state of the device for configuration scenarios. This behavior results in intensive network traffic and high network latency due to the synchronous configuration model based on the OMA-DM Syncml standard. It's also error-prone given that the server needs deep knowledge of the client.

The declared configuration device management model requires the server to deliver all the setting values to the device for the scenario configuration. The server sends them asynchronously in batches through the client declared configuration CSP.

- During the client-initiated OMA-DM session, the declared configuration server sends a configuration or an inventory declared configuration document to the client through the [Declared Configuration CSP URI](#declared-configuration-oma-uri). If the device verifies the syntax of the document is correct, the client stack pushes the request to its orchestrator to process the request asynchronously. The client stack then exits, and returns control back to the declared configuration service. This behavior allows the device to asynchronously process the request.

- On the client, if there are any requests in process or completed, it sends a [generic alert](#declared-configuration-generic-alert) to the server. This alert summarizes each document's status, state, and progress. Every client HTTPS request to the declared configuration OMA-DM server includes this summary.

- The declared configuration server uses the generic alert to determine which requests are completed successfully or with errors. The server can then synchronously retrieve the declared configuration document process results through the [Declared Configuration CSP URI](#declared-configuration-oma-uri).

<!-- DeclaredConfiguration-Editable-End -->

<!-- DeclaredConfiguration-Tree-Begin -->
The following list shows the DeclaredConfiguration configuration service provider nodes:

- ./Device/Vendor/MSFT/DeclaredConfiguration
  - [Host](#host)
    - [Complete](#hostcomplete)
      - [Documents](#hostcompletedocuments)
        - [{DocID}](#hostcompletedocumentsdocid)
          - [Document](#hostcompletedocumentsdociddocument)
          - [Properties](#hostcompletedocumentsdocidproperties)
            - [Abandoned](#hostcompletedocumentsdocidpropertiesabandoned)
      - [Results](#hostcompleteresults)
        - [{DocID}](#hostcompleteresultsdocid)
          - [Document](#hostcompleteresultsdociddocument)
    - [Inventory](#hostinventory)
      - [Documents](#hostinventorydocuments)
        - [{DocID}](#hostinventorydocumentsdocid)
          - [Document](#hostinventorydocumentsdociddocument)
      - [Results](#hostinventoryresults)
        - [{DocID}](#hostinventoryresultsdocid)
          - [Document](#hostinventoryresultsdociddocument)
  - [ManagementServiceConfiguration](#managementserviceconfiguration)
    - [CertificateExpirationThreshold](#managementserviceconfigurationcertificateexpirationthreshold)
    - [RefreshInterval](#managementserviceconfigurationrefreshinterval)
    - [StartSyncSessionOnFailure](#managementserviceconfigurationstartsyncsessiononfailure)
<!-- DeclaredConfiguration-Tree-End -->

<!-- Device-Host-Begin -->
## Host

<!-- Device-Host-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Applicability-End -->

<!-- Device-Host-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host
```
<!-- Device-Host-OmaUri-End -->

<!-- Device-Host-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Description-End -->

<!-- Device-Host-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Editable-End -->

<!-- Device-Host-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-DFProperties-End -->

<!-- Device-Host-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Examples-End -->

<!-- Device-Host-End -->

<!-- Device-Host-Complete-Begin -->
### Host/Complete

<!-- Device-Host-Complete-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Applicability-End -->

<!-- Device-Host-Complete-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete
```
<!-- Device-Host-Complete-OmaUri-End -->

<!-- Device-Host-Complete-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Description-End -->

<!-- Device-Host-Complete-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The server to client flow of the **Complete** request is the same as an **Inventory** request.
<!-- Device-Host-Complete-Editable-End -->

<!-- Device-Host-Complete-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Complete-DFProperties-End -->

<!-- Device-Host-Complete-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Examples-End -->

<!-- Device-Host-Complete-End -->

<!-- Device-Host-Complete-Documents-Begin -->
#### Host/Complete/Documents

<!-- Device-Host-Complete-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Documents-Applicability-End -->

<!-- Device-Host-Complete-Documents-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents
```
<!-- Device-Host-Complete-Documents-OmaUri-End -->

<!-- Device-Host-Complete-Documents-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Documents-Description-End -->

<!-- Device-Host-Complete-Documents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-Editable-End -->

<!-- Device-Host-Complete-Documents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Complete-Documents-DFProperties-End -->

<!-- Device-Host-Complete-Documents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-Examples-End -->

<!-- Device-Host-Complete-Documents-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Begin -->
##### Host/Complete/Documents/{DocID}

<!-- Device-Host-Complete-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Documents-{DocID}-Applicability-End -->

<!-- Device-Host-Complete-Documents-{DocID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}
```
<!-- Device-Host-Complete-Documents-{DocID}-OmaUri-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Documents-{DocID}-Description-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Editable-End -->

<!-- Device-Host-Complete-Documents-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}` |
<!-- Device-Host-Complete-Documents-{DocID}-DFProperties-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Examples-End -->

<!-- Device-Host-Complete-Documents-{DocID}-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Document-Begin -->
###### Host/Complete/Documents/{DocID}/Document

<!-- Device-Host-Complete-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Documents-{DocID}-Document-Applicability-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Document-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Document
```
<!-- Device-Host-Complete-Documents-{DocID}-Document-OmaUri-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Documents-{DocID}-Document-Description-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Document-Editable-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Host-Complete-Documents-{DocID}-Document-DFProperties-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Document-Examples-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Document-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Begin -->
###### Host/Complete/Documents/{DocID}/Properties

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Applicability-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Properties
```
<!-- Device-Host-Complete-Documents-{DocID}-Properties-OmaUri-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Description-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Editable-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Complete-Documents-{DocID}-Properties-DFProperties-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Examples-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Begin -->
###### Host/Complete/Documents/{DocID}/Properties/Abandoned

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Applicability-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Properties/Abandoned
```
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-OmaUri-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Description-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Editable-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-DFProperties-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Insert Description Here. |
| 1 | Insert Description Here. |
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-AllowedValues-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Examples-End -->

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-End -->

<!-- Device-Host-Complete-Results-Begin -->
#### Host/Complete/Results

<!-- Device-Host-Complete-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Results-Applicability-End -->

<!-- Device-Host-Complete-Results-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results
```
<!-- Device-Host-Complete-Results-OmaUri-End -->

<!-- Device-Host-Complete-Results-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Results-Description-End -->

<!-- Device-Host-Complete-Results-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Results-Editable-End -->

<!-- Device-Host-Complete-Results-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Host-Complete-Results-DFProperties-End -->

<!-- Device-Host-Complete-Results-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Results-Examples-End -->

<!-- Device-Host-Complete-Results-End -->

<!-- Device-Host-Complete-Results-{DocID}-Begin -->
##### Host/Complete/Results/{DocID}

<!-- Device-Host-Complete-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Results-{DocID}-Applicability-End -->

<!-- Device-Host-Complete-Results-{DocID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/{DocID}
```
<!-- Device-Host-Complete-Results-{DocID}-OmaUri-End -->

<!-- Device-Host-Complete-Results-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Results-{DocID}-Description-End -->

<!-- Device-Host-Complete-Results-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Results-{DocID}-Editable-End -->

<!-- Device-Host-Complete-Results-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Host-Complete-Results-{DocID}-DFProperties-End -->

<!-- Device-Host-Complete-Results-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Results-{DocID}-Examples-End -->

<!-- Device-Host-Complete-Results-{DocID}-End -->

<!-- Device-Host-Complete-Results-{DocID}-Document-Begin -->
###### Host/Complete/Results/{DocID}/Document

<!-- Device-Host-Complete-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Complete-Results-{DocID}-Document-Applicability-End -->

<!-- Device-Host-Complete-Results-{DocID}-Document-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/{DocID}/Document
```
<!-- Device-Host-Complete-Results-{DocID}-Document-OmaUri-End -->

<!-- Device-Host-Complete-Results-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Complete-Results-{DocID}-Document-Description-End -->

<!-- Device-Host-Complete-Results-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Complete-Results-{DocID}-Document-Editable-End -->

<!-- Device-Host-Complete-Results-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Host-Complete-Results-{DocID}-Document-DFProperties-End -->

<!-- Device-Host-Complete-Results-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Complete-Results-{DocID}-Document-Examples-End -->

<!-- Device-Host-Complete-Results-{DocID}-Document-End -->

<!-- Device-Host-Inventory-Begin -->
### Host/Inventory

<!-- Device-Host-Inventory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Inventory-Applicability-End -->

<!-- Device-Host-Inventory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory
```
<!-- Device-Host-Inventory-OmaUri-End -->

<!-- Device-Host-Inventory-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Inventory-Description-End -->

<!-- Device-Host-Inventory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The server to client flow of the **Inventory** request is the same as the **Complete** request.
<!-- Device-Host-Inventory-Editable-End -->

<!-- Device-Host-Inventory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Inventory-DFProperties-End -->

<!-- Device-Host-Inventory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Examples-End -->

<!-- Device-Host-Inventory-End -->

<!-- Device-Host-Inventory-Documents-Begin -->
#### Host/Inventory/Documents

<!-- Device-Host-Inventory-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Inventory-Documents-Applicability-End -->

<!-- Device-Host-Inventory-Documents-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents
```
<!-- Device-Host-Inventory-Documents-OmaUri-End -->

<!-- Device-Host-Inventory-Documents-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Inventory-Documents-Description-End -->

<!-- Device-Host-Inventory-Documents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Documents-Editable-End -->

<!-- Device-Host-Inventory-Documents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Inventory-Documents-DFProperties-End -->

<!-- Device-Host-Inventory-Documents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Documents-Examples-End -->

<!-- Device-Host-Inventory-Documents-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Begin -->
##### Host/Inventory/Documents/{DocID}

<!-- Device-Host-Inventory-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Inventory-Documents-{DocID}-Applicability-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents/{DocID}
```
<!-- Device-Host-Inventory-Documents-{DocID}-OmaUri-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Inventory-Documents-{DocID}-Description-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Documents-{DocID}-Editable-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}` |
<!-- Device-Host-Inventory-Documents-{DocID}-DFProperties-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Documents-{DocID}-Examples-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Document-Begin -->
###### Host/Inventory/Documents/{DocID}/Document

<!-- Device-Host-Inventory-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Inventory-Documents-{DocID}-Document-Applicability-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Document-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents/{DocID}/Document
```
<!-- Device-Host-Inventory-Documents-{DocID}-Document-OmaUri-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Inventory-Documents-{DocID}-Document-Description-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Documents-{DocID}-Document-Editable-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Host-Inventory-Documents-{DocID}-Document-DFProperties-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Documents-{DocID}-Document-Examples-End -->

<!-- Device-Host-Inventory-Documents-{DocID}-Document-End -->

<!-- Device-Host-Inventory-Results-Begin -->
#### Host/Inventory/Results

<!-- Device-Host-Inventory-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Inventory-Results-Applicability-End -->

<!-- Device-Host-Inventory-Results-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Results
```
<!-- Device-Host-Inventory-Results-OmaUri-End -->

<!-- Device-Host-Inventory-Results-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Inventory-Results-Description-End -->

<!-- Device-Host-Inventory-Results-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Results-Editable-End -->

<!-- Device-Host-Inventory-Results-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Host-Inventory-Results-DFProperties-End -->

<!-- Device-Host-Inventory-Results-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Results-Examples-End -->

<!-- Device-Host-Inventory-Results-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Begin -->
##### Host/Inventory/Results/{DocID}

<!-- Device-Host-Inventory-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Inventory-Results-{DocID}-Applicability-End -->

<!-- Device-Host-Inventory-Results-{DocID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Results/{DocID}
```
<!-- Device-Host-Inventory-Results-{DocID}-OmaUri-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Inventory-Results-{DocID}-Description-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Results-{DocID}-Editable-End -->

<!-- Device-Host-Inventory-Results-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Host-Inventory-Results-{DocID}-DFProperties-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Results-{DocID}-Examples-End -->

<!-- Device-Host-Inventory-Results-{DocID}-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Document-Begin -->
###### Host/Inventory/Results/{DocID}/Document

<!-- Device-Host-Inventory-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Inventory-Results-{DocID}-Document-Applicability-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Document-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Results/{DocID}/Document
```
<!-- Device-Host-Inventory-Results-{DocID}-Document-OmaUri-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Inventory-Results-{DocID}-Document-Description-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Results-{DocID}-Document-Editable-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Host-Inventory-Results-{DocID}-Document-DFProperties-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Inventory-Results-{DocID}-Document-Examples-End -->

<!-- Device-Host-Inventory-Results-{DocID}-Document-End -->

<!-- Device-ManagementServiceConfiguration-Begin -->
## ManagementServiceConfiguration

<!-- Device-ManagementServiceConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-ManagementServiceConfiguration-Applicability-End -->

<!-- Device-ManagementServiceConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/ManagementServiceConfiguration
```
<!-- Device-ManagementServiceConfiguration-OmaUri-End -->

<!-- Device-ManagementServiceConfiguration-Description-Begin -->
<!-- Description-Source-DDF -->
Configuration settings for WinDC behavior.
<!-- Device-ManagementServiceConfiguration-Description-End -->

<!-- Device-ManagementServiceConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-Editable-End -->

<!-- Device-ManagementServiceConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-ManagementServiceConfiguration-DFProperties-End -->

<!-- Device-ManagementServiceConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-Examples-End -->

<!-- Device-ManagementServiceConfiguration-End -->

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Begin -->
### ManagementServiceConfiguration/CertificateExpirationThreshold

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Applicability-End -->

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/ManagementServiceConfiguration/CertificateExpirationThreshold
```
<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-OmaUri-End -->

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines the number of minutes as near expiration check for certificate.
<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Description-End -->

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Editable-End -->

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 2880 |
<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-DFProperties-End -->

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-Examples-End -->

<!-- Device-ManagementServiceConfiguration-CertificateExpirationThreshold-End -->

<!-- Device-ManagementServiceConfiguration-RefreshInterval-Begin -->
### ManagementServiceConfiguration/RefreshInterval

<!-- Device-ManagementServiceConfiguration-RefreshInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-ManagementServiceConfiguration-RefreshInterval-Applicability-End -->

<!-- Device-ManagementServiceConfiguration-RefreshInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/ManagementServiceConfiguration/RefreshInterval
```
<!-- Device-ManagementServiceConfiguration-RefreshInterval-OmaUri-End -->

<!-- Device-ManagementServiceConfiguration-RefreshInterval-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines the number of minutes between refreshes.
<!-- Device-ManagementServiceConfiguration-RefreshInterval-Description-End -->

<!-- Device-ManagementServiceConfiguration-RefreshInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-RefreshInterval-Editable-End -->

<!-- Device-ManagementServiceConfiguration-RefreshInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[30-4294967295]` |
| Default Value  | 240 |
<!-- Device-ManagementServiceConfiguration-RefreshInterval-DFProperties-End -->

<!-- Device-ManagementServiceConfiguration-RefreshInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-RefreshInterval-Examples-End -->

<!-- Device-ManagementServiceConfiguration-RefreshInterval-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Begin -->
### ManagementServiceConfiguration/StartSyncSessionOnFailure

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Applicability-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/ManagementServiceConfiguration/StartSyncSessionOnFailure
```
<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-OmaUri-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Description-Begin -->
<!-- Description-Source-DDF -->
This node determines whether or not to start a sync session when failed to refresh.
<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Description-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Editable-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-DFProperties-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true | Start a sync session when failed to refresh. |
| false (Default) | Don't start a sync session when failed to refresh. |
<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-AllowedValues-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-Examples-End -->

<!-- Device-ManagementServiceConfiguration-StartSyncSessionOnFailure-End -->

<!-- DeclaredConfiguration-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Declared configuration OMA URI

A declared configuration request is sent using an OMA-URI similar to `./Device/Vendor/MSFT/DeclaredConfiguration/Host/[Complete|Inventory]/Documents/{DocID}/Document`.

- The URI is prefixed with a targeted scope. The target of the scenario settings can only be device wide for extensibility. The scope should be `Device`.
- `{DocID}` is a unique identifier for the desired state of the configuration scenario. Every document must have an ID, which must be a GUID.
- The request can be a **Configuration**, **Inventory**, or **Complete** request.

The following URI is an example of a **Complete** request: `./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document`

## DeclaredConfiguration document XML

The value of the leaf node `Document` is an XML document that describes the request. The actual processing of the request pivots around the `osdefinedscenario` tag:

- `MSFTExtensibilityMIProviderConfig`: Used to configure MI provider settings.
- `MSFTExtensibilityMIProviderInventory`:  Used to retrieve MI provider setting values.

The DeclaredConfiguration CSP synchronously validates the batch of settings described by the `<DeclaredConfiguration>` element, which represents the declared configuration document. It checks for correct syntax based on the declared configuration XML schema. If there's a syntax error, the CSP returns an error immediately back to the server as part of the current OMA-DM session. If the syntax check passes, then the request is passed on to a Windows service. The Windows service asynchronously attempts the desired state configuration of the specified scenario. This process frees up the server to do other work thus the low latency of this  declared configuration protocol. The Windows client service, the orchestrator, is responsible for driving the configuration of the device based on the server supplied desire state. The service also maintains this state throughout its lifetime, until the server removes or modifies it.

The following example uses the built-in, native MI provider `MSFT_FileDirectoryConfiguration` with the OS-defined scenario `MSFTExtensibilityMIProviderConfig`:

```xml
<DeclaredConfiguration schema="1.0" context="Device" id="27FEA311-68B9-4320-9FC4-296F6FDFAFE2" checksum="99925209110918B67FE962460137AA3440AFF4DB6ABBE15C8F499682457B9999" osdefinedscenario="MSFTExtensibilityMIProviderConfig">
    <DSC namespace="root/Microsoft/Windows/DesiredStateConfiguration" className="MSFT_FileDirectoryConfiguration">
        <Key name="DestinationPath">c:\data\test\bin\ut_extensibility.tmp</Key>
        <Value name="Contents">TestFileContentBlah</Value>
    </DSC>
</DeclaredConfiguration>
```

The standard OMA-DM SyncML syntax is used to specify the DeclaredConfiguration CSP operations such as **Replace**, **Set**, and **Delete**. The payload of the SyncML's `<Data>` element must be XML-encoded. For this XML encoding, there are various online encoders that you can use. To avoid encoding the payload, you can use [CDATA Section](https://www.w3.org/TR/REC-xml/#sec-cdata-sect) as shown in the following example:

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>14</CmdID>
      <Item>
        <Target>
          <LocURI> ./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/99988660-9080-3433-96e8-f32e85011999/Document</LocURI>
        </Target>
        <Data>
          <![CDATA[<DeclaredConfiguration schema="1.0" context="Device" id="27FEA311-68B9-4320-9FC4-296F6FDFAFE2" checksum="99925209110918B67FE962460137AA3440AFF4DB6ABBE15C8F499682457B9999" osdefinedscenario="MSFTExtensibilityMIProviderConfig">
                <DSC namespace="root/Microsoft/Windows/DesiredStateConfiguration" className="MSFT_FileDirectoryConfiguration">
                    <Key name="DestinationPath">c:\data\test\bin\ut_extensibility.tmp</Key>
                    <Value name="Contents">TestFileContentBlah</Value>
                </DSC>
            </DeclaredConfiguration>]]>
        </Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

### DeclaredConfiguration XML document tags

Both `MSFTExtensibilityMIProviderConfig` and `MSFTExtensibilityMIProviderInventory` are OS-defined scenarios that require the same tags and attributes.

- The `<DeclaredConfiguration>` XML tag specifies the details of the declared configuration document to process. The document could be part of a configuration request or an inventory request. The DeclaredConfiguration CSP has two URIs to allow the specification of a configuration or an inventory request.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | `schema` | The schema version of the xml. Currently `1.0`. |
    | `context` | States that this document is targeting the device. The value should be `Device`. |
    | `id` | The unique identifier of the document set by the server. This value should be a GUID. |
    | `checksum` | This value is the server-supplied version of the document. |
    | `osdefinedscenario` | The named scenario that the client should configure with the given configuration data. For  extensibility, the scenario is either `MSFTExtensibilityMIProviderConfig` or `MSFTExtensibilityMIProviderInventory`. |

- The `<DSC>` XML tag describes the targeted WMI provider expressed by a namespace and class name along with the values either to be applied to the device or queried by the MI provider.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | `namespace` | Specifies the targeted MI provider namespace. |
    | `classname` | The targeted MI provider. |

- The `<Key>` XML tag describes the required parameter name and value. It only needs a value for configuration. The name is an attribute and the value is `<Key>` content.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | `name` | Specifies the name of an MI provider parameter. |

- The `<Value>` XML tag describes the optional parameter name and value. It only needs a value for configuration. The name is an attribute and the value is `<Value>` content.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | `name` | Specifies the name of an MI provider parameter. |

## Declared configuration generic alert

On every client response to the server's request, the client constructs a declared configuration alert. This alert summarizes the state of each of the documents that the Windows service has processed. The following XML is an example alert:

```xml
<Alert>
  <CmdID>1</CmdID>
  <Data>1224</Data>
  <Item>
    <Meta>
      <Type xmlns="syncml:metinf">com.microsoft.mdm.declaredconfigurationdocuments</Type>
    </Meta>
    <Data>
      <DeclaredConfigurations schema="1.0">
        <DeclaredConfiguration context="Device"
                               id="27FEA311-68B9-4320-9FC4-296F6FDFAFE2"
                               checksum="99925209110918B67FE962460137AA3440AFF4DB6ABBE15C8F499682457B9999"
                               result_checksum="EE4F1636201B0D39F71654427E420E625B9459EED17ACCEEE1AC9B358F4283FD"
                               state="60" />
      </DeclaredConfigurations>
    </Data>
  </Item>
</Alert>
```

In this example, there's one declared configuration document listed in the alert summary. The alert summary lists every document that the client stack is processing, either a configuration or inventory request. It describes the context of the document that specifies the scope of how the document is applied. The **context** value should be `Device`.

The **state** attribute has a value of `60`, which indicates that the document was processed successfully. The following class defines the other state values:

```csharp
enum class DCCSPURIState :unsigned long
{
    NotDefined = 0, // transient
    ConfigRequest = 1, // transient
    ConfigInprogress = 2, // transient
    ConfigInProgressAsyncPending = 3, // transient: Async operation is performed but pending results
    DeleteRequest = 10,  // transient
    DeleteInprogress = 11,  // transient

    GetRequest = 20,  // transient
    GetInprogress = 21,  // transient

    ConstructURIStorageSuccess = 40, // transient

    ConfigCompletedSuccess = 60, // permanent
    ConfigCompletedError = 61, // permanent
    ConfigInfraError = 62, // permanent
    ConfigCompletedSuccessNoRefresh = 63, // permanent

    DeleteCompletedSuccess = 70, // permanent
    DeleteCompletedError = 71, // permanent
    DeleteInfraError = 72, // permanent

    GetCompletedSuccess = 80, // permanent
    GetCompletedError = 81, // permanent
    GetInfraError = 82 // permanent
};
```

## SyncML examples

- Retrieve the results of a configuration or inventory request:

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Get>
          <CmdID>2</CmdID>
          <Item>
            <Meta>
              <Format>chr</Format>
              <Type>text/plain</Type>
            </Meta>
            <Target>
              <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document</LocURI>
            </Target>
          </Item>
        </Get>
        <Final />
      </SyncBody>
    </SyncML>
    ```

    ```xml
    <Status>
        <CmdID>2</CmdID>
        <MsgRef>1</MsgRef>
        <CmdRef>2</CmdRef>
        <Cmd>Get</Cmd>
        <Data>200</Data>
    </Status>
    <Results>
        <CmdID>3</CmdID>
        <MsgRef>1</MsgRef>
        <CmdRef>2</CmdRef>
        <Item>
            <Source>
                <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document</LocURI>
            </Source>
            <Data>
                <DeclaredConfigurationResult context="Device" schema="1.0" id="99988660-9080-3433-96e8-f32e85011999" osdefinedscenario="MSFTPolicies" checksum="99925209110918B67FE962460137AA3440AFF4DB6ABBE15C8F499682457B9999" result_checksum="EE4F1636201B0D39F71654427E420E625B9459EED17ACCEEE1AC9B358F4283FD" operation="Set" state="60">
                    <DSC namespace="root/Microsoft/Windows/DesiredStateConfiguration" className="MSFT_FileDirectoryConfiguration" status="200" state="60">
                        <Key name="DestinationPath" />
                        <Value name="Contents" />
                    </DSC>
                </DeclaredConfigurationResult>
            </Data>
        </Item>
    </Results>
    ```

- Replace a configuration or inventory request

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Replace>
          <CmdID>14</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document</LocURI>
            </Target>
            <Data>
              <![CDATA[<DeclaredConfiguration schema="1.0" context="Device" id="27FEA311-68B9-4320-9FC4-296F6FDFAFE2" checksum="99995209110918B67FE962460137AA3440AFF4DB6ABBE15C8F49968245799999" osdefinedscenario="MSFTExtensibilityMIProviderInventory">
                    <DSC namespace="root/Microsoft/Windows/DesiredStateConfiguration" className="MSFT_FileDirectoryConfiguration">
                        <Key name="DestinationPath">c:/temp/foobar.tmp</Key>
                        <Value name="Contents"></Value>
                    </DSC>
                </DeclaredConfiguration>]]>
            </Data>
          </Item>
        </Replace>
        <Final />
      </SyncBody>
    </SyncML>
    ```

    ```xml
    <Status>
        <CmdID>2</CmdID>
        <MsgRef>1</MsgRef>
        <CmdRef>2</CmdRef>
        <Cmd>Get</Cmd>
        <Data>200</Data>
    </Status><Results>
        <CmdID>3</CmdID>
        <MsgRef>1</MsgRef>
        <CmdRef>2</CmdRef>
        <Item>
            <Source>
                <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Results/99998660-9080-3433-96e8-f32e85019999/Document</LocURI>
            </Source>
            <Data>
                <DeclaredConfigurationResult context="Device" schema="1.0" id="27FEA311-68B9-4320-9FC4-296F6FDFAFE2" osdefinedscenario="MSFTExtensibilityMIProviderInventory" checksum="99995209110918B67FE962460137AA3440AFF4DB6ABBE15C8F49968245799999" result_checksum="A27B0D234CBC2FAC1292F1E8FBDF6A90690F3988DEDC9D716829856C9ACE0E20" operation="Get" state="80">
                    <DSC namespace="root/Microsoft/Windows/DesiredStateConfiguration" className="MSFT_FileDirectoryConfiguration" status="200" state="80">
                        <Key name="DestinationPath">c:/temp/foobar.tmp</Key>
                        <Value name="Contents">TestFileContent</Value>
                    </DSC>
                </DeclaredConfigurationResult>
            </Data>
        </Item>
    </Results>
    ```

- Abandon a configuration or inventory request. This process results in the client tracking the document but not reapplying it. The alert has the `Abandoned` property set to `1`, which indicates that the document is no longer managed by the declared configuration server.

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
    <SyncBody>
        <Replace>
        <CmdID>2</CmdID>
        <Item>
            <Meta>
            <Format>int</Format>
            <Type>text/plain</Type>
            </Meta>
            <Target>
            <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Properties/Abandoned</LocURI>
            </Target>
            <Data>1</Data>
        </Item>
        </Replace>
    <Final/>
    </SyncBody>
    </SyncML>
    ```

- Deletion of configuration or inventory request. The SyncML deletion of the document only removes the document but any extensibility settings persist on the device (tattoo).

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <SyncML xmlns="SYNCML:SYNCML1.1">
    <SyncBody>
        <Delete>
            <CmdID>2</CmdID>
            <Item>
            <Target>
                <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document</LocURI>
            </Target>
            </Item>
        </Delete>
        <Final/>
        </SyncBody>
    </SyncML>
    ```
<!-- DeclaredConfiguration-CspMoreInfo-End -->

<!-- DeclaredConfiguration-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
