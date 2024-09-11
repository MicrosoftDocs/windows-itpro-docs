---
title: Use an App Control for Business policy to control specific plug-ins, add-ins, and modules
description: App Control policies can be used not only to control applications, but also to control whether specific plug-ins, add-ins, and modules can run from specific apps.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: how-to
---

# Use an App Control for Business policy to control specific plug-ins, add-ins, and modules

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

You can use App Control for Business policies to control applications and also to control whether specific plug-ins, add-ins, and modules can run from specific apps (such as a line-of-business application or a browser):

| Approach | Guideline |
|---|---|
| You can work from a list of plug-ins, add-ins, or modules that you want only a specific application to be able to run. Other applications would be blocked from running them. | Use `New-CIPolicyRule` with the `-AppID` option. |
| In addition, you can work  from a list of plug-ins, add-ins, or modules that you want to block in a specific application. Other applications would be allowed to run them. | Use `New-CIPolicyRule` with the `-AppID` and `-Deny` options. |

For example, to add rules to an App Control policy called "Lamna_FullyManagedClients_Audit.xml" that allow **addin1.dll** and **addin2.dll** to be run by **ERP1.exe**, Lamna's enterprise resource planning (ERP) application, run the following commands. In the second command, **+=** is used to add a second rule to the **$rule** variable:

```powershell
$rule = New-CIPolicyRule -DriverFilePath '.\temp\addin1.dll' -Level FileName -AppID '.\ERP1.exe'
$rule += New-CIPolicyRule -DriverFilePath '.\temp\addin2.dll' -Level FileName -AppID '.\ERP1.exe'
```

As another example, to create an App Control for Business policy that blocks **addin3.dll** from running in Microsoft Word, run the following command. You must include the `-Deny` option to block the specified add-ins in the specified application. Once you have all the rules you want, you can merge them into an existing App Control policy using the Merge-CIPolicy cmdlet as shown here:

```powershell
$rule += New-CIPolicyRule -DriverFilePath '.\temp\addin3.dll' -Level FileName -Deny -AppID '.\winword.exe'
Merge-CIPolicy -OutputFilePath .\Lamna_FullyManagedClients_Audit.xml -PolicyPaths .\Lamna_FullyManagedClients_Audit.xml -Rules $rule
```
