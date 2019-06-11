---
title: NetworkProxy (Windows 10)
description: This section describes the NetworkProxy settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
ms.reviewer: 
manager: dansimp
---

# NetworkProxy (Windows Configuration Designer reference)

Use for settings related to NetworkProxy. 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |   |  | X |  |  |


## AutoDetect

Automatically detect network proxy settings. 

|  Value | Description |
| --- | --- |
| 0 | Disabled. Do not automatically detect settings. |
| 1 | Enabled. Automatically detect settings. |

## ProxyServer

Node for configuring a static proxy for Ethernet and Wi-Fi connections. The same proxy server is used for all protocols - including HTTP, HTTPS, FTP, and SOCKS. These settings do not apply to VPN connections.

| Setting | Description |
| --- | --- |
| ProxyAddress | Address to the proxy server. Specify an address in the format `server:port`. |
| ProxyExceptions | Addresses that should not use the proxy server. The system will not use the proxy server for addresses that begin with the values specified in this node. Use semicolons (;) to separate entries. |
| UseProxyForLocalAddresses | Whether the proxy server should be used for local (intranet) addresses.</br></br>- 0 = Disabled. Do not use the proxy server for local addresses.</br>- 1 = Enabled. Use the proxy server for local addresses.  |


## SetupScriptUrl

Address to the PAC script you want to use. 


## Related topics

- [NetworkProxy configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/networkproxy-csp)
