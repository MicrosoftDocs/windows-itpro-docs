---
title: Install BitLocker on Windows Server
description: Learn how to install BitLocker on Windows Server.
ms.topic: how-to
ms.date: 06/18/2024
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
---

# Install BitLocker on Windows Server

For all Windows Server editions, BitLocker isn't installed by default, but it can be installed using Server Manager or Windows PowerShell cmdlets. This article explains how to install BitLocker on Windows Server.

> [!NOTE]
> To install BitLocker you must have administrator privileges.

## Install BitLocker with Server Manager

1. Open Server Manager by selecting the icon or running `servermanager.exe`
1. Select **Manage** from the **Server Manager Navigation** bar and select **Add Roles and Features**
1. Select **Next** at the **Before you begin** pane (if shown)
1. Under **Installation type**, select **Role-based or feature-based installation** and select **Next**
1. Under **Server Selection**, select the **Select a server from the server pool** pane and confirm the server on which you want to install the BitLocker feature and **Next**
1. Under **Server Roles** select **Next**
1. Under **Features**, select the box next to **BitLocker Drive Encryption**. The wizard shows the extra management features available for BitLocker. If you don't need the extra management features, deselect **Include management tools**
   > [!NOTE]
   > The **Enhanced Storage** feature is a required feature for enabling BitLocker. This feature enables support for encrypted hard drives on capable systems.
1. Select **Next** and under **Confirmation** select **Install**

The BitLocker feature requires a restart to complete its installation. Selecting the **Restart the destination server automatically if required** option in the **Confirmation** pane forces a restart of the server after installation is complete

## Install BitLocker with Windows PowerShell

Windows PowerShell offers administrators another option for BitLocker feature installation. Windows PowerShell installs features using the `servermanager` or `dism.exe` module. However, the `servermanager` and `dism.exe` modules don't always share feature name parity. Because of this mismatch of feature name parity, it's advisable to confirm the feature or role name prior to installation.

> [!NOTE]
> The server must be restarted to complete the installation of BitLocker.

### Use the servermanager module to install BitLocker

The `servermanager` Windows PowerShell module can use either the `Install-WindowsFeature` or `Add-WindowsFeature` to install the BitLocker feature. The `Add-WindowsFeature` cmdlet is a stub to the `Install-WindowsFeature`. This example uses the `Install-WindowsFeature` cmdlet. The feature name for BitLocker in the `servermanager` module is `BitLocker`.

By default, installation of features in Windows PowerShell doesn't include optional subfeatures or management tools as part of the installation process. What is installed as part of the installation process can be seen using the `-WhatIf` option in Windows PowerShell.

```powershell
Install-WindowsFeature BitLocker -WhatIf
```

The results of this command show that only the BitLocker Drive Encryption feature is installed using this command.

To see what would be installed with the BitLocker feature, including all available management tools and subfeatures, use the following command:

```powershell
Install-WindowsFeature BitLocker -IncludeAllSubFeature -IncludeManagementTools -WhatIf | fl
```

The command to complete a full installation of the BitLocker feature with all available subfeatures and then to reboot the server at completion is:

```powershell
Install-WindowsFeature BitLocker -IncludeAllSubFeature -IncludeManagementTools -Restart
```

> [!IMPORTANT]
> Installing the BitLocker feature using Windows PowerShell does not install the Enhanced Storage feature. Administrators wishing to support Encrypted Hard Drives in their environment will need to install the Enhanced Storage feature separately.

### Use the dism module to install BitLocker

The `dism.exe` Windows PowerShell module uses the `Enable-WindowsOptionalFeature` cmdlet to install features. The BitLocker feature name for BitLocker is `BitLocker`. The `dism.exe` module doesn't support wildcards when searching for feature names. To list feature names for the `dism.exe` module, use the `Get-WindowsOptionalFeatures` cmdlet. The following command lists all of the optional features in an online (running) operating system.

```powershell
Get-WindowsOptionalFeature -Online | ft
```

From this output, there are three BitLocker-related optional feature names: **BitLocker**, **BitLocker-Utilities** and **BitLocker-NetworkUnlock**. To install the BitLocker feature, the **BitLocker** and **BitLocker-Utilities** features are the only required items.

To install BitLocker using the `dism.exe` module, use the following command:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName BitLocker -All
```

The command doesn't include installation of the management tools for BitLocker, but you can do a complete installation of BitLocker and all available management tools with the following command:

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName BitLocker, BitLocker-Utilities -All
```

> [!NOTE]
> When using `Enable-WindowsOptionalFeature`, the administrator is prompted to reboot the server, as the cmdlet doesn't have support for forcing a reboot.

After the server reboots, you can use BitLocker.
