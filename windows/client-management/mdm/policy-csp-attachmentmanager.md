---
title: AttachmentManager Policy CSP
description: Learn more about the AttachmentManager Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- AttachmentManager-Begin -->
# Policy CSP - AttachmentManager

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- AttachmentManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AttachmentManager-Editable-End -->

<!-- DoNotPreserveZoneInformation-Begin -->
## DoNotPreserveZoneInformation

<!-- DoNotPreserveZoneInformation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DoNotPreserveZoneInformation-Applicability-End -->

<!-- DoNotPreserveZoneInformation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/AttachmentManager/DoNotPreserveZoneInformation
```
<!-- DoNotPreserveZoneInformation-OmaUri-End -->

<!-- DoNotPreserveZoneInformation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Windows marks file attachments with information about their zone of origin (such as restricted, Internet, intranet, local). This requires NTFS in order to function correctly, and will fail without notice on FAT32. By not preserving the zone information, Windows can't make proper risk assessments.

- If you enable this policy setting, Windows doesn't mark file attachments with their zone information.

- If you disable this policy setting, Windows marks file attachments with their zone information.

- If you don't configure this policy setting, Windows marks file attachments with their zone information.
<!-- DoNotPreserveZoneInformation-Description-End -->

<!-- DoNotPreserveZoneInformation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotPreserveZoneInformation-Editable-End -->

<!-- DoNotPreserveZoneInformation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotPreserveZoneInformation-DFProperties-End -->

<!-- DoNotPreserveZoneInformation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_MarkZoneOnSavedAtttachments |
| Friendly Name | Do not preserve zone information in file attachments |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Attachments |
| Registry Value Name | SaveZoneInformation |
| ADMX File Name | AttachmentManager.admx |
<!-- DoNotPreserveZoneInformation-AdmxBacked-End -->

<!-- DoNotPreserveZoneInformation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotPreserveZoneInformation-Examples-End -->

<!-- DoNotPreserveZoneInformation-End -->

<!-- HideZoneInfoMechanism-Begin -->
## HideZoneInfoMechanism

<!-- HideZoneInfoMechanism-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- HideZoneInfoMechanism-Applicability-End -->

<!-- HideZoneInfoMechanism-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/AttachmentManager/HideZoneInfoMechanism
```
<!-- HideZoneInfoMechanism-OmaUri-End -->

<!-- HideZoneInfoMechanism-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether users can manually remove the zone information from saved file attachments by clicking the Unblock button in the file's property sheet or by using a check box in the security warning dialog. Removing the zone information allows users to open potentially dangerous file attachments that Windows has blocked users from opening.

- If you enable this policy setting, Windows hides the check box and Unblock button.

- If you disable this policy setting, Windows shows the check box and Unblock button.

- If you don't configure this policy setting, Windows hides the check box and Unblock button.
<!-- HideZoneInfoMechanism-Description-End -->

<!-- HideZoneInfoMechanism-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideZoneInfoMechanism-Editable-End -->

<!-- HideZoneInfoMechanism-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideZoneInfoMechanism-DFProperties-End -->

<!-- HideZoneInfoMechanism-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_RemoveZoneInfo |
| Friendly Name | Hide mechanisms to remove zone information |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Attachments |
| Registry Value Name | HideZoneInfoOnProperties |
| ADMX File Name | AttachmentManager.admx |
<!-- HideZoneInfoMechanism-AdmxBacked-End -->

<!-- HideZoneInfoMechanism-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideZoneInfoMechanism-Examples-End -->

<!-- HideZoneInfoMechanism-End -->

<!-- NotifyAntivirusPrograms-Begin -->
## NotifyAntivirusPrograms

<!-- NotifyAntivirusPrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- NotifyAntivirusPrograms-Applicability-End -->

<!-- NotifyAntivirusPrograms-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/AttachmentManager/NotifyAntivirusPrograms
```
<!-- NotifyAntivirusPrograms-OmaUri-End -->

<!-- NotifyAntivirusPrograms-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they will all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, additional calls would be redundant.

- If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.

- If you disable this policy setting, Windows doesn't call the registered antivirus programs when file attachments are opened.

- If you don't configure this policy setting, Windows doesn't call the registered antivirus programs when file attachments are opened.
<!-- NotifyAntivirusPrograms-Description-End -->

<!-- NotifyAntivirusPrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NotifyAntivirusPrograms-Editable-End -->

<!-- NotifyAntivirusPrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NotifyAntivirusPrograms-DFProperties-End -->

<!-- NotifyAntivirusPrograms-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_CallIOfficeAntiVirus |
| Friendly Name | Notify antivirus programs when opening attachments |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Attachments |
| Registry Value Name | ScanWithAntiVirus |
| ADMX File Name | AttachmentManager.admx |
<!-- NotifyAntivirusPrograms-AdmxBacked-End -->

<!-- NotifyAntivirusPrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NotifyAntivirusPrograms-Examples-End -->

<!-- NotifyAntivirusPrograms-End -->

<!-- AttachmentManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- AttachmentManager-CspMoreInfo-End -->

<!-- AttachmentManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
