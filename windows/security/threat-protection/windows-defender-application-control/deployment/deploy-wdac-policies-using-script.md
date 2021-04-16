---
title: Deploy Windows Defender Application Control (WDAC) policies using script (Windows 10)
description: Use scripts to deploy Windows Defender Application Control (WDAC) policies. Learn how with this step-by-step guide.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: dansimp
manager: dansimp
ms.date: 04/12/2021
ms.technology: mde
---

# Deploy WDAC policies using script

**Applies to:**

- Windows 10
- Windows Server 2016 and above

This topic describes how to deploy Windows Defender Application Control (WDAC) policies using script. The instructions below use Powershell but can work with any scripting host.

> [!NOTE]
> To use this procedure, download and distribute the [WDAC policy refresh tool](https://aka.ms/refreshpolicy) to all managed endpoints. Ensure your WDAC policies allow the WDAC policy refresh tool or use a managed installer to distribute the tool.

## Script-based deployment process for WDAC policy

1. Initialize the variables to be used by the script.

    ```powershell
    # Policy binary files should be named as {GUID}.cip for multiple policy format files (where {GUID} = <PolicyId> from the Policy XML)
    # Single policy format binaries should be named as SiPolicy.p7b.
    $PolicyBinary = "<Path to policy binary file to deploy>"
    $DestinationFolder = $env:windir+"\System32\CodeIntegrity\CIPolicies\Active\"
    $RefreshPolicyTool = "<Path where RefreshPolicy.exe can be found from managed endpoints>"
    ```

2. Copy WDAC policy binary to the destination folder.

   ```powershell
   cp $PolicyBinary $DestinationFolder
   ```

3. Repeat steps 1-2 as appropriate to deploy additional WDAC policies.
4. Run RefreshPolicy.exe to activate and refresh all WDAC policies on the managed endpoint.

   ```powershell
   & $RefreshPolicyTool
   ```

5. If successful, you should see the message **Rebootless ConfigCI Policy Refreshing Succeeded!**
