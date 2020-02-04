---
title: Merge AppLocker policies by using Set-ApplockerPolicy (Windows 10)
description: This topic for IT professionals describes the steps to merge AppLocker policies by using Windows PowerShell.
ms.assetid: f1c7d5c0-463e-4fe2-a410-844a404f18d0
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Merge AppLocker policies by using Set-ApplockerPolicy

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals describes the steps to merge AppLocker policies by using Windows PowerShell.

The **Set-AppLockerPolicy** cmdlet sets the specified Group Policy Object (GPO) to contain the specified AppLocker policy. If no Lightweight Directory Access Protocol (LDAP) is specified, the local GPO is the default. When the Merge parameter is used, rules in the specified AppLocker policy will be merged with the AppLocker rules in the target GPO specified in the LDAP path. The merging of policies will remove rules with duplicate rule IDs, and the enforcement setting specified by the AppLocker policy in the target GPO will be preserved. If the Merge parameter is not specified, then the new policy will overwrite the existing policy.

For info about using **Set-AppLockerPolicy**, including syntax descriptions and parameters, see [Set-AppLockerPolicy](https://technet.microsoft.com/library/hh847212.aspx).

For info about using Windows PowerShell for AppLocker, including how to import the AppLocker cmdlets into Windows PowerShell, see [Use the AppLocker Windows PowerShell cmdlets](use-the-applocker-windows-powershell-cmdlets.md).

You can also manually merge AppLocker policies. For the procedure to do this, see [Merge AppLocker policies manually](merge-applocker-policies-manually.md).

**To merge a local AppLocker policy with another AppLocker policy by using LDAP paths**
1.  Open the PowerShell command window. For info about performing Windows PowerShell commands for AppLocker, see [Use the AppLocker Windows PowerShell cmdlets](use-the-applocker-windows-powershell-cmdlets.md).
2.  At the command prompt, type **C:\\PS&gt;Get-AppLockerPolicy -Local | Set-AppLockerPolicy -LDAP "LDAP: //***&lt;string&gt;***"** **-Merge** where *&lt;string&gt;* specifies the LDAP path of the unique GPO.

## Example

Gets the local AppLocker policy, and then merges the policy with the existing AppLocker policy in the GPO specified in the LDAP path.

```powershell
C:\PS>Get-AppLockerPolicy -Local | Set-AppLockerPolicy -LDAP "LDAP://DC13.Contoso.com/CN={31B2F340-016D-11D2-945F-00C044FB984F9},CN=Policies,CN=System,DC=Contoso,DC=com" -Merge
```
