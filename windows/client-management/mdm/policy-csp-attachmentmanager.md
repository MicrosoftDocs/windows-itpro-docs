---
title: AttachmentManager Policy CSP
description: Learn more about the AttachmentManager Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- AttachmentManager-Begin -->
# Policy CSP - AttachmentManager

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- AttachmentManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AttachmentManager-Editable-End -->

<!-- DoNotPreserveZoneInformation-Begin -->
## DoNotPreserveZoneInformation

<!-- DoNotPreserveZoneInformation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- DoNotPreserveZoneInformation-Applicability-End -->

<!-- DoNotPreserveZoneInformation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/AttachmentManager/DoNotPreserveZoneInformation
```
<!-- DoNotPreserveZoneInformation-OmaUri-End -->

<!-- DoNotPreserveZoneInformation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether Windows marks file attachments with information about their zone of origin (such as restricted, Internet, intranet, local). This requires NTFS in order to function correctly, and will fail without notice on FAT32. By not preserving the zone information, Windows cannot make proper risk assessments.

- If you enable this policy setting, Windows does not mark file attachments with their zone information.

- If you disable this policy setting, Windows marks file attachments with their zone information.

- If you do not configure this policy setting, Windows marks file attachments with their zone information.
<!-- DoNotPreserveZoneInformation-Description-End -->

<!-- DoNotPreserveZoneInformation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotPreserveZoneInformation-Editable-End -->

<!-- DoNotPreserveZoneInformation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotPreserveZoneInformation-DFProperties-End -->

<!-- DoNotPreserveZoneInformation-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
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

- If you do not configure this policy setting, Windows hides the check box and Unblock button.
<!-- HideZoneInfoMechanism-Description-End -->

<!-- HideZoneInfoMechanism-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideZoneInfoMechanism-Editable-End -->

<!-- HideZoneInfoMechanism-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideZoneInfoMechanism-DFProperties-End -->

<!-- HideZoneInfoMechanism-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
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

- If you disable this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.

- If you do not configure this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.
<!-- NotifyAntivirusPrograms-Description-End -->

<!-- NotifyAntivirusPrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NotifyAntivirusPrograms-Editable-End -->

<!-- NotifyAntivirusPrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NotifyAntivirusPrograms-DFProperties-End -->

<!-- NotifyAntivirusPrograms-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
