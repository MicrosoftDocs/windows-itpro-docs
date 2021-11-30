---
title: Policy CSP - ADMX_srmfci
description: Policy CSP - ADMX_srmfci
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_srmfci

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_srmfci policies  

<dl>
  <dd>
    <a href="#admx-srmfci-enableshellaccesscheck">ADMX_srmfci/EnableShellAccessCheck</a>
  </dd>
  <dd>
    <a href="#admx-srmfci-accessdeniedconfiguration">ADMX_srmfci/AccessDeniedConfiguration</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-srmfci-enableshellaccesscheck"></a>**ADMX_srmfci/EnableShellAccessCheck**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This Group Policy Setting should be set on Windows clients  to enable access-denied assistance for all file types.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable access-denied assistance on client for all file types*
-   GP name: *EnableShellAccessCheck*
-   GP path: *System\Access-Denied Assistance*
-   GP ADMX file name: *srmfci.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-srmfci-accessdeniedconfiguration"></a>**ADMX_srmfci/AccessDeniedConfiguration**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies the message that users see when they are denied access to a file or folder. You can customize the Access Denied message to include additional text and links. You can also provide users with the ability to send an email to request access to the file or folder to which they were denied access.  

If you enable this policy setting, users receive a customized Access Denied message from the file servers on which this policy setting is applied.  

If you disable this policy setting, users see a standard Access Denied message that doesn't provide any of the functionality controlled by this policy setting, regardless of the file server configuration.  

If you do not configure this policy setting, users see a standard Access Denied message unless the file server is configured to display the customized Access Denied message. By default, users see the standard Access Denied message.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Customize message for Access Denied errors*
-   GP name: *AccessDeniedConfiguration*
-   GP path: *System\Access-Denied Assistance*
-   GP ADMX file name: *srmfci.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

