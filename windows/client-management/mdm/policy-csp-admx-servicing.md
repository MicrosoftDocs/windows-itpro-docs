---
title: Policy CSP - ADMX_Servicing
description: Learn about Policy CSP - ADMX_Servicing.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Servicing


<hr/>

<!--Policies-->
## ADMX_Servicing policies

<dl>
  <dd>
    <a href="#admx-servicing-servicing">ADMX_Servicing/Servicing</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-servicing-servicing"></a>**ADMX_Servicing/Servicing**

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
This policy setting specifies the network locations that will be used for the repair of operating system corruption and for enabling optional features that have had their payload files removed.

If you enable this policy setting and specify the new location, the files in that location will be used to repair operating system corruption and for enabling optional features that have had their payload files removed. You must enter the fully qualified path to the new location in the "Alternate source file path" text box. Multiple locations can be specified when each path is separated by a semicolon.

The network location can be either a folder, or a WIM file. If it's a WIM file, the location should be specified by prefixing the path with “wim:” and include the index of the image to use in the WIM file, for example, “wim:\\server\share\install.wim:3”.

If you disable or don't configure this policy setting, or if the required files can't be found at the locations specified in this policy setting, the files will be downloaded from Windows Update, if that is allowed by the policy settings for the computer.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify settings for optional component installation and component repair*
-   GP name: *Servicing*
-   GP path: *System*
-   GP ADMX file name: *Servicing.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
