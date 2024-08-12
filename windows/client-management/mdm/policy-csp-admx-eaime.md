---
title: ADMX_EAIME Policy CSP
description: Learn more about the ADMX_EAIME Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_EAIME-Begin -->
# Policy CSP - ADMX_EAIME

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_EAIME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EAIME-Editable-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Begin -->
## L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Applicability-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList
```
<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-OmaUri-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to include the Non-Publishing Standard Glyph in the candidate list when Publishing Standard Glyph for the word exists.

- If you enable this policy setting, Non-Publishing Standard Glyph isn't included in the candidate list when Publishing Standard Glyph for the word exists.

- If you disable or don't configure this policy setting, both Publishing Standard Glyph and Non-Publishing Standard Glyph are included in the candidate list.

This policy setting applies to Japanese Microsoft IME only.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Description-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Editable-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-DFProperties-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList |
| Friendly Name | Do not include Non-Publishing Standard Glyph in the candidate list |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\imejp |
| Registry Value Name | ShowOnlyPublishingStandardGlyph |
| ADMX File Name | EAIME.admx |
<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-AdmxBacked-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-Examples-End -->

<!-- L_DoNotIncludeNonPublishingStandardGlyphInTheCandidateList-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-Begin -->
## L_RestrictCharacterCodeRangeOfConversion

<!-- L_RestrictCharacterCodeRangeOfConversion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_RestrictCharacterCodeRangeOfConversion-Applicability-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_RestrictCharacterCodeRangeOfConversion
```
<!-- L_RestrictCharacterCodeRangeOfConversion-OmaUri-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to restrict character code range of conversion by setting character filter.

- If you enable this policy setting, then only the character code ranges specified by this policy setting are used for conversion of IME. You can specify multiple ranges by setting a value combined with a bitwise OR of following values:

0x0001 // JIS208 area
0x0002 // NEC special char code
0x0004 // NEC selected IBM extended code
0x0008 // IBM extended code
0x0010 // Half width katakana code
0x0100 // EUDC(GAIJI)
0x0200 // S-JIS unmapped area
0x0400 // Unicode char
0x0800 // surrogate char
0x1000 // IVS char
0xFFFF // no definition.

- If you disable or don't configure this policy setting, no range of characters are filtered by default.

This policy setting applies to Japanese Microsoft IME only.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- L_RestrictCharacterCodeRangeOfConversion-Description-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_RestrictCharacterCodeRangeOfConversion-Editable-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_RestrictCharacterCodeRangeOfConversion-DFProperties-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_RestrictCharacterCodeRangeOfConversion |
| Friendly Name | Restrict character code range of conversion |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\imejp |
| ADMX File Name | EAIME.admx |
<!-- L_RestrictCharacterCodeRangeOfConversion-AdmxBacked-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_RestrictCharacterCodeRangeOfConversion-Examples-End -->

<!-- L_RestrictCharacterCodeRangeOfConversion-End -->

<!-- L_TurnOffCustomDictionary-Begin -->
## L_TurnOffCustomDictionary

<!-- L_TurnOffCustomDictionary-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOffCustomDictionary-Applicability-End -->

<!-- L_TurnOffCustomDictionary-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOffCustomDictionary
```
<!-- L_TurnOffCustomDictionary-OmaUri-End -->

<!-- L_TurnOffCustomDictionary-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off the ability to use a custom dictionary.

- If you enable this policy setting, you can't add, edit, and delete words in the custom dictionary either with GUI tools or APIs. A word registered in the custom dictionary before enabling this policy setting can continue to be used for conversion.

- If you disable or don't configure this policy setting, the custom dictionary can be used by default.

[Clear auto-tuning information] removes self-tuned words from the custom dictionary, even if a group policy setting is turned on. To do this, select Settings > Time & Language > Japanese Options > Microsoft IME Options. If compatibility mode is turned on, select Advanced options > Dictionary/Auto-tuning > [Clear auto-tuning information].

[Clear input history] removes self-tuned words from the custom dictionary, even if a group policy setting is turned on. To do this, select Settings > Time & Language > Japanese Options > Microsoft IME Options > Learning and Dictionary > [Clear input history].

This policy setting is applied to Japanese Microsoft IME.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- L_TurnOffCustomDictionary-Description-End -->

<!-- L_TurnOffCustomDictionary-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOffCustomDictionary-Editable-End -->

<!-- L_TurnOffCustomDictionary-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOffCustomDictionary-DFProperties-End -->

<!-- L_TurnOffCustomDictionary-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOffCustomDictionary |
| Friendly Name | Turn off custom dictionary |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\shared |
| Registry Value Name | UserDict |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOffCustomDictionary-AdmxBacked-End -->

<!-- L_TurnOffCustomDictionary-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOffCustomDictionary-Examples-End -->

<!-- L_TurnOffCustomDictionary-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-Begin -->
## L_TurnOffHistorybasedPredictiveInput

<!-- L_TurnOffHistorybasedPredictiveInput-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOffHistorybasedPredictiveInput-Applicability-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOffHistorybasedPredictiveInput
```
<!-- L_TurnOffHistorybasedPredictiveInput-OmaUri-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off history-based predictive input.

- If you enable this policy setting, history-based predictive input is turned off.

- If you disable or don't configure this policy setting, history-based predictive input is on by default.

This policy setting applies to Japanese Microsoft IME only.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- L_TurnOffHistorybasedPredictiveInput-Description-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOffHistorybasedPredictiveInput-Editable-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOffHistorybasedPredictiveInput-DFProperties-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOffHistorybasedPredictiveInput |
| Friendly Name | Turn off history-based predictive input |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\imejp |
| Registry Value Name | UseHistorybasedPredictiveInput |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOffHistorybasedPredictiveInput-AdmxBacked-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOffHistorybasedPredictiveInput-Examples-End -->

<!-- L_TurnOffHistorybasedPredictiveInput-End -->

<!-- L_TurnOffInternetSearchIntegration-Begin -->
## L_TurnOffInternetSearchIntegration

<!-- L_TurnOffInternetSearchIntegration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOffInternetSearchIntegration-Applicability-End -->

<!-- L_TurnOffInternetSearchIntegration-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOffInternetSearchIntegration
```
<!-- L_TurnOffInternetSearchIntegration-OmaUri-End -->

<!-- L_TurnOffInternetSearchIntegration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Internet search integration.

Search integration includes both using Search Provider (Japanese Microsoft IME) and performing bing search from predictive input for Japanese Microsoft IME.

- If you enable this policy setting, you can't use search integration.

- If you disable or don't configure this policy setting, the search integration function can be used by default.

This policy setting applies to Japanese Microsoft IME.

> [!NOTE]
> Changes to this setting won't take effect until the user logs off.
<!-- L_TurnOffInternetSearchIntegration-Description-End -->

<!-- L_TurnOffInternetSearchIntegration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOffInternetSearchIntegration-Editable-End -->

<!-- L_TurnOffInternetSearchIntegration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOffInternetSearchIntegration-DFProperties-End -->

<!-- L_TurnOffInternetSearchIntegration-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOffInternetSearchIntegration |
| Friendly Name | Turn off Internet search integration |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\shared |
| Registry Value Name | SearchPlugin |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOffInternetSearchIntegration-AdmxBacked-End -->

<!-- L_TurnOffInternetSearchIntegration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOffInternetSearchIntegration-Examples-End -->

<!-- L_TurnOffInternetSearchIntegration-End -->

<!-- L_TurnOffOpenExtendedDictionary-Begin -->
## L_TurnOffOpenExtendedDictionary

<!-- L_TurnOffOpenExtendedDictionary-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOffOpenExtendedDictionary-Applicability-End -->

<!-- L_TurnOffOpenExtendedDictionary-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOffOpenExtendedDictionary
```
<!-- L_TurnOffOpenExtendedDictionary-OmaUri-End -->

<!-- L_TurnOffOpenExtendedDictionary-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Open Extended Dictionary.

- If you enable this policy setting, Open Extended Dictionary is turned off. You can't add a new Open Extended Dictionary.

For Japanese Microsoft IME, an Open Extended Dictionary that's added before enabling this policy setting isn't used for conversion.

- If you disable or don't configure this policy setting, Open Extended Dictionary can be added and used by default.

This policy setting is applied to Japanese Microsoft IME.
<!-- L_TurnOffOpenExtendedDictionary-Description-End -->

<!-- L_TurnOffOpenExtendedDictionary-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOffOpenExtendedDictionary-Editable-End -->

<!-- L_TurnOffOpenExtendedDictionary-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOffOpenExtendedDictionary-DFProperties-End -->

<!-- L_TurnOffOpenExtendedDictionary-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOffOpenExtendedDictionary |
| Friendly Name | Turn off Open Extended Dictionary |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\shared |
| Registry Value Name | OpenExtendedDict |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOffOpenExtendedDictionary-AdmxBacked-End -->

<!-- L_TurnOffOpenExtendedDictionary-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOffOpenExtendedDictionary-Examples-End -->

<!-- L_TurnOffOpenExtendedDictionary-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-Begin -->
## L_TurnOffSavingAutoTuningDataToFile

<!-- L_TurnOffSavingAutoTuningDataToFile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOffSavingAutoTuningDataToFile-Applicability-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOffSavingAutoTuningDataToFile
```
<!-- L_TurnOffSavingAutoTuningDataToFile-OmaUri-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off saving the auto-tuning result to file.

- If you enable this policy setting, the auto-tuning data isn't saved to file.

- If you disable or don't configure this policy setting, auto-tuning data is saved to file by default.

This policy setting applies to Japanese Microsoft IME only.
<!-- L_TurnOffSavingAutoTuningDataToFile-Description-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOffSavingAutoTuningDataToFile-Editable-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOffSavingAutoTuningDataToFile-DFProperties-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOffSavingAutoTuningDataToFile |
| Friendly Name | Turn off saving auto-tuning data to file |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\imejp |
| Registry Value Name | SaveAutoTuneDataToFile |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOffSavingAutoTuningDataToFile-AdmxBacked-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOffSavingAutoTuningDataToFile-Examples-End -->

<!-- L_TurnOffSavingAutoTuningDataToFile-End -->

<!-- L_TurnOnCloudCandidate-Begin -->
## L_TurnOnCloudCandidate

<!-- L_TurnOnCloudCandidate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOnCloudCandidate-Applicability-End -->

<!-- L_TurnOnCloudCandidate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOnCloudCandidate
```
<!-- L_TurnOnCloudCandidate-OmaUri-End -->

<!-- L_TurnOnCloudCandidate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the cloud candidates feature, which uses an online service to provide input suggestions that don't exist in a PC's local dictionary.

- If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the suggestions, and the user won't be able to turn it off.

- If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

- If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the cloud candidates feature.

This Policy setting applies to Microsoft CHS Pinyin IME and JPN IME.
<!-- L_TurnOnCloudCandidate-Description-End -->

<!-- L_TurnOnCloudCandidate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOnCloudCandidate-Editable-End -->

<!-- L_TurnOnCloudCandidate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOnCloudCandidate-DFProperties-End -->

<!-- L_TurnOnCloudCandidate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOnCloudCandidate |
| Friendly Name | Turn on cloud candidate |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | Software\Policies\Microsoft\InputMethod\Settings\Shared |
| Registry Value Name | Enable Cloud Candidate |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOnCloudCandidate-AdmxBacked-End -->

<!-- L_TurnOnCloudCandidate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOnCloudCandidate-Examples-End -->

<!-- L_TurnOnCloudCandidate-End -->

<!-- L_TurnOnCloudCandidateCHS-Begin -->
## L_TurnOnCloudCandidateCHS

<!-- L_TurnOnCloudCandidateCHS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOnCloudCandidateCHS-Applicability-End -->

<!-- L_TurnOnCloudCandidateCHS-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOnCloudCandidateCHS
```
<!-- L_TurnOnCloudCandidateCHS-OmaUri-End -->

<!-- L_TurnOnCloudCandidateCHS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the cloud candidates feature, which uses an online service to provide input suggestions that don't exist in a PC's local dictionary.

- If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the suggestions, and the user won't be able to turn it off.

- If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

- If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the cloud candidates feature.

This Policy setting applies only to Microsoft CHS Pinyin IME.
<!-- L_TurnOnCloudCandidateCHS-Description-End -->

<!-- L_TurnOnCloudCandidateCHS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOnCloudCandidateCHS-Editable-End -->

<!-- L_TurnOnCloudCandidateCHS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOnCloudCandidateCHS-DFProperties-End -->

<!-- L_TurnOnCloudCandidateCHS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOnCloudCandidateCHS |
| Friendly Name | Turn on cloud candidate for CHS |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | Software\Policies\Microsoft\InputMethod\Settings\CHS |
| Registry Value Name | Enable Cloud Candidate |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOnCloudCandidateCHS-AdmxBacked-End -->

<!-- L_TurnOnCloudCandidateCHS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOnCloudCandidateCHS-Examples-End -->

<!-- L_TurnOnCloudCandidateCHS-End -->

<!-- L_TurnOnLexiconUpdate-Begin -->
## L_TurnOnLexiconUpdate

<!-- L_TurnOnLexiconUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOnLexiconUpdate-Applicability-End -->

<!-- L_TurnOnLexiconUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOnLexiconUpdate
```
<!-- L_TurnOnLexiconUpdate-OmaUri-End -->

<!-- L_TurnOnLexiconUpdate-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- L_TurnOnLexiconUpdate-Description-End -->

<!-- L_TurnOnLexiconUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting controls the lexicon update feature, which downloads hot and popular words lexicon to local PC.

If you enable this policy setting, the functionality associated with this feature is turned on, hot and popular words lexicon can be downloaded to local PC, the user is able to turn it on or off in settings.

If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

If you don't configure this policy setting, it will be turned on by default, and the user can turn on and turn off the lexicon update feature.

This Policy setting applies only to Microsoft CHS Pinyin IME.
<!-- L_TurnOnLexiconUpdate-Editable-End -->

<!-- L_TurnOnLexiconUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOnLexiconUpdate-DFProperties-End -->

<!-- L_TurnOnLexiconUpdate-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOnLexiconUpdate |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOnLexiconUpdate-AdmxBacked-End -->

<!-- L_TurnOnLexiconUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOnLexiconUpdate-Examples-End -->

<!-- L_TurnOnLexiconUpdate-End -->

<!-- L_TurnOnLiveStickers-Begin -->
## L_TurnOnLiveStickers

<!-- L_TurnOnLiveStickers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOnLiveStickers-Applicability-End -->

<!-- L_TurnOnLiveStickers-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOnLiveStickers
```
<!-- L_TurnOnLiveStickers-OmaUri-End -->

<!-- L_TurnOnLiveStickers-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- L_TurnOnLiveStickers-Description-End -->

<!-- L_TurnOnLiveStickers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting controls the live sticker feature, which uses an online service to provide stickers online.

If you enable this policy setting, the functionality associated with this feature is turned on, the user's keyboard input is sent to Microsoft to generate the live stickers, and the user won't be able to turn it off.

If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.

If you don't configure this policy setting, it will be turned off by default, and the user can turn on and turn off the live sticker feature.

This Policy setting applies only to Microsoft CHS Pinyin IME.
<!-- L_TurnOnLiveStickers-Editable-End -->

<!-- L_TurnOnLiveStickers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOnLiveStickers-DFProperties-End -->

<!-- L_TurnOnLiveStickers-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOnLiveStickers |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOnLiveStickers-AdmxBacked-End -->

<!-- L_TurnOnLiveStickers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOnLiveStickers-Examples-End -->

<!-- L_TurnOnLiveStickers-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Begin -->
## L_TurnOnMisconversionLoggingForMisconversionReport

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Applicability-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_EAIME/L_TurnOnMisconversionLoggingForMisconversionReport
```
<!-- L_TurnOnMisconversionLoggingForMisconversionReport-OmaUri-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on logging of misconversion for the misconversion report.

- If you enable this policy setting, misconversion logging is turned on.

- If you disable or don't configure this policy setting, misconversion logging is turned off.

This policy setting applies to Japanese Microsoft IME and Traditional Chinese IME.
<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Description-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Editable-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- L_TurnOnMisconversionLoggingForMisconversionReport-DFProperties-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | L_TurnOnMisconversionLoggingForMisconversionReport |
| Friendly Name | Turn on misconversion logging for misconversion report |
| Location | User Configuration |
| Path | Windows Components > IME |
| Registry Key Name | software\policies\microsoft\ime\shared |
| Registry Value Name | misconvlogging |
| ADMX File Name | EAIME.admx |
<!-- L_TurnOnMisconversionLoggingForMisconversionReport-AdmxBacked-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- L_TurnOnMisconversionLoggingForMisconversionReport-Examples-End -->

<!-- L_TurnOnMisconversionLoggingForMisconversionReport-End -->

<!-- ADMX_EAIME-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EAIME-CspMoreInfo-End -->

<!-- ADMX_EAIME-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
