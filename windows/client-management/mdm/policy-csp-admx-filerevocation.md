---
title: Policy CSP - ADMX_FileRevocation
description: Policy CSP - ADMX_FileRevocation
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/13/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_FileRevocation

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
<dl>
  <dd>
    <a href="#admx-filerevocation-delegatedpackagefamilynames">ADMX_FileRevocation/DelegatedPackageFamilyNames</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-filerevocation-delegatedpackagefamilynames"></a>**ADMX_FileRevocation/DelegatedPackageFamilyNames**  

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
> * User

<!--/Scope-->
<!--Description-->
Windows Runtime applications can protect content which has been associated with an enterprise identifier (EID), but can only revoke access to content it protected. To allow an application to revoke access to all content on the device that is protected by a particular enterprise, add an entry to the list on a new line that contains the enterprise identifier, separated by a comma, and the Package Family Name of the application. The EID must be an internet domain belonging to the enterprise in standard international domain name format.   
Example value: `Contoso.com,ContosoIT.HumanResourcesApp_m5g0r7arhahqy` 

- If you enable this policy setting, the application identified by the Package Family Name will be permitted to revoke access to all content protected using the specified EID on the device.    

- If you disable or do not configure this policy setting, the only Windows Runtime applications that can revoke access to all enterprise-protected content on the device are Windows Mail and the user-selected mailto protocol handler app.  

Any other Windows Runtime application will only be able to revoke access to content it protected.  

> [!NOTE]
> Information the user should notice even if skimmingFile revocation applies to all content protected under the same second level domain as the provided enterprise identifier. Therefore, revoking an enterprise ID of `mail.contoso.com` will revoke the user’s access to all content protected under the contoso.com hierarchy.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow Windows Runtime apps to revoke enterprise data.*
-   GP name: *DelegatedPackageFamilyNames*
-   GP path: *Windows Components\File Revocation*
-   GP ADMX file name: *FileRevocation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

