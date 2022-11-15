---
title: Policy CSP - ADMX_EventLog
description: Learn about the Policy CSP - ADMX_EventLog.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/01/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_EventLog

<hr/>

<!--Policies-->
## ADMX_EventLog policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-eventlog-channel-logenabled">ADMX_EventLog/Channel_LogEnabled</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-logfilepath-1">ADMX_EventLog/Channel_LogFilePath_1</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-logfilepath-2">ADMX_EventLog/Channel_LogFilePath_2</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-logfilepath-3">ADMX_EventLog/Channel_LogFilePath_3</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-logfilepath-4">ADMX_EventLog/Channel_LogFilePath_4</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-logmaxsize-3">ADMX_EventLog/Channel_LogMaxSize_3</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-autobackup-1">ADMX_EventLog/Channel_Log_AutoBackup_1</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-autobackup-2">ADMX_EventLog/Channel_Log_AutoBackup_2</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-autobackup-3">ADMX_EventLog/Channel_Log_AutoBackup_3</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-autobackup-4">ADMX_EventLog/Channel_Log_AutoBackup_4</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-1">ADMX_EventLog/Channel_Log_FileLogAccess_1</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-2">ADMX_EventLog/Channel_Log_FileLogAccess_2</a>
  </dd>
    <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-3">ADMX_EventLog/Channel_Log_FileLogAccess_3</a>
  </dd>
    <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-4">ADMX_EventLog/Channel_Log_FileLogAccess_4</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-5">ADMX_EventLog/Channel_Log_FileLogAccess_5</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-6">ADMX_EventLog/Channel_Log_FileLogAccess_6</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-7">ADMX_EventLog/Channel_Log_FileLogAccess_7</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-filelogaccess-8">ADMX_EventLog/Channel_Log_FileLogAccess_8</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-retention-2">ADMX_EventLog/Channel_Log_Retention_2</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-retention-3">ADMX_EventLog/Channel_Log_Retention_3</a>
  </dd>
  <dd>
    <a href="#admx-eventlog-channel-log-retention-4">ADMX_EventLog/Channel_Log_Retention_4</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-logenabled"></a>**ADMX_EventLog/Channel_LogEnabled**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns on logging.

If you enable or don't configure this policy setting, then events can be written to this log.

If the policy setting is disabled, then no new events can be logged.

>[!Note]
> Events can always be read from the log, regardless of this policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on logging*
-   GP name: *Channel_LogEnabled*
-   GP path: *Windows Components\Event Log Service\Setup*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-logfilepath-1"></a>**ADMX_EventLog/Channel_LogFilePath_1**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

If you enable this policy setting, the Event Log uses the path specified in this policy setting.

If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control the location of the log file*
-   GP name: *Channel_LogFilePath_1*
-   GP path: *Windows Components\Event Log Service\Application*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-logfilepath-2"></a>**ADMX_EventLog/Channel_LogFilePath_2**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

If you enable this policy setting, the Event Log uses the path specified in this policy setting.

If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control the location of the log file*
-   GP name: *Channel_LogFilePath_2*
-   GP path: *Windows Components\Event Log Service\Security*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-logfilepath-3"></a>**ADMX_EventLog/Channel_LogFilePath_3**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

If you enable this policy setting, the Event Log uses the path specified in this policy setting.

If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control the location of the log file*
-   GP name: *Channel_LogFilePath_3*
-   GP path: *Windows Components\Event Log Service\Setup*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-logfilepath-4"></a>**ADMX_EventLog/Channel_LogFilePath_4**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

If you enable this policy setting, the Event Log uses the path specified in this policy setting.

If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on logging*
-   GP name: *Channel_LogFilePath_4*
-   GP path: *Windows Components\Event Log Service\System*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-logmaxsize-3"></a>**ADMX_EventLog/Channel_LogMaxSize_3**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the maximum size of the log file in kilobytes.

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2,147,483,647 kilobytes), in kilobyte increments.

If you disable or don't configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 1 megabyte.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify the maximum log file size (KB)*
-   GP name: *Channel_LogMaxSize_3*
-   GP path: *Windows Components\Event Log Service\Setup*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-autobackup-1"></a>**ADMX_EventLog/Channel_Log_AutoBackup_1**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Back up log automatically when full*
-   GP name: *Channel_Log_AutoBackup_1*
-   GP path: *Windows Components\Event Log Service\Application*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-autobackup-2"></a>**ADMX_EventLog/Channel_Log_AutoBackup_2**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Back up log automatically when full*
-   GP name: *Channel_Log_AutoBackup_2*
-   GP path: *Windows Components\Event Log Service\Security*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-autobackup-3"></a>**ADMX_EventLog/Channel_Log_AutoBackup_3**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Back up log automatically when full*
-   GP name: *Channel_Log_AutoBackup_3*
-   GP path: *Windows Components\Event Log Service\Setup*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-autobackup-4"></a>**ADMX_EventLog/Channel_Log_AutoBackup_4**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Back up log automatically when full*
-   GP name: *Channel_Log_AutoBackup_4*
-   GP path: *Windows Components\Event Log Service\System*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-1"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_1**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string.

If you enable this policy setting, only those users matching the security descriptor can access the log.

If you disable or don't configure this policy setting, all authenticated users and system services can write, read, or clear this log.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access*
-   GP name: *Channel_Log_FileLogAccess_1*
-   GP path: *Windows Components\Event Log Service\Application*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-2"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_2**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You can't configure write permissions for this log. You must set both "configure log access" policy settings for this log in order to affect both modern and legacy tools.

If you enable this policy setting, only those users whose security descriptor matches the configured specified value can access the log.

If you disable or don't configure this policy setting, only system software and administrators can read or clear this log.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access*
-   GP name: *Channel_Log_FileLogAccess_2*
-   GP path: *Windows Components\Event Log Service\Security*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-3"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_3**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string.

If you enable this policy setting, only those users matching the security descriptor can access the log.

If you disable or don't configure this policy setting, all authenticated users and system services can write, read, or clear this log.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access*
-   GP name: *Channel_Log_FileLogAccess_3*
-   GP path: *Windows Components\Event Log Service\Setup*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-4"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_4**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect both modern and legacy tools.

If you enable this policy setting, only users whose security descriptor matches the configured value can access the log.

If you disable or don't configure this policy setting, only system software and administrators can write or clear this log, and any authenticated user can read events from it.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access*
-   GP name: *Channel_Log_FileLogAccess_4*
-   GP path: *Windows Components\Event Log Service\System*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-5"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_5**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect both modern and legacy tools.

If you enable this policy setting, only those users matching the security descriptor can access the log.

If you disable this policy setting, all authenticated users and system services can write, read, or clear this log.

If you don't configure this policy setting, the previous policy setting configuration remains in effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access (legacy)*
-   GP name: *Channel_Log_FileLogAccess_5*
-   GP path: *Windows Components\Event Log Service\Application*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-6"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_6**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You can't configure write permissions for this log.

If you enable this policy setting, only those users whose security descriptor matches the configured specified value can access the log.

If you disable this policy setting, only system software and administrators can read or clear this log.

If you don't configure this policy setting, the previous policy setting configuration remains in effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access (legacy)*
-   GP name: *Channel_Log_FileLogAccess_6*
-   GP path: *Windows Components\Event Log Service\Security*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-7"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_7**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect both modern and legacy tools.

If you enable this policy setting, only those users matching the security descriptor can access the log.

If you disable this policy setting, all authenticated users and system services can write, read, or clear this log.

If you don't configure this policy setting, the previous policy setting configuration remains in effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access (legacy)*
-   GP name: *Channel_Log_FileLogAccess_7*
-   GP path: *Windows Components\Event Log Service\Setup*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-filelogaccess-8"></a>**ADMX_EventLog/Channel_Log_FileLogAccess_8**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string.

If you enable this policy setting, only users whose security descriptor matches the configured value can access the log.

If you disable this policy setting, only system software and administrators can write or clear this log, and any authenticated user can read events from it.

If you don't configure this policy setting, the previous policy setting configuration remains in effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure log access (legacy)*
-   GP name: *Channel_Log_FileLogAccess_8*
-   GP path: *Windows Components\Event Log Service\System*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-retention-2"></a>**ADMX_EventLog/Channel_Log_Retention_2**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|No|No|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

If you enable this policy setting and a log file reaches its maximum size, new events aren't written to the log and are lost.

If you disable or don't configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

>[!Note]
> Old events may or may not be retained according to the "Backup log automatically when full" policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control Event Log behavior when the log file reaches its maximum size*
-   GP name: *Channel_Log_Retention_2*
-   GP path: *Windows Components\Event Log Service\Security*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-retention-3"></a>**ADMX_EventLog/Channel_Log_Retention_3**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

If you enable this policy setting and a log file reaches its maximum size, new events aren't written to the log and are lost.

If you disable or don't configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

>[!Note]
> Old events may or may not be retained according to the "Backup log automatically when full" policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control Event Log behavior when the log file reaches its maximum size*
-   GP name: *Channel_Log_Retention_3*
-   GP path: *Windows Components\Event Log Service\Setup*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventlog-channel-log-retention-4"></a>**ADMX_EventLog/Channel_Log_Retention_4**


<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

If you enable this policy setting and a log file reaches its maximum size, new events aren't written to the log and are lost.

If you disable or don't configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

>[!Note]
> Old events may or may not be retained according to the "Backup log automatically when full" policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control Event Log behavior when the log file reaches its maximum size*
-   GP name: *Channel_Log_Retention_4*
-   GP path: *Windows Components\Event Log Service\System*
-   GP ADMX file name: *EventLog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)