---
title: DeclaredConfiguration CSP
description: Learn more about the DeclaredConfiguration CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 09/12/2023
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
The Primary MDM Management device management model is one where the MDM server is solely responsible for orchestration and continuous maintenance of the state of the device for configuration scenarios. This results in intensive network traffic and high network latency due to the synchronous configuration model based on the OMA-DM Syncml standard. It's also error-prone given that the server needs intimate knowledge of client handling of configuration.

The new Declared Configuration device management model requires the server to deliver all the setting values to the device for the scenario configuration, in batch, asynchronously through the client Declared Configuration CSP.

- During the client initiated OMA-DM session, the Declared Configuration server sends a configuration or an inventory Declared Configuration document to the client through the [Declared Configuration CSP URI](#declared-configuration-oma-uri). If the device verifies the syntax of the document is correct, the client stack pushes the request to its orchestrator to be processed asynchronously. The client stack then exits, returning control back to Declared Configuration service allowing the device to asynchronously process the request.
- On the client, if there are any requests in process or completed, a [generic alert](#declared-configuration-document-generic-alert) is sent to the server summing up each document status, state, progress. This summation is sent on every client HTTP request to the Declared Configuration OMA-DM server.
- The Declared Configuration server uses the Alert to determine which requests are completed successfully or with errors. The server can then synchronously retrieve the Declared Configuration document process results through the [Declared Configuration CSP URI](#declared-configuration-oma-uri).
<!-- DeclaredConfiguration-Editable-End -->

<!-- DeclaredConfiguration-Tree-Begin -->
The following list shows the DeclaredConfiguration configuration service provider nodes:

- ./Device/Vendor/MSFT/DeclaredConfiguration
  - [Host](#devicehost)
    - [Complete](#devicehostcomplete)
      - [Documents](#devicehostcompletedocuments)
        - [{DocID}](#devicehostcompletedocumentsdocid)
          - [Document](#devicehostcompletedocumentsdociddocument)
          - [Properties](#devicehostcompletedocumentsdocidproperties)
            - [Abandoned](#devicehostcompletedocumentsdocidpropertiesabandoned)
      - [Results](#devicehostcompleteresults)
        - [{DocID}](#devicehostcompleteresultsdocid)
          - [Document](#devicehostcompleteresultsdociddocument)
    - [Inventory](#devicehostinventory)
      - [Documents](#devicehostinventorydocuments)
        - [{DocID}](#devicehostinventorydocumentsdocid)
          - [Document](#devicehostinventorydocumentsdociddocument)
      - [Results](#devicehostinventoryresults)
        - [{DocID}](#devicehostinventoryresultsdocid)
          - [Document](#devicehostinventoryresultsdociddocument)
    - [Template](#devicehosttemplate)
      - [Documents](#devicehosttemplatedocuments)
        - [{DocID}](#devicehosttemplatedocumentsdocid)
          - [Document](#devicehosttemplatedocumentsdociddocument)
          - [Properties](#devicehosttemplatedocumentsdocidproperties)
            - [Abandoned](#devicehosttemplatedocumentsdocidpropertiesabandoned)
          - [Variables](#devicehosttemplatedocumentsdocidvariables)
            - [{VariableName}](#devicehosttemplatedocumentsdocidvariablesvariablename)
              - [Value](#devicehosttemplatedocumentsdocidvariablesvariablenamevalue)
      - [Results](#devicehosttemplateresults)
        - [{DocID}](#devicehosttemplateresultsdocid)
          - [Document](#devicehosttemplateresultsdociddocument)
  - [ManagementServiceConfiguration](#devicemanagementserviceconfiguration)
    - [CertificateExpirationThreshold](#devicemanagementserviceconfigurationcertificateexpirationthreshold)
    - [RefreshInterval](#devicemanagementserviceconfigurationrefreshinterval)
    - [StartSyncSessionOnFailure](#devicemanagementserviceconfigurationstartsyncsessiononfailure)
- ./User/Vendor/MSFT/DeclaredConfiguration
  - [Host](#userhost)
    - [Complete](#userhostcomplete)
      - [Documents](#userhostcompletedocuments)
        - [{DocID}](#userhostcompletedocumentsdocid)
          - [Document](#userhostcompletedocumentsdociddocument)
          - [Properties](#userhostcompletedocumentsdocidproperties)
            - [Abandoned](#userhostcompletedocumentsdocidpropertiesabandoned)
      - [Results](#userhostcompleteresults)
        - [{DocID}](#userhostcompleteresultsdocid)
          - [Document](#userhostcompleteresultsdociddocument)
    - [Inventory](#userhostinventory)
      - [Documents](#userhostinventorydocuments)
        - [{DocID}](#userhostinventorydocumentsdocid)
          - [Document](#userhostinventorydocumentsdociddocument)
      - [Results](#userhostinventoryresults)
        - [{DocID}](#userhostinventoryresultsdocid)
          - [Document](#userhostinventoryresultsdociddocument)
    - [Template](#userhosttemplate)
      - [Documents](#userhosttemplatedocuments)
        - [{DocID}](#userhosttemplatedocumentsdocid)
          - [Document](#userhosttemplatedocumentsdociddocument)
          - [Properties](#userhosttemplatedocumentsdocidproperties)
            - [Abandoned](#userhosttemplatedocumentsdocidpropertiesabandoned)
          - [Variables](#userhosttemplatedocumentsdocidvariables)
            - [{VariableName}](#userhosttemplatedocumentsdocidvariablesvariablename)
              - [Value](#userhosttemplatedocumentsdocidvariablesvariablenamevalue)
      - [Results](#userhosttemplateresults)
        - [{DocID}](#userhosttemplateresultsdocid)
          - [Document](#userhosttemplateresultsdociddocument)
<!-- DeclaredConfiguration-Tree-End -->

<!-- Device-Host-Begin -->
## Device/Host

<!-- Device-Host-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
### Device/Host/Complete

<!-- Device-Host-Complete-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
#### Device/Host/Complete/Documents

<!-- Device-Host-Complete-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
##### Device/Host/Complete/Documents/{DocID}

<!-- Device-Host-Complete-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
###### Device/Host/Complete/Documents/{DocID}/Document

<!-- Device-Host-Complete-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
###### Device/Host/Complete/Documents/{DocID}/Properties

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
###### Device/Host/Complete/Documents/{DocID}/Properties/Abandoned

<!-- Device-Host-Complete-Documents-{DocID}-Properties-Abandoned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
#### Device/Host/Complete/Results

<!-- Device-Host-Complete-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
##### Device/Host/Complete/Results/{DocID}

<!-- Device-Host-Complete-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
###### Device/Host/Complete/Results/{DocID}/Document

<!-- Device-Host-Complete-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
### Device/Host/Inventory

<!-- Device-Host-Inventory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
#### Device/Host/Inventory/Documents

<!-- Device-Host-Inventory-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
##### Device/Host/Inventory/Documents/{DocID}

<!-- Device-Host-Inventory-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
###### Device/Host/Inventory/Documents/{DocID}/Document

<!-- Device-Host-Inventory-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
#### Device/Host/Inventory/Results

<!-- Device-Host-Inventory-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
##### Device/Host/Inventory/Results/{DocID}

<!-- Device-Host-Inventory-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
###### Device/Host/Inventory/Results/{DocID}/Document

<!-- Device-Host-Inventory-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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

<!-- Device-Host-Template-Begin -->
### Device/Host/Template

<!-- Device-Host-Template-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Applicability-End -->

<!-- Device-Host-Template-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template
```
<!-- Device-Host-Template-OmaUri-End -->

<!-- Device-Host-Template-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Description-End -->

<!-- Device-Host-Template-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Editable-End -->

<!-- Device-Host-Template-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Template-DFProperties-End -->

<!-- Device-Host-Template-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Examples-End -->

<!-- Device-Host-Template-End -->

<!-- Device-Host-Template-Documents-Begin -->
#### Device/Host/Template/Documents

<!-- Device-Host-Template-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-Applicability-End -->

<!-- Device-Host-Template-Documents-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents
```
<!-- Device-Host-Template-Documents-OmaUri-End -->

<!-- Device-Host-Template-Documents-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-Description-End -->

<!-- Device-Host-Template-Documents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-Editable-End -->

<!-- Device-Host-Template-Documents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Template-Documents-DFProperties-End -->

<!-- Device-Host-Template-Documents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-Examples-End -->

<!-- Device-Host-Template-Documents-End -->

<!-- Device-Host-Template-Documents-{DocID}-Begin -->
##### Device/Host/Template/Documents/{DocID}

<!-- Device-Host-Template-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-{DocID}-Applicability-End -->

<!-- Device-Host-Template-Documents-{DocID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}
```
<!-- Device-Host-Template-Documents-{DocID}-OmaUri-End -->

<!-- Device-Host-Template-Documents-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-{DocID}-Description-End -->

<!-- Device-Host-Template-Documents-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Editable-End -->

<!-- Device-Host-Template-Documents-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}` |
<!-- Device-Host-Template-Documents-{DocID}-DFProperties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Examples-End -->

<!-- Device-Host-Template-Documents-{DocID}-End -->

<!-- Device-Host-Template-Documents-{DocID}-Document-Begin -->
###### Device/Host/Template/Documents/{DocID}/Document

<!-- Device-Host-Template-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-{DocID}-Document-Applicability-End -->

<!-- Device-Host-Template-Documents-{DocID}-Document-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Document
```
<!-- Device-Host-Template-Documents-{DocID}-Document-OmaUri-End -->

<!-- Device-Host-Template-Documents-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-{DocID}-Document-Description-End -->

<!-- Device-Host-Template-Documents-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Document-Editable-End -->

<!-- Device-Host-Template-Documents-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Host-Template-Documents-{DocID}-Document-DFProperties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Document-Examples-End -->

<!-- Device-Host-Template-Documents-{DocID}-Document-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Begin -->
###### Device/Host/Template/Documents/{DocID}/Properties

<!-- Device-Host-Template-Documents-{DocID}-Properties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-{DocID}-Properties-Applicability-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Properties
```
<!-- Device-Host-Template-Documents-{DocID}-Properties-OmaUri-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-{DocID}-Properties-Description-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Properties-Editable-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Template-Documents-{DocID}-Properties-DFProperties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Properties-Examples-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Begin -->
###### Device/Host/Template/Documents/{DocID}/Properties/Abandoned

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Applicability-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Properties/Abandoned
```
<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-OmaUri-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Description-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Editable-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-DFProperties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Insert Description Here. |
| 1 | Insert Description Here. |
<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-AllowedValues-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-Examples-End -->

<!-- Device-Host-Template-Documents-{DocID}-Properties-Abandoned-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-Begin -->
###### Device/Host/Template/Documents/{DocID}/Variables

<!-- Device-Host-Template-Documents-{DocID}-Variables-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-{DocID}-Variables-Applicability-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Variables
```
<!-- Device-Host-Template-Documents-{DocID}-Variables-OmaUri-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-Description-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-Editable-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Host-Template-Documents-{DocID}-Variables-DFProperties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-Examples-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Begin -->
###### Device/Host/Template/Documents/{DocID}/Variables/{VariableName}

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Applicability-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Variables/{VariableName}
```
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-OmaUri-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Description-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Editable-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: This node name references a variable in the templated document. |
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-DFProperties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Examples-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Begin -->
###### Device/Host/Template/Documents/{DocID}/Variables/{VariableName}/Value

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Applicability-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Variables/{VariableName}/Value
```
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-OmaUri-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Description-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Editable-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-DFProperties-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Examples-End -->

<!-- Device-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-End -->

<!-- Device-Host-Template-Results-Begin -->
#### Device/Host/Template/Results

<!-- Device-Host-Template-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Results-Applicability-End -->

<!-- Device-Host-Template-Results-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Results
```
<!-- Device-Host-Template-Results-OmaUri-End -->

<!-- Device-Host-Template-Results-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Results-Description-End -->

<!-- Device-Host-Template-Results-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Results-Editable-End -->

<!-- Device-Host-Template-Results-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Host-Template-Results-DFProperties-End -->

<!-- Device-Host-Template-Results-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Results-Examples-End -->

<!-- Device-Host-Template-Results-End -->

<!-- Device-Host-Template-Results-{DocID}-Begin -->
##### Device/Host/Template/Results/{DocID}

<!-- Device-Host-Template-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Results-{DocID}-Applicability-End -->

<!-- Device-Host-Template-Results-{DocID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Results/{DocID}
```
<!-- Device-Host-Template-Results-{DocID}-OmaUri-End -->

<!-- Device-Host-Template-Results-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Results-{DocID}-Description-End -->

<!-- Device-Host-Template-Results-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Results-{DocID}-Editable-End -->

<!-- Device-Host-Template-Results-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Host-Template-Results-{DocID}-DFProperties-End -->

<!-- Device-Host-Template-Results-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Results-{DocID}-Examples-End -->

<!-- Device-Host-Template-Results-{DocID}-End -->

<!-- Device-Host-Template-Results-{DocID}-Document-Begin -->
###### Device/Host/Template/Results/{DocID}/Document

<!-- Device-Host-Template-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-Host-Template-Results-{DocID}-Document-Applicability-End -->

<!-- Device-Host-Template-Results-{DocID}-Document-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/DeclaredConfiguration/Host/Template/Results/{DocID}/Document
```
<!-- Device-Host-Template-Results-{DocID}-Document-OmaUri-End -->

<!-- Device-Host-Template-Results-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Host-Template-Results-{DocID}-Document-Description-End -->

<!-- Device-Host-Template-Results-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Host-Template-Results-{DocID}-Document-Editable-End -->

<!-- Device-Host-Template-Results-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Host-Template-Results-{DocID}-Document-DFProperties-End -->

<!-- Device-Host-Template-Results-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Host-Template-Results-{DocID}-Document-Examples-End -->

<!-- Device-Host-Template-Results-{DocID}-Document-End -->

<!-- Device-ManagementServiceConfiguration-Begin -->
## Device/ManagementServiceConfiguration

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
### Device/ManagementServiceConfiguration/CertificateExpirationThreshold

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
### Device/ManagementServiceConfiguration/RefreshInterval

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
### Device/ManagementServiceConfiguration/StartSyncSessionOnFailure

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

<!-- User-Host-Begin -->
## User/Host

<!-- User-Host-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Applicability-End -->

<!-- User-Host-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host
```
<!-- User-Host-OmaUri-End -->

<!-- User-Host-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Description-End -->

<!-- User-Host-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Editable-End -->

<!-- User-Host-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-DFProperties-End -->

<!-- User-Host-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Examples-End -->

<!-- User-Host-End -->

<!-- User-Host-Complete-Begin -->
### User/Host/Complete

<!-- User-Host-Complete-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Applicability-End -->

<!-- User-Host-Complete-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete
```
<!-- User-Host-Complete-OmaUri-End -->

<!-- User-Host-Complete-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Description-End -->

<!-- User-Host-Complete-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Editable-End -->

<!-- User-Host-Complete-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Complete-DFProperties-End -->

<!-- User-Host-Complete-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Examples-End -->

<!-- User-Host-Complete-End -->

<!-- User-Host-Complete-Documents-Begin -->
#### User/Host/Complete/Documents

<!-- User-Host-Complete-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Documents-Applicability-End -->

<!-- User-Host-Complete-Documents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents
```
<!-- User-Host-Complete-Documents-OmaUri-End -->

<!-- User-Host-Complete-Documents-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Documents-Description-End -->

<!-- User-Host-Complete-Documents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-Editable-End -->

<!-- User-Host-Complete-Documents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Complete-Documents-DFProperties-End -->

<!-- User-Host-Complete-Documents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-Examples-End -->

<!-- User-Host-Complete-Documents-End -->

<!-- User-Host-Complete-Documents-{DocID}-Begin -->
##### User/Host/Complete/Documents/{DocID}

<!-- User-Host-Complete-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Documents-{DocID}-Applicability-End -->

<!-- User-Host-Complete-Documents-{DocID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}
```
<!-- User-Host-Complete-Documents-{DocID}-OmaUri-End -->

<!-- User-Host-Complete-Documents-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Documents-{DocID}-Description-End -->

<!-- User-Host-Complete-Documents-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Editable-End -->

<!-- User-Host-Complete-Documents-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}` |
<!-- User-Host-Complete-Documents-{DocID}-DFProperties-End -->

<!-- User-Host-Complete-Documents-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Examples-End -->

<!-- User-Host-Complete-Documents-{DocID}-End -->

<!-- User-Host-Complete-Documents-{DocID}-Document-Begin -->
###### User/Host/Complete/Documents/{DocID}/Document

<!-- User-Host-Complete-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Documents-{DocID}-Document-Applicability-End -->

<!-- User-Host-Complete-Documents-{DocID}-Document-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Document
```
<!-- User-Host-Complete-Documents-{DocID}-Document-OmaUri-End -->

<!-- User-Host-Complete-Documents-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Documents-{DocID}-Document-Description-End -->

<!-- User-Host-Complete-Documents-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Document-Editable-End -->

<!-- User-Host-Complete-Documents-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Host-Complete-Documents-{DocID}-Document-DFProperties-End -->

<!-- User-Host-Complete-Documents-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Document-Examples-End -->

<!-- User-Host-Complete-Documents-{DocID}-Document-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Begin -->
###### User/Host/Complete/Documents/{DocID}/Properties

<!-- User-Host-Complete-Documents-{DocID}-Properties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Documents-{DocID}-Properties-Applicability-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Properties
```
<!-- User-Host-Complete-Documents-{DocID}-Properties-OmaUri-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Documents-{DocID}-Properties-Description-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Properties-Editable-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Complete-Documents-{DocID}-Properties-DFProperties-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Properties-Examples-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Begin -->
###### User/Host/Complete/Documents/{DocID}/Properties/Abandoned

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Applicability-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/{DocID}/Properties/Abandoned
```
<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-OmaUri-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Description-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Editable-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-DFProperties-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Insert Description Here. |
| 1 | Insert Description Here. |
<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-AllowedValues-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-Examples-End -->

<!-- User-Host-Complete-Documents-{DocID}-Properties-Abandoned-End -->

<!-- User-Host-Complete-Results-Begin -->
#### User/Host/Complete/Results

<!-- User-Host-Complete-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Results-Applicability-End -->

<!-- User-Host-Complete-Results-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results
```
<!-- User-Host-Complete-Results-OmaUri-End -->

<!-- User-Host-Complete-Results-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Results-Description-End -->

<!-- User-Host-Complete-Results-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Results-Editable-End -->

<!-- User-Host-Complete-Results-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Host-Complete-Results-DFProperties-End -->

<!-- User-Host-Complete-Results-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Results-Examples-End -->

<!-- User-Host-Complete-Results-End -->

<!-- User-Host-Complete-Results-{DocID}-Begin -->
##### User/Host/Complete/Results/{DocID}

<!-- User-Host-Complete-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Results-{DocID}-Applicability-End -->

<!-- User-Host-Complete-Results-{DocID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/{DocID}
```
<!-- User-Host-Complete-Results-{DocID}-OmaUri-End -->

<!-- User-Host-Complete-Results-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Results-{DocID}-Description-End -->

<!-- User-Host-Complete-Results-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Results-{DocID}-Editable-End -->

<!-- User-Host-Complete-Results-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-Host-Complete-Results-{DocID}-DFProperties-End -->

<!-- User-Host-Complete-Results-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Results-{DocID}-Examples-End -->

<!-- User-Host-Complete-Results-{DocID}-End -->

<!-- User-Host-Complete-Results-{DocID}-Document-Begin -->
###### User/Host/Complete/Results/{DocID}/Document

<!-- User-Host-Complete-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Complete-Results-{DocID}-Document-Applicability-End -->

<!-- User-Host-Complete-Results-{DocID}-Document-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Results/{DocID}/Document
```
<!-- User-Host-Complete-Results-{DocID}-Document-OmaUri-End -->

<!-- User-Host-Complete-Results-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Complete-Results-{DocID}-Document-Description-End -->

<!-- User-Host-Complete-Results-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Complete-Results-{DocID}-Document-Editable-End -->

<!-- User-Host-Complete-Results-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-Host-Complete-Results-{DocID}-Document-DFProperties-End -->

<!-- User-Host-Complete-Results-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Complete-Results-{DocID}-Document-Examples-End -->

<!-- User-Host-Complete-Results-{DocID}-Document-End -->

<!-- User-Host-Inventory-Begin -->
### User/Host/Inventory

<!-- User-Host-Inventory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Inventory-Applicability-End -->

<!-- User-Host-Inventory-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Inventory
```
<!-- User-Host-Inventory-OmaUri-End -->

<!-- User-Host-Inventory-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Inventory-Description-End -->

<!-- User-Host-Inventory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Inventory-Editable-End -->

<!-- User-Host-Inventory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Inventory-DFProperties-End -->

<!-- User-Host-Inventory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Inventory-Examples-End -->

<!-- User-Host-Inventory-End -->

<!-- User-Host-Inventory-Documents-Begin -->
#### User/Host/Inventory/Documents

<!-- User-Host-Inventory-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Inventory-Documents-Applicability-End -->

<!-- User-Host-Inventory-Documents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents
```
<!-- User-Host-Inventory-Documents-OmaUri-End -->

<!-- User-Host-Inventory-Documents-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Inventory-Documents-Description-End -->

<!-- User-Host-Inventory-Documents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Inventory-Documents-Editable-End -->

<!-- User-Host-Inventory-Documents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Inventory-Documents-DFProperties-End -->

<!-- User-Host-Inventory-Documents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Inventory-Documents-Examples-End -->

<!-- User-Host-Inventory-Documents-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Begin -->
##### User/Host/Inventory/Documents/{DocID}

<!-- User-Host-Inventory-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Inventory-Documents-{DocID}-Applicability-End -->

<!-- User-Host-Inventory-Documents-{DocID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents/{DocID}
```
<!-- User-Host-Inventory-Documents-{DocID}-OmaUri-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Inventory-Documents-{DocID}-Description-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Inventory-Documents-{DocID}-Editable-End -->

<!-- User-Host-Inventory-Documents-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}` |
<!-- User-Host-Inventory-Documents-{DocID}-DFProperties-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Inventory-Documents-{DocID}-Examples-End -->

<!-- User-Host-Inventory-Documents-{DocID}-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Document-Begin -->
###### User/Host/Inventory/Documents/{DocID}/Document

<!-- User-Host-Inventory-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Inventory-Documents-{DocID}-Document-Applicability-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Document-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Documents/{DocID}/Document
```
<!-- User-Host-Inventory-Documents-{DocID}-Document-OmaUri-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Inventory-Documents-{DocID}-Document-Description-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Inventory-Documents-{DocID}-Document-Editable-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Host-Inventory-Documents-{DocID}-Document-DFProperties-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Inventory-Documents-{DocID}-Document-Examples-End -->

<!-- User-Host-Inventory-Documents-{DocID}-Document-End -->

<!-- User-Host-Inventory-Results-Begin -->
#### User/Host/Inventory/Results

<!-- User-Host-Inventory-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Inventory-Results-Applicability-End -->

<!-- User-Host-Inventory-Results-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Results
```
<!-- User-Host-Inventory-Results-OmaUri-End -->

<!-- User-Host-Inventory-Results-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Inventory-Results-Description-End -->

<!-- User-Host-Inventory-Results-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Inventory-Results-Editable-End -->

<!-- User-Host-Inventory-Results-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Host-Inventory-Results-DFProperties-End -->

<!-- User-Host-Inventory-Results-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Inventory-Results-Examples-End -->

<!-- User-Host-Inventory-Results-End -->

<!-- User-Host-Inventory-Results-{DocID}-Begin -->
##### User/Host/Inventory/Results/{DocID}

<!-- User-Host-Inventory-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Inventory-Results-{DocID}-Applicability-End -->

<!-- User-Host-Inventory-Results-{DocID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Results/{DocID}
```
<!-- User-Host-Inventory-Results-{DocID}-OmaUri-End -->

<!-- User-Host-Inventory-Results-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Inventory-Results-{DocID}-Description-End -->

<!-- User-Host-Inventory-Results-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Inventory-Results-{DocID}-Editable-End -->

<!-- User-Host-Inventory-Results-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-Host-Inventory-Results-{DocID}-DFProperties-End -->

<!-- User-Host-Inventory-Results-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Inventory-Results-{DocID}-Examples-End -->

<!-- User-Host-Inventory-Results-{DocID}-End -->

<!-- User-Host-Inventory-Results-{DocID}-Document-Begin -->
###### User/Host/Inventory/Results/{DocID}/Document

<!-- User-Host-Inventory-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Inventory-Results-{DocID}-Document-Applicability-End -->

<!-- User-Host-Inventory-Results-{DocID}-Document-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Inventory/Results/{DocID}/Document
```
<!-- User-Host-Inventory-Results-{DocID}-Document-OmaUri-End -->

<!-- User-Host-Inventory-Results-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Inventory-Results-{DocID}-Document-Description-End -->

<!-- User-Host-Inventory-Results-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Inventory-Results-{DocID}-Document-Editable-End -->

<!-- User-Host-Inventory-Results-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-Host-Inventory-Results-{DocID}-Document-DFProperties-End -->

<!-- User-Host-Inventory-Results-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Inventory-Results-{DocID}-Document-Examples-End -->

<!-- User-Host-Inventory-Results-{DocID}-Document-End -->

<!-- User-Host-Template-Begin -->
### User/Host/Template

<!-- User-Host-Template-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Applicability-End -->

<!-- User-Host-Template-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template
```
<!-- User-Host-Template-OmaUri-End -->

<!-- User-Host-Template-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Description-End -->

<!-- User-Host-Template-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Editable-End -->

<!-- User-Host-Template-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Template-DFProperties-End -->

<!-- User-Host-Template-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Examples-End -->

<!-- User-Host-Template-End -->

<!-- User-Host-Template-Documents-Begin -->
#### User/Host/Template/Documents

<!-- User-Host-Template-Documents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-Applicability-End -->

<!-- User-Host-Template-Documents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents
```
<!-- User-Host-Template-Documents-OmaUri-End -->

<!-- User-Host-Template-Documents-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-Description-End -->

<!-- User-Host-Template-Documents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-Editable-End -->

<!-- User-Host-Template-Documents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Template-Documents-DFProperties-End -->

<!-- User-Host-Template-Documents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-Examples-End -->

<!-- User-Host-Template-Documents-End -->

<!-- User-Host-Template-Documents-{DocID}-Begin -->
##### User/Host/Template/Documents/{DocID}

<!-- User-Host-Template-Documents-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-{DocID}-Applicability-End -->

<!-- User-Host-Template-Documents-{DocID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}
```
<!-- User-Host-Template-Documents-{DocID}-OmaUri-End -->

<!-- User-Host-Template-Documents-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-{DocID}-Description-End -->

<!-- User-Host-Template-Documents-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Editable-End -->

<!-- User-Host-Template-Documents-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
| Allowed Values | Regular Expression: `[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}` |
<!-- User-Host-Template-Documents-{DocID}-DFProperties-End -->

<!-- User-Host-Template-Documents-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Examples-End -->

<!-- User-Host-Template-Documents-{DocID}-End -->

<!-- User-Host-Template-Documents-{DocID}-Document-Begin -->
###### User/Host/Template/Documents/{DocID}/Document

<!-- User-Host-Template-Documents-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-{DocID}-Document-Applicability-End -->

<!-- User-Host-Template-Documents-{DocID}-Document-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Document
```
<!-- User-Host-Template-Documents-{DocID}-Document-OmaUri-End -->

<!-- User-Host-Template-Documents-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-{DocID}-Document-Description-End -->

<!-- User-Host-Template-Documents-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Document-Editable-End -->

<!-- User-Host-Template-Documents-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Host-Template-Documents-{DocID}-Document-DFProperties-End -->

<!-- User-Host-Template-Documents-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Document-Examples-End -->

<!-- User-Host-Template-Documents-{DocID}-Document-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Begin -->
###### User/Host/Template/Documents/{DocID}/Properties

<!-- User-Host-Template-Documents-{DocID}-Properties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-{DocID}-Properties-Applicability-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Properties
```
<!-- User-Host-Template-Documents-{DocID}-Properties-OmaUri-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-{DocID}-Properties-Description-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Properties-Editable-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Template-Documents-{DocID}-Properties-DFProperties-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Properties-Examples-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Begin -->
###### User/Host/Template/Documents/{DocID}/Properties/Abandoned

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Applicability-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Properties/Abandoned
```
<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-OmaUri-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Description-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Editable-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-DFProperties-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Insert Description Here. |
| 1 | Insert Description Here. |
<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-AllowedValues-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-Examples-End -->

<!-- User-Host-Template-Documents-{DocID}-Properties-Abandoned-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-Begin -->
###### User/Host/Template/Documents/{DocID}/Variables

<!-- User-Host-Template-Documents-{DocID}-Variables-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-{DocID}-Variables-Applicability-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Variables
```
<!-- User-Host-Template-Documents-{DocID}-Variables-OmaUri-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-{DocID}-Variables-Description-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Variables-Editable-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Host-Template-Documents-{DocID}-Variables-DFProperties-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Variables-Examples-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Begin -->
###### User/Host/Template/Documents/{DocID}/Variables/{VariableName}

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Applicability-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Variables/{VariableName}
```
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-OmaUri-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Description-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Editable-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: This node name references a variable in the templated document. |
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-DFProperties-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Examples-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Begin -->
###### User/Host/Template/Documents/{DocID}/Variables/{VariableName}/Value

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Applicability-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Documents/{DocID}/Variables/{VariableName}/Value
```
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-OmaUri-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Description-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Editable-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-DFProperties-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-Examples-End -->

<!-- User-Host-Template-Documents-{DocID}-Variables-{VariableName}-Value-End -->

<!-- User-Host-Template-Results-Begin -->
#### User/Host/Template/Results

<!-- User-Host-Template-Results-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Results-Applicability-End -->

<!-- User-Host-Template-Results-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Results
```
<!-- User-Host-Template-Results-OmaUri-End -->

<!-- User-Host-Template-Results-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Results-Description-End -->

<!-- User-Host-Template-Results-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Results-Editable-End -->

<!-- User-Host-Template-Results-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Host-Template-Results-DFProperties-End -->

<!-- User-Host-Template-Results-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Results-Examples-End -->

<!-- User-Host-Template-Results-End -->

<!-- User-Host-Template-Results-{DocID}-Begin -->
##### User/Host/Template/Results/{DocID}

<!-- User-Host-Template-Results-{DocID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Results-{DocID}-Applicability-End -->

<!-- User-Host-Template-Results-{DocID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Results/{DocID}
```
<!-- User-Host-Template-Results-{DocID}-OmaUri-End -->

<!-- User-Host-Template-Results-{DocID}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Results-{DocID}-Description-End -->

<!-- User-Host-Template-Results-{DocID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Results-{DocID}-Editable-End -->

<!-- User-Host-Template-Results-{DocID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-Host-Template-Results-{DocID}-DFProperties-End -->

<!-- User-Host-Template-Results-{DocID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Results-{DocID}-Examples-End -->

<!-- User-Host-Template-Results-{DocID}-End -->

<!-- User-Host-Template-Results-{DocID}-Document-Begin -->
###### User/Host/Template/Results/{DocID}/Document

<!-- User-Host-Template-Results-{DocID}-Document-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-Host-Template-Results-{DocID}-Document-Applicability-End -->

<!-- User-Host-Template-Results-{DocID}-Document-OmaUri-Begin -->
```User
./User/Vendor/MSFT/DeclaredConfiguration/Host/Template/Results/{DocID}/Document
```
<!-- User-Host-Template-Results-{DocID}-Document-OmaUri-End -->

<!-- User-Host-Template-Results-{DocID}-Document-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Host-Template-Results-{DocID}-Document-Description-End -->

<!-- User-Host-Template-Results-{DocID}-Document-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Host-Template-Results-{DocID}-Document-Editable-End -->

<!-- User-Host-Template-Results-{DocID}-Document-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-Host-Template-Results-{DocID}-Document-DFProperties-End -->

<!-- User-Host-Template-Results-{DocID}-Document-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Host-Template-Results-{DocID}-Document-Examples-End -->

<!-- User-Host-Template-Results-{DocID}-Document-End -->

<!-- DeclaredConfiguration-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Declared Configuration OMA URI

A Declared Configuration request is sent using an OMA-URI similar to `./Device/Vendor/MSFT/DeclaredConfiguration/Host/[Complete|Inventory]/Documents/{document id guid}/Document`.

- The URI is prefixed with a targeted scope. The target of the scenario settings can only be device wide for Extensibility. The scope should be "Device".
- `{document id guid}` is a unique identifier for the desired state of the configuration scenario. Every document must have a unique doc id, which must be a GUID.
- The request can be a Configuration request, Inventory request or Complete.

Example URI for a Complete request: `./Device/Vendor/MSFT/DeclaredConfiguration/Host/Complete/Documents/27FEA311-68B9-4320-9FC4-296F6FDFAFE2/Document`

The Server to Client flow of the configuration URI request, Complete, is the same as an Inventory request.

## DeclaredConfiguration Document XML

The value of the leaf node Document is an XML document describing the request. The actual processing of the request pivots around the `osdefinedscenario` tag:

- **MSFTExtensibilityMIProviderConfig**: Used to configure MI Provider settings.
- **MSFTExtensibilityMIProviderInventory**:  Used to retrieve MI Provider setting values.

The DeclaredConfiguration CSP will synchronously validate the batch of settings described by the `<DeclaredConfiguration>` element, which represents the Declared Configuration document. It checks for correct syntax based on the Declared Configuration XML schema. If there's a syntax error, the CSP returns an error immediately back to the server as part of the current OMA-DM session. If the syntax check passes, then the request is passed on to a Windows service to attempt the desired state configuration of the specified scenario, asynchronously, freeing up the server to do other work thus the low latency of the new Declared Configuration protocol. The Windows client service, the orchestrator, is responsible for driving the configuration of the device based on the server supplied desire state, and to maintain it throughout its lifetime, until it's removed or modified by the server.

Here's an example that uses the built-in native MI provider **MSFT_FileDirectoryConfiguration** with the OS defined scenario **MSFTExtensibilityMIProviderConfig**.

```xml
<DeclaredConfiguration schema="1.0" context="Device" id="27FEA311-68B9-4320-9FC4-296F6FDFAFE2" checksum="99925209110918B67FE962460137AA3440AFF4DB6ABBE15C8F499682457B9999" osdefinedscenario="MSFTExtensibilityMIProviderConfig">
    <DSC namespace="root/Microsoft/Windows/DesiredStateConfiguration" className="MSFT_FileDirectoryConfiguration">
        <Key name="DestinationPath">c:\data\test\bin\ut_extensibility.tmp</Key>
        <Value name="Contents">TestFileContentBlah</Value>
    </DSC>
</DeclaredConfiguration>
```

The standard OMA-DM SyncML syntax is used to specify the DeclaredConfiguration CSP operations such as Replace, Set, and Delete. The SyncML's `<Data>` element's value is the specified desired state document, which is also expressed in XML and uses CDATA to ensure that the Declared Configuration client can properly interpret the SyncML.

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

Both MSFTExtensibilityMIProviderConfig and MSFTExtensibilityMIProviderInventory OS defined scenarios require the same tags and attributes.

- `<DeclaredConfiguration>` XML tag specifies the details of the Declared Configuration document to process. The document could be part of a configuration request or an inventory request. The Declared Configuration CSP has two URIs to allow the specification of a configuration or an inventory request.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | schema | The schema version of the xml. Currently `1.0`. |
    | context | States that this document is targeting the device. The value should be `Device`. |
    | id | The unique identifier of the document set by the server. This should be a GUID. |
    | checksum | This is the server supplied version of the document. |
    | osdefinedscenario | The named scenario that is to be configured with the given configuration data. In case of Extensibility, the scenario is either MSFTExtensibilityMIProviderConfig or MSFTExtensibilityMIProviderInventory. |

- `<DSC>` XML tag describes the targeted WMI provider expressed by a namespace and classname along with the values either to be applied to the device or queried by the MI provider.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | namespace | Specifies the targeted MI Provider namespace. |
    | classname | The targeted MI provider. |

- `<Key>` XML tag describes the required parameter name and value (only need value for configuration). The name is an attribute and the value is `<Key>` content.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | name | Specifies the name of a MI Provider parameter. |

- `<Value>` XML tag describes the non-required parameter name and value (only need value for configuration). The name is an attribute and the value is `<Value>` content.

    This tag has the following attributes:

    | Attribute | Description |
    |--|--|
    | name | Specifies the name of a MI Provider parameter. |

## Declared Configuration Document generic alert

On every client response to the server's request, the client constructs a Declared Configuration alert summing up the state of each of the documents that the Windows service has processed. Here's an example alert:

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

In this example, there's one Declared Configuration document listed in the Alert summary. The Alert summary lists every document that is being processed by the client stack be it a configuration or inventory request. It describes the context of the document that specifies the scope of how the document is applied. The value should be "Device". The "state" attribute has a value of 60, which indicates that the document was processed successfully. Other state values are:

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

- Retrieve the results of Configuration or Inventory Request:

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

- Replace a Configuration or Inventory Request

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

- Abandon a Configuration or Inventory Request: This results in the document being tracked but not be reapplied. The Alert has the "Abandoned" property set to 1 to indicate that the document is no longer managed by the Declared Configuration server.

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

- Deletion of Configuration or Inventory Request: The SyncML deletion of the document will only remove the document but the Extensibility settings remain tattooed.

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
