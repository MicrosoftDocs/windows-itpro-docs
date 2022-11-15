---
title: Policy CSP - ADMX_Reliability
description: Policy CSP - ADMX_Reliability
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/13/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Reliability
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Reliability policies

<dl>
  <dd>
    <a href="#admx-reliability-ee-enablepersistenttimestamp">ADMX_Reliability/EE_EnablePersistentTimeStamp</a>
  </dd>
  <dd>
    <a href="#admx-reliability-pch-reportshutdownevents">ADMX_Reliability/PCH_ReportShutdownEvents</a>
  </dd>
  <dd>
    <a href="#admx-reliability-shutdowneventtrackerstatefile">ADMX_Reliability/ShutdownEventTrackerStateFile</a>
  </dd>
  <dd>
    <a href="#admx-reliability-shutdownreason">ADMX_Reliability/ShutdownReason</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-reliability-ee-enablepersistenttimestamp"></a>**ADMX_Reliability/EE_EnablePersistentTimeStamp**

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
This policy setting allows the system to detect the time of unexpected shutdowns by writing the current time to disk on a schedule controlled by the Timestamp Interval.

If you enable this policy setting, you're able to specify how often the Persistent System Timestamp is refreshed and then written to the disk. You can specify the Timestamp Interval in seconds.

If you disable this policy setting, the Persistent System Timestamp is turned off and the timing of unexpected shutdowns isn't recorded.

If you don't configure this policy setting, the Persistent System Timestamp is refreshed according to the default, which is every 60 seconds beginning with Windows Server 2003.

> [!NOTE]
> This feature might interfere with power configuration settings that turn off hard disks after a period of inactivity. These power settings may be accessed in the Power Options Control Panel.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Persistent Time Stamp*
-   GP name: *EE_EnablePersistentTimeStamp*
-   GP path: *System*
-   GP ADMX file name: *Reliability.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-reliability-pch-reportshutdownevents"></a>**ADMX_Reliability/PCH_ReportShutdownEvents**

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
This policy setting controls whether or not unplanned shutdown events can be reported when error reporting is enabled.

If you enable this policy setting, error reporting includes unplanned shutdown events.

If you disable this policy setting, unplanned shutdown events aren't included in error reporting.

If you don't configure this policy setting, users can adjust this setting using the control panel, which is set to "Upload unplanned shutdown events" by default.

Also see the "Configure Error Reporting" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Report unplanned shutdown events*
-   GP name: *PCH_ReportShutdownEvents*
-   GP path: *Windows Components\Windows Error Reporting\Advanced Error Reporting Settings*
-   GP ADMX file name: *Reliability.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-reliability-shutdowneventtrackerstatefile"></a>**ADMX_Reliability/ShutdownEventTrackerStateFile**

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
This policy setting defines when the Shutdown Event Tracker System State Data feature is activated.

The system state data file contains information about the basic system state and the state of all running processes.

If you enable this policy setting, the System State Data feature is activated when the user indicates that the shutdown or restart is unplanned.

If you disable this policy setting, the System State Data feature is never activated.

If you don't configure this policy setting, the default behavior for the System State Data feature occurs.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Activate Shutdown Event Tracker System State Data feature*
-   GP name: *ShutdownEventTrackerStateFile*
-   GP path: *System*
-   GP ADMX file name: *Reliability.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-reliability-shutdownreason"></a>**ADMX_Reliability/ShutdownReason**

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
The Shutdown Event Tracker can be displayed when you shut down a workstation or server.  This tracker is an extra set of questions that is displayed when you invoke a shutdown to collect information related to why you're shutting down the computer.

If you enable this setting and choose "Always" from the drop-down menu list, the Shutdown Event Tracker is displayed when the computer shuts down.

If you enable this policy setting and choose "Server Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running Windows Server. (See "Supported on" for supported versions.)

If you enable this policy setting and choose "Workstation Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running a client version of Windows. (See "Supported on" for supported versions.)

If you disable this policy setting, the Shutdown Event Tracker isn't displayed when you shut down the computer.

If you don't configure this policy setting, the default behavior for the Shutdown Event Tracker occurs.

> [!NOTE]
> By default, the Shutdown Event Tracker is only displayed on computers running Windows Server.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Display Shutdown Event Tracker*
-   GP name: *ShutdownReason*
-   GP path: *System*
-   GP ADMX file name: *Reliability.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

