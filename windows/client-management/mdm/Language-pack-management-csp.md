---
title: LanguagePackManagement CSP
description: Learn more about the LanguagePackManagement CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- LanguagePackManagement-Begin -->
# LanguagePackManagement CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- LanguagePackManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Language Pack Management CSP allows a way to easily add languages and related language features and manage settings like System Preferred UI Language, System Locale, Input method (Keyboard), Locale, Speech Recognizer, User Preferred Language List. This CSP can be accessed using the new [LanguagePackManagement](/powershell/module/languagepackmanagement) PowerShell module.
<!-- LanguagePackManagement-Editable-End -->

<!-- LanguagePackManagement-Tree-Begin -->
The following list shows the LanguagePackManagement configuration service provider nodes:

- ./Device/Vendor/MSFT/LanguagePackManagement
  - [Install](#install)
    - [{Language ID}](#installlanguage-id)
      - [CopyToDeviceInternationalSettings](#installlanguage-idcopytodeviceinternationalsettings)
      - [EnableLanguageFeatureInstallations](#installlanguage-idenablelanguagefeatureinstallations)
      - [ErrorCode](#installlanguage-iderrorcode)
      - [StartInstallation](#installlanguage-idstartinstallation)
      - [Status](#installlanguage-idstatus)
  - [InstalledLanguages](#installedlanguages)
    - [{Language ID}](#installedlanguageslanguage-id)
      - [LanguageFeatures](#installedlanguageslanguage-idlanguagefeatures)
      - [Providers](#installedlanguageslanguage-idproviders)
  - [LanguageSettings](#languagesettings)
    - [SystemPreferredUILanguages](#languagesettingssystempreferreduilanguages)
<!-- LanguagePackManagement-Tree-End -->

<!-- Device-Install-Begin -->
## Install

<!-- Device-Install-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-Install-Applicability-End -->

<!-- Device-Install-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/Install
```
<!-- Device-Install-OmaUri-End -->

<!-- Device-Install-Description-Begin -->
<!-- Description-Source-DDF -->
Language to be installed or being installed.
<!-- Device-Install-Description-End -->

<!-- Device-Install-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Install-Editable-End -->

<!-- Device-Install-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Install-DFProperties-End -->

<!-- Device-Install-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Install-Examples-End -->

<!-- Device-Install-End -->

<!-- Device-Install-{Language ID}-Begin -->
### Install/{Language ID}

<!-- Device-Install-{Language ID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-Install-{Language ID}-Applicability-End -->

<!-- Device-Install-{Language ID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/Install/{Language ID}
```
<!-- Device-Install-{Language ID}-OmaUri-End -->

<!-- Device-Install-{Language ID}-Description-Begin -->
<!-- Description-Source-DDF -->
Language tag of the language to be installed or being installed.
<!-- Device-Install-{Language ID}-Description-End -->

<!-- Device-Install-{Language ID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-Editable-End -->

<!-- Device-Install-{Language ID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: Language tag of the language to be installed or being installed. |
<!-- Device-Install-{Language ID}-DFProperties-End -->

<!-- Device-Install-{Language ID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-Examples-End -->

<!-- Device-Install-{Language ID}-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Begin -->
#### Install/{Language ID}/CopyToDeviceInternationalSettings

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Applicability-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/Install/{Language ID}/CopyToDeviceInternationalSettings
```
<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-OmaUri-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Description-Begin -->
<!-- Description-Source-DDF -->
Copies the language to the international settings (that is, locale, input layout, speech recognizer, preferred UI language) of the device immediately after installation if the value is true. Default value is false.
<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Description-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Editable-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-DFProperties-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Don't copy the language to the international settings immediately after installation. |
| true | Copy the language to the international settings immediately after installation. |
<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-AllowedValues-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-Examples-End -->

<!-- Device-Install-{Language ID}-CopyToDeviceInternationalSettings-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Begin -->
#### Install/{Language ID}/EnableLanguageFeatureInstallations

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Applicability-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/Install/{Language ID}/EnableLanguageFeatureInstallations
```
<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-OmaUri-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Description-Begin -->
<!-- Description-Source-DDF -->
Enables installations of all available language features when the value is true. Default value is true.
<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Description-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Editable-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | true |
<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-DFProperties-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| true (Default) | Install all available language features. |
| false | Install only the required language features. |
<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-AllowedValues-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-Examples-End -->

<!-- Device-Install-{Language ID}-EnableLanguageFeatureInstallations-End -->

<!-- Device-Install-{Language ID}-ErrorCode-Begin -->
#### Install/{Language ID}/ErrorCode

<!-- Device-Install-{Language ID}-ErrorCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-Install-{Language ID}-ErrorCode-Applicability-End -->

<!-- Device-Install-{Language ID}-ErrorCode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/Install/{Language ID}/ErrorCode
```
<!-- Device-Install-{Language ID}-ErrorCode-OmaUri-End -->

<!-- Device-Install-{Language ID}-ErrorCode-Description-Begin -->
<!-- Description-Source-DDF -->
Error code of queued language installation. 0 if there is no error.
<!-- Device-Install-{Language ID}-ErrorCode-Description-End -->

<!-- Device-Install-{Language ID}-ErrorCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-ErrorCode-Editable-End -->

<!-- Device-Install-{Language ID}-ErrorCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Install-{Language ID}-ErrorCode-DFProperties-End -->

<!-- Device-Install-{Language ID}-ErrorCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-ErrorCode-Examples-End -->

<!-- Device-Install-{Language ID}-ErrorCode-End -->

<!-- Device-Install-{Language ID}-StartInstallation-Begin -->
#### Install/{Language ID}/StartInstallation

<!-- Device-Install-{Language ID}-StartInstallation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-Install-{Language ID}-StartInstallation-Applicability-End -->

<!-- Device-Install-{Language ID}-StartInstallation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/Install/{Language ID}/StartInstallation
```
<!-- Device-Install-{Language ID}-StartInstallation-OmaUri-End -->

<!-- Device-Install-{Language ID}-StartInstallation-Description-Begin -->
<!-- Description-Source-DDF -->
Execution node to queue a language for installation on the device.
<!-- Device-Install-{Language ID}-StartInstallation-Description-End -->

<!-- Device-Install-{Language ID}-StartInstallation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-StartInstallation-Editable-End -->

<!-- Device-Install-{Language ID}-StartInstallation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-Install-{Language ID}-StartInstallation-DFProperties-End -->

<!-- Device-Install-{Language ID}-StartInstallation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-StartInstallation-Examples-End -->

<!-- Device-Install-{Language ID}-StartInstallation-End -->

<!-- Device-Install-{Language ID}-Status-Begin -->
#### Install/{Language ID}/Status

<!-- Device-Install-{Language ID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-Install-{Language ID}-Status-Applicability-End -->

<!-- Device-Install-{Language ID}-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/Install/{Language ID}/Status
```
<!-- Device-Install-{Language ID}-Status-OmaUri-End -->

<!-- Device-Install-{Language ID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Status of the language queued for install. 0 - not started; 1 - in progress; 2 - succeeded; 3 - failed; 4 - partially succeeded.
<!-- Device-Install-{Language ID}-Status-Description-End -->

<!-- Device-Install-{Language ID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-Status-Editable-End -->

<!-- Device-Install-{Language ID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Install-{Language ID}-Status-DFProperties-End -->

<!-- Device-Install-{Language ID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Install-{Language ID}-Status-Examples-End -->

<!-- Device-Install-{Language ID}-Status-End -->

<!-- Device-InstalledLanguages-Begin -->
## InstalledLanguages

<!-- Device-InstalledLanguages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-InstalledLanguages-Applicability-End -->

<!-- Device-InstalledLanguages-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages
```
<!-- Device-InstalledLanguages-OmaUri-End -->

<!-- Device-InstalledLanguages-Description-Begin -->
<!-- Description-Source-DDF -->
Languages currently installed on the device.
<!-- Device-InstalledLanguages-Description-End -->

<!-- Device-InstalledLanguages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-Editable-End -->

<!-- Device-InstalledLanguages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-InstalledLanguages-DFProperties-End -->

<!-- Device-InstalledLanguages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-Examples-End -->

<!-- Device-InstalledLanguages-End -->

<!-- Device-InstalledLanguages-{Language ID}-Begin -->
### InstalledLanguages/{Language ID}

<!-- Device-InstalledLanguages-{Language ID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-InstalledLanguages-{Language ID}-Applicability-End -->

<!-- Device-InstalledLanguages-{Language ID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/{Language ID}
```
<!-- Device-InstalledLanguages-{Language ID}-OmaUri-End -->

<!-- Device-InstalledLanguages-{Language ID}-Description-Begin -->
<!-- Description-Source-DDF -->
Language tag of an installed language on the device. Delete to uninstall.
<!-- Device-InstalledLanguages-{Language ID}-Description-End -->

<!-- Device-InstalledLanguages-{Language ID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-{Language ID}-Editable-End -->

<!-- Device-InstalledLanguages-{Language ID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-InstalledLanguages-{Language ID}-DFProperties-End -->

<!-- Device-InstalledLanguages-{Language ID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-{Language ID}-Examples-End -->

<!-- Device-InstalledLanguages-{Language ID}-End -->

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Begin -->
#### InstalledLanguages/{Language ID}/LanguageFeatures

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Applicability-End -->

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/{Language ID}/LanguageFeatures
```
<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-OmaUri-End -->

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Description-Begin -->
<!-- Description-Source-DDF -->
Numeric representation of the language features installed. Basic Typing - 1 (0x1), Fonts - 2 (0x2), Handwriting - 4 (0x4), Speech - 8 (0x8), TextToSpeech - 16 (0x10), OCR - 32 (0x20), LocaleData - 64 (0x40), SupplementFonts - 128 (0x80).
<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Description-End -->

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Editable-End -->

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-DFProperties-End -->

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-Examples-End -->

<!-- Device-InstalledLanguages-{Language ID}-LanguageFeatures-End -->

<!-- Device-InstalledLanguages-{Language ID}-Providers-Begin -->
#### InstalledLanguages/{Language ID}/Providers

<!-- Device-InstalledLanguages-{Language ID}-Providers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-InstalledLanguages-{Language ID}-Providers-Applicability-End -->

<!-- Device-InstalledLanguages-{Language ID}-Providers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/{Language ID}/Providers
```
<!-- Device-InstalledLanguages-{Language ID}-Providers-OmaUri-End -->

<!-- Device-InstalledLanguages-{Language ID}-Providers-Description-Begin -->
<!-- Description-Source-DDF -->
Numeric representation of how a language is installed. 1 - The system language pack is installed; 2 - The Local Experience Pack is installed; 3 - Both are installed.
<!-- Device-InstalledLanguages-{Language ID}-Providers-Description-End -->

<!-- Device-InstalledLanguages-{Language ID}-Providers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-{Language ID}-Providers-Editable-End -->

<!-- Device-InstalledLanguages-{Language ID}-Providers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-InstalledLanguages-{Language ID}-Providers-DFProperties-End -->

<!-- Device-InstalledLanguages-{Language ID}-Providers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-InstalledLanguages-{Language ID}-Providers-Examples-End -->

<!-- Device-InstalledLanguages-{Language ID}-Providers-End -->

<!-- Device-LanguageSettings-Begin -->
## LanguageSettings

<!-- Device-LanguageSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-LanguageSettings-Applicability-End -->

<!-- Device-LanguageSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/LanguageSettings
```
<!-- Device-LanguageSettings-OmaUri-End -->

<!-- Device-LanguageSettings-Description-Begin -->
<!-- Description-Source-DDF -->
Language settings of the device.
<!-- Device-LanguageSettings-Description-End -->

<!-- Device-LanguageSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LanguageSettings-Editable-End -->

<!-- Device-LanguageSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-LanguageSettings-DFProperties-End -->

<!-- Device-LanguageSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LanguageSettings-Examples-End -->

<!-- Device-LanguageSettings-End -->

<!-- Device-LanguageSettings-SystemPreferredUILanguages-Begin -->
### LanguageSettings/SystemPreferredUILanguages

<!-- Device-LanguageSettings-SystemPreferredUILanguages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [99.9.9999] |
<!-- Device-LanguageSettings-SystemPreferredUILanguages-Applicability-End -->

<!-- Device-LanguageSettings-SystemPreferredUILanguages-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LanguagePackManagement/LanguageSettings/SystemPreferredUILanguages
```
<!-- Device-LanguageSettings-SystemPreferredUILanguages-OmaUri-End -->

<!-- Device-LanguageSettings-SystemPreferredUILanguages-Description-Begin -->
<!-- Description-Source-DDF -->
System Preferred UI Language of the device.
<!-- Device-LanguageSettings-SystemPreferredUILanguages-Description-End -->

<!-- Device-LanguageSettings-SystemPreferredUILanguages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LanguageSettings-SystemPreferredUILanguages-Editable-End -->

<!-- Device-LanguageSettings-SystemPreferredUILanguages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
<!-- Device-LanguageSettings-SystemPreferredUILanguages-DFProperties-End -->

<!-- Device-LanguageSettings-SystemPreferredUILanguages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LanguageSettings-SystemPreferredUILanguages-Examples-End -->

<!-- Device-LanguageSettings-SystemPreferredUILanguages-End -->

<!-- LanguagePackManagement-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Examples

1. Enumerate installed languages and features with GET command on the "InstalledLanguages" node. Below are the samples:

    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN/Providers**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN/LanguageFeatures**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/ja-JP/Providers**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/ja-JP/LanguageFeatures**

   The nodes under **InstalledLanguages** are the language tags of the installed languages. The **providers** node under language tag is an integer representation of either [language pack](/windows-hardware/manufacture/desktop/available-language-packs-for-windows?view=windows-11&preserve-view=true) or [LXPs](https://www.microsoft.com/store/collections/localexperiencepacks?cat0=devices&rtc=1).

    - **1**- Indicates that only the Language Pack cab is installed.
    - **2**- Indicates that only the LXP is installed.
    - **3**- Indicates that both are installed.

    The **LanguageFeatures** node is a bitmap representation of what [Language Features](/windows-hardware/manufacture/desktop/features-on-demand-language-fod?view=windows-11&preserve-view=true) are installed for a language on a device:

    - Basic Typing = 0x1
    - Fonts = 0x2
    - Handwriting = 0x4
    - Speech = 0x8
    - TextToSpeech = 0x10
    - OCR = 0x20
    - LocaleData = 0x40
    - SupplementFonts = 0x80

2. Install language pack and features with the EXECUTE command on the **StartInstallation** node of the language. The language installation will try to install the best matched language packs and features for the provided language.

    > [!NOTE]
    > If not previously set, installation will set the policy to block cleanup of unused language packs and features on the device to prevent unexpected deletion.

    - Admins can optionally copy the language to the device’s international settings immediately after installation by using the REPLACE command on the "CopyToDeviceInternationalSettings" node of the language. false (default)- will take no action; true- will set the following international settings to reflect the newly installed language:
        - System Preferred UI Language
        - System Locale
        - Default settings for new users
            - Input Method (keyboard)
            - Locale
            - Speech Recognizer
            - User Preferred Language List
    - Admins can optionally configure whether they want to install all available language features during installation using the REPLACE command on the "EnableLanguageFeatureInstallations" node of the language. false- will install only required features; true (default)- will install all available features.

    Here are the sample commands to install French language with required features and copy to the device's international settings:

    1. **ADD ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/**
    2. **REPLACE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/CopyToDeviceInternationalSettings (true)**
    3. **REPLACE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/EnableLanguageFeatureInstallations (false)**
    4. **EXECUTE ./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/StartInstallation**

    The installation is an asynchronous operation. You can query the **Status** or **ErrorCode** nodes by using the following commands:

    **GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/Status**
    **GET./Device/Vendor/MSFT/LanguagePackManagement/Install/fr-FR/ErrorCode**

    Status: 0 – not started; 1 – in progress; 2 – succeeded; 3 – failed; 4 - partial success (A partial success indicates not all the provisioning operations succeeded, for example, there was an error installing the language pack or features).
    ErrorCode: An HRESULT that could help diagnosis if the installation failed or partially failed.

3. Delete installed Language with the DELETE command on the installed language tag. The delete command is a fire and forget operation. The deletion will run in background. IT admin can query the installed language later and resend the command if needed. Below is a sample command to delete the zh-CN language.

   **DELETE./Device/Vendor/MSFT/LanguagePackManagement/InstalledLanguages/zh-CN**

   > [!NOTE]
   > The deletion will ignore the policy of block cleanup of unused language packs.

4. Get/Set System Preferred UI Language with GET or REPLACE command on the "SystemPreferredUILanguages" Node

   **./Device/Vendor/MSFT/LanguagePackManagement/LanguageSettings/SystemPreferredUILanguages**
<!-- LanguagePackManagement-CspMoreInfo-End -->

<!-- LanguagePackManagement-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
