---
title: Connections (Windows 10)
description: This section describes the Connections settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# Connections (Windows Configuration Designer reference)

Use to configure settings related to various types of phone connections.

## Applies to

| Setting groups  | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [Cellular](#cellular)  | X |  X  | X | X |  |
| [EnterpriseAPN](#enterpriseapn) | X |  X  | X | X |  |
| [Policies](#policies) | X |  X  | X | X |  |
| [Proxies](#proxies) | X |  X  | X | X |  |

For each setting group:
1. In **Available customizations**, select the setting group (such as **Cellular**), enter a friendly name for the connection, and then click **Add**.
2. In **Available customizations**, select the name that you just created. 

## Cellular

See [CM_CellularEntries configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/cm-cellularentries-csp) for settings and values.

## EnterpriseAPN

See [Configure cellular settings for tablets and PCs](https://docs.microsoft.com/windows/configuration/provisioning-apn) and 
[EnterpriseAPN CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/enterpriseapn-csp) for settings and values.

## Policies

See [CMPolicy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/cmpolicy-csp) for settings and values.

## Proxies

See [CM_ProxyEntries CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/cm-proxyentries-csp) for settings and values.