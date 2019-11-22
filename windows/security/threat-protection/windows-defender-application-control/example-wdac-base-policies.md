---
title: Example WDAC base policies (Windows 10)
description: When creating a WDAC policy for an organization, start from one of the many available example base policies.
keywords: whitelisting, security, malware
ms.topic: article
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
ms.date: 11/15/2019
---

# Windows Defender Application Control example base policies

**Applies to**
-   Windows 10
-   Windows Server 2016 and above

When creating policies for use with Windows Defender Application Control (WDAC), it is recommended to start from an existing base policy and then add or remove rules to build your own custom policy XML files. Windows includes several example policies which can be used, or organizations which use the Device Guard Signing Service can download a starter policy from that service.

## Example Base Policies

| **Example Base Policy** | **Description** | **Where it can be found** |
|----------------------------|---------------------------------------------------------------|--------|
| **DefaultWindows.xml** | This example policy is available in either audit or enforce mode. It includes the rules necessary to ensure that Windows, 3rd party hardware and software kernel drivers, and Windows Store apps will run. Used as the basis for all [Microsoft Endpoint Manager(MEM)](https://www.microsoft.com/microsoft-365/microsoft-endpoint-manager) policies. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies |
| **AllowMicrosoft.xml** | This example policy is available in audit mode. It includes the rules from DefaultWindows and adds rules to trust apps signed by the Microsoft product root certificate. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies |
| **AllowAll.xml** | This example policy is useful when creating a block list policy. All block policies should include rules allowing all other code to run and then add the DENY rules for your organization's needs. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies |
| **AllowAll_EnableHVCI.xml** | This example policy can be used to enable [memory integrity](https://docs.microsoft.com/windows/security/threat-protection/device-guard/memory-integrity) (also known as hypervisor-protected code integrity) using WDAC. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies |
| **DenyAllAudit.xml** | This example policy should only be deployed in audit mode and can be used to audit all binaries running on critical systems or to comply with regulatory requirements. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies |
| **Device Guard Signing Service (DGSS) DefaultPolicy.xml** | This example policy is available in audit mode. It includes the rules from DefaultWindows and adds rules to trust apps signed with your organization-specific certificates issued by the DGSS. | [DGSS in the Microsoft Store for Business](https://businessstore.microsoft.com/manage/settings/devices) |
| **MEM Configuration Manager** | Customers who use MEM Configuration Manager (MEMCM), formerly known as System Center Configuration Manager, can deploy a policy to a device using MEMCM's built-in integration with WDAC and then copy the resulting policy XML to use as a custom base policy. | %OSDrive%\Windows\CCM\DeviceGuard on a managed endpoint |
