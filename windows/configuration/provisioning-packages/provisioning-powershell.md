---
title: PowerShell cmdlets for provisioning packages in Windows
description: Learn more about the Windows PowerShell cmdlets that you can use with Provisioning packages on Windows devices.
ms.topic: conceptual
ms.date: 07/09/2024
---

# PowerShell cmdlets for provisioning Windows client

Windows client includes Provisioning PowerShell cmdlets. These cmdlets make it easy to script the following functions.

- **Add-ProvisioningPackage**: Applies a provisioning package.

  Syntax:

  - `Add-ProvisioningPackage [-Path] <string> [-ForceInstall] [-LogsFolder <string>] [-QuietInstall] [-WprpFile <string>] [<CommonParameters>]`

- **Remove-ProvisioningPackage**: Removes a provisioning package.

  Syntax:

  - `Remove-ProvisioningPackage -PackageId <string> [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`
  - `Remove-ProvisioningPackage -Path <string> [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`
  - `Remove-ProvisioningPackage -AllInstalledPackages [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`

- **Get-ProvisioningPackage**: Gets information about an installed provisioning package.

  Syntax:

  - `Get-ProvisioningPackage -PackageId <string> [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`
  - `Get-ProvisioningPackage -Path <string> [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`
  - `Get-ProvisioningPackage -AllInstalledPackages [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`

- **Export-ProvisioningPackage**: Extracts the contents of a provisioning package.

  Syntax:

  - `Export-ProvisioningPackage -PackageId <string> -OutputFolder <string> [-Overwrite] [-AnswerFileOnly] [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`
  - `Export-ProvisioningPackage -Path <string> -OutputFolder <string> [-Overwrite] [-AnswerFileOnly] [-LogsFolder <string>] [-WprpFile <string>] [<CommonParameters>]`

- **Install-TrustedProvisioningCertificate**: Adds a certificate to the Trusted Certificate store.

  Syntax:

  - `Install-TrustedProvisioningCertificate <path to local certificate file on disk>`

- **Get-TrustedProvisioningCertificate**: Lists all installed trusted provisioning certificates. Use this cmdlet to get the certificate thumbprint to use with the `Uninstall-TrustedProvisioningCertificate` cmdlet.

  Syntax:

  - `Get-TrustedProvisioningCertificate`

- **Uninstall-TrustedProvisioningCertificate**: Removes a previously installed provisioning certificate.

  Syntax:

  - `Uninstall-TrustedProvisioningCertificate <thumbprint>`

> [!NOTE]
> You can use Get-Help to get usage help on any command. For example: `Get-Help Add-ProvisioningPackage`

Trace logs are captured when using cmdlets. The following logs are available in the logs folder after the cmdlet completes:

- ProvTrace.&lt;timestamp&gt;.ETL - ETL trace file, unfiltered
- ProvTrace.&lt;timestamp&gt;.XML - ETL trace file converted into raw trace events, unfiltered
- ProvTrace.&lt;timestamp&gt;.TXT - TEXT file containing trace output formatted for easy reading, filtered to only show events logged by providers in the WPRP file
- ProvLogReport.&lt;timestamp&gt;.XLS - Excel file containing trace output, filtered to only show events logged by providers in WPRP file

> [!NOTE]
> When applying provisioning packages using Powershell cmdlets, the default behavior is to suppress the prompt that appears when applying an unsigned provisioning package. This is by design so that provisioning packages can be applied as part of existing scripts.
