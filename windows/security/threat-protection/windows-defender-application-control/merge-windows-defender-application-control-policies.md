---
title: Merge Windows Defender Application Control policies (WDAC) (Windows)
description: Learn how to merge WDAC policies as part of your policy lifecycle management. 
keywords: security, malware
ms.prod: m365-security
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: jogeurte
ms.manager: jsuther
manager: dansimp
ms.date: 04/22/2021
ms.technology: mde
ms.topic: article
ms.localizationpriority: medium
---

# Merge Windows Defender Application Control (WDAC) policies

**Applies to:**

-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Defender App Guard feature availability](feature-availability.md).

This article shows how to merge multiple policy XML files together and how to merge rules directly into a policy. WDAC deployments often include a few base policies and optional supplemental policies for specific use cases.

> [!NOTE]
> Prior to Windows version 1903, including Windows Server 2019 and earlier, only one WDAC policy can be active on a system at a time. If you need to use WDAC on systems running these earlier versions of Windows, you must merge all policies before deploying.

## Merge multiple WDAC policy XML files together

There are many scenarios where you may want to merge two or more policy files together. For example, if you [use audit events to create WDAC policy rules](audit-windows-defender-application-control-policies.md), you can merge those rules with your existing WDAC base policy. To merge the two WDAC policies referenced in that article, complete the following steps in an elevated Windows PowerShell session.

1. Initialize the variables that will be used:

   ```powershell
   $PolicyName= "Lamna_FullyManagedClients_Audit"
   $LamnaPolicy=$env:userprofile+"\Desktop\"+$PolicyName+".xml"
   $EventsPolicy=$env:userprofile+"\Desktop\EventsPolicy.xml"
   $MergedPolicy=$env:userprofile+"\Desktop\"+$PolicyName+"_Merged.xml"
   ```

2. Use [Merge-CIPolicy](/powershell/module/configci/merge-cipolicy) to merge two policies and create a new WDAC policy:

   ```powershell
   Merge-CIPolicy -PolicyPaths $LamnaPolicy,$EventsPolicy -OutputFilePath $MergedPolicy
   ```

   > [!NOTE]
   > You can merge additional policies with the Merge-CIPolicy step above by adding them to the -PolicyPaths parameter separated by commas. The new policy file specified by -OutputFilePath will have the Policy information from the first policy in the list. For example, in the above example, the $MergedPolicy will inherit the policy type, ID, name, and version information from $LamnaPolicy. To change any of those values, use [Set-CIPolicyIdInfo](/powershell/module/configci/set-cipolicyidinfo) and [Set-CIPolicyVersion](/powershell/module/configci/set-cipolicyversion).

## Merge WDAC rules directly into a policy XML

Besides merging multiple policy XML files, you can also merge rules created with the New-CIPolicyRule cmdlet directly into an existing WDAC policy XML file. Directly merging rules is a convenient way to update your policy without creating extra policy XML files. For example, to add rules that allow the WDAC Wizard and the WDAC RefreshPolicy.exe tool, follow these steps:

1. Install the [WDAC Wizard](wdac-wizard.md) packaged MSIX app.
2. Download the [Refresh Policy tool](https://aka.ms/refreshpolicy) for your processor architecture and save it to your desktop as RefreshPolicy.exe.
3. From a PowerShell session, run the following commands to create packaged app allow rules for the WDAC Wizard:

   ```powershell
   $PackageInfo = Get-AppxPackage -Name Microsoft.WDAC.WDACWizard
   $Rules = New-CIPolicyRule -Package $PackageInfo
   ```

4. Add FilePublisher rules for the RefreshPolicy.exe:

   ```powershell
   $Rules += New-CIPolicyRule -DriverFilePath $env:USERPROFILE\Desktop\RefreshPolicy.exe -Level FilePublisher
   ```

5. Use [Merge-CIPolicy](/powershell/module/configci/merge-cipolicy) to merge the new rules directly into the MergedPolicy file created in the previous procedure's final step:

   ```powershell
   Merge-CIPolicy -PolicyPaths $MergedPolicy -OutputFilePath $MergedPolicy -Rules $Rules
   ```

## Convert and deploy merged policy to managed endpoints

Now that you have your new, merged policy, you can convert and deploy the policy binary to your managed endpoints.

1. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the WDAC policy to a binary format:

   ```powershell
   $WDACPolicyBin=$env:userprofile+"\Desktop\"+$PolicyName+"_{InsertPolicyID}.bin"
   ConvertFrom-CIPolicy -XMLFilePath $MergedPolicy -BinaryFilePath $WDACPolicyBin
   ```

   > [!NOTE]
   > In the sample commands above, for policies targeting Windows 10 version 1903+ or Windows 11, replace the string "{InsertPolicyID}" with the actual PolicyID GUID (including braces **{ }**) found in your policy XML file. For Windows 10 versions prior to 1903, use the name SiPolicy.p7b for the binary file name.

2. Upload your merged policy XML and the associated binary to the source control solution you are using for your WDAC policies. such as [GitHub](https://github.com/) or a document management solution such as [Office 365 SharePoint](https://products.office.com/sharepoint/collaboration).

3. Deploy the merged policy using your preferred deployment solution. See [Deploying Windows Defender Application Control (WDAC) policies](windows-defender-application-control-deployment-guide.md)
