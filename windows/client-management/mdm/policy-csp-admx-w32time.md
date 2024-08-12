---
title: ADMX_W32Time Policy CSP
description: Learn more about the ADMX_W32Time Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_W32Time-Begin -->
# Policy CSP - ADMX_W32Time

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_W32Time-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_W32Time-Editable-End -->

<!-- W32TIME_POLICY_CONFIG-Begin -->
## W32TIME_POLICY_CONFIG

<!-- W32TIME_POLICY_CONFIG-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- W32TIME_POLICY_CONFIG-Applicability-End -->

<!-- W32TIME_POLICY_CONFIG-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_W32Time/W32TIME_POLICY_CONFIG
```
<!-- W32TIME_POLICY_CONFIG-OmaUri-End -->

<!-- W32TIME_POLICY_CONFIG-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify Clock discipline and General values for the Windows Time service (W32time) for domain controllers including RODCs.

- If this policy setting is enabled, W32time Service on target machines use the settings provided here. Otherwise, the service on target machines use locally configured settings values.

For more details on individual parameters, combinations of parameter values as well as definitions of flags, see< https://go.microsoft.com/fwlink/?linkid=847809>.

FrequencyCorrectRate.

This parameter controls the rate at which the W32time corrects the local clock's frequency. Lower values cause larger corrections; larger values cause smaller corrections. Default: 4 (scalar).

HoldPeriod.

This parameter indicates how many consistent time samples the client computer must receive in a series before subsequent time samples are evaluated as potential spikes. Default: 5

LargePhaseOffset.

If a time sample differs from the client computer's local clock by more than LargePhaseOffset, the local clock is deemed to have drifted considerably, or in other words, spiked. Default: 50,000,000 100-nanosecond units (ns) or 5 seconds.

MaxAllowedPhaseOffset.

If a response is received that has a time variation that's larger than this parameter value, W32time sets the client computer's local clock immediately to the time that's accepted as accurate from the Network Time Protocol (NTP) server. If the time variation is less than this value, the client computer's local clock is corrected gradually. Default: 300 seconds.

MaxNegPhaseCorrection.

If a time sample is received that indicates a time in the past (as compared to the client computer's local clock) that has a time difference that's greater than the MaxNegPhaseCorrection value, the time sample is discarded. Default: 172,800 seconds.

MaxPosPhaseCorrection.

If a time sample is received that indicates a time in the future (as compared to the client computer's local clock) that has a time difference greater than the MaxPosPhaseCorrection value, the time sample is discarded. Default: 172,800 seconds.

PhaseCorrectRate.

This parameter controls how quickly W32time corrects the client computer's local clock difference to match time samples that are accepted as accurate from the NTP server. Lower values cause the clock to correct more quickly; larger values cause the clock to correct more slowly. Default: 7 (scalar).

PollAdjustFactor.

This parameter controls how quickly W32time changes polling intervals. When responses are considered to be accurate, the polling interval lengthens automatically. When responses are considered to be inaccurate, the polling interval shortens automatically. Default: 5 (scalar).

SpikeWatchPeriod.

This parameter specifies the amount of time that samples with time offset larger than LargePhaseOffset are received before these samples are accepted as accurate. SpikeWatchPeriod is used in conjunction with HoldPeriod to help eliminate sporadic, inaccurate time samples that are returned from a peer. Default: 900 seconds.

UpdateInterval.

This parameter specifies the amount of time that W32time waits between corrections when the clock is being corrected gradually. When it makes a gradual correction, the service adjusts the clock slightly, waits this amount of time, and then checks to see if another adjustment is needed, until the correction is finished. Default: 100 1/100th second units, or 1 second.

General parameters:

AnnounceFlags.

This parameter is a bitmask value that controls how time service availability is advertised through NetLogon. Default: 0x0a hexadecimal.

EventLogFlags.

This parameter controls special events that may be logged to the Event Viewer System log. Default: 0x02 hexadecimal bitmask.

LocalClockDispersion.

This parameter indicates the maximum error in seconds that's reported by the NTP server to clients that are requesting a time sample. (Applies only when the NTP server is using the time of the local CMOS clock). Default: 10 seconds.

MaxPollInterval.

This parameter controls the maximum polling interval, which defines the maximum amount of time between polls of a peer. Default: 10 in log base-2, or 1024 seconds. (Should not be set higher than 15).

MinPollInterval.

This parameter controls the minimum polling interval that defines the minimum amount of time between polls of a peer. Default: 6 in log base-2, or 64 seconds.

ClockHoldoverPeriod.

This parameter indicates the maximum number of seconds a system clock can nominally hold its accuracy without synchronizing with a time source. If this period of time passes without W32time obtaining new samples from any of its input providers, W32time initiates a rediscovery of time sources. Default: 7800 seconds.

RequireSecureTimeSyncRequests.

This parameter controls whether or not the DC will respond to time sync requests that use older authentication protocols. If enabled (set to 1), the DC won't respond to requests using such protocols. Default: 0 Boolean.

UtilizeSslTimeData.

This parameter controls whether W32time will use time data computed from SSL traffic on the machine as an additional input for correcting the local clock. Default: 1 (enabled) Boolean.

ClockAdjustmentAuditLimit.

This parameter specifies the smallest local clock adjustments that may be logged to the W32time service event log on the target machine. Default: 800 Parts per million (PPM).

RODC parameters:

ChainEntryTimeout.

This parameter specifies the maximum amount of time that an entry can remain in the chaining table before the entry is considered to be expired. Expired entries may be removed when the next request or response is processed. Default: 16 seconds.

ChainMaxEntries.

This parameter controls the maximum number of entries that are allowed in the chaining table. If the chaining table is full and no expired entries can be removed, any incoming requests are discarded. Default: 128 entries.

ChainMaxHostEntries.

This parameter controls the maximum number of entries that are allowed in the chaining table for a particular host. Default: 4 entries.

ChainDisable.

This parameter controls whether or not the chaining mechanism is disabled. If chaining is disabled (set to 0), the RODC can synchronize with any domain controller, but hosts that don't have their passwords cached on the RODC won't be able to synchronize with the RODC. Default: 0 Boolean.

ChainLoggingRate.

This parameter controls the frequency at which an event that indicates the number of successful and unsuccessful chaining attempts is logged to the System log in Event Viewer. Default: 30 minutes.
<!-- W32TIME_POLICY_CONFIG-Description-End -->

<!-- W32TIME_POLICY_CONFIG-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- W32TIME_POLICY_CONFIG-Editable-End -->

<!-- W32TIME_POLICY_CONFIG-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- W32TIME_POLICY_CONFIG-DFProperties-End -->

<!-- W32TIME_POLICY_CONFIG-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | W32TIME_POLICY_CONFIG |
| Friendly Name | Global Configuration Settings |
| Location | Computer Configuration |
| Path | System > Windows Time Service |
| Registry Key Name | Software\Policies\Microsoft\W32Time\Config |
| ADMX File Name | W32Time.admx |
<!-- W32TIME_POLICY_CONFIG-AdmxBacked-End -->

<!-- W32TIME_POLICY_CONFIG-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- W32TIME_POLICY_CONFIG-Examples-End -->

<!-- W32TIME_POLICY_CONFIG-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Begin -->
## W32TIME_POLICY_CONFIGURE_NTPCLIENT

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Applicability-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_W32Time/W32TIME_POLICY_CONFIGURE_NTPCLIENT
```
<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-OmaUri-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies a set of parameters for controlling the Windows NTP Client.

- If you enable this policy setting, you can specify the following parameters for the Windows NTP Client.

- If you disable or don't configure this policy setting, the Windows NTP Client uses the defaults of each of the following parameters.

NtpServer.

The Domain Name System (DNS) name or IP address of an NTP time source. This value is in the form of "dnsName,flags" where "flags" is a hexadecimal bitmask of the flags for that host. For more information, see the NTP Client Group Policy Settings Associated with Windows Time section of the Windows Time Service Group Policy Settings. The default value is "time.windows.com,0x09".

Type.

This value controls the authentication that W32time uses. The default value is NT5DS.

CrossSiteSyncFlags.

This value, expressed as a bitmask, controls how W32time chooses time sources outside its own site. The possible values are 0, 1, and 2. Setting this value to 0 (None) indicates that the time client shouldn't attempt to synchronize time outside its site. Setting this value to 1 (PdcOnly) indicates that only the computers that function as primary domain controller (PDC) emulator operations masters in other domains can be used as synchronization partners when the client has to synchronize time with a partner outside its own site. Setting a value of 2 (All) indicates that any synchronization partner can be used. This value is ignored if the NT5DS value isn't set. The default value is 2 decimal (0x02 hexadecimal).

ResolvePeerBackoffMinutes.

This value, expressed in minutes, controls how long W32time waits before it attempts to resolve a DNS name when a previous attempt failed. The default value is 15 minutes.

ResolvePeerBackoffMaxTimes.

This value controls how many times W32time attempts to resolve a DNS name before the discovery process is restarted. Each time DNS name resolution fails, the amount of time to wait before the next attempt will be twice the previous amount. The default value is seven attempts.

SpecialPollInterval.

This NTP client value, expressed in seconds, controls how often a manually configured time source is polled when the time source is configured to use a special polling interval. If the SpecialInterval flag is enabled on the NTPServer setting, the client uses the value that's set as the SpecialPollInterval, instead of a variable interval between MinPollInterval and MaxPollInterval values, to determine how frequently to poll the time source. SpecialPollInterval must be in the range of [MinPollInterval, MaxPollInterval], else the nearest value of the range is picked. Default: 1024 seconds.

EventLogFlags.

This value is a bitmask that controls events that may be logged to the System log in Event Viewer. Setting this value to 0x1 indicates that W32time will create an event whenever a time jump is detected. Setting this value to 0x2 indicates that W32time will create an event whenever a time source change is made. Because it's a bitmask value, setting 0x3 (the addition of 0x1 and 0x2) indicates that both time jumps and time source changes will be logged.
<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Description-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Editable-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-DFProperties-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | W32TIME_POLICY_CONFIGURE_NTPCLIENT |
| Friendly Name | Configure Windows NTP Client |
| Location | Computer Configuration |
| Path | System > Windows Time Service > Time Providers |
| Registry Key Name | Software\Policies\Microsoft\W32time\TimeProviders\NtpClient |
| ADMX File Name | W32Time.admx |
<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-AdmxBacked-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-Examples-End -->

<!-- W32TIME_POLICY_CONFIGURE_NTPCLIENT-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Begin -->
## W32TIME_POLICY_ENABLE_NTPCLIENT

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Applicability-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_W32Time/W32TIME_POLICY_ENABLE_NTPCLIENT
```
<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-OmaUri-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the Windows NTP Client is enabled.

Enabling the Windows NTP Client allows your computer to synchronize its computer clock with other NTP servers. You might want to disable this service if you decide to use a third-party time provider.

- If you enable this policy setting, you can set the local computer clock to synchronize time with NTP servers.

- If you disable or don't configure this policy setting, the local computer clock doesn't synchronize time with NTP servers.
<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Description-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Editable-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-DFProperties-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | W32TIME_POLICY_ENABLE_NTPCLIENT |
| Friendly Name | Enable Windows NTP Client |
| Location | Computer Configuration |
| Path | System > Windows Time Service > Time Providers |
| Registry Key Name | Software\Policies\Microsoft\W32time\TimeProviders\NtpClient |
| Registry Value Name | Enabled |
| ADMX File Name | W32Time.admx |
<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-AdmxBacked-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-Examples-End -->

<!-- W32TIME_POLICY_ENABLE_NTPCLIENT-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Begin -->
## W32TIME_POLICY_ENABLE_NTPSERVER

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Applicability-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_W32Time/W32TIME_POLICY_ENABLE_NTPSERVER
```
<!-- W32TIME_POLICY_ENABLE_NTPSERVER-OmaUri-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the Windows NTP Server is enabled.

- If you enable this policy setting for the Windows NTP Server, your computer can service NTP requests from other computers.

- If you disable or don't configure this policy setting, your computer can't service NTP requests from other computers.
<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Description-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Editable-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- W32TIME_POLICY_ENABLE_NTPSERVER-DFProperties-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | W32TIME_POLICY_ENABLE_NTPSERVER |
| Friendly Name | Enable Windows NTP Server |
| Location | Computer Configuration |
| Path | System > Windows Time Service > Time Providers |
| Registry Key Name | Software\Policies\Microsoft\W32Time\TimeProviders\NtpServer |
| Registry Value Name | Enabled |
| ADMX File Name | W32Time.admx |
<!-- W32TIME_POLICY_ENABLE_NTPSERVER-AdmxBacked-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- W32TIME_POLICY_ENABLE_NTPSERVER-Examples-End -->

<!-- W32TIME_POLICY_ENABLE_NTPSERVER-End -->

<!-- ADMX_W32Time-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_W32Time-CspMoreInfo-End -->

<!-- ADMX_W32Time-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
