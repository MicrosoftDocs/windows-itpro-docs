---
title: Uninstall MCC for Enterprise and Education
description: Details on how to uninstall Microsoft Connected Cache (MCC) for Enterprise and Education for your environment.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
ms.author: carmenf
author: cmknox
manager: aaroncz
ms.reviewer: mstewart
ms.collection:
  - tier3
  - must-keep
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for Enterprise and Education</a> 
ms.date: 05/23/2024
---

<!-- Customers will no longer update the private preview and instead install public preview
# Update or uninstall Microsoft Connected Cache for Enterprise and Education

Throughout the preview phase, we'll send you security and feature updates for MCC. Follow these steps to perform the update.

## Update MCC

Run the following command with the **arguments** we provided in the email to update your MCC:

```powershell
# .\updatemcc.ps1 version="**\<VERSION\>**" tenantid="**\<TENANTID\>**" customerid="**\<CUSTOMERID\>**" cachenodeid="**\<CACHENODEID\>**" customerkey="**\<CUSTOMERKEY\>**"
```

For example:

```powershell
# .\updatemcc.ps1 version="msconnectedcacheprod.azurecr.io/mcc/linux/iot/mcc-ubuntu-iot-amd64:1.2.1.659" tenantid="799a999aa-99a1-99aa-99aa-9a9aa099db99" customerid="99a999aa-99a1-99aa-99aa-9aaa9aaa0saa" cachenodeid=" aa99aaaa-999a-9aas-99aa99daaa99 " customerkey="a99d999a-aaaa-aa99-0999aaaa99a"
```
-->
# Uninstall MCC

Contact the MCC Team before uninstalling to let us know if you're facing issues.

This script removes the following items:

1. EFLOW + Linux VM
1. IoT Edge
1. Edge Agent
1. Edge Hub
1. MCC
1. Moby CLI
1. Moby Engine

To delete MCC, go to Control Panel \> Uninstall a program \> Select Azure IoT
Edge LTS \> Uninstall
