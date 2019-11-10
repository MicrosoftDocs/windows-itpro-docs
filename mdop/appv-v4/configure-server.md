---
title: CONFIGURE SERVER
description: CONFIGURE SERVER
author: dansimp
ms.assetid: c916eddd-74f2-46e4-953d-120b23284e37
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# CONFIGURE SERVER


Enables a user to change the setup of a server; any settings not specified will not be modified.

`SFTMIME CONFIGURE SERVER:server-name [/NAME display-name] [/HOST hostname]                 [/PORT port] [/PATH path] [/TYPE {HTTP|RTSP}]                 [/REFRESH {ON|OFF}] [/SECURE]                 [/LOG log-pathname | /CONSOLE | /GUI]`

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>SERVER:&lt;server-name&gt;</p></td>
<td align="left"><p>The display name for the publishing server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/NAME &lt;display-name&gt;</p></td>
<td align="left"><p>New display name for the server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/HOST &lt;hostname&gt;</p></td>
<td align="left"><p>The host name or IP address for the publishing server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/PORT &lt;port&gt;</p></td>
<td align="left"><p>The port on which the publishing server listens. Defaults to 80 for normal HTTP servers, 443 for HTTP servers using enhanced security, 554 for normal Application Virtualization Servers, and 322 for servers using enhanced security.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/PATH &lt;path&gt;</p></td>
<td align="left"><p>The path portion of the URL used in a publishing request. If the TYPE parameter is set to RTSP, the path is optional and defaults to &quot;/&quot;.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/TYPE</p></td>
<td align="left"><p>Indicates whether the publishing server is a Web server (&quot;HTTP&quot;) or an Application Virtualization Server (&quot;RTSP&quot;).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/REFRESH</p></td>
<td align="left"><p>If set to ON, publishing information will be refreshed when the user logs in. Defaults to ON.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/SECURE</p></td>
<td align="left"><p>If present, indicates that a connection with enhanced security should be established to the publishing server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/LOG</p></td>
<td align="left"><p>If specified, output is logged to the specified path name.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/CONSOLE</p></td>
<td align="left"><p>If specified, output is presented in the active console window (default).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/GUI</p></td>
<td align="left"><p>If specified, output is presented in a Windows dialog box.</p></td>
</tr>
</tbody>
</table>

 

For version 4.6, the following option has been added.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>/LOGU</p></td>
<td align="left"><p>If specified, output is logged to the specified path name in UNICODE format.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





