---
title: RemoteRing CSP
description: RemoteRing CSP
ms.assetid: 70015243-c07f-46cb-a0f9-4b4ad13a5609
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# RemoteRing CSP


The RemoteRing configuration service provider can be used to remotely trigger a device to produce an audible ringing sound regardless of the volume that is set on the device.

The following diagram shows the RemoteRing configuration service provider in tree format.

![provisioning\-csp\-remotering](images/provisioning-csp-remotering.png)

<a href="" id="ring"></a>**Ring**  
Required. The node accepts requests to ring the device.

The supported operation is Exec.

## Examples


The following sample shows how to initiate a remote ring on the device.

``` syntax
<Exec>
  <CmdID>5</CmdID> 
    <Item> 
    <Target> 
      <LocURI>./Vendor/MSFT/RemoteRing/Ring </LocURI> 
    </Target> 
    </Item> 
</Exec>
```

 

 






