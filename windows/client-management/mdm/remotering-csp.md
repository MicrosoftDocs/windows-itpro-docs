---
title: RemoteRing CSP
description: The RemoteRing CSP can be used to remotely trigger a device to produce an audible ringing sound regardless of the volume that's set on the device.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# RemoteRing CSP


You can use the RemoteRing configuration service provider to remotely trigger a device to produce an audible ringing sound, regardless of the volume that is set on the device.

The following DDF format shows the RemoteRing configuration service provider in tree format.
```
./User/Vendor/MSFT
RemoteRing
----Ring


./Device/Vendor/MSFT
Root


./User/Vendor/MSFT
./Device/Vendor/MSFT
RemoteRing
----Ring
```
<a href="" id="ring"></a>**Ring**
Required. The node accepts requests to ring the device.

The supported operation is Exec.

## Examples


The following sample shows how to initiate a remote ring on the device.

```xml
<Exec>
  <CmdID>5</CmdID>
    <Item>
    <Target>
      <LocURI>./Vendor/MSFT/RemoteRing/Ring </LocURI>
    </Target>
    </Item>
</Exec>
```

 

 






