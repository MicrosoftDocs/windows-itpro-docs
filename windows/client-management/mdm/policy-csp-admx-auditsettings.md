---
title: Policy CSP - ADMX_AuditSettings
description: Learn about the Policy CSP - ADMX_AuditSettings.
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

# Policy CSP - ADMX_AuditSettings.

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_AuditSettings policies

<dl>
  <dd>
    <a href="#admx-auditsettings-includecmdline">ADMX_AuditSettings/IncludeCmdLine</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-auditsettings-includecmdline"></a>**ADMX_AuditSettings/IncludeCmdLine**

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
This policy setting determines what information is logged in security audit events when a new process has been created. This setting only applies when the Audit Process Creation policy is enabled.

If you enable this policy setting, the command line information for every process will be logged in plain text in the security event log as part of the Audit Process Creation event 4688, "a new process has been created," on the workstations and servers on which this policy setting is applied.

If you disable or don't configure this policy setting, the process's command line information won't be included in Audit Process Creation events.

Default is Not configured.

> [!NOTE]
> When this policy setting is enabled, any user with access to read the security events will be able to read the command line arguments for any successfully created process. Command line arguments can contain sensitive or private information, such as passwords or user data.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Include command line in process creation events*
-   GP name: *IncludeCmdLine*
-   GP path: *System/Audit Process Creation*
-   GP ADMX file name: *AuditSettings.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)