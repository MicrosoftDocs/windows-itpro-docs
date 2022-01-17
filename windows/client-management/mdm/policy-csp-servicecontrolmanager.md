---
title: Policy CSP - ServiceControlManager
description: Learn how the Policy CSP - ServiceControlManager setting enables process mitigation options on svchost.exe processes.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: Heidilohr
ms.localizationpriority: medium
ms.date: 09/27/2019
---

# Policy CSP - ServiceControlManager



<hr/>

<!--Policies-->
## ServiceControlManager policies  

<dl>
  <dd>
    <a href="#servicecontrolmanager-svchostprocessmitigation">ServiceControlManager/SvchostProcessMitigation</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="servicecontrolmanager-svchostprocessmitigation"></a>**ServiceControlManager/SvchostProcessMitigation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
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
This policy setting enables process mitigation options on svchost.exe processes.

If you enable this policy setting, built-in system services hosted in svchost.exe processes will have stricter security policies enabled on them.

These stricter security policies include a policy requiring all binaries loaded in these processes to be signed by Microsoft, and a policy disallowing dynamically generated code.  

> [!IMPORTANT]
> Enabling this policy could cause compatibility issues with third-party software that uses svchost.exe processes (for example, third-party antivirus software).

If you disable or do not configure this policy setting, the stricter security settings will not be applied.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable svchost.exe mitigation options*
-   GP name: *SvchostProcessMitigationEnable*
-   GP path: *System/Service Control Manager Settings/Security Settings*
-   GP ADMX file name: *ServiceControlManager.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:  
- Disabled - Do not add ACG/CIG enforcement and other process mitigation/code integrity policies to SVCHOST processes.
- Enabled - Add ACG/CIG enforcement and other process mitigation/code integrity policies to SVCHOST processes.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->
