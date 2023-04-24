---
title: TPMPolicy CSP
description: The TPMPolicy configuration service provider (CSP) provides a mechanism to enable zero-exhaust configuration on a Windows device for TPM software components.
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/01/2017
ms.reviewer:
manager: aaroncz
---

# TPMPolicy CSP

The table below shows the applicability of Windows:

The TPMPolicy Configuration Service Provider (CSP) provides a mechanism to enable zero exhaust configuration on a Windows device for TPM software components. Zero exhaust is defined as no network traffic (diagnostic data or otherwise, such as downloading background images, Windows Updates, and so on.) from Windows and inbox applications to public IP addresses unless directly intended by the user. This allows the enterprise admin to configure devices where no network communication is initiated by the system without explicit approval.

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The TPMPolicy CSP was added in Windows 10, version 1703, and later.

The following example shows the TPMPolicy configuration service provider in tree format.
```
./Vendor/MSFT
TPMPolicy
----IsActiveZeroExhaust
```
<a href="" id="--device-vendor-msft-tpmpolicy"></a>**./Device/Vendor/MSFT/TPMPolicy**
<p>Defines the root node.</p>

<a href="" id="isactivezeroexhaust"></a>**IsActiveZeroExhaust**
<p>Boolean value that indicates that network traffic from the device to public IP addresses is not allowed unless directly intended by the user (zero exhaust). The default value is false. Examples of zero-exhaust configuration and the conditions it requires are described below:</p>

<ul>
<li>There should be no traffic when machine is on idle. When the user is not interacting with the system/device, no traffic is expected. </li>
<li>There should be no traffic during installation of Windows and first sign in when local ID is used.</li>
<li>Launching and using a local app (Notepad, Paint, and so on) should not send any traffic. Similarly, performing common tasks (clicking on start menu, browsing folders, and so on.) should not send any traffic.</li>
<li>Launching and using Internet enabled apps should not send any unexpected traffic (for maintenance, diagnostic data, and so on) to Microsoft.</li>
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
