---
title: Printers Policy CSP
description: Learn more about the Printers Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Printers-Begin -->
# Policy CSP - Printers

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Printers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Printers-Editable-End -->

<!-- ApprovedUsbPrintDevices-Begin -->
## ApprovedUsbPrintDevices

<!-- ApprovedUsbPrintDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ApprovedUsbPrintDevices-Applicability-End -->

<!-- ApprovedUsbPrintDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ApprovedUsbPrintDevices
```
<!-- ApprovedUsbPrintDevices-OmaUri-End -->

<!-- ApprovedUsbPrintDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting is a component of the Device Control Printing Restrictions. To use this setting, enable Device Control Printing by enabling the "Enable Device Control Printing Restrictions" setting.

When Device Control Printing is enabled, the system uses the specified list of vid/pid values to determine if the current USB connected printer is approved for local printing.

Type all the approved vid/pid combinations (separated by commas) that correspond to approved USB printer models. When a user tries to print to a USB printer queue the device vid/pid will be compared to the approved list.
<!-- ApprovedUsbPrintDevices-Description-End -->

<!-- ApprovedUsbPrintDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The format of this setting is `<vid>/<pid>[,<vid>/<pid>]`.
<!-- ApprovedUsbPrintDevices-Editable-End -->

<!-- ApprovedUsbPrintDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApprovedUsbPrintDevices-DFProperties-End -->

<!-- ApprovedUsbPrintDevices-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ApprovedUsbPrintDevices |
| Friendly Name | List of Approved USB-connected print devices |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing.admx |
<!-- ApprovedUsbPrintDevices-AdmxBacked-End -->

<!-- ApprovedUsbPrintDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApprovedUsbPrintDevices-Examples-End -->

<!-- ApprovedUsbPrintDevices-End -->

<!-- ApprovedUsbPrintDevicesUser-Begin -->
## ApprovedUsbPrintDevicesUser

<!-- ApprovedUsbPrintDevicesUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ApprovedUsbPrintDevicesUser-Applicability-End -->

<!-- ApprovedUsbPrintDevicesUser-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Printers/ApprovedUsbPrintDevicesUser
```
<!-- ApprovedUsbPrintDevicesUser-OmaUri-End -->

<!-- ApprovedUsbPrintDevicesUser-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting is a component of the Device Control Printing Restrictions. To use this setting, enable Device Control Printing by enabling the "Enable Device Control Printing Restrictions" setting.

When Device Control Printing is enabled, the system uses the specified list of vid/pid values to determine if the current USB connected printer is approved for local printing.

Type all the approved vid/pid combinations (separated by commas) that correspond to approved USB printer models. When a user tries to print to a USB printer queue the device vid/pid will be compared to the approved list.
<!-- ApprovedUsbPrintDevicesUser-Description-End -->

<!-- ApprovedUsbPrintDevicesUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The format of this setting is `<vid>/<pid>[,<vid>/<pid>]`.
<!-- ApprovedUsbPrintDevicesUser-Editable-End -->

<!-- ApprovedUsbPrintDevicesUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApprovedUsbPrintDevicesUser-DFProperties-End -->

<!-- ApprovedUsbPrintDevicesUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ApprovedUsbPrintDevicesUser |
| Friendly Name | List of Approved USB-connected print devices |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing.admx |
<!-- ApprovedUsbPrintDevicesUser-AdmxBacked-End -->

<!-- ApprovedUsbPrintDevicesUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApprovedUsbPrintDevicesUser-Examples-End -->

<!-- ApprovedUsbPrintDevicesUser-End -->

<!-- ConfigureCopyFilesPolicy-Begin -->
## ConfigureCopyFilesPolicy

<!-- ConfigureCopyFilesPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureCopyFilesPolicy-Applicability-End -->

<!-- ConfigureCopyFilesPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureCopyFilesPolicy
```
<!-- ConfigureCopyFilesPolicy-OmaUri-End -->

<!-- ConfigureCopyFilesPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Manages how Queue-specific files are processed during printer installation. At printer installation time, a vendor-supplied installation application can specify a set of files, of any type, to be associated with a particular print queue. The files are downloaded to each client that connects to the print server.

You can enable this setting to change the default behavior involving queue-specific files. To use this setting, select one of the options below from the "Manage processing of Queue-specific files" box.

If you disable or don't configure this policy setting, the default behavior is "Limit Queue-specific files to Color profiles".

- "Do not allow Queue-specific files" specifies that no queue-specific files will be allowed/processed during print queue/printer connection installation.

- "Limit Queue-specific files to Color profiles" specifies that only queue-specific files that adhere to the standard color profile scheme will be allowed. This means entries using the Registry Key CopyFiles\ICM, containing a Directory value of COLOR and supporting mscms.dll as the Module value. "Limit Queue-specific files to Color profiles" is the default behavior.

- "Allow all Queue-specific files" specifies that all queue-specific files will be allowed/processed during print queue/printer connection installation.
<!-- ConfigureCopyFilesPolicy-Description-End -->

<!-- ConfigureCopyFilesPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following are the supported values:

- 0: Do not allow Queue-specific files.
- 1 (Default): Limit Queue-specific files to Color profiles.
- 2: Allow all Queue-specific files.
<!-- ConfigureCopyFilesPolicy-Editable-End -->

<!-- ConfigureCopyFilesPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureCopyFilesPolicy-DFProperties-End -->

<!-- ConfigureCopyFilesPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureCopyFilesPolicy |
| Friendly Name | Manage processing of Queue-specific files |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing.admx |
<!-- ConfigureCopyFilesPolicy-AdmxBacked-End -->

<!-- ConfigureCopyFilesPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureCopyFilesPolicy-Examples-End -->

<!-- ConfigureCopyFilesPolicy-End -->

<!-- ConfigureDriverValidationLevel-Begin -->
## ConfigureDriverValidationLevel

<!-- ConfigureDriverValidationLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureDriverValidationLevel-Applicability-End -->

<!-- ConfigureDriverValidationLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureDriverValidationLevel
```
<!-- ConfigureDriverValidationLevel-OmaUri-End -->

<!-- ConfigureDriverValidationLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the print driver signature validation mechanism. This policy controls the type of digital signature that's required for a print driver to be considered valid and installed on the system.

As part of this validation the catalog/embedded signature is verified and all files in the driver must be a part of the catalog or have their own embedded signature that can be used for validation.

You can enable this setting to change the default signature validation method. To use this setting, select one of the options below from the "Select the driver signature mechanism for this computer" box.

If you disable or don't configure this policy setting, the default method is "Allow all validly signed drivers".

- "Require inbox signed drivers" specifies only drivers that are shipped as part of a Windows image are allowed on this computer.

- "Allow inbox and PrintDrivers Trusted Store signed drivers" specifies only drivers that are shipped as part of a Windows image or drivers that are signed by certificates installed in the 'PrintDrivers' certificate store are allowed on this computer.

- "Allow inbox, PrintDrivers Trusted Store, and WHQL signed drivers" specifies the only drivers allowed on this computer are those that are: shipped as part of a Windows image, signed by certificates installed in the 'PrintDrivers' certificate store, or signed by the Windows Hardware Quality Lab (WHQL).

- "Allow inbox, PrintDrivers Trusted Store, WHQL, and Trusted Publishers Store signed drivers" specifies the only drivers allowed on this computer are those that are: shipped as part of a Windows image, signed by certificates installed in the 'PrintDrivers' certificate store, signed by the Windows Hardware Quality Lab (WHQL), or signed by certificates installed in the 'Trusted Publishers' certificate store.

- "Allow all validly signed drivers" specifies that any print driver that has a valid embedded signature or can be validated against the print driver catalog can be installed on this computer.

The 'PrintDrivers' certificate store needs to be created by an administrator under the local machine store location.

The 'Trusted Publishers' certificate store can contain certificates from sources that aren't related to print drivers.
<!-- ConfigureDriverValidationLevel-Description-End -->

<!-- ConfigureDriverValidationLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following are the supported values:

- 0: Require inbox signed drivers.
- 1: Allow inbox and PrintDrivers Trusted Store signed drivers.
- 2: Allow inbox, PrintDrivers Trusted Store, and WHQL signed drivers.
- 3: Allow inbox, PrintDrivers Trusted Store, WHQL, and Trusted Publishers Store signed drivers.
- 4 (Default): Allow all validly signed drivers.
<!-- ConfigureDriverValidationLevel-Editable-End -->

<!-- ConfigureDriverValidationLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureDriverValidationLevel-DFProperties-End -->

<!-- ConfigureDriverValidationLevel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureDriverValidationLevel |
| Friendly Name | Manage Print Driver signature validation |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Driver |
| ADMX File Name | Printing.admx |
<!-- ConfigureDriverValidationLevel-AdmxBacked-End -->

<!-- ConfigureDriverValidationLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureDriverValidationLevel-Examples-End -->

<!-- ConfigureDriverValidationLevel-End -->

<!-- ConfigureIppPageCountsPolicy-Begin -->
## ConfigureIppPageCountsPolicy

<!-- ConfigureIppPageCountsPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureIppPageCountsPolicy-Applicability-End -->

<!-- ConfigureIppPageCountsPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureIppPageCountsPolicy
```
<!-- ConfigureIppPageCountsPolicy-OmaUri-End -->

<!-- ConfigureIppPageCountsPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether to always send page count information for accounting purposes for printers using the Microsoft IPP Class Driver.

By default, pages are sent to the printer as soon as they're rendered and page count information isn't sent to the printer unless pages must be reordered.

- If you enable this setting the system will render all print job pages up front and send the printer the total page count for the print job.

- If you disable this setting or don't configure it, pages are printed as soon as they're rendered and page counts are only sent when page reordering is required to process the job.
<!-- ConfigureIppPageCountsPolicy-Description-End -->

<!-- ConfigureIppPageCountsPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following are the supported values:

- 0 (Default): Disabled.
- 1: Enabled.
<!-- ConfigureIppPageCountsPolicy-Editable-End -->

<!-- ConfigureIppPageCountsPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureIppPageCountsPolicy-DFProperties-End -->

<!-- ConfigureIppPageCountsPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureIppPageCountsPolicy |
| Friendly Name | Always send job page count information for IPP printers |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\IPP |
| Registry Value Name | AlwaysSendIppPageCounts |
| ADMX File Name | Printing.admx |
<!-- ConfigureIppPageCountsPolicy-AdmxBacked-End -->

<!-- ConfigureIppPageCountsPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureIppPageCountsPolicy-Examples-End -->

<!-- ConfigureIppPageCountsPolicy-End -->

<!-- ConfigureRedirectionGuardPolicy-Begin -->
## ConfigureRedirectionGuardPolicy

<!-- ConfigureRedirectionGuardPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureRedirectionGuardPolicy-Applicability-End -->

<!-- ConfigureRedirectionGuardPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureRedirectionGuardPolicy
```
<!-- ConfigureRedirectionGuardPolicy-OmaUri-End -->

<!-- ConfigureRedirectionGuardPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether Redirection Guard is enabled for the print spooler.

You can enable this setting to configure the Redirection Guard policy being applied to spooler.

- If you disable or don't configure this policy setting, Redirection Guard will default to being 'Enabled'.

- If you enable this setting you may select the following options:

- Enabled: Redirection Guard will prevent any file redirections from being followed.

- Disabled: Redirection Guard won't be enabled and file redirections may be used within the spooler process.

- Audit: Redirection Guard will log events as though it were enabled but won't actually prevent file redirections from being used within the spooler.
<!-- ConfigureRedirectionGuardPolicy-Description-End -->

<!-- ConfigureRedirectionGuardPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following are the supported values:

- 0: Redirection guard disabled.
- 1 (Default): Redirection guard enabled.
- 2: Redirection guard audit mode.
<!-- ConfigureRedirectionGuardPolicy-Editable-End -->

<!-- ConfigureRedirectionGuardPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureRedirectionGuardPolicy-DFProperties-End -->

<!-- ConfigureRedirectionGuardPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureRedirectionGuardPolicy |
| Friendly Name | Configure Redirection Guard |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing.admx |
<!-- ConfigureRedirectionGuardPolicy-AdmxBacked-End -->

<!-- ConfigureRedirectionGuardPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureRedirectionGuardPolicy-Examples-End -->

<!-- ConfigureRedirectionGuardPolicy-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Begin -->
## ConfigureRpcAuthnLevelPrivacyEnabled

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Applicability-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureRpcAuthnLevelPrivacyEnabled
```
<!-- ConfigureRpcAuthnLevelPrivacyEnabled-OmaUri-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether packet level privacy is enabled for RPC for incoming connections.

By default packet level privacy is enabled for RPC for incoming connections.

If you enable or don't configure this policy setting, packet level privacy is enabled for RPC for incoming connections.
<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Description-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Editable-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureRpcAuthnLevelPrivacyEnabled-DFProperties-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureRpcAuthnLevelPrivacyEnabled |
| Friendly Name | Configure RPC packet level privacy setting for incoming connections |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | System\CurrentControlSet\Control\Print |
| Registry Value Name | RpcAuthnLevelPrivacyEnabled |
| ADMX File Name | Printing.admx |
<!-- ConfigureRpcAuthnLevelPrivacyEnabled-AdmxBacked-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureRpcAuthnLevelPrivacyEnabled-Examples-End -->

<!-- ConfigureRpcAuthnLevelPrivacyEnabled-End -->

<!-- ConfigureRpcConnectionPolicy-Begin -->
## ConfigureRpcConnectionPolicy

<!-- ConfigureRpcConnectionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureRpcConnectionPolicy-Applicability-End -->

<!-- ConfigureRpcConnectionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureRpcConnectionPolicy
```
<!-- ConfigureRpcConnectionPolicy-OmaUri-End -->

<!-- ConfigureRpcConnectionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls which protocol and protocol settings to use for outgoing RPC connections to a remote print spooler.

By default, RPC over TCP is used and authentication is always enabled. For RPC over named pipes, authentication is always enabled for domain joined machines but disabled for non domain joined machines.

Protocol to use for outgoing RPC connections:

- "RPC over TCP": Use RPC over TCP for outgoing RPC connections to a remote print spooler
- "RPC over named pipes": Use RPC over named pipes for outgoing RPC connections to a remote print spooler.

Use authentication for outgoing RPC over named pipes connections:

- "Default": By default domain joined computers enable RPC authentication for RPC over named pipes while non domain joined computers disable RPC authentication for RPC over named pipes
- "Authentication enabled": RPC authentication will be used for outgoing RPC over named pipes connections
- "Authentication disabled": RPC authentication won't be used for outgoing RPC over named pipes connections.

If you disable or don't configure this policy setting, the above defaults will be used.
<!-- ConfigureRpcConnectionPolicy-Description-End -->

<!-- ConfigureRpcConnectionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureRpcConnectionPolicy-Editable-End -->

<!-- ConfigureRpcConnectionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureRpcConnectionPolicy-DFProperties-End -->

<!-- ConfigureRpcConnectionPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureRpcConnectionPolicy |
| Friendly Name | Configure RPC connection settings |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\RPC |
| ADMX File Name | Printing.admx |
<!-- ConfigureRpcConnectionPolicy-AdmxBacked-End -->

<!-- ConfigureRpcConnectionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureRpcConnectionPolicy-Examples-End -->

<!-- ConfigureRpcConnectionPolicy-End -->

<!-- ConfigureRpcListenerPolicy-Begin -->
## ConfigureRpcListenerPolicy

<!-- ConfigureRpcListenerPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureRpcListenerPolicy-Applicability-End -->

<!-- ConfigureRpcListenerPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureRpcListenerPolicy
```
<!-- ConfigureRpcListenerPolicy-OmaUri-End -->

<!-- ConfigureRpcListenerPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls which protocols incoming RPC connections to the print spooler are allowed to use.

By default, RPC over TCP is enabled and Negotiate is used for the authentication protocol.

Protocols to allow for incoming RPC connections:

- "RPC over named pipes": Incoming RPC connections are only allowed over named pipes
- "RPC over TCP": Incoming RPC connections are only allowed over TCP (the default option)
- "RPC over named pipes and TCP": Incoming RPC connections will be allowed over TCP and named pipes.

Authentication protocol to use for incoming RPC connections:

- "Negotiate": Use the Negotiate authentication protocol (the default option)
- "Kerberos": Use the Kerberos authentication protocol.

If you disable or don't configure this policy setting, the above defaults will be used.
<!-- ConfigureRpcListenerPolicy-Description-End -->

<!-- ConfigureRpcListenerPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureRpcListenerPolicy-Editable-End -->

<!-- ConfigureRpcListenerPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureRpcListenerPolicy-DFProperties-End -->

<!-- ConfigureRpcListenerPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureRpcListenerPolicy |
| Friendly Name | Configure RPC listener settings |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\RPC |
| ADMX File Name | Printing.admx |
<!-- ConfigureRpcListenerPolicy-AdmxBacked-End -->

<!-- ConfigureRpcListenerPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureRpcListenerPolicy-Examples-End -->

<!-- ConfigureRpcListenerPolicy-End -->

<!-- ConfigureRpcTcpPort-Begin -->
## ConfigureRpcTcpPort

<!-- ConfigureRpcTcpPort-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureRpcTcpPort-Applicability-End -->

<!-- ConfigureRpcTcpPort-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureRpcTcpPort
```
<!-- ConfigureRpcTcpPort-OmaUri-End -->

<!-- ConfigureRpcTcpPort-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls which port is used for RPC over TCP for incoming connections to the print spooler and outgoing connections to remote print spoolers.

By default dynamic TCP ports are used.

RPC over TCP port:

- The port to use for RPC over TCP. A value of 0 is the default and indicates that dynamic TCP ports will be used.

If you disable or don't configure this policy setting, dynamic TCP ports are used.
<!-- ConfigureRpcTcpPort-Description-End -->

<!-- ConfigureRpcTcpPort-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureRpcTcpPort-Editable-End -->

<!-- ConfigureRpcTcpPort-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureRpcTcpPort-DFProperties-End -->

<!-- ConfigureRpcTcpPort-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureRpcTcpPort |
| Friendly Name | Configure RPC over TCP port |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\RPC |
| ADMX File Name | Printing.admx |
<!-- ConfigureRpcTcpPort-AdmxBacked-End -->

<!-- ConfigureRpcTcpPort-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureRpcTcpPort-Examples-End -->

<!-- ConfigureRpcTcpPort-End -->

<!-- ConfigureWindowsProtectedPrint-Begin -->
## ConfigureWindowsProtectedPrint

<!-- ConfigureWindowsProtectedPrint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureWindowsProtectedPrint-Applicability-End -->

<!-- ConfigureWindowsProtectedPrint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ConfigureWindowsProtectedPrint
```
<!-- ConfigureWindowsProtectedPrint-OmaUri-End -->

<!-- ConfigureWindowsProtectedPrint-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether Windows protected print is enabled on this computer.

By default, Windows protected print isn't enabled and there aren't any restrictions on the print drivers that can be installed or print functionality.

- If you enable this setting, the computer will operate in Windows protected print mode which only allows printing to printers that support a subset of inbox Windows print drivers.

- If you disable this setting or don't configure it, there aren't any restrictions on the print drivers that can be installed or print functionality.

For more information, please see [insert link to web page with WPP info]
<!-- ConfigureWindowsProtectedPrint-Description-End -->

<!-- ConfigureWindowsProtectedPrint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureWindowsProtectedPrint-Editable-End -->

<!-- ConfigureWindowsProtectedPrint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureWindowsProtectedPrint-DFProperties-End -->

<!-- ConfigureWindowsProtectedPrint-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureWindowsProtectedPrint |
| Friendly Name | Configure Windows protected print |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\WPP |
| Registry Value Name | WindowsProtectedPrintGroupPolicyState |
| ADMX File Name | Printing.admx |
<!-- ConfigureWindowsProtectedPrint-AdmxBacked-End -->

<!-- ConfigureWindowsProtectedPrint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureWindowsProtectedPrint-Examples-End -->

<!-- ConfigureWindowsProtectedPrint-End -->

<!-- EnableDeviceControl-Begin -->
## EnableDeviceControl

<!-- EnableDeviceControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableDeviceControl-Applicability-End -->

<!-- EnableDeviceControl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/EnableDeviceControl
```
<!-- EnableDeviceControl-OmaUri-End -->

<!-- EnableDeviceControl-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether Device Control Printing Restrictions are enforced for printing on this computer.

By default, there are no restrictions to printing based on connection type or printer Make/Model.

- If you enable this setting, the computer will restrict printing to printer connections on the corporate network or approved USB-connected printers.

- If you disable this setting or don't configure it, there are no restrictions to printing based on connection type or printer Make/Model.
<!-- EnableDeviceControl-Description-End -->

<!-- EnableDeviceControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDeviceControl-Editable-End -->

<!-- EnableDeviceControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableDeviceControl-DFProperties-End -->

<!-- EnableDeviceControl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableDeviceControl |
| Friendly Name | Enable Device Control Printing Restrictions |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | EnableDeviceControl |
| ADMX File Name | Printing.admx |
<!-- EnableDeviceControl-AdmxBacked-End -->

<!-- EnableDeviceControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableDeviceControl-Examples-End -->

<!-- EnableDeviceControl-End -->

<!-- EnableDeviceControlUser-Begin -->
## EnableDeviceControlUser

<!-- EnableDeviceControlUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableDeviceControlUser-Applicability-End -->

<!-- EnableDeviceControlUser-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Printers/EnableDeviceControlUser
```
<!-- EnableDeviceControlUser-OmaUri-End -->

<!-- EnableDeviceControlUser-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether Device Control Printing Restrictions are enforced for printing on this computer.

By default, there are no restrictions to printing based on connection type or printer Make/Model.

- If you enable this setting, the computer will restrict printing to printer connections on the corporate network or approved USB-connected printers.

- If you disable this setting or don't configure it, there are no restrictions to printing based on connection type or printer Make/Model.
<!-- EnableDeviceControlUser-Description-End -->

<!-- EnableDeviceControlUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDeviceControlUser-Editable-End -->

<!-- EnableDeviceControlUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableDeviceControlUser-DFProperties-End -->

<!-- EnableDeviceControlUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableDeviceControlUser |
| Friendly Name | Enable Device Control Printing Restrictions |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | EnableDeviceControl |
| ADMX File Name | Printing.admx |
<!-- EnableDeviceControlUser-AdmxBacked-End -->

<!-- EnableDeviceControlUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableDeviceControlUser-Examples-End -->

<!-- EnableDeviceControlUser-End -->

<!-- ManageDriverExclusionList-Begin -->
## ManageDriverExclusionList

<!-- ManageDriverExclusionList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ManageDriverExclusionList-Applicability-End -->

<!-- ManageDriverExclusionList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/ManageDriverExclusionList
```
<!-- ManageDriverExclusionList-OmaUri-End -->

<!-- ManageDriverExclusionList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the print driver exclusion list. The exclusion list allows an administrator to curate a list of printer drivers that aren't allowed to be installed on the system.

This checks outranks the signature check and allows drivers that have a valid signature level for the Print Driver signature validation policy to be excluded.

Entries in the exclusion list consist of a SHA256 hash (or SHA1 hash for Win7) of the INF file and/or main driver DLL file of the driver and the name of the file.

If you disable or don't configure this policy setting, the registry key and values associated with this policy setting will be deleted, if currently set to a value.
<!-- ManageDriverExclusionList-Description-End -->

<!-- ManageDriverExclusionList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ManageDriverExclusionList-Editable-End -->

<!-- ManageDriverExclusionList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ManageDriverExclusionList-DFProperties-End -->

<!-- ManageDriverExclusionList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ManageDriverExclusionList |
| Friendly Name | Manage Print Driver exclusion list |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Driver |
| ADMX File Name | Printing.admx |
<!-- ManageDriverExclusionList-AdmxBacked-End -->

<!-- ManageDriverExclusionList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ManageDriverExclusionList-Examples-End -->

<!-- ManageDriverExclusionList-End -->

<!-- PointAndPrintRestrictions-Begin -->
## PointAndPrintRestrictions

<!-- PointAndPrintRestrictions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PointAndPrintRestrictions-Applicability-End -->

<!-- PointAndPrintRestrictions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/PointAndPrintRestrictions
```
<!-- PointAndPrintRestrictions-OmaUri-End -->

<!-- PointAndPrintRestrictions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

- If you enable this policy setting:

-Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver isn't available on the client, no connection will be made.

-You can configure Windows Vista clients so that security warnings and elevated command prompts don't appear when users Point and Print, or when printer connection drivers need to be updated.

- If you don't configure this policy setting:

-Windows Vista client computers can point and print to any server.

-Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.

-Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.

-Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

- If you disable this policy setting:

-Windows Vista client computers can create a printer connection to any server using Point and Print.

-Windows Vista computers won't show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.

-Windows Vista computers won't show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.

-Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.

-The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).
<!-- PointAndPrintRestrictions-Description-End -->

<!-- PointAndPrintRestrictions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PointAndPrintRestrictions-Editable-End -->

<!-- PointAndPrintRestrictions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PointAndPrintRestrictions-DFProperties-End -->

<!-- PointAndPrintRestrictions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PointAndPrint_Restrictions_Win7 |
| Friendly Name | Point and Print Restrictions |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint |
| Registry Value Name | Restricted |
| ADMX File Name | Printing.admx |
<!-- PointAndPrintRestrictions-AdmxBacked-End -->

<!-- PointAndPrintRestrictions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PointAndPrintRestrictions-Examples-End -->

<!-- PointAndPrintRestrictions-End -->

<!-- PointAndPrintRestrictions_User-Begin -->
## PointAndPrintRestrictions_User

<!-- PointAndPrintRestrictions_User-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PointAndPrintRestrictions_User-Applicability-End -->

<!-- PointAndPrintRestrictions_User-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Printers/PointAndPrintRestrictions_User
```
<!-- PointAndPrintRestrictions_User-OmaUri-End -->

<!-- PointAndPrintRestrictions_User-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

- If you enable this policy setting:

-Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver isn't available on the client, no connection will be made.

-You can configure Windows Vista clients so that security warnings and elevated command prompts don't appear when users Point and Print, or when printer connection drivers need to be updated.

- If you don't configure this policy setting:

-Windows Vista client computers can point and print to any server.

-Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.

-Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.

-Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

- If you disable this policy setting:

-Windows Vista client computers can create a printer connection to any server using Point and Print.

-Windows Vista computers won't show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.

-Windows Vista computers won't show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.

-Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.

-The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).
<!-- PointAndPrintRestrictions_User-Description-End -->

<!-- PointAndPrintRestrictions_User-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PointAndPrintRestrictions_User-Editable-End -->

<!-- PointAndPrintRestrictions_User-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PointAndPrintRestrictions_User-DFProperties-End -->

<!-- PointAndPrintRestrictions_User-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PointAndPrint_Restrictions |
| Friendly Name | Point and Print Restrictions |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint |
| Registry Value Name | Restricted |
| ADMX File Name | Printing.admx |
<!-- PointAndPrintRestrictions_User-AdmxBacked-End -->

<!-- PointAndPrintRestrictions_User-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PointAndPrintRestrictions_User-Examples-End -->

<!-- PointAndPrintRestrictions_User-End -->

<!-- PublishPrinters-Begin -->
## PublishPrinters

<!-- PublishPrinters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PublishPrinters-Applicability-End -->

<!-- PublishPrinters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/PublishPrinters
```
<!-- PublishPrinters-OmaUri-End -->

<!-- PublishPrinters-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the computer's shared printers can be published in Active Directory.

- If you enable this setting or don't configure it, users can use the "List in directory" option in the Printer's Properties' Sharing tab to publish shared printers in Active Directory.

- If you disable this setting, this computer's shared printers can't be published in Active Directory, and the "List in directory" option isn't available.

> [!NOTE]
> This settings takes priority over the setting "Automatically publish new printers in the Active Directory".
<!-- PublishPrinters-Description-End -->

<!-- PublishPrinters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishPrinters-Editable-End -->

<!-- PublishPrinters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishPrinters-DFProperties-End -->

<!-- PublishPrinters-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PublishPrinters |
| Friendly Name | Allow printers to be published |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | PublishPrinters |
| ADMX File Name | Printing2.admx |
<!-- PublishPrinters-AdmxBacked-End -->

<!-- PublishPrinters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishPrinters-Examples-End -->

<!-- PublishPrinters-End -->

<!-- RestrictDriverInstallationToAdministrators-Begin -->
## RestrictDriverInstallationToAdministrators

<!-- RestrictDriverInstallationToAdministrators-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- RestrictDriverInstallationToAdministrators-Applicability-End -->

<!-- RestrictDriverInstallationToAdministrators-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Printers/RestrictDriverInstallationToAdministrators
```
<!-- RestrictDriverInstallationToAdministrators-OmaUri-End -->

<!-- RestrictDriverInstallationToAdministrators-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users that aren't Administrators can install print drivers on this computer.

By default, users that aren't Administrators can't install print drivers on this computer.

- If you enable this setting or don't configure it, the system will limit installation of print drivers to Administrators of this computer.

- If you disable this setting, the system won't limit installation of print drivers to this computer.
<!-- RestrictDriverInstallationToAdministrators-Description-End -->

<!-- RestrictDriverInstallationToAdministrators-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictDriverInstallationToAdministrators-Editable-End -->

<!-- RestrictDriverInstallationToAdministrators-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictDriverInstallationToAdministrators-DFProperties-End -->

<!-- RestrictDriverInstallationToAdministrators-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictDriverInstallationToAdministrators |
| Friendly Name | Limits print driver installation to Administrators |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint |
| Registry Value Name | RestrictDriverInstallationToAdministrators |
| ADMX File Name | Printing.admx |
<!-- RestrictDriverInstallationToAdministrators-AdmxBacked-End -->

<!-- RestrictDriverInstallationToAdministrators-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictDriverInstallationToAdministrators-Examples-End -->

<!-- RestrictDriverInstallationToAdministrators-End -->

<!-- Printers-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Printers-CspMoreInfo-End -->

<!-- Printers-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
