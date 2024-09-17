---
title: DeclaredConfiguration CSP
description: Learn more about the DeclaredConfiguration CSP.
ms.date: 09/12/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DeclaredConfiguration-Begin -->
# DeclaredConfiguration CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- DeclaredConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The primary MDM model is one where the MDM server is solely responsible for orchestration and continuous maintenance of the state of the device for configuration scenarios. This behavior results in intensive network traffic and high network latency due to the synchronous configuration model based on the OMA-DM Syncml standard. It's also error-prone given that the server needs deep knowledge of the client.

The Windows declared configuration (WinDC) device management model requires the server to deliver all the setting values to the device for the scenario configuration. The server sends them asynchronously in batches through the DeclaredConfiguration CSP.

- During the client-initiated OMA-DM session, the WinDC server sends a configuration or an inventory WinDC document to the client through the [DeclaredConfiguration CSP URI](#declaredconfiguration-oma-uri). If the device verifies the syntax of the document is correct, the client stack pushes the request to its orchestrator to process the request asynchronously. The client stack then exits, and returns control back to the WinDC service. This behavior allows the device to asynchronously process the request.

- On the client, if there are any requests in process or completed, it sends a [generic alert](#windc-generic-alert) to the server. This alert summarizes each document's status, state, and progress. Every client HTTPS request to the WinDC OMA-DM server includes this summary.

- The WinDC server uses the generic alert to determine which requests are completed successfully or with errors. The server can then synchronously retrieve the WinDC document process results through the [DeclaredConfiguration CSP URI](#declaredconfiguration-oma-uri).
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
<!-- Description-Source-DDF -->
The Host internal node indicates that the target of the configuration request or inventory request is the host OS. This node is for scope in case enclaves are ever targeted for configuration.
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
<!-- Description-Source-DDF -->
This internal node indicates that the configuration has discrete settings values and is self-contained with complete setting and value pairs that don't contain placeholders that need to be resolved later with additional data. The request is ready to be processed as is.
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
<!-- Description-Source-DDF -->
The Documents node indicates that the configuration is in the form of a document, which is a collection of settings used to configure a scenario by the Declared Configuration stack.
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
<!-- Description-Source-DDF -->
Uniquely identifies the configuration document. No other document can have this id. The Id should be a GUID.
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
<!-- Description-Source-DDF -->
The Document node's value is an XML based document containing a collection of settings and values to configure the specified scenario. The Declared Configuration stack verifies the syntax of the document, the stack marks the document to be processed asynchronously by the client. The stack then returns control back to the OMA-DM service. The stack, in turn, asynchronously processes the request. Below is an example of a specified desired state configuration using the Declared Configuration URI ./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/27FEA311-68. B9-4320-9. FC4-296. F6FDFAFE2/Document.
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
<!-- Description-Source-DDF -->
The Properties node encapsulates the list of properties that apply to the specified document referenced by [DocID].
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
<!-- Description-Source-DDF -->
The Abandoned node allows the OMA-DM server to indicate that the document is no longer managed.
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
| 0 (Default) | The document is no longer managed. |
| 1 | The document is managed. |
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
<!-- Description-Source-DDF -->
The Results node indicates that this is part of the URI path that will return an XML document containing the results of the configuration request.
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
<!-- Description-Source-DDF -->
Uniquely identifies the configuration document in which results of the configuration request will be returned.
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
<!-- Description-Source-DDF -->
The Document node's value is an XML based document containing a collection of setting results from the configuration request specified by [DocId].
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
<!-- Description-Source-DDF -->
The Inventory internal node indicates that this is an inventory request. The setting values to be retrieved are specified in an XML document through the Document leaf node.
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
<!-- Description-Source-DDF -->
The Documents node indicates that the inventory request is in the form of a document, which is a collection of settings used to retrieve their values.
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
<!-- Description-Source-DDF -->
Uniquely identifies the inventory document. No other document can have this id. The Id should be a GUID.
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
<!-- Description-Source-DDF -->
The Document node's value is an XML based document containing a collection of settings that will be used to retrieve their values. The Declared Configuration stack verifies the syntax of the document, the stack marks the document to be processed asynchronously by the client. The stack then returns control back to the OMA-DM service. The stack, in turn, asynchronously processes the request. Below is an example of a specified desired state configuration using the Declared Configuration URI ./Device/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents/27FEA311-68. B9-4320-9. FC4-296. F6FDFAFE2/Document.
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
<!-- Description-Source-DDF -->
The Results node indicates that this is part of the URI path that will return an XML document containing the results of the inventory request.
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
<!-- Description-Source-DDF -->
Uniquely identifies the inventory document. No other document can have this id. The Id should be a GUID.
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
<!-- Description-Source-DDF -->
The Document node's value is an XML based document containing a collection of setting results from the inventory request specified by [DocId].
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

<!-- DeclaredConfiguration-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## DeclaredConfiguration OMA URI

A WinDC request is sent using an OMA-URI similar to `./Device/Vendor/MSFT/DeclaredConfiguration/Host/[Complete|Inventory]/Documents/{DocID}/Document`.

- The URI is prefixed with a targeted scope (`User` or `Device`).
- `{DocID}` is a unique identifier for the desired state of the configuration scenario. Every document must have an ID, which must be a GUID.
- The request can be a **Inventory**, or **Complete** request.

The following URI is an example of a **Complete** request: `./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document`

## WinDC document

```xml
<DeclaredConfiguration
    schema="1.0"
    context="Device"
    id="27FEA311-68B9-4320-9FC4-296F6FDFAFE2"
    checksum="99925209110918B67FE962460137AA3440AFF4DB6ABBE15C8F499682457B9999"
    osdefinedscenario="MSFTExtensibilityMIProviderConfig">
    ... {Configuration Data} ...
</DeclaredConfiguration>
```

The `<DeclaredConfiguration>` XML tag specifies the details of the WinDC document to process. The document could be part of a configuration request or an inventory request. The DeclaredConfiguration CSP has two URIs to allow the specification of a [configuration](#hostcomplete) or an [inventory](#hostinventory) request.

This tag has the following attributes:

| Attribute           | Description                                                                            |
|---------------------|----------------------------------------------------------------------------------------|
| `schema`            | The schema version of the xml. Currently `1.0`.                                        |
| `context`           | States whether the document is targeting the device or user.                           |
| `id`                | The unique identifier of the document set by the server. This value should be a GUID.  |
| `checksum`          | This value is the server-supplied version of the document.                             |
| `osdefinedscenario` | The named scenario that the client should configure with the given configuration data. |

The DeclaredConfiguration CSP synchronously validates the batch of settings described by the `<DeclaredConfiguration>` element, which represents the WinDC document. It checks for correct syntax based on the WinDC XML schema. If there's a syntax error, the CSP returns an error immediately back to the server as part of the current OMA-DM session. If the syntax check passes, then the request is passed on to a Windows service. The Windows service asynchronously attempts the desired state configuration of the specified scenario. This process frees up the server to do other work thus the low latency of the WinDC protocol. The Windows client service, the orchestrator, is responsible for driving the configuration of the device based on the server supplied desire state. The service also maintains this state throughout its lifetime, until the server removes or modifies it.

The actual processing of the request pivots around the `osdefinedscenario` tag and the configuration data specified within the document. For more information, see:

- [WinDC document for resource access](../declared-configuration-resource-access.md#windc-document)
- [WinDC document for extensibility](../declared-configuration-extensibility.md#windc-document)

## WinDC generic alert

On every client response to the server's request, the client constructs a WinDC alert. This alert summarizes the state of each of the documents that the Windows service has processed. The following XML is an example alert:

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

In this example, there's one WinDC document listed in the alert summary. The alert summary lists every document that the client stack is processing, either a configuration or inventory request. It describes the context of the document that specifies the scope of how the document is applied. The **context** value should be `Device`.

The **state** attribute has a value of `60`, which indicates that the document was processed successfully.

## WinDC states

The following class defines the state values:

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

- [SyncML examples for resource access](../declared-configuration-resource-access.md#syncml-examples)
- [SyncML examples for extensibility](../declared-configuration-extensibility.md#syncml-examples)

### Abandon a WinDC document

Abandoning a resource occurs when certain resources are no longer targeted to a user or group. Instead of deleting the resource on the device, the server can choose to abandon the WinDC document. An abandoned resource stays on the device but stops refreshing the WinDC document that handles drift control. Also the [resource ownership](../declared-configuration-resource-access.md#resource-ownership) is transferred to MDM, which means the same resource can be modified via legacy MDM channel again.

This example demonstrates how to abandon a WinDC document, by setting the **Abandoned** property to **1**.

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

### Unabandon a WinDC document

Unabandoning the document causes the document to be applied right away, transferring the [resource ownership](../declared-configuration-resource-access.md#resource-ownership) back to WinDC management and blocking legacy MDM channel from managing the channels again.

This example demonstrates how to unabandon a WinDC document, by setting the **Abandoned** property to **0**.

```xml
<?xml version="1.0" encoding="utf-8"?>
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>10</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/DCA000B5-397D-40A1-AABF-40B25078A7F9/Properties/Abandoned</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>0</Data>
      </Item>
    </Replace>
    <Final />
  </SyncBody>
</SyncML>
```

### Delete a WinDC document

The SyncML deletion of the document only removes the document but any settings persist on the device. This example demonstrates how to delete a document.

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
