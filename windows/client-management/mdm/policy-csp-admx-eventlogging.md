---
title: Policy CSP - ADMX_EventLogging
description: Policy CSP - ADMX_EventLogging
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/12/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_EventLogging

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For 
details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an 
example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.
md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of 
online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM 
supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/
#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_EventLogging policies  

<dl>
  <dd>
    <a href="#admx-eventlogging-enableprotectedeventlogging">ADMX_EventLogging/EnableProtectedEventLogging</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-eventlogging-enableprotectedeventlogging"></a>**ADMX_EventLogging/EnableProtectedEventLogging**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you configure Protected Event Logging.  

- If you enable this policy setting, components that support it will use the certificate you supply to encrypt potentially sensitive event log data before writing it to the event log. Data will be encrypted using the Cryptographic Message Syntax (CMS) standard and the public key you provide. 

You can use the Unprotect-CmsMessage PowerShell cmdlet to decrypt these encrypted messages, provided that you have access to the private key corresponding to the public key that they were encrypted with.  

- If you disable or do not configure this policy setting, components will not encrypt event log messages before writing them to the event log.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable Protected Event Logging*
-   GP name: *EnableProtectedEventLogging*
-   GP path: *Windows Components\Event Logging*
-   GP ADMX file name: *EventLogging.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

