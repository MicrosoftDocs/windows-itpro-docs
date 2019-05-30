---
title: Policy CSP - Speech
description: Policy CSP - Speech
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 05/01/2019
---

# Policy CSP - Speech



<hr/>

<!--Policies-->
## Speech policies  

<dl>
  <dd>
    <a href="#speech-allowspeechmodelupdate">Speech/AllowSpeechModelUpdate</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="speech-allowspeechmodelupdate"></a>**Speech/AllowSpeechModelUpdate**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Specifies whether the device will receive updates to the speech recognition and speech synthesis models. A speech model contains data used by the speech engine to convert audio to text (or vice-versa). The models are periodically updated to improve accuracy and performance. Models are non-executable data files. If enabled, the device will periodically check for updated speech models and then download them from a Microsoft service using the Background Internet Transfer Service (BITS).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Automatic Update of Speech Data*
-   GP name: *AllowSpeechModelUpdate*
-   GP path: *Windows Components/Speech*
-   GP ADMX file name: *Speech.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<!--/Policies-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Speech policies supported by Windows Holographic

- [Speech/AllowSpeechModelUpdate](#speech-allowspeechmodelupdate)
<!--EndHoloLens-->

<!--StartHoloLensBusiness-->
## <a href="" id="hololenbusinessspolicies"></a>Speech policies supported by Windows Holographic for Business

- [Speech/AllowSpeechModelUpdate](#speech-allowspeechmodelupdate)
<!--EndHoloLensBusiness-->

<hr/>

Footnotes:

- 1 - Added in Windows 10, version 1607.
- 2 - Added in Windows 10, version 1703.
- 3 - Added in Windows 10, version 1709.
- 4 - Added in Windows 10, version 1803.
- 5 - Added in Windows 10, version 1809.
