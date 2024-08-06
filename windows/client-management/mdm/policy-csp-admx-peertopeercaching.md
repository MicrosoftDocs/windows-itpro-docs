---
title: ADMX_PeerToPeerCaching Policy CSP
description: Learn more about the ADMX_PeerToPeerCaching Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_PeerToPeerCaching-Begin -->
# Policy CSP - ADMX_PeerToPeerCaching

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_PeerToPeerCaching-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_PeerToPeerCaching-Editable-End -->

<!-- EnableWindowsBranchCache-Begin -->
## EnableWindowsBranchCache

<!-- EnableWindowsBranchCache-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableWindowsBranchCache-Applicability-End -->

<!-- EnableWindowsBranchCache-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/EnableWindowsBranchCache
```
<!-- EnableWindowsBranchCache-OmaUri-End -->

<!-- EnableWindowsBranchCache-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether BranchCache is enabled on client computers to which this policy is applied. In addition to this policy setting, you must specify whether the client computers are hosted cache mode or distributed cache mode clients. To do so, configure one of the following the policy settings:

- Set BranchCache Distributed Cache mode.

- Set BranchCache Hosted Cache mode.

- Configure Hosted Cache Servers.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache settings aren't applied to client computers by this policy. In the circumstance where client computers are domain members but you don't want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting isn't configured, it won't over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.

- Enabled. With this selection, BranchCache is turned on for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache is turned on for all domain member client computers to which the policy is applied.

- Disabled. With this selection, BranchCache is turned off for all client computers where the policy is applied.

* This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
<!-- EnableWindowsBranchCache-Description-End -->

<!-- EnableWindowsBranchCache-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache-Editable-End -->

<!-- EnableWindowsBranchCache-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsBranchCache-DFProperties-End -->

<!-- EnableWindowsBranchCache-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsBranchCache |
| Friendly Name | Turn on BranchCache |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\Service |
| Registry Value Name | Enable |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- EnableWindowsBranchCache-AdmxBacked-End -->

<!-- EnableWindowsBranchCache-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache-Examples-End -->

<!-- EnableWindowsBranchCache-End -->

<!-- EnableWindowsBranchCache_Distributed-Begin -->
## EnableWindowsBranchCache_Distributed

<!-- EnableWindowsBranchCache_Distributed-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableWindowsBranchCache_Distributed-Applicability-End -->

<!-- EnableWindowsBranchCache_Distributed-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Distributed
```
<!-- EnableWindowsBranchCache_Distributed-OmaUri-End -->

<!-- EnableWindowsBranchCache_Distributed-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether BranchCache distributed cache mode is enabled on client computers to which this policy is applied. In addition to this policy, you must use the policy "Turn on BranchCache" to enable BranchCache on client computers.

In distributed cache mode, client computers download content from BranchCache-enabled main office content servers, cache the content locally, and serve the content to other BranchCache distributed cache mode clients in the branch office.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache settings aren't applied to client computers by this policy. In the circumstance where client computers are domain members but you don't want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting isn't configured, it won't over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.

- Enabled. With this selection, BranchCache distributed cache mode is enabled for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache distributed cache mode is turned on for all domain member client computers to which the policy is applied.

- Disabled. With this selection, BranchCache distributed cache mode is turned off for all client computers where the policy is applied.

* This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
<!-- EnableWindowsBranchCache_Distributed-Description-End -->

<!-- EnableWindowsBranchCache_Distributed-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_Distributed-Editable-End -->

<!-- EnableWindowsBranchCache_Distributed-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsBranchCache_Distributed-DFProperties-End -->

<!-- EnableWindowsBranchCache_Distributed-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsBranchCache_Distributed |
| Friendly Name | Set BranchCache Distributed Cache mode |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\CooperativeCaching |
| Registry Value Name | Enable |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- EnableWindowsBranchCache_Distributed-AdmxBacked-End -->

<!-- EnableWindowsBranchCache_Distributed-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_Distributed-Examples-End -->

<!-- EnableWindowsBranchCache_Distributed-End -->

<!-- EnableWindowsBranchCache_Hosted-Begin -->
## EnableWindowsBranchCache_Hosted

<!-- EnableWindowsBranchCache_Hosted-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableWindowsBranchCache_Hosted-Applicability-End -->

<!-- EnableWindowsBranchCache_Hosted-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/EnableWindowsBranchCache_Hosted
```
<!-- EnableWindowsBranchCache_Hosted-OmaUri-End -->

<!-- EnableWindowsBranchCache_Hosted-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether BranchCache hosted cache mode is enabled on client computers to which this policy is applied. In addition to this policy, you must use the policy "Turn on BranchCache" to enable BranchCache on client computers.

When a client computer is configured as a hosted cache mode client, it's able to download cached content from a hosted cache server that's located at the branch office. In addition, when the hosted cache client obtains content from a content server, the client can upload the content to the hosted cache server for access by other hosted cache clients at the branch office.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache settings aren't applied to client computers by this policy. In the circumstance where client computers are domain members but you don't want to enable BranchCache on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache on individual client computers. Because the domain Group Policy setting isn't configured, it won't over-write the enabled setting that you use on individual client computers where you want to enable BranchCache.

- Enabled. With this selection, BranchCache hosted cache mode is enabled for all client computers where the policy is applied. For example, if this policy is enabled in domain Group Policy, BranchCache hosted cache mode is turned on for all domain member client computers to which the policy is applied.

- Disabled. With this selection, BranchCache hosted cache mode is turned off for all client computers where the policy is applied.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Type the name of the hosted cache server. Specifies the computer name of the hosted cache server. Because the hosted cache server name is also specified in the certificate enrolled to the hosted cache server, the name that you enter here must match the name of the hosted cache server that's specified in the server certificate.

Hosted cache clients must trust the server certificate that's issued to the hosted cache server. Ensure that the issuing CA certificate is installed in the Trusted Root Certification Authorities certificate store on all hosted cache client computers.

* This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
<!-- EnableWindowsBranchCache_Hosted-Description-End -->

<!-- EnableWindowsBranchCache_Hosted-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_Hosted-Editable-End -->

<!-- EnableWindowsBranchCache_Hosted-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsBranchCache_Hosted-DFProperties-End -->

<!-- EnableWindowsBranchCache_Hosted-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsBranchCache_Hosted |
| Friendly Name | Set BranchCache Hosted Cache mode |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\HostedCache\Connection |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- EnableWindowsBranchCache_Hosted-AdmxBacked-End -->

<!-- EnableWindowsBranchCache_Hosted-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_Hosted-Examples-End -->

<!-- EnableWindowsBranchCache_Hosted-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Begin -->
## EnableWindowsBranchCache_HostedCacheDiscovery

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Applicability-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedCacheDiscovery
```
<!-- EnableWindowsBranchCache_HostedCacheDiscovery-OmaUri-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether client computers should attempt the automatic configuration of hosted cache mode by searching for hosted cache servers publishing service connection points that are associated with the client's current Active Directory site. If you enable this policy setting, client computers to which the policy setting is applied search for hosted cache servers using Active Directory, and will prefer both these servers and hosted cache mode rather than manual BranchCache configuration or BranchCache configuration by other group policies.

If you enable this policy setting in addition to the "Turn on BranchCache" policy setting, BranchCache clients attempt to discover hosted cache servers in the local branch office. If client computers detect hosted cache servers, hosted cache mode is turned on. If they don't detect hosted cache servers, hosted cache mode isn't turned on, and the client uses any other configuration that's specified manually or by Group Policy.

When this policy setting is applied, the client computer performs or doesn't perform automatic hosted cache server discovery under the following circumstances:

If no other BranchCache mode-based policy settings are applied, the client computer performs automatic hosted cache server discovery. If one or more hosted cache servers is found, the client computer self-configures for hosted cache mode.

If the policy setting "Set BranchCache Distributed Cache Mode" is applied in addition to this policy, the client computer performs automatic hosted cache server discovery. If one or more hosted cache servers are found, the client computer self-configures for hosted cache mode only.

If the policy setting "Set BranchCache Hosted Cache Mode" is applied, the client computer doesn't perform automatic hosted cache discovery. This is also true in cases where the policy setting "Configure Hosted Cache Servers" is applied.

This policy setting can only be applied to client computers that are running at least Windows 8. This policy has no effect on computers that are running Windows 7 or Windows Vista.

If you disable, or don't configure this setting, a client won't attempt to discover hosted cache servers by service connection point.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache settings aren't applied to client computers by this policy setting, and client computers don't perform hosted cache server discovery.

- Enabled. With this selection, the policy setting is applied to client computers, which perform automatic hosted cache server discovery and which are configured as hosted cache mode clients.

- Disabled. With this selection, this policy isn't applied to client computers.
<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Description-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Editable-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsBranchCache_HostedCacheDiscovery-DFProperties-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsBranchCache_HostedCacheDiscovery |
| Friendly Name | Enable Automatic Hosted Cache Discovery by Service Connection Point |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\HostedCache\Discovery |
| Registry Value Name | SCPDiscoveryEnabled |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- EnableWindowsBranchCache_HostedCacheDiscovery-AdmxBacked-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_HostedCacheDiscovery-Examples-End -->

<!-- EnableWindowsBranchCache_HostedCacheDiscovery-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-Begin -->
## EnableWindowsBranchCache_HostedMultipleServers

<!-- EnableWindowsBranchCache_HostedMultipleServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableWindowsBranchCache_HostedMultipleServers-Applicability-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/EnableWindowsBranchCache_HostedMultipleServers
```
<!-- EnableWindowsBranchCache_HostedMultipleServers-OmaUri-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether client computers are configured to use hosted cache mode and provides the computer name of the hosted cache servers that are available to the client computers. Hosted cache mode enables client computers in branch offices to retrieve content from one or more hosted cache servers that are installed in the same office location. You can use this setting to automatically configure client computers that are configured for hosted cache mode with the computer names of the hosted cache servers in the branch office.

- If you enable this policy setting and specify valid computer names of hosted cache servers, hosted cache mode is enabled for all client computers to which the policy setting is applied. For this policy setting to take effect, you must also enable the "Turn on BranchCache" policy setting.

This policy setting can only be applied to client computers that are running at least Windows 8. This policy has no effect on computers that are running Windows 7 or Windows Vista. Client computers to which this policy setting is applied, in addition to the "Set BranchCache Hosted Cache mode" policy setting, use the hosted cache servers that are specified in this policy setting and don't use the hosted cache server that's configured in the policy setting "Set BranchCache Hosted Cache Mode".

- If you don't configure this policy setting, or if you disable this policy setting, client computers that are configured with hosted cache mode still function correctly.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache settings aren't applied to client computers by this policy setting.

- Enabled. With this selection, the policy setting is applied to client computers, which are configured as hosted cache mode clients that use the hosted cache servers that you specify in "Hosted cache servers".

- Disabled. With this selection, this policy isn't applied to client computers.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Hosted cache servers. To add hosted cache server computer names to this policy setting, click Enabled, and then click Show. The Show Contents dialog box opens. Click Value, and then type the computer names of the hosted cache servers.
<!-- EnableWindowsBranchCache_HostedMultipleServers-Description-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_HostedMultipleServers-Editable-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsBranchCache_HostedMultipleServers-DFProperties-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsBranchCache_HostedMultipleServers |
| Friendly Name | Configure Hosted Cache Servers |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\HostedCache\MultipleServers |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- EnableWindowsBranchCache_HostedMultipleServers-AdmxBacked-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_HostedMultipleServers-Examples-End -->

<!-- EnableWindowsBranchCache_HostedMultipleServers-End -->

<!-- EnableWindowsBranchCache_SMB-Begin -->
## EnableWindowsBranchCache_SMB

<!-- EnableWindowsBranchCache_SMB-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableWindowsBranchCache_SMB-Applicability-End -->

<!-- EnableWindowsBranchCache_SMB-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/EnableWindowsBranchCache_SMB
```
<!-- EnableWindowsBranchCache_SMB-OmaUri-End -->

<!-- EnableWindowsBranchCache_SMB-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting is used only when you have deployed one or more BranchCache-enabled file servers at your main office. This policy setting specifies when client computers in branch offices start caching content from file servers based on the network latency - or delay - that occurs when the clients download content from the main office over a Wide Area Network (WAN) link. When you configure a value for this setting, which is the maximum round trip network latency allowed before caching begins, clients don't cache content until the network latency reaches the specified value; when network latency is greater than the value, clients begin caching content after they receive it from the file servers.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache latency settings aren't applied to client computers by this policy. In the circumstance where client computers are domain members but you don't want to configure a BranchCache latency setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache latency settings on individual client computers. Because the domain Group Policy setting isn't configured, it won't over-write the latency setting that you use on individual client computers.

- Enabled. With this selection, the BranchCache maximum round trip latency setting is enabled for all client computers where the policy is applied. For example, if Configure BranchCache for network files is enabled in domain Group Policy, the BranchCache latency setting that you specify in the policy is turned on for all domain member client computers to which the policy is applied.

- Disabled. With this selection, BranchCache client computers use the default latency setting of 80 milliseconds.

In circumstances where this policy setting is enabled, you can also select and configure the following option:

- Type the maximum round trip network latency (milliseconds) after which caching begins. Specifies the amount of time, in milliseconds, after which BranchCache client computers begin to cache content locally.
<!-- EnableWindowsBranchCache_SMB-Description-End -->

<!-- EnableWindowsBranchCache_SMB-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_SMB-Editable-End -->

<!-- EnableWindowsBranchCache_SMB-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableWindowsBranchCache_SMB-DFProperties-End -->

<!-- EnableWindowsBranchCache_SMB-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableWindowsBranchCache_SMB |
| Friendly Name | Configure BranchCache for network files |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- EnableWindowsBranchCache_SMB-AdmxBacked-End -->

<!-- EnableWindowsBranchCache_SMB-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWindowsBranchCache_SMB-Examples-End -->

<!-- EnableWindowsBranchCache_SMB-End -->

<!-- SetCachePercent-Begin -->
## SetCachePercent

<!-- SetCachePercent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetCachePercent-Applicability-End -->

<!-- SetCachePercent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/SetCachePercent
```
<!-- SetCachePercent-OmaUri-End -->

<!-- SetCachePercent-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the default percentage of total disk space that's allocated for the BranchCache disk cache on client computers.

- If you enable this policy setting, you can configure the percentage of total disk space to allocate for the cache.

- If you disable or don't configure this policy setting, the cache is set to 5 percent of the total disk space on the client computer.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache client computer cache settings aren't applied to client computers by this policy. In the circumstance where client computers are domain members but you don't want to configure a BranchCache client computer cache setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache client computer cache settings on individual client computers. Because the domain Group Policy setting isn't configured, it won't over-write the client computer cache setting that you use on individual client computers.

- Enabled. With this selection, the BranchCache client computer cache setting is enabled for all client computers where the policy is applied. For example, if Set percentage of disk space used for client computer cache is enabled in domain Group Policy, the BranchCache client computer cache setting that you specify in the policy is turned on for all domain member client computers to which the policy is applied.

- Disabled. With this selection, BranchCache client computers use the default client computer cache setting of five percent of the total disk space on the client computer.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Specify the percentage of total disk space allocated for the cache. Specifies an integer that's the percentage of total client computer disk space to use for the BranchCache client computer cache.

* This policy setting is supported on computers that are running Windows Vista Business, Enterprise, and Ultimate editions with Background Intelligent Transfer Service (BITS) 4.0 installed.
<!-- SetCachePercent-Description-End -->

<!-- SetCachePercent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetCachePercent-Editable-End -->

<!-- SetCachePercent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetCachePercent-DFProperties-End -->

<!-- SetCachePercent-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetCachePercent |
| Friendly Name | Set percentage of disk space used for client computer cache |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\CacheMgr\Republication |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- SetCachePercent-AdmxBacked-End -->

<!-- SetCachePercent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetCachePercent-Examples-End -->

<!-- SetCachePercent-End -->

<!-- SetDataCacheEntryMaxAge-Begin -->
## SetDataCacheEntryMaxAge

<!-- SetDataCacheEntryMaxAge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetDataCacheEntryMaxAge-Applicability-End -->

<!-- SetDataCacheEntryMaxAge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/SetDataCacheEntryMaxAge
```
<!-- SetDataCacheEntryMaxAge-OmaUri-End -->

<!-- SetDataCacheEntryMaxAge-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the default age in days for which segments are valid in the BranchCache data cache on client computers.

- If you enable this policy setting, you can configure the age for segments in the data cache.

- If you disable or don't configure this policy setting, the age is set to 28 days.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, BranchCache client computer cache age settings aren't applied to client computers by this policy. In the circumstance where client computers are domain members but you don't want to configure a BranchCache client computer cache age setting on all client computers, you can specify Not Configured for this domain Group Policy setting, and then configure local computer policy to enable BranchCache client computer cache age settings on individual client computers. Because the domain Group Policy setting isn't configured, it won't over-write the client computer cache age setting that you use on individual client computers.

- Enabled. With this selection, the BranchCache client computer cache age setting is enabled for all client computers where the policy is applied. For example, if this policy setting is enabled in domain Group Policy, the BranchCache client computer cache age that you specify in the policy is turned on for all domain member client computers to which the policy is applied.

- Disabled. With this selection, BranchCache client computers use the default client computer cache age setting of 28 days on the client computer.

In circumstances where this setting is enabled, you can also select and configure the following option:

- Specify the age in days for which segments in the data cache are valid.
<!-- SetDataCacheEntryMaxAge-Description-End -->

<!-- SetDataCacheEntryMaxAge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetDataCacheEntryMaxAge-Editable-End -->

<!-- SetDataCacheEntryMaxAge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetDataCacheEntryMaxAge-DFProperties-End -->

<!-- SetDataCacheEntryMaxAge-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetDataCacheEntryMaxAge |
| Friendly Name | Set age for segments in the data cache |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\Retrieval |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- SetDataCacheEntryMaxAge-AdmxBacked-End -->

<!-- SetDataCacheEntryMaxAge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetDataCacheEntryMaxAge-Examples-End -->

<!-- SetDataCacheEntryMaxAge-End -->

<!-- SetDowngrading-Begin -->
## SetDowngrading

<!-- SetDowngrading-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetDowngrading-Applicability-End -->

<!-- SetDowngrading-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PeerToPeerCaching/SetDowngrading
```
<!-- SetDowngrading-OmaUri-End -->

<!-- SetDowngrading-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether BranchCache-capable client computers operate in a downgraded mode in order to maintain compatibility with previous versions of BranchCache. If client computers don't use the same BranchCache version, cache efficiency might be reduced because client computers that are using different versions of BranchCache might store cache data in incompatible formats.

- If you enable this policy setting, all clients use the version of BranchCache that you specify in "Select from the following versions".

- If you don't configure this setting, all clients will use the version of BranchCache that matches their operating system.

Policy configuration.

Select one of the following:

- Not Configured. With this selection, this policy setting isn't applied to client computers, and the clients run the version of BranchCache that's included with their operating system.

- Enabled. With this selection, this policy setting is applied to client computers based on the value of the option setting "Select from the following versions" that you specify.

- Disabled. With this selection, this policy setting isn't applied to client computers, and the clients run the version of BranchCache that's included with their operating system.

In circumstances where this setting is enabled, you can also select and configure the following option:

Select from the following versions.

- Windows Vista with BITS 4.0 installed, Windows 7, or Windows Server 2008 R2. If you select this version, later versions of Windows run the version of BranchCache that's included in these operating systems rather than later versions of BranchCache.

- Windows 8. If you select this version, Windows 8 will run the version of BranchCache that's included in the operating system.
<!-- SetDowngrading-Description-End -->

<!-- SetDowngrading-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetDowngrading-Editable-End -->

<!-- SetDowngrading-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetDowngrading-DFProperties-End -->

<!-- SetDowngrading-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetDowngrading |
| Friendly Name | Configure Client BranchCache Version Support |
| Location | Computer Configuration |
| Path | Network > BranchCache |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PeerDist\Service\Versioning |
| ADMX File Name | PeerToPeerCaching.admx |
<!-- SetDowngrading-AdmxBacked-End -->

<!-- SetDowngrading-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetDowngrading-Examples-End -->

<!-- SetDowngrading-End -->

<!-- ADMX_PeerToPeerCaching-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_PeerToPeerCaching-CspMoreInfo-End -->

<!-- ADMX_PeerToPeerCaching-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
