---
title: Policy CSP - ADMX_HelpAndSupport
description: Learn about the Policy CSP - ADMX_HelpAndSupport.
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

# Policy CSP - ADMX_HelpAndSupport
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_HelpAndSupport policies

<dl>
  <dd>
    <a href="#admx-helpandsupport-activehelp">ADMX_HelpAndSupport/ActiveHelp</a>
  </dd>
  <dd>
    <a href="#admx-helpandsupport-hpexplicitfeedback">ADMX_HelpAndSupport/HPExplicitFeedback</a>
  </dd>
  <dd>
    <a href="#admx-helpandsupport-hpimplicitfeedback">ADMX_HelpAndSupport/HPImplicitFeedback</a>
  </dd>
  <dd>
    <a href="#admx-helpandsupport-hponlineassistance">ADMX_HelpAndSupport/HPOnlineAssistance</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-helpandsupport-activehelp"></a>**ADMX_HelpAndSupport/ActiveHelp**

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
This policy setting specifies whether active content links in trusted assistance content are rendered. By default, the Help viewer renders trusted assistance content with active elements such as ShellExecute links and Guided Help links.

If you enable this policy setting, active content links aren't rendered. The text is displayed, but there are no clickable links for these elements.

If you disable or don't configure this policy setting, the default behavior applies (Help viewer renders trusted assistance content with active elements).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Active Help*
-   GP name: *ActiveHelp*
-   GP path: *Windows Components/Online Assistance*
-   GP ADMX file name: *HelpAndSupport.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-helpandsupport-hpexplicitfeedback"></a>**ADMX_HelpAndSupport/HPExplicitFeedback**

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
This policy setting specifies whether users can provide ratings for Help content.

If you enable this policy setting, ratings controls aren't added to Help content.

If you disable or don't configure this policy setting, ratings controls are added to Help topics.

Users can use the control to provide feedback on the quality and usefulness of the Help and Support content.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Help Ratings*
-   GP name: *HPExplicitFeedback*
-   GP path: *System/Internet Communication Management/Internet Communication settings*
-   GP ADMX file name: *HelpAndSupport.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-helpandsupport-hpimplicitfeedback"></a>**ADMX_HelpAndSupport/HPImplicitFeedback**
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
This policy setting specifies whether users can participate in the Help Experience Improvement program. The Help Experience Improvement program collects information about how customers use Windows Help so that Microsoft can improve it.

If you enable this policy setting, users can't participate in the Help Experience Improvement program.

If you disable or don't configure this policy setting, users can turn on the Help Experience Improvement program feature from the Help and Support settings page.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Help Experience Improvement Program*
-   GP name: *HPImplicitFeedback*
-   GP path: *System/Internet Communication Management/Internet Communication settings*
-   GP ADMX file name: *HelpAndSupport.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-helpandsupport-hponlineassistance"></a>**ADMX_HelpAndSupport/HPOnlineAssistance**

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
This policy setting specifies whether users can search and view content from Windows Online in Help and Support. Windows Online provides the most up-to-date Help content for Windows.

If you enable this policy setting, users are prevented from accessing online assistance content from Windows Online.

If you disable or don't configure this policy setting, users can access online assistance if they have a connection to the Internet and haven't disabled Windows Online from the Help and Support Options page.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows Online*
-   GP name: *HPOnlineAssistance*
-   GP path: *System/Internet Communication Management/Internet Communication settings*
-   GP ADMX file name: *HelpAndSupport.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)