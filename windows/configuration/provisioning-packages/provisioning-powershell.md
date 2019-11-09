---
title: PowerShell cmdlets for provisioning Windows 10 (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.reviewer: 
manager: dansimp
---

# PowerShell cmdlets for provisioning Windows 10 (reference)


**Applies to**

- Windows 10
- Windows 10 Mobile

Windows 10, version 1703, ships with Windows Provisioning PowerShell cmdlets. These cmdlets make it easy to script the following functions.



<table><tr><th>Cmdlet</th><th>Use this cmdlet to</th><th>Syntax</th></tr>
<tr><td>Add-ProvisioningPackage</td><td> Apply a provisioning package</td><td><code>Add-ProvisioningPackage [-Path] &lt;string&gt; [-ForceInstall] [-LogsFolder &lt;string&gt;] [-QuietInstall] [-WprpFile &lt;string&gt;] [&lt;CommonParameters&gt;]</code></td></tr>
<tr><td rowspan="3">Remove-ProvisioningPackage</td><td rowspan="3">Remove a provisioning package</td><td>   <code>Remove-ProvisioningPackage -PackageId &lt;string&gt; [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;]  [&lt;CommonParameters&gt;]</code> </td></tr><tr><td> <code>Remove-ProvisioningPackage -Path &lt;string&gt; [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;]  [&lt;CommonParameters&gt;]</code> </td></tr><tr><td> <code>Remove-ProvisioningPackage -AllInstalledPackages [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;]  [&lt;CommonParameters&gt;]</code> </td></tr>
<tr><td rowspan="3">Get-ProvisioningPackage </td><td rowspan="3">   Get information about an installed provisioning package </td><td> <code>Get-ProvisioningPackage -PackageId &lt;string&gt; [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;]  [&lt;CommonParameters&gt;]</code> </td></tr><tr><td><code>Get-ProvisioningPackage -Path &lt;string&gt; [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;] [&lt;CommonParameters&gt;]</code> </td></tr><tr><td> <code>Get-ProvisioningPackage -AllInstalledPackages [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;]  [&lt;CommonParameters&gt;]</code> </td></tr>
<tr><td rowspan="2"> Export-ProvisioningPackage</td><td rowspan="2">    Extract the contents of a provisioning package</td><td> <code>Export-ProvisioningPackage -PackageId &lt;string&gt; -OutputFolder &lt;string&gt; [-Overwrite] [-AnswerFileOnly] [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;]  [&lt;CommonParameters&gt;]</code> </td></tr><tr><td> <code>Export-ProvisioningPackage -Path &lt;string&gt; -OutputFolder &lt;string&gt; [-Overwrite] [-AnswerFileOnly] [-LogsFolder &lt;string&gt;] [-WprpFile &lt;string&gt;]  [&lt;CommonParameters&gt;]</code> </td></tr>
<tr><td> Install-TrustedProvisioningCertificate </td><td>   Adds a certificate to the Trusted Certificate store </td><td><code>Install-TrustedProvisioningCertificate &lt;path to local certificate file on disk&gt;</code>  </td></tr>
<tr><td>Get-TrustedProvisioningCertificate</td><td> List all installed trusted provisioning certificates; use this cmdlet to get the certificate thumbprint to use with the <strong>Uninstall-TrustedProvisioningCertificate</strong> cmdlet</td><td><code>Get-TrustedProvisioningCertificate</code></td></tr>
<tr><td>Uninstall-TrustedProvisioningCertificate </td><td> Remove a previously installed provisioning certificate</td><td><code>Uninstall-TrustedProvisioningCertificate &lt;thumbprint&gt;</code></td></tr>
</table>	

>[!NOTE]
> You can use Get-Help to get usage help on any command. For example: `Get-Help Add-ProvisioningPackage`

Trace logs are captured when using cmdlets. The following logs are available in the logs folder after the cmdlet completes: 

- ProvTrace.&lt;timestamp&gt;.ETL - ETL trace file, unfiltered
- ProvTrace.&lt;timestamp&gt;.XML - ETL trace file converted into raw trace events, unfiltered
- ProvTrace.&lt;timestamp&gt;.TXT - TEXT file containing trace output formatted for easy reading, filtered to only show events logged by providers in the WPRP file
- ProvLogReport.&lt;timestamp&gt;.XLS - Excel file containing trace output, filtered to only show events logged by providers in WPRP file



>[!NOTE]
>When applying provisioning packages using Powershell cmdlets, the default behavior is to suppress the prompt that appears when applying an unsigned provisioning package. This is by design so that provisioning packages can be applied as part of existing scripts.


## Related topics

- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)





 

 





