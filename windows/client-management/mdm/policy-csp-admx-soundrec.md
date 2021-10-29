---
title: Policy CSP - ADMX_SoundRec
description: Policy CSP - ADMX_SoundRec
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/01/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_SoundRec

<hr/>

<!--Policies-->
## ADMX_SoundRec policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
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
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether Sound Recorder can run. Sound Recorder is a feature of Microsoft Windows Vista that can be used to record sound from an audio input device where the recorded sound is encoded and saved as an audio file.  

If you enable this policy setting, Sound Recorder will not run.  

If you disable or do not configure this policy setting, Sound Recorder can be run.

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
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether Sound Recorder can run. Sound Recorder is a feature of Microsoft Windows Vista that can be used to record sound from an audio input device where the recorded sound is encoded and saved as an audio file.  

If you enable this policy setting, Sound Recorder will not run.  

If you disable or do not configure this policy setting, Sound Recorder can be run.

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

