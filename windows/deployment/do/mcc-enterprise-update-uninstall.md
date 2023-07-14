---
title: Update or uninstall Microsoft Connected Cache for Enterprise and Education
manager: aaroncz
description: Details on updating or uninstalling Microsoft Connected Cache (MCC) for Enterprise and Education.
ms.prod: windows-client
author: amymzhou
ms.author: amyzhou
ms.topic: article
ms.date: 12/31/2017
ms.technology: itpro-updates
ms.collection: tier3
---
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

## Uninstall MCC

Please contact the MCC Team before uninstalling to let us know if you're facing issues.

This script will remove the following items:

1. EFLOW + Linux VM
1. IoT Edge
1. Edge Agent
1. Edge Hub
1. MCC
1. Moby CLI
1. Moby Engine

To delete MCC, go to Control Panel \> Uninstall a program \> Select Azure IoT
Edge LTS \> Uninstall
