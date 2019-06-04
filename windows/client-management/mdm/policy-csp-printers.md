---
title: Policy CSP - Printers
description: Policy CSP - Printers
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 03/12/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Printers



<hr/>

<!--Policies-->
## Printers policies  

<dl>
  <dd>
    <a href="#printers-pointandprintrestrictions">Printers/PointAndPrintRestrictions</a>
  </dd>
  <dd>
    <a href="#printers-pointandprintrestrictions-user">Printers/PointAndPrintRestrictions_User</a>
  </dd>
  <dd>
    <a href="#printers-publishprinters">Printers/PublishPrinters</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="printers-pointandprintrestrictions"></a>**Printers/PointAndPrintRestrictions**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

If you enable this policy setting:
-Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver is not available on the client, no connection will be made.
-You can configure Windows Vista clients so that security warnings and elevated command prompts do not appear when users Point and Print, or when printer connection drivers need to be updated.

If you do not configure this policy setting:
-Windows Vista client computers can point and print to any server.
-Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

If you disable this policy setting:
-Windows Vista client computers can create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.
-The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Point and Print Restrictions*
-   GP name: *PointAndPrint_Restrictions_Win7*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="printers-pointandprintrestrictions-user"></a>**Printers/PointAndPrintRestrictions_User**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

If you enable this policy setting:
-Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver is not available on the client, no connection will be made.
-You can configure Windows Vista clients so that security warnings and elevated command prompts do not appear when users Point and Print, or when printer connection drivers need to be updated.

If you do not configure this policy setting:
-Windows Vista client computers can point and print to any server.
-Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

If you disable this policy setting:
-Windows Vista client computers can create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.
-Windows Vista computers will not show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.
-Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.
-The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Point and Print Restrictions*
-   GP name: *PointAndPrint_Restrictions*
-   GP path: *Control Panel/Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="printers-publishprinters"></a>**Printers/PublishPrinters**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Determines whether the computer's shared printers can be published in Active Directory.

If you enable this setting or do not configure it, users can use the "List in directory" option in the Printer's Properties' Sharing tab to publish shared printers in Active Directory.

If you disable this setting, this computer's shared printers cannot be published in Active Directory, and the "List in directory" option is not available.

Note: This settings takes priority over the setting "Automatically publish new printers in the Active Directory".

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow printers to be published*
-   GP name: *PublishPrinters*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

