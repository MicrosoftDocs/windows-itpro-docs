---
title: Policy CSP - AttachmentManager
description: Manage Windows marks file attachments with information about their zone of origin, such as restricted, internet, intranet, local.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - AttachmentManager

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).



<hr/>

<!--Policies-->
## AttachmentManager policies

<dl>
  <dd>
    <a href="#attachmentmanager-donotpreservezoneinformation">AttachmentManager/DoNotPreserveZoneInformation</a>
  </dd>
  <dd>
    <a href="#attachmentmanager-hidezoneinfomechanism">AttachmentManager/HideZoneInfoMechanism</a>
  </dd>
  <dd>
    <a href="#attachmentmanager-notifyantivirusprograms">AttachmentManager/NotifyAntivirusPrograms</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="attachmentmanager-donotpreservezoneinformation"></a>**AttachmentManager/DoNotPreserveZoneInformation**

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

This policy setting allows you to manage whether Windows marks file attachments with information about their zone of origin (such as restricted, Internet, intranet, local). This feature requires NTFS in order to function correctly, and will fail without notice on FAT32. If the zone information is not preserved, Windows can't make proper risk assessments.

If you enable this policy setting, Windows doesn't mark file attachments with their zone information.

If you disable this policy setting, Windows marks file attachments with their zone information.

If you don't configure this policy setting, Windows marks file attachments with their zone information.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not preserve zone information in file attachments*
-   GP name: *AM_MarkZoneOnSavedAtttachments*
-   GP path: *Windows Components/Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="attachmentmanager-hidezoneinfomechanism"></a>**AttachmentManager/HideZoneInfoMechanism**

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
This policy setting allows you to manage whether users can manually remove the zone information from saved file attachments by clicking the Unblock button in the file's property sheet or by using a check box in the security warning dialog. Removing the zone information allows users to open potentially dangerous file attachments that Windows has blocked users from opening.

If you enable this policy setting, Windows hides the check box and Unblock button.

If you disable this policy setting, Windows shows the check box and Unblock button.

If you don't configure this policy setting, Windows hides the check box and Unblock button.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide mechanisms to remove zone information*
-   GP name: *AM_RemoveZoneInfo*
-   GP path: *Windows Components/Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="attachmentmanager-notifyantivirusprograms"></a>**AttachmentManager/NotifyAntivirusPrograms**

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
This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they'll all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, the subsequent calls would be redundant.

If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.

If you disable this policy setting, Windows doesn't call the registered antivirus programs when file attachments are opened.

If you don't configure this policy setting, Windows doesn't call the registered antivirus programs when file attachments are opened.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Notify antivirus programs when opening attachments*
-   GP name: *AM_CallIOfficeAntiVirus*
-   GP path: *Windows Components/Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

