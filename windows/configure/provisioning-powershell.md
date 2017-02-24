---
title: provisioning powershell (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# provisioning powershell


**Applies to**

- Windows 10
- Windows 10 Mobile

RS2 ships with Windows Provisioning PowerShell cmdlets in box. These cmdlets make it easy to script the following functions



<table><tr><th>Cmdlet</th><th>Purpose</th><th>Syntax</th></tr>
<tr><td>Add-ProvisioningPackage</td><td> Use this cmdlet to apply a provisioning package</td><td>```Add-ProvisioningPackage [-Path] <string> [-ForceInstall] [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]```</td></tr>
<tr><td rowspan="3">Remove-ProvisioningPackage</td><td rowspan="3">Remove a provisioning package</td><td>	```Remove-ProvisioningPackage -PackageId <string> [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` </td></tr><tr><td> ```Remove-ProvisioningPackage -Path <string> [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` </td></tr><tr><td> ```Remove-ProvisioningPackage -AllInstalledPackages [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` </td></tr>
<tr><td rowspan="3">Get-ProvisioningPackage </td><td rowspan="3">	Get information about an installed provisioning package	</td><td> ```Get-ProvisioningPackage -PackageId <string> [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` </td></tr><tr><td>```Get-ProvisioningPackage -Path <string> [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]``` </td></tr><tr><td> ```Get-ProvisioningPackage -AllInstalledPackages [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` </td></tr>
<tr><td rowspan="2"> Export-ProvisioningPackage</td><td rowspan="2"> 	Extract the contents of a provisioning package</td><td>	```Export-ProvisioningPackage -PackageId <string> -OutputFolder <string> [-Overwrite] [-AnswerFileOnly] [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` </td></tr><tr><td> ```Export-ProvisioningPackage -Path <string> -OutputFolder <string> [-Overwrite] [-AnswerFileOnly] [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` </td></tr>
<tr><td> Add-TrustedProvisioningCertificate </td><td>	Adds a certificate to the Trusted Certificate store </td><td> TBD </td></tr></table>	

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
- [NFC-based device provisioning](provisioning-nfc.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)





 

 





