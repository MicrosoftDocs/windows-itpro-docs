---
title: CellularSettings CSP
description: CellularSettings CSP
ms.assetid: ce8b6f16-37ca-4aaf-98b0-306d12e326df
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 06/26/2017
---

# CellularSettings CSP

The CellularSettings configuration service provider is used to configure cellular settings on a mobile device.

> [!Note]
> Starting in Windows 10, version 1703 the CellularSettings CSP is supported in Windows 10 Home, Pro, Enterprise, and Education editions.

The following image shows the CellularSettings CSP in tree format as used by Open Mobile Alliance Client Provisioning (OMA CP). The OMA DM protocol is not supported with this configuration service provider.

![provisioning\-csp\-cellularsettings](images/provisioning-csp-cellularsettings.png)

<a href="" id="dataroam"></a>**DataRoam**  
<p style="margin-left: 20px"> Optional. Integer. Specifies the default roaming value. Valid values are:</p>

<table style="margin-left: 20px"><table>
<colgroup>
<col width="20%" />
<col width="80%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>Don’t roam</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Don’t roam (or Domestic roaming if applicable)</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Roam</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






