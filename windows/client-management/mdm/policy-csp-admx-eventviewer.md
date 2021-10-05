---
title: Policy CSP - ADMX_EventViewer
description: Policy CSP - ADMX_EventViewer
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

# Policy CSP - ADMX_EventViewer

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_EventViewer policies  

<dl>
  <dd>
    <a href="#admx-eventviewer-eventviewer_redirectionprogram">ADMX_EventViewer/EventViewer_RedirectionProgram</a>
  </dd>
  <dd>
    <a href="#admx-eventviewer-eventviewer_redirectionprogramcommandlineparameters">ADMX_EventViewer_RedirectionProgramCommandLineParameters</a>
  </dd>
  <dd>
    <a href="#admx-eventviewer-eventviewer_redirectionurl">ADMX_EventViewer/EventViewer_RedirectionURL</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-eventviewer-eventviewer_redirectionprogram"></a>**ADMX_EventViewer/EventViewer_RedirectionProgram**  

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
This is the program that will be invoked when the user clicks the `events.asp` link.

<!--/Description-->
 
  
<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Events.asp program*
-   GP name: *EventViewer_RedirectionProgram*
-   GP path: *Windows Components\Event Viewer*
-   GP ADMX file name: *EventViewer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventviewer-eventviewer_redirectionprogramcommandlineparameters"></a>**ADMX_EventViewer/EventViewer_RedirectionProgramCommandLineParameters**  

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
This specifies the command line parameters that will be passed to the `events.asp` program.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Events.asp program command line parameters*
-   GP name: *EventViewer_RedirectionProgramCommandLineParameters*
-   GP path: *Windows Components\Event Viewer*
-   GP ADMX file name: *EventViewer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-eventviewer-eventviewer_redirectionurl"></a>**ADMX_EventViewer/EventViewer_RedirectionURL**  

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
This is the URL that will be passed to the Description area in the Event Properties dialog box. 
Change this value if you want to use a different Web server to handle event information requests.


<!--/Description--> 

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Events.asp URL*
-   GP name: *EventViewer_RedirectionURL*
-   GP path: *Windows Components\Event Viewer*
-   GP ADMX file name: *EventViewer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

