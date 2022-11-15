---
title: BitLocker How to deploy on Windows Server 2012 and later
description: This article for the IT professional explains how to deploy BitLocker and Windows Server 2012 and later
ms.reviewer: 
ms.prod: windows-client
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
ms.custom: bitlocker
ms.technology: itpro-security
---

# BitLocker: How to deploy on Windows Server 2012 and later

> Applies to: Windows Server 2012, Windows Server 2012 R2, Windows Server 2016, Windows Server 2019

This article explains how to deploy BitLocker on Windows Server 2012 and later versions. For all Windows Server editions, BitLocker can be installed using Server Manager or Windows PowerShell cmdlets. BitLocker requires administrator privileges on the server on which it's to be installed.

## <a href="" id="installing-bitlocker-"></a>Installing BitLocker

### <a href="" id="bkmk-blinstallsrvmgr"></a>To install BitLocker using server manager

1.  Open server manager by selecting the server manager icon or running servermanager.exe.
2.  Select **Manage** from the **Server Manager Navigation** bar and select **Add Roles and Features** to start the **Add Roles and Features Wizard.**
3.  With the **Add Roles and Features** wizard open, select **Next** at the **Before you begin** pane (if shown).
4.  Select **Role-based or feature-based installation** on the **Installation type** pane of the **Add Roles and Features** wizard and select **Next** to continue.
5.  Select the **Select a server from the server pool** option in the **Server Selection** pane and confirm the server on which the BitLocker feature is to be installed.
6.  Select **Next** on the **Server Roles** pane of the **Add Roles and Features** wizard to proceed to the **Features** pane.
 **Note**: Server roles and features are installed by using the same wizard in Server Manager.
7.  Select the check box next to **BitLocker Drive Encryption** within the **Features** pane of the **Add Roles and Features** wizard. The wizard shows the extra management features available for BitLocker. If you don't want to install these features, deselect the **Include management tools 
** and select **Add Features**. Once optional features selection is complete, select **Next** to proceed in the wizard.

    > **Note:**      The **Enhanced Storage** feature is a required feature for enabling BitLocker. This feature enables support for encrypted hard drives on capable systems.
     
8.  Select **Install** on the **Confirmation** pane of the **Add Roles and Features** wizard to begin BitLocker feature installation. The BitLocker feature requires a restart for its installation to be complete. Selecting the **Restart the destination server automatically if required** option in the **Confirmation** pane forces a restart of the computer after installation is complete.
9.  If the **Restart the destination server automatically if required** check box isn't selected, the **Results** pane of the **Add Roles and Features** wizard displays the success or failure of the BitLocker feature installation. If necessary, a notification of other action necessary to complete the feature installation, such as the restart of the computer, will be displayed in the results text.

### <a href="" id="bkmk-blinstallwps"></a>To install BitLocker using Windows PowerShell

Windows PowerShell offers administrators another option for BitLocker feature installation. Windows PowerShell installs features using the `servermanager` or `dism` module; however, the `servermanager` and `dism` modules don't always share feature name parity. Because of this, it's advisable to confirm the feature or role name prior to installation.

>**Note:**  You must restart the server to complete the installation of BitLocker.
 
### Using the servermanager module to install BitLocker

The `servermanager` Windows PowerShell module can use either the `Install-WindowsFeature` or `Add-WindowsFeature` to install the BitLocker feature. The `Add-WindowsFeature` cmdlet is merely a stub to the `Install-WindowsFeature`. This example uses the `Install-WindowsFeature` cmdlet. The feature name for BitLocker in the `servermanager` module is `BitLocker`. 

By default, installation of features in Windows PowerShell doesn't include optional sub-features or management tools as part of the installation process. This can be seen using the `-WhatIf` option in Windows PowerShell.

```powershell
Install-WindowsFeature BitLocker -WhatIf
```
The results of this command show that only the BitLocker Drive Encryption feature is installed using this command.

To see what would be installed with the BitLocker feature, including all available management tools and sub-features, use the following command:

```powershell
Install-WindowsFeature BitLocker -IncludeAllSubFeature -IncludeManagementTools -WhatIf | fl
```

The result of this command displays the following list of all the administration tools for BitLocker, which would be installed along with the feature, including tools for use with Active Directory Domain Services (AD DS) and Active Directory Lightweight Directory Services (AD LDS).

-   BitLocker Drive Encryption
-   BitLocker Drive Encryption Tools
-   BitLocker Drive Encryption Administration Utilities
-   BitLocker Recovery Password Viewer
-   AD DS Snap-Ins and Command-Line Tools
-   AD DS Tools
-   AD DS and AD LDS Tools

The command to complete a full installation of the BitLocker feature with all available sub-features and then to reboot the server at completion is:

```powershell
Install-WindowsFeature BitLocker -IncludeAllSubFeature -IncludeManagementTools -Restart
```

>**Important:**  Installing the BitLocker feature using Windows PowerShell does not install the Enhanced Storage feature. Administrators wishing to support Encrypted Hard Drives in their environment will need to install the Enhanced Storage feature separately.
 
### Using the dism module to install BitLocker

The `dism` Windows PowerShell module uses the `Enable-WindowsOptionalFeature` cmdlet to install features. The BitLocker feature name for BitLocker is `BitLocker`. The `dism` module doesn't support wildcards when searching for feature names. To list feature names for the `dism` module, use the `Get-WindowsOptionalFeatures` cmdlet. The following command will list all of the optional features in an online (running) operating system.

```powershell
Get-WindowsOptionalFeature -Online | ft
```

From this output, we can see that there are three BitLocker-related optional feature names: BitLocker, BitLocker-Utilities and BitLocker-NetworkUnlock. To install the BitLocker feature, the BitLocker and BitLocker-Utilities features are the only required items.

To install BitLocker using the `dism` module, use the following command:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName BitLocker -All
```

This command prompts the user for a reboot. The Enable-WindowsOptionalFeature cmdlet doesn't offer support for forcing a reboot of the computer. This command doesn't include installation of the management tools for BitLocker. For a complete installation of BitLocker and all available management tools, use the following command:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName BitLocker, BitLocker-Utilities -All
```
## More information

- [BitLocker overview](bitlocker-overview.md)
- [BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions.yml)
- [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
- [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md)
