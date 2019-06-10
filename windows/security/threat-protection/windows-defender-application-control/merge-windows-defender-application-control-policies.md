---
title: Merge Windows Defender Application Control (WDAC) policies (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 05/03/2018
---

# Merge Windows Defender Application Control policies

**Applies to:**

-   Windows 10
-   Windows Server 2016

Because each computer running Windows 10 can have only one WDAC policy, you will occasionally need to merge two or more policies. For example, after a WDAC policy is created and audited, you might want to merge audit events from another WDAC policy.

> [!NOTE]
> Because only one SiPolicy.p7b file can be active on a system, the last management authority to write the policy wins. If there was already a policy deployed by using Group Policy and then amanaged installer using System Center Configuration Manager (SCCM) targeted the same device, the SCCM policy would overwrite the SiPolicy.p7b file.

To merge two WDAC policies, complete the following steps in an elevated Windows PowerShell session:

1. Initialize the variables that will be used:

   ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

   ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`

   ` $AuditCIPolicy=$CIPolicyPath+"DeviceGuardAuditPolicy.xml"`

   ` $MergedCIPolicy=$CIPolicyPath+"MergedPolicy.xml"`

   ` $CIPolicyBin=$CIPolicyPath+"NewDeviceGuardPolicy.bin"`

   > [!NOTE]
   > The variables in this section specifically expect to find an initial policy on your desktop called **InitialScan.xml** and an audit WDAC policy called **DeviceGuardAuditPolicy.xml**. If you want to merge other WDAC policies, update the variables accordingly.

2. Use [Merge-CIPolicy](https://docs.microsoft.com/powershell/module/configci/merge-cipolicy) to merge two policies and create a new WDAC policy:

   ` Merge-CIPolicy -PolicyPaths $InitialCIPolicy,$AuditCIPolicy -OutputFilePath $MergedCIPolicy`

3. Use [ConvertFrom-CIPolicy](https://docs.microsoft.com/powershell/module/configci/convertfrom-cipolicy) to convert the merged WDAC policy to binary format:

   ` ConvertFrom-CIPolicy $MergedCIPolicy $CIPolicyBin `

Now that you have created a new WDAC policy, you can deploy the policy binary to systems manually or by using Group Policy or Microsoft client management solutions. For information about how to deploy this new policy with Group Policy, see [Deploy and manage Windows Defender Application Control with Group Policy](deploy-windows-defender-application-control-policies-using-group-policy.md).

