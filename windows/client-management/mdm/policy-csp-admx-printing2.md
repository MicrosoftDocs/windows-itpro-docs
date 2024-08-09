---
title: ADMX_Printing2 Policy CSP
description: Learn more about the ADMX_Printing2 Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Printing2-Begin -->
# Policy CSP - ADMX_Printing2

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Printing2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Printing2-Editable-End -->

<!-- AutoPublishing-Begin -->
## AutoPublishing

<!-- AutoPublishing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AutoPublishing-Applicability-End -->

<!-- AutoPublishing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/AutoPublishing
```
<!-- AutoPublishing-OmaUri-End -->

<!-- AutoPublishing-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the Add Printer Wizard automatically publishes the computer's shared printers in Active Directory.

- If you enable this setting or don't configure it, the Add Printer Wizard automatically publishes all shared printers.

- If you disable this setting, the Add Printer Wizard doesn't automatically publish printers. However, you can publish shared printers manually.

The default behavior is to automatically publish shared printers in Active Directory.

> [!NOTE]
> This setting is ignored if the "Allow printers to be published" setting is disabled.
<!-- AutoPublishing-Description-End -->

<!-- AutoPublishing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutoPublishing-Editable-End -->

<!-- AutoPublishing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AutoPublishing-DFProperties-End -->

<!-- AutoPublishing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AutoPublishing |
| Friendly Name | Automatically publish new printers in Active Directory |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers\Wizard |
| Registry Value Name | Auto Publishing |
| ADMX File Name | Printing2.admx |
<!-- AutoPublishing-AdmxBacked-End -->

<!-- AutoPublishing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoPublishing-Examples-End -->

<!-- AutoPublishing-End -->

<!-- ImmortalPrintQueue-Begin -->
## ImmortalPrintQueue

<!-- ImmortalPrintQueue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ImmortalPrintQueue-Applicability-End -->

<!-- ImmortalPrintQueue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/ImmortalPrintQueue
```
<!-- ImmortalPrintQueue-OmaUri-End -->

<!-- ImmortalPrintQueue-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the domain controller can prune (delete from Active Directory) the printers published by this computer.

By default, the pruning service on the domain controller prunes printer objects from Active Directory if the computer that published them doesn't respond to contact requests. When the computer that published the printers restarts, it republishes any deleted printer objects.

- If you enable this setting or don't configure it, the domain controller prunes this computer's printers when the computer doesn't respond.

- If you disable this setting, the domain controller doesn't prune this computer's printers. This setting is designed to prevent printers from being pruned when the computer is temporarily disconnected from the network.

> [!NOTE]
> You can use the "Directory Pruning Interval" and "Directory Pruning Retry" settings to adjust the contact interval and number of contact attempts.
<!-- ImmortalPrintQueue-Description-End -->

<!-- ImmortalPrintQueue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ImmortalPrintQueue-Editable-End -->

<!-- ImmortalPrintQueue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ImmortalPrintQueue-DFProperties-End -->

<!-- ImmortalPrintQueue-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ImmortalPrintQueue |
| Friendly Name | Allow pruning of published printers |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | Immortal |
| ADMX File Name | Printing2.admx |
<!-- ImmortalPrintQueue-AdmxBacked-End -->

<!-- ImmortalPrintQueue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ImmortalPrintQueue-Examples-End -->

<!-- ImmortalPrintQueue-End -->

<!-- PruneDownlevel-Begin -->
## PruneDownlevel

<!-- PruneDownlevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PruneDownlevel-Applicability-End -->

<!-- PruneDownlevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/PruneDownlevel
```
<!-- PruneDownlevel-OmaUri-End -->

<!-- PruneDownlevel-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the pruning service on a domain controller prunes printer objects that aren't automatically republished whenever the host computer doesn't respond,just as it does with Windows 2000 printers. This setting applies to printers running operating systems other than Windows 2000 and to Windows 2000 printers published outside their forest.

The Windows pruning service prunes printer objects from Active Directory when the computer that published them doesn't respond to contact requests. Computers running Windows 2000 Professional detect and republish deleted printer objects when they rejoin the network. However, because non-Windows 2000 computers and computers in other domains can't republish printers in Active Directory automatically, by default, the system never prunes their printer objects.

You can enable this setting to change the default behavior. To use this setting, select one of the following options from the "Prune non-republishing printers" box:

- "Never" specifies that printer objects that aren't automatically republished are never pruned. "Never" is the default.

- "Only if Print Server is found" prunes printer objects that aren't automatically republished only when the print server responds, but the printer is unavailable.

- "Whenever printer isn't found" prunes printer objects that aren't automatically republished whenever the host computer doesn't respond, just as it does with Windows 2000 printers.

> [!NOTE]
> This setting applies to printers published by using Active Directory Users and Computers or Pubprn.vbs. It doesn't apply to printers published by using Printers in Control Panel.

> [!TIP]
> If you disable automatic pruning, remember to delete printer objects manually whenever you remove a printer or print server.
<!-- PruneDownlevel-Description-End -->

<!-- PruneDownlevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PruneDownlevel-Editable-End -->

<!-- PruneDownlevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PruneDownlevel-DFProperties-End -->

<!-- PruneDownlevel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PruneDownlevel |
| Friendly Name | Prune printers that are not automatically republished |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing2.admx |
<!-- PruneDownlevel-AdmxBacked-End -->

<!-- PruneDownlevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PruneDownlevel-Examples-End -->

<!-- PruneDownlevel-End -->

<!-- PruningInterval-Begin -->
## PruningInterval

<!-- PruningInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PruningInterval-Applicability-End -->

<!-- PruningInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/PruningInterval
```
<!-- PruningInterval-OmaUri-End -->

<!-- PruningInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies how often the pruning service on a domain controller contacts computers to verify that their printers are operational.

The pruning service periodically contacts computers that have published printers. If a computer doesn't respond to the contact message (optionally, after repeated attempts), the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.

By default, the pruning service contacts computers every eight hours and allows two repeated contact attempts before deleting printers from Active Directory.

- If you enable this setting, you can change the interval between contact attempts.

- If you don't configure or disable this setting the default values will be used.

> [!NOTE]
> This setting is used only on domain controllers.
<!-- PruningInterval-Description-End -->

<!-- PruningInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PruningInterval-Editable-End -->

<!-- PruningInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PruningInterval-DFProperties-End -->

<!-- PruningInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PruningInterval |
| Friendly Name | Directory pruning interval |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing2.admx |
<!-- PruningInterval-AdmxBacked-End -->

<!-- PruningInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PruningInterval-Examples-End -->

<!-- PruningInterval-End -->

<!-- PruningPriority-Begin -->
## PruningPriority

<!-- PruningPriority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PruningPriority-Applicability-End -->

<!-- PruningPriority-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/PruningPriority
```
<!-- PruningPriority-OmaUri-End -->

<!-- PruningPriority-Description-Begin -->
<!-- Description-Source-ADMX -->
Sets the priority of the pruning thread.

The pruning thread, which runs only on domain controllers, deletes printer objects from Active Directory if the printer that published the object doesn't respond to contact attempts. This process keeps printer information in Active Directory current.

The thread priority influences the order in which the thread receives processor time and determines how likely it's to be preempted by higher priority threads.

By default, the pruning thread runs at normal priority. However, you can adjust the priority to improve the performance of this service.

> [!NOTE]
> This setting is used only on domain controllers.
<!-- PruningPriority-Description-End -->

<!-- PruningPriority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PruningPriority-Editable-End -->

<!-- PruningPriority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PruningPriority-DFProperties-End -->

<!-- PruningPriority-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PruningPriority |
| Friendly Name | Directory pruning priority |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing2.admx |
<!-- PruningPriority-AdmxBacked-End -->

<!-- PruningPriority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PruningPriority-Examples-End -->

<!-- PruningPriority-End -->

<!-- PruningRetries-Begin -->
## PruningRetries

<!-- PruningRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PruningRetries-Applicability-End -->

<!-- PruningRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/PruningRetries
```
<!-- PruningRetries-OmaUri-End -->

<!-- PruningRetries-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies how many times the pruning service on a domain controller repeats its attempt to contact a computer before pruning the computer's printers.

The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer doesn't respond to the contact message, the message is repeated for the specified number of times. If the computer still fails to respond, then the pruning service "prunes" (deletes from Active Directory) printer objects the computer has published.

By default, the pruning service contacts computers every eight hours and allows two retries before deleting printers from Active Directory. You can use this setting to change the number of retries.

- If you enable this setting, you can change the interval between attempts.

- If you don't configure or disable this setting, the default values are used.

> [!NOTE]
> This setting is used only on domain controllers.
<!-- PruningRetries-Description-End -->

<!-- PruningRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PruningRetries-Editable-End -->

<!-- PruningRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PruningRetries-DFProperties-End -->

<!-- PruningRetries-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PruningRetries |
| Friendly Name | Directory pruning retry |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing2.admx |
<!-- PruningRetries-AdmxBacked-End -->

<!-- PruningRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PruningRetries-Examples-End -->

<!-- PruningRetries-End -->

<!-- PruningRetryLog-Begin -->
## PruningRetryLog

<!-- PruningRetryLog-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PruningRetryLog-Applicability-End -->

<!-- PruningRetryLog-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/PruningRetryLog
```
<!-- PruningRetryLog-OmaUri-End -->

<!-- PruningRetryLog-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether or not to log events when the pruning service on a domain controller attempts to contact a computer before pruning the computer's printers.

The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer doesn't respond to the contact attempt, the attempt is retried a specified number of times, at a specified interval. The "Directory pruning retry" setting determines the number of times the attempt is retried; the default value is two retries. The "Directory Pruning Interval" setting determines the time interval between retries; the default value is every eight hours. If the computer hasn't responded by the last contact attempt, its printers are pruned from the directory.

- If you enable this policy setting, the contact events are recorded in the event log.

- If you disable or don't configure this policy setting, the contact events aren't recorded in the event log.

> [!NOTE]
> This setting doesn't affect the logging of pruning events; the actual pruning of a printer is always logged.

> [!NOTE]
> This setting is used only on domain controllers.
<!-- PruningRetryLog-Description-End -->

<!-- PruningRetryLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PruningRetryLog-Editable-End -->

<!-- PruningRetryLog-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PruningRetryLog-DFProperties-End -->

<!-- PruningRetryLog-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PruningRetryLog |
| Friendly Name | Log directory pruning retry events |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | PruningRetryLog |
| ADMX File Name | Printing2.admx |
<!-- PruningRetryLog-AdmxBacked-End -->

<!-- PruningRetryLog-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PruningRetryLog-Examples-End -->

<!-- PruningRetryLog-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-Begin -->
## RegisterSpoolerRemoteRpcEndPoint

<!-- RegisterSpoolerRemoteRpcEndPoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RegisterSpoolerRemoteRpcEndPoint-Applicability-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/RegisterSpoolerRemoteRpcEndPoint
```
<!-- RegisterSpoolerRemoteRpcEndPoint-OmaUri-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the print spooler will accept client connections.

When the policy is unconfigured or enabled, the spooler will always accept client connections.

When the policy is disabled, the spooler won't accept client connections nor allow users to share printers. All printers currently shared will continue to be shared.

The spooler must be restarted for changes to this policy to take effect.
<!-- RegisterSpoolerRemoteRpcEndPoint-Description-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RegisterSpoolerRemoteRpcEndPoint-Editable-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RegisterSpoolerRemoteRpcEndPoint-DFProperties-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RegisterSpoolerRemoteRpcEndPoint |
| Friendly Name | Allow Print Spooler to accept client connections |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | RegisterSpoolerRemoteRpcEndPoint |
| ADMX File Name | Printing2.admx |
<!-- RegisterSpoolerRemoteRpcEndPoint-AdmxBacked-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RegisterSpoolerRemoteRpcEndPoint-Examples-End -->

<!-- RegisterSpoolerRemoteRpcEndPoint-End -->

<!-- VerifyPublishedState-Begin -->
## VerifyPublishedState

<!-- VerifyPublishedState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- VerifyPublishedState-Applicability-End -->

<!-- VerifyPublishedState-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Printing2/VerifyPublishedState
```
<!-- VerifyPublishedState-OmaUri-End -->

<!-- VerifyPublishedState-Description-Begin -->
<!-- Description-Source-ADMX -->
Directs the system to periodically verify that the printers published by this computer still appear in Active Directory. This setting also specifies how often the system repeats the verification.

By default, the system only verifies published printers at startup. This setting allows for periodic verification while the computer is operating.

To enable this additional verification, enable this setting, and then select a verification interval.

To disable verification, disable this setting, or enable this setting and select "Never" for the verification interval.
<!-- VerifyPublishedState-Description-End -->

<!-- VerifyPublishedState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- VerifyPublishedState-Editable-End -->

<!-- VerifyPublishedState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- VerifyPublishedState-DFProperties-End -->

<!-- VerifyPublishedState-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | VerifyPublishedState |
| Friendly Name | Check published state |
| Location | Computer Configuration |
| Path | Printers |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| ADMX File Name | Printing2.admx |
<!-- VerifyPublishedState-AdmxBacked-End -->

<!-- VerifyPublishedState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- VerifyPublishedState-Examples-End -->

<!-- VerifyPublishedState-End -->

<!-- ADMX_Printing2-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Printing2-CspMoreInfo-End -->

<!-- ADMX_Printing2-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
