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

| Cmdlet	| Purpose	| Syntax |
| --- | --- | --- |
| Add-ProvisioningPackage | Use this cmdlet to apply a provisioning package. |	```Add-ProvisioningPackage [-Path] <string> [-ForceInstall] [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]``` |
| Remove-ProvisioningPackage | 	Remove a provisioning package |	```Remove-ProvisioningPackage -PackageId <string> [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]```</br></br>```Remove-ProvisioningPackage -Path <string> [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]```</br></br>```Remove-ProvisioningPackage -AllInstalledPackages [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` |
| Get-ProvisioningPackage | 	Get information about an installed provisioning package	| ```Get-ProvisioningPackage -PackageId <string> [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]```</br></br>```Get-ProvisioningPackage -Path <string> [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]```</br></br>```Get-ProvisioningPackage -AllInstalledPackages [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` |
| Export-ProvisioningPackage | 	Extract the contents of a provisioning package |	```Export-ProvisioningPackage -PackageId <string> -OutputFolder <string> [-Overwrite] [-AnswerFileOnly] [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]```</br></br>```Export-ProvisioningPackage -Path <string> -OutputFolder <string> [-Overwrite] [-AnswerFileOnly] [-LogsFolder <string>] [-WprpFile <string>]  [<CommonParameters>]``` |
| Add-TrustedProvisioningCertificate |	Adds a certificate to the Trusted Certificate store | TBD |	

>[!NOTE]
> You can use Get-Help to get usage help on any command. Example - “Get-Help Add-ProvisioningPackage”.

Trace logs are always captured when using the Cmdlet. The following logs are available in the logs folder after the cmdlet completes: 
•	ProvTrace.<timestamp>.ETL - ETL trace file, unfiltered
•	ProvTrace.<timestamp>.XML - ETL trace file converted into raw trace events, unfiltered
•	ProvTrace.<timestamp>.TXT - TEXT file containing trace output formatted for easy reading, filtered to only show events logged by providers in the WPRP file
•	ProvLogReport.<timestamp>.XLS - Excel file containing trace output, filtered to only show events logged by providers in WPRP file
Suggested scenario
1.	Create a provisioning package using the WCD App.
2.	Use the Add-ProvisioningPackage to apply the provisioning package.

Note: When applying provisioning packages using Powershell cmdlets, the default behavior is to suppress the prompt that appears when applying an unsigned provisioning package. This is by design – so that provisioning packages can be applied as part of existing scripts (like MDT and SCCM task sequences).


## Related topics

- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Provision PCs with apps and certificates for initial deployments (advanced provisioning)](provision-pcs-with-apps-and-certificates.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [NFC-based device provisioning](provisioning-nfc.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)





 

 





