---
title: TextInput Policy CSP
description: Learn more about the TextInput Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/11/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- TextInput-Begin -->
# Policy CSP - TextInput

<!-- TextInput-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TextInput-Editable-End -->

<!-- AllowHardwareKeyboardTextSuggestions-Begin -->
## AllowHardwareKeyboardTextSuggestions

<!-- AllowHardwareKeyboardTextSuggestions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowHardwareKeyboardTextSuggestions-Applicability-End -->

<!-- AllowHardwareKeyboardTextSuggestions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowHardwareKeyboardTextSuggestions
```
<!-- AllowHardwareKeyboardTextSuggestions-OmaUri-End -->

<!-- AllowHardwareKeyboardTextSuggestions-Description-Begin -->
<!-- Description-Source-DDF -->
Placeholder only. Don't use in production environment.
<!-- AllowHardwareKeyboardTextSuggestions-Description-End -->

<!-- AllowHardwareKeyboardTextSuggestions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowHardwareKeyboardTextSuggestions-Editable-End -->

<!-- AllowHardwareKeyboardTextSuggestions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowHardwareKeyboardTextSuggestions-DFProperties-End -->

<!-- AllowHardwareKeyboardTextSuggestions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowHardwareKeyboardTextSuggestions-AllowedValues-End -->

<!-- AllowHardwareKeyboardTextSuggestions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowHardwareKeyboardTextSuggestions-Examples-End -->

<!-- AllowHardwareKeyboardTextSuggestions-End -->

<!-- AllowIMELogging-Begin -->
## AllowIMELogging

<!-- AllowIMELogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowIMELogging-Applicability-End -->

<!-- AllowIMELogging-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowIMELogging
```
<!-- AllowIMELogging-OmaUri-End -->

<!-- AllowIMELogging-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input. Most restricted value is 0.
<!-- AllowIMELogging-Description-End -->

<!-- AllowIMELogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowIMELogging-Editable-End -->

<!-- AllowIMELogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowIMELogging-DFProperties-End -->

<!-- AllowIMELogging-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowIMELogging-AllowedValues-End -->

<!-- AllowIMELogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIMELogging-Examples-End -->

<!-- AllowIMELogging-End -->

<!-- AllowIMENetworkAccess-Begin -->
## AllowIMENetworkAccess

<!-- AllowIMENetworkAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowIMENetworkAccess-Applicability-End -->

<!-- AllowIMENetworkAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowIMENetworkAccess
```
<!-- AllowIMENetworkAccess-OmaUri-End -->

<!-- AllowIMENetworkAccess-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that don't exist in the device's local dictionary. Most restricted value is 0. In Windows 10, version 1803, we introduced new suggestion services in Japanese IME in addition to cloud suggestion. When AllowIMENetworkAccess is set to 1, all suggestion services are available as predictive input.
<!-- AllowIMENetworkAccess-Description-End -->

<!-- AllowIMENetworkAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowIMENetworkAccess-Editable-End -->

<!-- AllowIMENetworkAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowIMENetworkAccess-DFProperties-End -->

<!-- AllowIMENetworkAccess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowIMENetworkAccess-AllowedValues-End -->

<!-- AllowIMENetworkAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIMENetworkAccess-Examples-End -->

<!-- AllowIMENetworkAccess-End -->

<!-- AllowInputPanel-Begin -->
## AllowInputPanel

<!-- AllowInputPanel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowInputPanel-Applicability-End -->

<!-- AllowInputPanel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowInputPanel
```
<!-- AllowInputPanel-OmaUri-End -->

<!-- AllowInputPanel-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the IT admin to disable the touch/handwriting keyboard on Windows. Most restricted value is 0.
<!-- AllowInputPanel-Description-End -->

<!-- AllowInputPanel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowInputPanel-Editable-End -->

<!-- AllowInputPanel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowInputPanel-DFProperties-End -->

<!-- AllowInputPanel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowInputPanel-AllowedValues-End -->

<!-- AllowInputPanel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowInputPanel-Examples-End -->

<!-- AllowInputPanel-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-Begin -->
## AllowJapaneseIMESurrogatePairCharacters

<!-- AllowJapaneseIMESurrogatePairCharacters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowJapaneseIMESurrogatePairCharacters-Applicability-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowJapaneseIMESurrogatePairCharacters
```
<!-- AllowJapaneseIMESurrogatePairCharacters-OmaUri-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Japanese IME surrogate pair characters. Most restricted value is 0.
<!-- AllowJapaneseIMESurrogatePairCharacters-Description-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowJapaneseIMESurrogatePairCharacters-Editable-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowJapaneseIMESurrogatePairCharacters-DFProperties-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowJapaneseIMESurrogatePairCharacters-AllowedValues-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowJapaneseIMESurrogatePairCharacters-Examples-End -->

<!-- AllowJapaneseIMESurrogatePairCharacters-End -->

<!-- AllowJapaneseIVSCharacters-Begin -->
## AllowJapaneseIVSCharacters

<!-- AllowJapaneseIVSCharacters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowJapaneseIVSCharacters-Applicability-End -->

<!-- AllowJapaneseIVSCharacters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowJapaneseIVSCharacters
```
<!-- AllowJapaneseIVSCharacters-OmaUri-End -->

<!-- AllowJapaneseIVSCharacters-Description-Begin -->
<!-- Description-Source-DDF -->
Allows Japanese Ideographic Variation Sequence (IVS) characters. Most restricted value is 0.
<!-- AllowJapaneseIVSCharacters-Description-End -->

<!-- AllowJapaneseIVSCharacters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowJapaneseIVSCharacters-Editable-End -->

<!-- AllowJapaneseIVSCharacters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowJapaneseIVSCharacters-DFProperties-End -->

<!-- AllowJapaneseIVSCharacters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowJapaneseIVSCharacters-AllowedValues-End -->

<!-- AllowJapaneseIVSCharacters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowJapaneseIVSCharacters-Examples-End -->

<!-- AllowJapaneseIVSCharacters-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-Begin -->
## AllowJapaneseNonPublishingStandardGlyph

<!-- AllowJapaneseNonPublishingStandardGlyph-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowJapaneseNonPublishingStandardGlyph-Applicability-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowJapaneseNonPublishingStandardGlyph
```
<!-- AllowJapaneseNonPublishingStandardGlyph-OmaUri-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Japanese non-publishing standard glyph. Most restricted value is 0.
<!-- AllowJapaneseNonPublishingStandardGlyph-Description-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowJapaneseNonPublishingStandardGlyph-Editable-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowJapaneseNonPublishingStandardGlyph-DFProperties-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowJapaneseNonPublishingStandardGlyph-AllowedValues-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowJapaneseNonPublishingStandardGlyph-Examples-End -->

<!-- AllowJapaneseNonPublishingStandardGlyph-End -->

<!-- AllowJapaneseUserDictionary-Begin -->
## AllowJapaneseUserDictionary

<!-- AllowJapaneseUserDictionary-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowJapaneseUserDictionary-Applicability-End -->

<!-- AllowJapaneseUserDictionary-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowJapaneseUserDictionary
```
<!-- AllowJapaneseUserDictionary-OmaUri-End -->

<!-- AllowJapaneseUserDictionary-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Japanese user dictionary. Most restricted value is 0.
<!-- AllowJapaneseUserDictionary-Description-End -->

<!-- AllowJapaneseUserDictionary-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowJapaneseUserDictionary-Editable-End -->

<!-- AllowJapaneseUserDictionary-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowJapaneseUserDictionary-DFProperties-End -->

<!-- AllowJapaneseUserDictionary-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowJapaneseUserDictionary-AllowedValues-End -->

<!-- AllowJapaneseUserDictionary-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowJapaneseUserDictionary-Examples-End -->

<!-- AllowJapaneseUserDictionary-End -->

<!-- AllowKeyboardTextSuggestions-Begin -->
## AllowKeyboardTextSuggestions

<!-- AllowKeyboardTextSuggestions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowKeyboardTextSuggestions-Applicability-End -->

<!-- AllowKeyboardTextSuggestions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowKeyboardTextSuggestions
```
<!-- AllowKeyboardTextSuggestions-OmaUri-End -->

<!-- AllowKeyboardTextSuggestions-Description-Begin -->
<!-- Description-Source-DDF -->
 Specifies whether text prediction is enabled or disabled for the on-screen keyboard, touch keyboard, and handwriting recognition tool. When this policy is set to disabled, text prediction is disabled. Most restricted value is 0.
<!-- AllowKeyboardTextSuggestions-Description-End -->

<!-- AllowKeyboardTextSuggestions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
To validate that text prediction is disabled on Windows 10 for desktop, do the following:

1. Search for and launch the on-screen keyboard. Verify that text prediction is disabled by typing some text. Text prediction on the keyboard will be disabled even if the "Use Text Prediction" setting is enabled from the options button.
1. Launch the input panel/touch keyboard by touching a text input field or launching it from the taskbar. Verify that text prediction is disabled by typing some text. Text prediction on the keyboard will be disabled even if the "Show text suggestions as I type" setting is enabled in the Settings app.
1. Launch the handwriting tool from the touch keyboard. Verify that text prediction is disabled when you write using the tool.
<!-- AllowKeyboardTextSuggestions-Editable-End -->

<!-- AllowKeyboardTextSuggestions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowKeyboardTextSuggestions-DFProperties-End -->

<!-- AllowKeyboardTextSuggestions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AllowKeyboardTextSuggestions-AllowedValues-End -->

<!-- AllowKeyboardTextSuggestions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowKeyboardTextSuggestions-Examples-End -->

<!-- AllowKeyboardTextSuggestions-End -->

<!-- AllowLanguageFeaturesUninstall-Begin -->
## AllowLanguageFeaturesUninstall

<!-- AllowLanguageFeaturesUninstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowLanguageFeaturesUninstall-Applicability-End -->

<!-- AllowLanguageFeaturesUninstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowLanguageFeaturesUninstall
```
<!-- AllowLanguageFeaturesUninstall-OmaUri-End -->

<!-- AllowLanguageFeaturesUninstall-Description-Begin -->
<!-- Description-Source-ADMX -->
When this policy setting is enabled, some language features (such as handwriting recognizers and spell checking dictionaries) included with a language can be uninstalled from a user's machine when the language is uninstalled. The language can be reinstalled with a different selection of included language features if needed. When this policy setting is disabled, language features remain on the user's machine when the language is uninstalled.
<!-- AllowLanguageFeaturesUninstall-Description-End -->

<!-- AllowLanguageFeaturesUninstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLanguageFeaturesUninstall-Editable-End -->

<!-- AllowLanguageFeaturesUninstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowLanguageFeaturesUninstall-DFProperties-End -->

<!-- AllowLanguageFeaturesUninstall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowLanguageFeaturesUninstall-AllowedValues-End -->

<!-- AllowLanguageFeaturesUninstall-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowLanguageFeaturesUninstall |
| Friendly Name | Allow uninstallation of language features when a language is uninstalled |
| Location | Computer Configuration |
| Path | Windows Components > Text Input |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\TextInput |
| Registry Value Name | AllowLanguageFeaturesUninstall |
| ADMX File Name | TextInput.admx |
<!-- AllowLanguageFeaturesUninstall-GpMapping-End -->

<!-- AllowLanguageFeaturesUninstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLanguageFeaturesUninstall-Examples-End -->

<!-- AllowLanguageFeaturesUninstall-End -->

<!-- AllowLinguisticDataCollection-Begin -->
## AllowLinguisticDataCollection

<!-- AllowLinguisticDataCollection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowLinguisticDataCollection-Applicability-End -->

<!-- AllowLinguisticDataCollection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowLinguisticDataCollection
```
<!-- AllowLinguisticDataCollection-OmaUri-End -->

<!-- AllowLinguisticDataCollection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability to send inking and typing data to Microsoft to improve the language recognition and suggestion capabilities of apps and services running on Windows.
<!-- AllowLinguisticDataCollection-Description-End -->

<!-- AllowLinguisticDataCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLinguisticDataCollection-Editable-End -->

<!-- AllowLinguisticDataCollection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowLinguisticDataCollection-DFProperties-End -->

<!-- AllowLinguisticDataCollection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowLinguisticDataCollection-AllowedValues-End -->

<!-- AllowLinguisticDataCollection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowLinguisticDataCollection |
| Friendly Name | Improve inking and typing recognition |
| Location | Computer Configuration |
| Path | Windows Components > Text Input |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\TextInput |
| Registry Value Name | AllowLinguisticDataCollection |
| ADMX File Name | TextInput.admx |
<!-- AllowLinguisticDataCollection-GpMapping-End -->

<!-- AllowLinguisticDataCollection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLinguisticDataCollection-Examples-End -->

<!-- AllowLinguisticDataCollection-End -->

<!-- AllowTextInputSuggestionUpdate-Begin -->
## AllowTextInputSuggestionUpdate

<!-- AllowTextInputSuggestionUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowTextInputSuggestionUpdate-Applicability-End -->

<!-- AllowTextInputSuggestionUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/AllowTextInputSuggestionUpdate
```
<!-- AllowTextInputSuggestionUpdate-OmaUri-End -->

<!-- AllowTextInputSuggestionUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the user to turn on or off the automatic downloading of newer versions of the Expressive Input UI. When downloading isn't allowed the Expressive Input panel will always display the initial UI included with the base Windows image. Most restricted value is 0. The following list shows the supported values: 0 - Not allowed. 1 (default) - Allowed.
<!-- AllowTextInputSuggestionUpdate-Description-End -->

<!-- AllowTextInputSuggestionUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTextInputSuggestionUpdate-Editable-End -->

<!-- AllowTextInputSuggestionUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowTextInputSuggestionUpdate-DFProperties-End -->

<!-- AllowTextInputSuggestionUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowTextInputSuggestionUpdate-AllowedValues-End -->

<!-- AllowTextInputSuggestionUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTextInputSuggestionUpdate-Examples-End -->

<!-- AllowTextInputSuggestionUpdate-End -->

<!-- ConfigureJapaneseIMEVersion-Begin -->
## ConfigureJapaneseIMEVersion

<!-- ConfigureJapaneseIMEVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- ConfigureJapaneseIMEVersion-Applicability-End -->

<!-- ConfigureJapaneseIMEVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ConfigureJapaneseIMEVersion
```
<!-- ConfigureJapaneseIMEVersion-OmaUri-End -->

<!-- ConfigureJapaneseIMEVersion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the version of Microsoft IME.

- If you don't configure this policy setting, user can control IME version to use. The new Microsoft IME is on by default.

- If you enable this, user isn't allowed to control IME version to use. The previous version of Microsoft IME is always selected.

- If you disable this, user isn't allowed to control IME version to use. The new Microsoft IME is always selected.

This Policy setting applies only to Microsoft Japanese IME.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- ConfigureJapaneseIMEVersion-Description-End -->

<!-- ConfigureJapaneseIMEVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureJapaneseIMEVersion-Editable-End -->

<!-- ConfigureJapaneseIMEVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureJapaneseIMEVersion-DFProperties-End -->

<!-- ConfigureJapaneseIMEVersion-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows you to configure which Microsoft Japanese IME version to use. The new Microsoft Japanese IME version is configured by default. |
| 1 | Does not allow you to configure which Microsoft Japanese IME version to use. The previous version of Microsoft Japanese IME is always selected. |
| 2 | Does not allow you to configure which Microsoft Japanese IME version to use. The new Microsoft Japanese IME version is always selected. |
<!-- ConfigureJapaneseIMEVersion-AllowedValues-End -->

<!-- ConfigureJapaneseIMEVersion-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | L_ConfigureJapaneseImeVersion |
| Friendly Name | Configure Japanese IME version |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | Software\Policies\Microsoft\InputMethod\Settings\JPN |
| Registry Value Name | ConfigureImeVersion |
| ADMX File Name | EAIME.admx |
<!-- ConfigureJapaneseIMEVersion-GpMapping-End -->

<!-- ConfigureJapaneseIMEVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureJapaneseIMEVersion-Examples-End -->

<!-- ConfigureJapaneseIMEVersion-End -->

<!-- ConfigureKoreanIMEVersion-Begin -->
## ConfigureKoreanIMEVersion

<!-- ConfigureKoreanIMEVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureKoreanIMEVersion-Applicability-End -->

<!-- ConfigureKoreanIMEVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ConfigureKoreanIMEVersion
```
<!-- ConfigureKoreanIMEVersion-OmaUri-End -->

<!-- ConfigureKoreanIMEVersion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the version of Microsoft IME.

- If you don't configure this policy setting, user can control IME version to use. The new Microsoft IME is on by default.

- If you enable this, user isn't allowed to control IME version to use. The previous version of Microsoft IME is always selected.

- If you disable this, user isn't allowed to control IME version to use. The new Microsoft IME is always selected.

This Policy setting applies only to Microsoft Korean IME.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- ConfigureKoreanIMEVersion-Description-End -->

<!-- ConfigureKoreanIMEVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureKoreanIMEVersion-Editable-End -->

<!-- ConfigureKoreanIMEVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-2]` |
| Default Value  | 0 |
<!-- ConfigureKoreanIMEVersion-DFProperties-End -->

<!-- ConfigureKoreanIMEVersion-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | L_ConfigureKoreanImeVersion |
| Friendly Name | Configure Korean IME version |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | Software\Policies\Microsoft\InputMethod\Settings\KOR |
| Registry Value Name | ConfigureImeVersion |
| ADMX File Name | EAIME.admx |
<!-- ConfigureKoreanIMEVersion-GpMapping-End -->

<!-- ConfigureKoreanIMEVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureKoreanIMEVersion-Examples-End -->

<!-- ConfigureKoreanIMEVersion-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-Begin -->
## ConfigureSimplifiedChineseIMEVersion

<!-- ConfigureSimplifiedChineseIMEVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- ConfigureSimplifiedChineseIMEVersion-Applicability-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ConfigureSimplifiedChineseIMEVersion
```
<!-- ConfigureSimplifiedChineseIMEVersion-OmaUri-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the version of Microsoft IME.

- If you don't configure this policy setting, user can control IME version to use. The new Microsoft IME is on by default.

- If you enable this, user isn't allowed to control IME version to use. The previous version of Microsoft IME is always selected.

- If you disable this, user isn't allowed to control IME version to use. The new Microsoft IME is always selected.

This Policy setting applies only to Microsoft Simplified Chinese IME.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- ConfigureSimplifiedChineseIMEVersion-Description-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureSimplifiedChineseIMEVersion-Editable-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureSimplifiedChineseIMEVersion-DFProperties-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows you to configure which Microsoft Simplified Chinese IME version to use. The new Microsoft Simplified Chinese IME version is configured by default. |
| 1 | Does not allow you to configure which Microsoft Simplified Chinese IME version to use. The previous version of Microsoft Simplified Chinese IME is always selected. |
| 2 | Does not allow you to configure which Microsoft Simplified Chinese IME version to use. The new Microsoft Simplified Chinese IME version is always selected. |
<!-- ConfigureSimplifiedChineseIMEVersion-AllowedValues-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | L_ConfigureSimplifiedChineseImeVersion |
| Friendly Name | Configure Simplified Chinese IME version |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | Software\Policies\Microsoft\InputMethod\Settings\CHS |
| Registry Value Name | ConfigureImeVersion |
| ADMX File Name | EAIME.admx |
<!-- ConfigureSimplifiedChineseIMEVersion-GpMapping-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureSimplifiedChineseIMEVersion-Examples-End -->

<!-- ConfigureSimplifiedChineseIMEVersion-End -->

<!-- ConfigureTraditionalChineseIMEVersion-Begin -->
## ConfigureTraditionalChineseIMEVersion

<!-- ConfigureTraditionalChineseIMEVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- ConfigureTraditionalChineseIMEVersion-Applicability-End -->

<!-- ConfigureTraditionalChineseIMEVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ConfigureTraditionalChineseIMEVersion
```
<!-- ConfigureTraditionalChineseIMEVersion-OmaUri-End -->

<!-- ConfigureTraditionalChineseIMEVersion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the version of Microsoft IME.

- If you don't configure this policy setting, user can control IME version to use. The new Microsoft IME is on by default.

- If you enable this, user isn't allowed to control IME version to use. The previous version of Microsoft IME is always selected.

- If you disable this, user isn't allowed to control IME version to use. The new Microsoft IME is always selected.

This Policy setting applies only to Microsoft Traditional Chinese IME.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- ConfigureTraditionalChineseIMEVersion-Description-End -->

<!-- ConfigureTraditionalChineseIMEVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureTraditionalChineseIMEVersion-Editable-End -->

<!-- ConfigureTraditionalChineseIMEVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureTraditionalChineseIMEVersion-DFProperties-End -->

<!-- ConfigureTraditionalChineseIMEVersion-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows you to configure which Microsoft Traditional Chinese IME version to use. The new Microsoft Traditional Chinese IME version is configured by default. |
| 1 | Does not allow you to configure which Microsoft Traditional Chinese IME version to use. The previous version of Microsoft Traditional Chinese IME is always selected. |
| 2 | Does not allow you to configure which Microsoft Traditional Chinese IME version to use. The new Microsoft Traditional Chinese IME version is always selected. |
<!-- ConfigureTraditionalChineseIMEVersion-AllowedValues-End -->

<!-- ConfigureTraditionalChineseIMEVersion-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | L_ConfigureTraditionalChineseImeVersion |
| Friendly Name | Configure Traditional Chinese IME version |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | Software\Policies\Microsoft\InputMethod\Settings\CHT |
| Registry Value Name | ConfigureImeVersion |
| ADMX File Name | EAIME.admx |
<!-- ConfigureTraditionalChineseIMEVersion-GpMapping-End -->

<!-- ConfigureTraditionalChineseIMEVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureTraditionalChineseIMEVersion-Examples-End -->

<!-- ConfigureTraditionalChineseIMEVersion-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Begin -->
## EnableTouchKeyboardAutoInvokeInDesktopMode

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Applicability-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode
```
<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-OmaUri-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows the IT admin to control whether the touch keyboard should show up on tapping an edit control. By default, when you tap a textbox, the touch keyboard automatically shows up when there's no keyboard attached. When this policy is enabled, the touch keyboard can be shown or suppressed regardless of the hardware keyboard availability. This policy corresponds to Show the touch keyboard setting in the Settings app.
<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Description-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Editable-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-DFProperties-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Never. |
| 1 | When no keyboard attached. |
| 2 | Always. |
<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-AllowedValues-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-Examples-End -->

<!-- EnableTouchKeyboardAutoInvokeInDesktopMode-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-Begin -->
## ExcludeJapaneseIMEExceptJIS0208

<!-- ExcludeJapaneseIMEExceptJIS0208-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- ExcludeJapaneseIMEExceptJIS0208-Applicability-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ExcludeJapaneseIMEExceptJIS0208
```
<!-- ExcludeJapaneseIMEExceptJIS0208-OmaUri-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the users to restrict character code range of conversion by setting the character filter.
<!-- ExcludeJapaneseIMEExceptJIS0208-Description-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludeJapaneseIMEExceptJIS0208-Editable-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ExcludeJapaneseIMEExceptJIS0208-DFProperties-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No characters are filtered. |
| 1 | All characters except JIS0208 are filtered. |
<!-- ExcludeJapaneseIMEExceptJIS0208-AllowedValues-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludeJapaneseIMEExceptJIS0208-Examples-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Begin -->
## ExcludeJapaneseIMEExceptJIS0208andEUDC

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Applicability-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC
```
<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-OmaUri-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the users to restrict character code range of conversion by setting the character filter.
<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Description-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Editable-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-DFProperties-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No characters are filtered. |
| 1 | All characters except JIS0208 and EUDC are filtered. |
<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-AllowedValues-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-Examples-End -->

<!-- ExcludeJapaneseIMEExceptJIS0208andEUDC-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-Begin -->
## ExcludeJapaneseIMEExceptShiftJIS

<!-- ExcludeJapaneseIMEExceptShiftJIS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- ExcludeJapaneseIMEExceptShiftJIS-Applicability-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ExcludeJapaneseIMEExceptShiftJIS
```
<!-- ExcludeJapaneseIMEExceptShiftJIS-OmaUri-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the users to restrict character code range of conversion by setting the character filter.
<!-- ExcludeJapaneseIMEExceptShiftJIS-Description-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludeJapaneseIMEExceptShiftJIS-Editable-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ExcludeJapaneseIMEExceptShiftJIS-DFProperties-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No characters are filtered. |
| 1 | All characters except ShiftJIS are filtered. |
<!-- ExcludeJapaneseIMEExceptShiftJIS-AllowedValues-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludeJapaneseIMEExceptShiftJIS-Examples-End -->

<!-- ExcludeJapaneseIMEExceptShiftJIS-End -->

<!-- ForceTouchKeyboardDockedState-Begin -->
## ForceTouchKeyboardDockedState

<!-- ForceTouchKeyboardDockedState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ForceTouchKeyboardDockedState-Applicability-End -->

<!-- ForceTouchKeyboardDockedState-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/ForceTouchKeyboardDockedState
```
<!-- ForceTouchKeyboardDockedState-OmaUri-End -->

<!-- ForceTouchKeyboardDockedState-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the touch keyboard is always docked. When this policy is set to enabled, the touch keyboard is always docked.
<!-- ForceTouchKeyboardDockedState-Description-End -->

<!-- ForceTouchKeyboardDockedState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForceTouchKeyboardDockedState-Editable-End -->

<!-- ForceTouchKeyboardDockedState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ForceTouchKeyboardDockedState-DFProperties-End -->

<!-- ForceTouchKeyboardDockedState-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Touch keyboard is always docked. |
| 2 | Touch keyboard docking can be changed. |
<!-- ForceTouchKeyboardDockedState-AllowedValues-End -->

<!-- ForceTouchKeyboardDockedState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForceTouchKeyboardDockedState-Examples-End -->

<!-- ForceTouchKeyboardDockedState-End -->

<!-- TouchKeyboardDictationButtonAvailability-Begin -->
## TouchKeyboardDictationButtonAvailability

<!-- TouchKeyboardDictationButtonAvailability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TouchKeyboardDictationButtonAvailability-Applicability-End -->

<!-- TouchKeyboardDictationButtonAvailability-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/TouchKeyboardDictationButtonAvailability
```
<!-- TouchKeyboardDictationButtonAvailability-OmaUri-End -->

<!-- TouchKeyboardDictationButtonAvailability-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the dictation input button is enabled or disabled for the touch keyboard. When this policy is set to disabled, the dictation input button on touch keyboard is disabled.
<!-- TouchKeyboardDictationButtonAvailability-Description-End -->

<!-- TouchKeyboardDictationButtonAvailability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchKeyboardDictationButtonAvailability-Editable-End -->

<!-- TouchKeyboardDictationButtonAvailability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TouchKeyboardDictationButtonAvailability-DFProperties-End -->

<!-- TouchKeyboardDictationButtonAvailability-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Dictation button on the keyboard is always available. |
| 2 | Dictation button on the keyboard is always disabled. |
<!-- TouchKeyboardDictationButtonAvailability-AllowedValues-End -->

<!-- TouchKeyboardDictationButtonAvailability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchKeyboardDictationButtonAvailability-Examples-End -->

<!-- TouchKeyboardDictationButtonAvailability-End -->

<!-- TouchKeyboardEmojiButtonAvailability-Begin -->
## TouchKeyboardEmojiButtonAvailability

<!-- TouchKeyboardEmojiButtonAvailability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TouchKeyboardEmojiButtonAvailability-Applicability-End -->

<!-- TouchKeyboardEmojiButtonAvailability-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/TouchKeyboardEmojiButtonAvailability
```
<!-- TouchKeyboardEmojiButtonAvailability-OmaUri-End -->

<!-- TouchKeyboardEmojiButtonAvailability-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the emoji button is enabled or disabled for the touch keyboard. When this policy is set to disabled, the emoji button on touch keyboard is disabled.
<!-- TouchKeyboardEmojiButtonAvailability-Description-End -->

<!-- TouchKeyboardEmojiButtonAvailability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchKeyboardEmojiButtonAvailability-Editable-End -->

<!-- TouchKeyboardEmojiButtonAvailability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TouchKeyboardEmojiButtonAvailability-DFProperties-End -->

<!-- TouchKeyboardEmojiButtonAvailability-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Emoji button on keyboard is always available. |
| 2 | Emoji button on keyboard is always disabled. |
<!-- TouchKeyboardEmojiButtonAvailability-AllowedValues-End -->

<!-- TouchKeyboardEmojiButtonAvailability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchKeyboardEmojiButtonAvailability-Examples-End -->

<!-- TouchKeyboardEmojiButtonAvailability-End -->

<!-- TouchKeyboardFullModeAvailability-Begin -->
## TouchKeyboardFullModeAvailability

<!-- TouchKeyboardFullModeAvailability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TouchKeyboardFullModeAvailability-Applicability-End -->

<!-- TouchKeyboardFullModeAvailability-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/TouchKeyboardFullModeAvailability
```
<!-- TouchKeyboardFullModeAvailability-OmaUri-End -->

<!-- TouchKeyboardFullModeAvailability-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the full keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the full keyboard mode for touch keyboard is disabled.
<!-- TouchKeyboardFullModeAvailability-Description-End -->

<!-- TouchKeyboardFullModeAvailability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchKeyboardFullModeAvailability-Editable-End -->

<!-- TouchKeyboardFullModeAvailability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TouchKeyboardFullModeAvailability-DFProperties-End -->

<!-- TouchKeyboardFullModeAvailability-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Full keyboard is always available. |
| 2 | Full keyboard is always disabled. |
<!-- TouchKeyboardFullModeAvailability-AllowedValues-End -->

<!-- TouchKeyboardFullModeAvailability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchKeyboardFullModeAvailability-Examples-End -->

<!-- TouchKeyboardFullModeAvailability-End -->

<!-- TouchKeyboardHandwritingModeAvailability-Begin -->
## TouchKeyboardHandwritingModeAvailability

<!-- TouchKeyboardHandwritingModeAvailability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TouchKeyboardHandwritingModeAvailability-Applicability-End -->

<!-- TouchKeyboardHandwritingModeAvailability-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/TouchKeyboardHandwritingModeAvailability
```
<!-- TouchKeyboardHandwritingModeAvailability-OmaUri-End -->

<!-- TouchKeyboardHandwritingModeAvailability-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the handwriting input panel is enabled or disabled. When this policy is set to disabled, the handwriting input panel is disabled.
<!-- TouchKeyboardHandwritingModeAvailability-Description-End -->

<!-- TouchKeyboardHandwritingModeAvailability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchKeyboardHandwritingModeAvailability-Editable-End -->

<!-- TouchKeyboardHandwritingModeAvailability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TouchKeyboardHandwritingModeAvailability-DFProperties-End -->

<!-- TouchKeyboardHandwritingModeAvailability-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Handwriting input panel is always available. |
| 2 | Handwriting input panel is always disabled. |
<!-- TouchKeyboardHandwritingModeAvailability-AllowedValues-End -->

<!-- TouchKeyboardHandwritingModeAvailability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchKeyboardHandwritingModeAvailability-Examples-End -->

<!-- TouchKeyboardHandwritingModeAvailability-End -->

<!-- TouchKeyboardNarrowModeAvailability-Begin -->
## TouchKeyboardNarrowModeAvailability

<!-- TouchKeyboardNarrowModeAvailability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TouchKeyboardNarrowModeAvailability-Applicability-End -->

<!-- TouchKeyboardNarrowModeAvailability-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/TouchKeyboardNarrowModeAvailability
```
<!-- TouchKeyboardNarrowModeAvailability-OmaUri-End -->

<!-- TouchKeyboardNarrowModeAvailability-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the narrow keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the narrow keyboard mode for touch keyboard is disabled.
<!-- TouchKeyboardNarrowModeAvailability-Description-End -->

<!-- TouchKeyboardNarrowModeAvailability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchKeyboardNarrowModeAvailability-Editable-End -->

<!-- TouchKeyboardNarrowModeAvailability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TouchKeyboardNarrowModeAvailability-DFProperties-End -->

<!-- TouchKeyboardNarrowModeAvailability-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Narrow keyboard is always available. |
| 2 | Narrow keyboard is always disabled. |
<!-- TouchKeyboardNarrowModeAvailability-AllowedValues-End -->

<!-- TouchKeyboardNarrowModeAvailability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchKeyboardNarrowModeAvailability-Examples-End -->

<!-- TouchKeyboardNarrowModeAvailability-End -->

<!-- TouchKeyboardSplitModeAvailability-Begin -->
## TouchKeyboardSplitModeAvailability

<!-- TouchKeyboardSplitModeAvailability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TouchKeyboardSplitModeAvailability-Applicability-End -->

<!-- TouchKeyboardSplitModeAvailability-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/TouchKeyboardSplitModeAvailability
```
<!-- TouchKeyboardSplitModeAvailability-OmaUri-End -->

<!-- TouchKeyboardSplitModeAvailability-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the split keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the split keyboard mode for touch keyboard is disabled.
<!-- TouchKeyboardSplitModeAvailability-Description-End -->

<!-- TouchKeyboardSplitModeAvailability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchKeyboardSplitModeAvailability-Editable-End -->

<!-- TouchKeyboardSplitModeAvailability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TouchKeyboardSplitModeAvailability-DFProperties-End -->

<!-- TouchKeyboardSplitModeAvailability-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Split keyboard is always available. |
| 2 | Split keyboard is always disabled. |
<!-- TouchKeyboardSplitModeAvailability-AllowedValues-End -->

<!-- TouchKeyboardSplitModeAvailability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchKeyboardSplitModeAvailability-Examples-End -->

<!-- TouchKeyboardSplitModeAvailability-End -->

<!-- TouchKeyboardWideModeAvailability-Begin -->
## TouchKeyboardWideModeAvailability

<!-- TouchKeyboardWideModeAvailability-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TouchKeyboardWideModeAvailability-Applicability-End -->

<!-- TouchKeyboardWideModeAvailability-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TextInput/TouchKeyboardWideModeAvailability
```
<!-- TouchKeyboardWideModeAvailability-OmaUri-End -->

<!-- TouchKeyboardWideModeAvailability-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the wide keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the wide keyboard mode for touch keyboard is disabled.
<!-- TouchKeyboardWideModeAvailability-Description-End -->

<!-- TouchKeyboardWideModeAvailability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TouchKeyboardWideModeAvailability-Editable-End -->

<!-- TouchKeyboardWideModeAvailability-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TouchKeyboardWideModeAvailability-DFProperties-End -->

<!-- TouchKeyboardWideModeAvailability-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The OS determines when it's most appropriate to be available. |
| 1 | Wide keyboard is always available. |
| 2 | Wide keyboard is always disabled. |
<!-- TouchKeyboardWideModeAvailability-AllowedValues-End -->

<!-- TouchKeyboardWideModeAvailability-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TouchKeyboardWideModeAvailability-Examples-End -->

<!-- TouchKeyboardWideModeAvailability-End -->

<!-- TextInput-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- TextInput-CspMoreInfo-End -->

<!-- TextInput-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
