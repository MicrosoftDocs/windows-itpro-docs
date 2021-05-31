---
title: TPMPolicy CSP
description: The TPMPolicy configuration service provider (CSP) provides a mechanism to enable zero exhaust configuration on a Windows device for TPM software components.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/01/2017
ms.reviewer: 
manager: dansimp
---

# TPMPolicy CSP


The TPMPolicy configuration service provider (CSP) provides a mechanism to enable zero exhaust configuration on a Windows device for TPM software components. Zero exhaust is defined as no network traffic (diagnostic data or otherwise, such as downloading background images, Windows Updates, and so on.) from Windows and inbox applications to public IP addresses unless directly intended by the user. This allows the enterprise admin to configure devices where no network communication is initiated by the system without explicit approval.

The TPMPolicy CSP was added in Windows 10, version 1703.

The following shows the TPMPolicy configuration service provider in tree format.
```
./Vendor/MSFT
TPMPolicy
----IsActiveZeroExhaust
```
<a href="" id="--device-vendor-msft-tpmpolicy"></a>**./Device/Vendor/MSFT/TPMPolicy**  
<p style="margin-left: 20px">Defines the root node.</p>

<a href="" id="isactivezeroexhaust"></a>**IsActiveZeroExhaust**  
<p style="margin-left: 20px">Boolean value that indicates whether network traffic from the device to public IP addresses is not allowed unless directly intended by the user (zero exhaust). Default value is false. Some examples when zero exhaust is configured:</p>

<ul>
<li>There should be no traffic when machine is on idle. When the user is not interacting with the system/device, no traffic is expected. </li>
<li>There should be no traffic during installation of Windows and first logon when local ID is used.</li>
<li>Launching and using a local app (Notepad, Paint, and so on.) should not send any traffic. Similarly, performing common tasks (clicking on start menu, browsing folders, and so on.) should not send any traffic.</li>
<li>Launching and using Internet enabled apps should not send any unexpected traffic (for maintenance, diagnostic data, and so on.) to Microsoft.</li>
</ul>

Here is an example:

```xml
<Replace>
    <CmdID>101</CmdID>
    <Item>
        <Target>
            <LocURI>
                ./Vendor/MSFT/TpmPolicy/IsActiveZeroExhaust
            </LocURI>
        </Target>
        <Meta>
            <Format>bool</Format>
            <Type>text/plain</Type>
        </Meta>
        <Data>true</Data>
    </Item>
</Replace>
```

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)
