---
title: Policy CSP - ADMX_MMC
description: Learn about Policy CSP - ADMX_MMC.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/03/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_MMC
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_MMC policies

<dl>
  <dd>
    <a href="#admx-mmc-mmc-activexcontrol">ADMX_MMC/MMC_ActiveXControl</a>
  </dd>
  <dd>
    <a href="#admx-mmc-mmc-extendview">ADMX_MMC/MMC_ExtendView</a>
  </dd>
  <dd>
    <a href="#admx-mmc-mmc-linktoweb">ADMX_MMC/MMC_LinkToWeb</a>
  </dd>
  <dd>
    <a href="#admx-mmc-mmc-restrict-author">ADMX_MMC/MMC_Restrict_Author</a>
  </dd>
  <dd>
    <a href="#admx-mmc-mmc-restrict-to-permitted-snapins">ADMX_MMC/MMC_Restrict_To_Permitted_Snapins</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-mmc-mmc-activexcontrol"></a>**ADMX_MMC/MMC_ActiveXControl**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting permits or prohibits use of this snap-in.

If you enable this setting, the snap-in is permitted. If you disable the setting, the snap-in is prohibited.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those snap-ins explicitly permitted.

To explicitly permit use of this snap-in, enable this setting. If this setting isn't configured (or disabled), this snap-in is prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those snap-ins explicitly prohibited.

To explicitly prohibit use of this snap-in, disable this setting. If this setting isn't configured (or enabled), the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *ActiveX Control*
-   GP name: *MMC_ActiveXControl*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mmc-mmc-extendview"></a>**ADMX_MMC/MMC_ExtendView**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting permits or prohibits use of this snap-in.

If you enable this setting, the snap-in is permitted. If you disable the setting, the snap-in is prohibited.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those snap-ins explicitly permitted.

To explicitly permit use of this snap-in, enable this setting. If this setting isn't configured (or disabled), this snap-in is prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those snap-ins explicitly prohibited.

To explicitly prohibit use of this snap-in, disable this setting. If this setting isn't configured (or enabled), the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Extended View (Web View)*
-   GP name: *MMC_ExtendView*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mmc-mmc-linktoweb"></a>**ADMX_MMC/MMC_LinkToWeb**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting permits or prohibits use of this snap-in.

If you enable this setting, the snap-in is permitted. If you disable the setting, the snap-in is prohibited.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those snap-ins explicitly permitted.

To explicitly permit use of this snap-in, enable this setting. If this setting isn't configured (or disabled), this snap-in is prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those snap-ins explicitly prohibited.

To explicitly prohibit use of this snap-in, disable this setting. If this setting isn't configured (or enabled), the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Link to Web Address*
-   GP name: *MMC_LinkToWeb*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mmc-mmc-restrict-author"></a>**ADMX_MMC/MMC_Restrict_Author**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from entering author mode.

This setting prevents users from opening the Microsoft Management Console (MMC) in author mode, explicitly opening console files in author mode, and opening any console files that open in author mode by default.

As a result, users can't create console files or add or remove snap-ins. Also, because they can't open author-mode console files, they can't use the tools that the files contain.

This setting permits users to open MMC user-mode console files, such as those on the Administrative Tools menu in Windows 2000 Server family or Windows Server 2003 family. However, users can't open a blank MMC console window on the Start menu. (To open the MMC, click Start, click Run, and type mmc.) Users also can't open a blank MMC console window from a command prompt.

If you disable this setting or don't configure it, users can enter author mode and open author-mode console files.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict the user from entering author mode*
-   GP name: *MMC_Restrict_Author*
-   GP path: *Windows Components\Microsoft Management Console*
-   GP ADMX file name: *MMC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mmc-mmc-restrict-to-permitted-snapins"></a>**ADMX_MMC/MMC_Restrict_To_Permitted_Snapins**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you selectively permit or prohibit the use of Microsoft Management Console (MMC) snap-ins.

- If you enable this setting, all snap-ins are prohibited, except those snap-ins that you explicitly permit. Use this setting if you plan to prohibit use of most snap-ins.

To explicitly permit a snap-in, open the Restricted/Permitted snap-ins setting folder and enable the settings representing the snap-in you want to permit. If a snap-in setting in the folder is disabled or not configured, the snap-in is prohibited.

- If you disable this setting or don't configure it, all snap-ins are permitted, except those snap-ins that you explicitly prohibit. Use this setting if you plan to permit use of most snap-ins.

To explicitly prohibit a snap-in, open the Restricted/Permitted snap-ins setting folder and then disable the settings representing the snap-ins you want to prohibit. If a snap-in setting in the folder is enabled or not configured, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

> [!NOTE]
> If you enable this setting, and you don't enable any settings in the Restricted/Permitted snap-ins folder, users can't use any MMC snap-ins.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict users to the explicitly permitted list of snap-ins*
-   GP name: *MMC_Restrict_To_Permitted_Snapins*
-   GP path: *Windows Components\Microsoft Management Console*
-   GP ADMX file name: *MMC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)