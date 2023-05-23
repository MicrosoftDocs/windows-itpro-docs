---
title: WebThreatDefense Policy CSP
description: Learn more about the WebThreatDefense Area in Policy CSP.
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

<!-- WebThreatDefense-Begin -->
# Policy CSP - WebThreatDefense

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- WebThreatDefense-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> In Microsoft Intune, this CSP is listed under the **Enhanced Phishing Protection** category.
<!-- WebThreatDefense-Editable-End -->

<!-- AutomaticDataCollection-Begin -->
## AutomaticDataCollection

<!-- AutomaticDataCollection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- AutomaticDataCollection-Applicability-End -->

<!-- AutomaticDataCollection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/AutomaticDataCollection
```
<!-- AutomaticDataCollection-OmaUri-End -->

<!-- AutomaticDataCollection-Description-Begin -->
<!-- Description-Source-DDF -->
Automatically collect website or app content when additional analysis is needed to help identify security threats.
<!-- AutomaticDataCollection-Description-End -->

<!-- AutomaticDataCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutomaticDataCollection-Editable-End -->

<!-- AutomaticDataCollection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AutomaticDataCollection-DFProperties-End -->

<!-- AutomaticDataCollection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- AutomaticDataCollection-AllowedValues-End -->

<!-- AutomaticDataCollection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutomaticDataCollection |
| Path | WebThreatDefense > AT > WindowsComponents > WebThreatDefense |
<!-- AutomaticDataCollection-GpMapping-End -->

<!-- AutomaticDataCollection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutomaticDataCollection-Examples-End -->

<!-- AutomaticDataCollection-End -->

<!-- NotifyMalicious-Begin -->
## NotifyMalicious

<!-- NotifyMalicious-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- NotifyMalicious-Applicability-End -->

<!-- NotifyMalicious-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/NotifyMalicious
```
<!-- NotifyMalicious-OmaUri-End -->

<!-- NotifyMalicious-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Enhanced Phishing Protection in Microsoft Defender SmartScreen warns your users if they type their work or school password into one of the following malicious scenarios: into a reported phishing site, into a Microsoft login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a Microsoft login URL with an invalid certificate.

- If you enable this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen warns your users if they type their work or school password into one of the malicious scenarios described above and encourages them to change their password.

- If you disable or don't configure this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen won't warn your users if they type their work or school password into one of the malicious scenarios described above.
<!-- NotifyMalicious-Description-End -->

<!-- NotifyMalicious-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NotifyMalicious-Editable-End -->

<!-- NotifyMalicious-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NotifyMalicious-DFProperties-End -->

<!-- NotifyMalicious-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- NotifyMalicious-AllowedValues-End -->

<!-- NotifyMalicious-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NotifyMalicious |
| Friendly Name | Notify Malicious |
| Location | Computer Configuration |
| Path | Windows Components > Windows Defender SmartScreen > Enhanced Phishing Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows\WTDS\Components |
| Registry Value Name | NotifyMalicious |
| ADMX File Name | WebThreatDefense.admx |
<!-- NotifyMalicious-GpMapping-End -->

<!-- NotifyMalicious-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NotifyMalicious-Examples-End -->

<!-- NotifyMalicious-End -->

<!-- NotifyPasswordReuse-Begin -->
## NotifyPasswordReuse

<!-- NotifyPasswordReuse-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- NotifyPasswordReuse-Applicability-End -->

<!-- NotifyPasswordReuse-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/NotifyPasswordReuse
```
<!-- NotifyPasswordReuse-OmaUri-End -->

<!-- NotifyPasswordReuse-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Enhanced Phishing Protection in Microsoft Defender SmartScreen warns your users if they reuse their work or school password.

- If you enable this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen warns users if they reuse their work or school password and encourages them to change it.

- If you disable or don't configure this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen won't warn users if they reuse their work or school password.
<!-- NotifyPasswordReuse-Description-End -->

<!-- NotifyPasswordReuse-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NotifyPasswordReuse-Editable-End -->

<!-- NotifyPasswordReuse-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NotifyPasswordReuse-DFProperties-End -->

<!-- NotifyPasswordReuse-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- NotifyPasswordReuse-AllowedValues-End -->

<!-- NotifyPasswordReuse-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NotifyPasswordReuse |
| Friendly Name | Notify Password Reuse |
| Location | Computer Configuration |
| Path | Windows Components > Windows Defender SmartScreen > Enhanced Phishing Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows\WTDS\Components |
| Registry Value Name | NotifyPasswordReuse |
| ADMX File Name | WebThreatDefense.admx |
<!-- NotifyPasswordReuse-GpMapping-End -->

<!-- NotifyPasswordReuse-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NotifyPasswordReuse-Examples-End -->

<!-- NotifyPasswordReuse-End -->

<!-- NotifyUnsafeApp-Begin -->
## NotifyUnsafeApp

<!-- NotifyUnsafeApp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- NotifyUnsafeApp-Applicability-End -->

<!-- NotifyUnsafeApp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/NotifyUnsafeApp
```
<!-- NotifyUnsafeApp-OmaUri-End -->

<!-- NotifyUnsafeApp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Enhanced Phishing Protection in Microsoft Defender SmartScreen warns your users if they type their work or school passwords in Notepad, Winword, or M365 Office apps like OneNote, Word, Excel, etc.

- If you enable this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen warns your users if they store their password in text editor apps.

- If you disable or don't configure this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen won't warn users if they store their password in text editor apps.
<!-- NotifyUnsafeApp-Description-End -->

<!-- NotifyUnsafeApp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NotifyUnsafeApp-Editable-End -->

<!-- NotifyUnsafeApp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NotifyUnsafeApp-DFProperties-End -->

<!-- NotifyUnsafeApp-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- NotifyUnsafeApp-AllowedValues-End -->

<!-- NotifyUnsafeApp-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NotifyUnsafeApp |
| Friendly Name | Notify Unsafe App |
| Location | Computer Configuration |
| Path | Windows Components > Windows Defender SmartScreen > Enhanced Phishing Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows\WTDS\Components |
| Registry Value Name | NotifyUnsafeApp |
| ADMX File Name | WebThreatDefense.admx |
<!-- NotifyUnsafeApp-GpMapping-End -->

<!-- NotifyUnsafeApp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NotifyUnsafeApp-Examples-End -->

<!-- NotifyUnsafeApp-End -->

<!-- ServiceEnabled-Begin -->
## ServiceEnabled

<!-- ServiceEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ServiceEnabled-Applicability-End -->

<!-- ServiceEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WebThreatDefense/ServiceEnabled
```
<!-- ServiceEnabled-OmaUri-End -->

<!-- ServiceEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Enhanced Phishing Protection in Microsoft Defender SmartScreen is in audit mode or off. Users don't see notifications for any protection scenarios when Enhanced Phishing Protection in Microsoft Defender is in audit mode. Audit mode captures unsafe password entry events and sends telemetry through Microsoft Defender.

- If you enable this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen is enabled in audit mode and your users are unable to turn it off.

- If you disable this policy setting, Enhanced Phishing Protection in Microsoft Defender SmartScreen is off and it won't capture events, send telemetry, or notify users. Additionally, your users are unable to turn it on.

- If you don't configure this setting, users can decide whether or not they will enable Enhanced Phishing Protection in Microsoft Defender SmartScreen.
<!-- ServiceEnabled-Description-End -->

<!-- ServiceEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ServiceEnabled-Editable-End -->

<!-- ServiceEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- ServiceEnabled-DFProperties-End -->

<!-- ServiceEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- ServiceEnabled-AllowedValues-End -->

<!-- ServiceEnabled-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ServiceEnabled |
| Friendly Name | Service Enabled |
| Location | Computer Configuration |
| Path | Windows Components > Windows Defender SmartScreen > Enhanced Phishing Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows\WTDS\Components |
| Registry Value Name | ServiceEnabled |
| ADMX File Name | WebThreatDefense.admx |
<!-- ServiceEnabled-GpMapping-End -->

<!-- ServiceEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ServiceEnabled-Examples-End -->

<!-- ServiceEnabled-End -->

<!-- WebThreatDefense-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WebThreatDefense-CspMoreInfo-End -->

<!-- WebThreatDefense-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
