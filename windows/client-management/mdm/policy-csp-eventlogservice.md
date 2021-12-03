---
title: Policy CSP - EventLogService
description: Learn how to use the Policy CSP - EventLogService settting to control Event Log behavior when the log file reaches its maximum size.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - EventLogService



<hr/>

<!--Policies-->
## EventLogService policies  

<dl>
  <dd>
    <a href="#eventlogservice-controleventlogbehavior">EventLogService/ControlEventLogBehavior</a>
  </dd>
  <dd>
    <a href="#eventlogservice-specifymaximumfilesizeapplicationlog">EventLogService/SpecifyMaximumFileSizeApplicationLog</a>
  </dd>
  <dd>
    <a href="#eventlogservice-specifymaximumfilesizesecuritylog">EventLogService/SpecifyMaximumFileSizeSecurityLog</a>
  </dd>
  <dd>
    <a href="#eventlogservice-specifymaximumfilesizesystemlog">EventLogService/SpecifyMaximumFileSizeSystemLog</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="eventlogservice-controleventlogbehavior"></a>**EventLogService/ControlEventLogBehavior**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

If you enable this policy setting and a log file reaches its maximum size, new events are not written to the log and are lost.

If you disable or do not configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

Note: Old events may or may not be retained according to the "Backup log automatically when full" policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Control Event Log behavior when the log file reaches its maximum size*
-   GP name: *Channel_Log_Retention_1*
-   GP path: *Windows Components/Event Log Service/Application*
-   GP ADMX file name: *eventlog.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="eventlogservice-specifymaximumfilesizeapplicationlog"></a>**EventLogService/SpecifyMaximumFileSizeApplicationLog**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.

If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify the maximum log file size (KB)*
-   GP name: *Channel_LogMaxSize_1*
-   GP path: *Windows Components/Event Log Service/Application*
-   GP ADMX file name: *eventlog.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="eventlogservice-specifymaximumfilesizesecuritylog"></a>**EventLogService/SpecifyMaximumFileSizeSecurityLog**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.

If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify the maximum log file size (KB)*
-   GP name: *Channel_LogMaxSize_2*
-   GP path: *Windows Components/Event Log Service/Security*
-   GP ADMX file name: *eventlog.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="eventlogservice-specifymaximumfilesizesystemlog"></a>**EventLogService/SpecifyMaximumFileSizeSystemLog**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.

If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify the maximum log file size (KB)*
-   GP name: *Channel_LogMaxSize_4*
-   GP path: *Windows Components/Event Log Service/System*
-   GP ADMX file name: *eventlog.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

