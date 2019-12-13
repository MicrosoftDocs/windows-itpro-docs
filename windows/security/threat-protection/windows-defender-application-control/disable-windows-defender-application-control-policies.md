---
title: Disable Windows Defender Application Control policies  (Windows 10)
description: This topic covers how to disable unsigned or signed WDAC policies. 
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
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
ms.date: 05/03/2018
---

# Disable Windows Defender Application Control policies

**Applies to:**

-   Windows 10
-   Windows Server 2016

This topic covers how to disable unsigned or signed WDAC policies.

## Disable unsigned Windows Defender Application Control policies

There may come a time when an administrator wants to disable a WDAC policy. For unsigned WDAC policies, this process is simple. The method used to deploy the policy (such as Group Policy) must first be disabled, then simply delete the SIPolicy.p7b policy file from the following locations, and the WDAC policy will be disabled on the next computer restart:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\

Note that as of the Windows 10 May 2019 Update (1903), WDAC allows multiple policies to be deployed to a device. To fully disable WDAC when multiple policies are in effect, you must first disable each method being used to deploy a policy. Then delete the {Policy GUID}.cip policy files found in the \CIPolicies\Active subfolder under each of the paths listed above in addition to any SIPolicy.p7b file found in the root directory.

## Disable signed Windows Defender Application Control policies within Windows

Signed policies protect Windows from administrative manipulation as well as malware that has gained administrative-level access to the system. For this reason, signed WDAC policies are intentionally more difficult to remove than unsigned policies. They inherently protect themselves from modification or removal and therefore are difficult even for administrators to remove successfully. If the signed WDAC policy is manually enabled and copied to the CodeIntegrity folder, to remove the policy, you must complete the following steps.

> [!NOTE]
> For reference, signed WDAC policies should be replaced and removed from the following locations:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\


1.  Replace the existing policy with another signed policy that has the **6 Enabled: Unsigned System Integrity Policy** rule option enabled.

    > **Note**&nbsp;&nbsp;To take effect, this policy must be signed with a certificate previously added to the **UpdatePolicySigners** section of the original signed policy you want to replace.

2.  Restart the client computer.

3.  Verify that the new signed policy exists on the client.

    > **Note**&nbsp;&nbsp;If the signed policy that contains rule option 6 has not been processed on the client, the addition of an unsigned policy may cause boot failures.

4.  Delete the new policy.

5.  Restart the client computer.

If the signed WDAC policy has been deployed using by using Group Policy, you must complete the following steps:

1.  Replace the existing policy in the GPO with another signed policy that has the **6 Enabled: Unsigned System Integrity Policy** rule option enabled.

    > **Note**&nbsp;&nbsp;To take effect, this policy must be signed with a certificate previously added to the **UpdatePolicySigners** section of the original signed policy you want to replace.

2.  Restart the client computer.

3.  Verify that the new signed policy exists on the client.

    > **Note**&nbsp;&nbsp;If the signed policy that contains rule option 6 has not been processed on the client, the addition of an unsigned policy may cause boot failures.

4.  Set the GPO to disabled.

5.  Delete the new policy.

6.  Restart the client computer.

## Disable signed Windows Defender Application Control policies within the BIOS

There may be a time when signed WDAC policies cause a boot failure. Because WDAC policies enforce kernel mode drivers, it is important that they be thoroughly tested on each software and hardware configuration before being enforced and signed. Signed WDAC policies are validated in the pre-boot sequence by using Secure Boot. When you disable the Secure Boot feature in the BIOS, and then delete the file from the following locations on the operating system disk, it allows the system to boot into Windows:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\
