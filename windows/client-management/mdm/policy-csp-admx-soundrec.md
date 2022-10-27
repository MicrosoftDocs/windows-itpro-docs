---
title: Policy CSP - ADMX_SoundRec
description: Learn about Policy CSP - ADMX_SoundRec.
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

# Policy CSP - ADMX_SoundRec

<hr/>

<!--Policies-->
## ADMX_SoundRec policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-soundrec-soundrec_diableapplication_titletext_1">ADMX_SoundRec/Soundrec_DiableApplication_TitleText_1</a>
  </dd>
  <dd>
    <a href="#admx-soundrec-soundrec_diableapplication_titletext_2">ADMX_SoundRec/Soundrec_DiableApplication_TitleText_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-soundrec-soundrec_diableapplication_titletext_1"></a>**ADMX_SoundRec/Soundrec_DiableApplication_TitleText_1**

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
This policy specifies whether Sound Recorder can run.

Sound Recorder is a feature of Microsoft Windows Vista that can be used to record sound from an audio input device where the recorded sound is encoded and saved as an audio file.

If you enable this policy setting, Sound Recorder won't run.

If you disable or don't configure this policy setting, Sound Recorder can run.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow Sound Recorder to run*
-   GP name: *Soundrec_DiableApplication_TitleText_1*
-   GP path: *Windows Components\Sound Recorder*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="admx-soundrec-soundrec_diableapplication_titletext_2"></a>**ADMX_SoundRec/Soundrec_DiableApplication_TitleText_2**

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
This policy specifies whether Sound Recorder can run.

Sound Recorder is a feature of Microsoft Windows Vista that can be used to record sound from an audio input device where the recorded sound is encoded and saved as an audio file.

If you enable this policy setting, Sound Recorder won't run.

If you disable or don't configure this policy setting, Sound Recorder can be run.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow Sound Recorder to run*
-   GP name: *Soundrec_DiableApplication_TitleText_2*
-   GP path: *Windows Components\Sound Recorder*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
