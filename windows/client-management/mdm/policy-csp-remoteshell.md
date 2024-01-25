---
title: RemoteShell Policy CSP
description: Learn more about the RemoteShell Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- RemoteShell-Begin -->
# Policy CSP - RemoteShell

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- RemoteShell-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteShell-Editable-End -->

<!-- AllowRemoteShellAccess-Begin -->
## AllowRemoteShellAccess

<!-- AllowRemoteShellAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowRemoteShellAccess-Applicability-End -->

<!-- AllowRemoteShellAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteShell/AllowRemoteShellAccess
```
<!-- AllowRemoteShellAccess-OmaUri-End -->

<!-- AllowRemoteShellAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures access to remote shells.

If you enable or don't configure this policy setting, new remote shell connections are accepted by the server.

If you set this policy to 'disabled', new remote shell connections are rejected by the server.
<!-- AllowRemoteShellAccess-Description-End -->

<!-- AllowRemoteShellAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowRemoteShellAccess-Editable-End -->

<!-- AllowRemoteShellAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowRemoteShellAccess-DFProperties-End -->

<!-- AllowRemoteShellAccess-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowRemoteShellAccess |
| Friendly Name | Allow Remote Shell Access |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Shell |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service\WinRS |
| Registry Value Name | AllowRemoteShellAccess |
| ADMX File Name | WindowsRemoteShell.admx |
<!-- AllowRemoteShellAccess-AdmxBacked-End -->

<!-- AllowRemoteShellAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowRemoteShellAccess-Examples-End -->

<!-- AllowRemoteShellAccess-End -->

<!-- MaxConcurrentUsers-Begin -->
## MaxConcurrentUsers

<!-- MaxConcurrentUsers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- MaxConcurrentUsers-Applicability-End -->

<!-- MaxConcurrentUsers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteShell/MaxConcurrentUsers
```
<!-- MaxConcurrentUsers-OmaUri-End -->

<!-- MaxConcurrentUsers-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the maximum number of users able to concurrently perform remote shell operations on the system.

The value can be any number from 1 to 100.

- If you enable this policy setting, the new shell connections are rejected if they exceed the specified limit.

- If you disable or don't configure this policy setting, the default number is five users.
<!-- MaxConcurrentUsers-Description-End -->

<!-- MaxConcurrentUsers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MaxConcurrentUsers-Editable-End -->

<!-- MaxConcurrentUsers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MaxConcurrentUsers-DFProperties-End -->

<!-- MaxConcurrentUsers-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxConcurrentUsers |
| Friendly Name | MaxConcurrentUsers |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Shell |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service\WinRS |
| ADMX File Name | WindowsRemoteShell.admx |
<!-- MaxConcurrentUsers-AdmxBacked-End -->

<!-- MaxConcurrentUsers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaxConcurrentUsers-Examples-End -->

<!-- MaxConcurrentUsers-End -->

<!-- SpecifyIdleTimeout-Begin -->
## SpecifyIdleTimeout

<!-- SpecifyIdleTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- SpecifyIdleTimeout-Applicability-End -->

<!-- SpecifyIdleTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteShell/SpecifyIdleTimeout
```
<!-- SpecifyIdleTimeout-OmaUri-End -->

<!-- SpecifyIdleTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the maximum time in milliseconds remote shell will stay open without any user activity until it's automatically deleted.

Any value from 0 to 0x7FFFFFFF can be set. A minimum of 60000 milliseconds (1 minute) is used for smaller values.

- If you enable this policy setting, the server will wait for the specified amount of time since the last received message from the client before terminating the open shell.

- If you don't configure or disable this policy setting, the default value of 900000 or 15 min will be used.
<!-- SpecifyIdleTimeout-Description-End -->

<!-- SpecifyIdleTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyIdleTimeout-Editable-End -->

<!-- SpecifyIdleTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyIdleTimeout-DFProperties-End -->

<!-- SpecifyIdleTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IdleTimeout |
| Friendly Name | Specify idle Timeout |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Shell |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service\WinRS |
| ADMX File Name | WindowsRemoteShell.admx |
<!-- SpecifyIdleTimeout-AdmxBacked-End -->

<!-- SpecifyIdleTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyIdleTimeout-Examples-End -->

<!-- SpecifyIdleTimeout-End -->

<!-- SpecifyMaxMemory-Begin -->
## SpecifyMaxMemory

<!-- SpecifyMaxMemory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- SpecifyMaxMemory-Applicability-End -->

<!-- SpecifyMaxMemory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteShell/SpecifyMaxMemory
```
<!-- SpecifyMaxMemory-OmaUri-End -->

<!-- SpecifyMaxMemory-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the maximum total amount of memory in megabytes that can be allocated by any active remote shell and all its child processes.

Any value from 0 to 0x7FFFFFFF can be set, where 0 equals unlimited memory, which means the ability of remote operations to allocate memory is only limited by the available virtual memory.

- If you enable this policy setting, the remote operation is terminated when a new allocation exceeds the specified quota.

- If you disable or don't configure this policy setting, the value 150 is used by default.
<!-- SpecifyMaxMemory-Description-End -->

<!-- SpecifyMaxMemory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyMaxMemory-Editable-End -->

<!-- SpecifyMaxMemory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyMaxMemory-DFProperties-End -->

<!-- SpecifyMaxMemory-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxMemoryPerShellMB |
| Friendly Name | Specify maximum amount of memory in MB per Shell |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Shell |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service\WinRS |
| ADMX File Name | WindowsRemoteShell.admx |
<!-- SpecifyMaxMemory-AdmxBacked-End -->

<!-- SpecifyMaxMemory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyMaxMemory-Examples-End -->

<!-- SpecifyMaxMemory-End -->

<!-- SpecifyMaxProcesses-Begin -->
## SpecifyMaxProcesses

<!-- SpecifyMaxProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- SpecifyMaxProcesses-Applicability-End -->

<!-- SpecifyMaxProcesses-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteShell/SpecifyMaxProcesses
```
<!-- SpecifyMaxProcesses-OmaUri-End -->

<!-- SpecifyMaxProcesses-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the maximum number of processes a remote shell is allowed to launch.

- If you enable this policy setting, you can specify any number from 0 to 0x7FFFFFFF to set the maximum number of process per shell. Zero (0) means unlimited number of processes.

- If you disable or don't configure this policy setting, the limit's five processes per shell.
<!-- SpecifyMaxProcesses-Description-End -->

<!-- SpecifyMaxProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyMaxProcesses-Editable-End -->

<!-- SpecifyMaxProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyMaxProcesses-DFProperties-End -->

<!-- SpecifyMaxProcesses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxProcessesPerShell |
| Friendly Name | Specify maximum number of processes per Shell |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Shell |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service\WinRS |
| ADMX File Name | WindowsRemoteShell.admx |
<!-- SpecifyMaxProcesses-AdmxBacked-End -->

<!-- SpecifyMaxProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyMaxProcesses-Examples-End -->

<!-- SpecifyMaxProcesses-End -->

<!-- SpecifyMaxRemoteShells-Begin -->
## SpecifyMaxRemoteShells

<!-- SpecifyMaxRemoteShells-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- SpecifyMaxRemoteShells-Applicability-End -->

<!-- SpecifyMaxRemoteShells-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteShell/SpecifyMaxRemoteShells
```
<!-- SpecifyMaxRemoteShells-OmaUri-End -->

<!-- SpecifyMaxRemoteShells-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the maximum number of concurrent shells any user can remotely open on the same system.

Any number from 0 to 0x7FFFFFFF cand be set, where 0 means unlimited number of shells.

- If you enable this policy setting, the user can't open new remote shells if the count exceeds the specified limit.

- If you disable or don't configure this policy setting, by default the limit's set to two remote shells per user.
<!-- SpecifyMaxRemoteShells-Description-End -->

<!-- SpecifyMaxRemoteShells-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyMaxRemoteShells-Editable-End -->

<!-- SpecifyMaxRemoteShells-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyMaxRemoteShells-DFProperties-End -->

<!-- SpecifyMaxRemoteShells-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxShellsPerUser |
| Friendly Name | Specify maximum number of remote shells per user |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Shell |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service\WinRS |
| ADMX File Name | WindowsRemoteShell.admx |
<!-- SpecifyMaxRemoteShells-AdmxBacked-End -->

<!-- SpecifyMaxRemoteShells-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyMaxRemoteShells-Examples-End -->

<!-- SpecifyMaxRemoteShells-End -->

<!-- SpecifyShellTimeout-Begin -->
## SpecifyShellTimeout

<!-- SpecifyShellTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- SpecifyShellTimeout-Applicability-End -->

<!-- SpecifyShellTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteShell/SpecifyShellTimeout
```
<!-- SpecifyShellTimeout-OmaUri-End -->

<!-- SpecifyShellTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting is deprecated and has no effect when set to any state: Enabled, Disabled, or Not Configured.
<!-- SpecifyShellTimeout-Description-End -->

<!-- SpecifyShellTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyShellTimeout-Editable-End -->

<!-- SpecifyShellTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyShellTimeout-DFProperties-End -->

<!-- SpecifyShellTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellTimeOut |
| Friendly Name | Specify Shell Timeout |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Shell |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service\WinRS |
| ADMX File Name | WindowsRemoteShell.admx |
<!-- SpecifyShellTimeout-AdmxBacked-End -->

<!-- SpecifyShellTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyShellTimeout-Examples-End -->

<!-- SpecifyShellTimeout-End -->

<!-- RemoteShell-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RemoteShell-CspMoreInfo-End -->

<!-- RemoteShell-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
