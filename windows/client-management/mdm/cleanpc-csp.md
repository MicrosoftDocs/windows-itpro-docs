---
title: CleanPC CSP
description: The CleanPC configuration service provider (CSP) allows you to remove user-installed and pre-installed applications, with the option to persist user data.
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
ms.reviewer:
manager: aaroncz
---

# CleanPC CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The CleanPC configuration service provider (CSP) allows removal of user-installed and pre-installed applications, with the option to persist user data. This CSP was added in Windows 10, version 1703.

The following shows the CleanPC configuration service provider in tree format.

```
./Device/Vendor/MSFT
CleanPC
----CleanPCWithoutRetainingUserData
----CleanPCRetainingUserData
```

<a href="" id="--device-vendor-msft-cleanpc"></a>**./Device/Vendor/MSFT/CleanPC**
<p>The root node for the CleanPC configuration service provider.</p>

<a href="" id="cleanpcwithoutretaininguserdata"></a>**CleanPCWithoutRetainingUserData**
<p>An integer specifying a CleanPC operation without any retention of user data.

<p>The only supported operation is Execute.

<a href="" id="cleanpcwithoutretaininguserdata"></a>**CleanPCRetainingUserData**
<p>An integer specifying a CleanPC operation with retention of user data.

<p>The only supported operation is Execute.

## Related topics

[Configuration service provider reference](index.yml)
