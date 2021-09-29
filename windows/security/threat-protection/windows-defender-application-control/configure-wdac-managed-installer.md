---
title: Managed installer and ISG technical reference and troubleshooting guide (Windows)
description: Explains how to configure a custom Manged Installer.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 08/14/2020
ms.technology: mde
---

# Managed installer and ISG technical reference and troubleshooting guide

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2019 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Defender App Guard feature availability](feature-availability.md).

## Using fsutil to query SmartLocker EA

Customers using Windows Defender Application Control (WDAC) with Managed Installer (MI) or Intelligent Security Graph enabled can use fsutil to determine whether a file was allowed to run by one of these features. This can be achieved by querying the EAs on a file using fsutil and looking for the KERNEL.SMARTLOCKER.ORIGINCLAIM EA. The presence of this EA indicates that either MI or ISG allowed the file to run. This can be used in conjunction with enabling the MI and ISG logging events.

**Example:**

```powershell
fsutil file queryEA C:\Users\Temp\Downloads\application.exe

Extended Attributes (EA) information for file C:\Users\Temp\Downloads\application.exe:

Ea Buffer Offset: 410
Ea Name: $KERNEL.SMARTLOCKER.ORIGINCLAIM
Ea Value Length: 7e
0000: 01 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 ................
0010: b2 ff 10 66 bc a8 47 c7 00 d9 56 9d 3d d4 20 2a ...f..G...V.=. *
0020: 63 a3 80 e2 d8 33 8e 77 e9 5c 8d b0 d5 a7 a3 11 c....3.w.\......
0030: 83 00 00 00 00 00 00 00 5c 00 00 00 43 00 3a 00 ........\...C.:.
0040: 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 6a 00 \.U.s.e.r.s.\.T.
0050: 6f 00 67 00 65 00 75 00 72 00 74 00 65 00 2e 00 e.m.p..\D.o.w.n...
0060: 52 00 45 00 44 00 4d 00 4f 00 4e 00 44 00 5c 00 l.o.a.d.\a.p.p.l.
0070: 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 i.c.a.t.i.o.n..e.x.e
```

## Enabling managed installer logging events

Refer to [Understanding Application Control Events](event-id-explanations.md#optional-intelligent-security-graph-isg-or-managed-installer-mi-diagnostic-events) for information on enabling optional managed installer diagnostic events.

## Deploying the Managed Installer rule collection

Once you've completed configuring your chosen Managed Installer, by specifying which option to use in the AppLocker policy, enabling the service enforcement of it, and by enabling the Managed Installer option in a WDAC policy, you'll need to deploy it.

1. Use the following command to deploy the policy.

   ```powershell
   $policyFile=
   @"
   Raw_AppLocker_Policy_XML
   "@
   Set-AppLockerPolicy -XmlPolicy $policyFile -Merge -ErrorAction SilentlyContinue
   ```

2. Verify Deployment of the ruleset was successful

   ```powershell
   Get-AppLockerPolicy -Local
   
   Version RuleCollections RuleCollectionTypes
   ------- --------------- -------------------
   1 {0, 0, 0, 0...} {Appx, Dll, Exe, ManagedInstaller...}
   ```

   Verify the output shows the ManagedInstaller rule set.

3. Get the policy XML (optional) using PowerShell:

   ```powershell
   Get-AppLockerPolicy -Effective -Xml -ErrorVariable ev -ErrorAction SilentlyContinue
   ```

   This command will show the raw XML to verify the individual rules that were set.
