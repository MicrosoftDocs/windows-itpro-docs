---
title: CellularSettings CSP
description: Learn how the CellularSettings configuration service provider is used to configure cellular settings on a mobile device.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# CellularSettings CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The CellularSettings configuration service provider is used to configure cellular settings on a mobile device.

> [!Note]
> Starting in Windows 10, version 1703, the CellularSettings CSP is supported in Windows 10 and Windows 11 Home, Pro, Enterprise, and Education editions.

The following example shows the CellularSettings CSP in tree format as used by Open Mobile Alliance Client Provisioning (OMA CP). The OMA DM protocol isn't supported with this configuration service provider.

```console
./Vendor/MSFT
CellularSettings
----DataRoam
```

<a href="" id="dataroam"></a>**DataRoam**
<p> Optional. Integer. Specifies the default roaming value. Valid values are:</p>

|Value|Setting|
|--- |--- |
|0|Don’t roam|
|1|Don’t roam (or Domestic roaming if applicable)|
|2|Roam|

## Related topics

[Configuration service provider reference](index.yml)
