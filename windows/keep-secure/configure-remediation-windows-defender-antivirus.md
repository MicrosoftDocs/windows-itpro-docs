---
title: Remediate and resolve infections detected by Windows Defender AV
description: Configure what Windows Defender AV should do when it detects a threat, and how long quarantined files should be retained in the quarantine folder
keywords: 
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---



# Configure remediation for Windows Defender AV scans

**Applies to**
-   Windows 10

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager 
- PowerShell
- Windows Management Instrumentation (WMI)
- Microsoft Intune



Main | Allow antimalware service to startup with normal priority
Main | Allow antimalware service to remain running always
Scan | Create a system restore point

Main | Turn off routine remediation
Quarantine | Configure removal of items from Quarantine folder
Scan | Turn on removal of items from scan history folder





[Configure remediation-required scheduled full scans for Windows Defender AV](scheduled-catch-up-scans-windows-defender-antivirus.md#remed)

Threats | Specify threat alert levels at which default action should not be taken when detected
Threats | Specify threats upon which default action should not be taken when detected

https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#threat-overrides-settings
https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#choose-default-actions-settings