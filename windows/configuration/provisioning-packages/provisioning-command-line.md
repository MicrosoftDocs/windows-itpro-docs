---
title: Windows Configuration Designer command-line interface (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Windows Configuration Designer command-line interface (reference)


**Applies to**

- Windows 10
- Windows 10 Mobile

You can use the Windows Configuration Designer command-line interface (CLI) to automate the building of provisioning packages. 

- IT pros can use the Windows Configuration Designer CLI to require less re-tooling of existing processes. You must run the Windows Configuration Designer CLI from a command window with administrator privileges.

- You must use the Windows Configuration Designer CLI and edit the customizations.xml sources to create a provisioning package with multivariant support. You need the customizations.xml file as one of the inputs to the Windows Configuration Designer CLI to build a provisioning package. For more information, see [Create a provisioning package with multivariant settings](provisioning-multivariant.md). 



## Syntax

``` 
icd.exe /Build-ProvisioningPackage /CustomizationXML:<path_to_xml> /PackagePath:<path_to_ppkg> 
[/StoreFile:<path_to_storefile>]  [/MSPackageRoot:<path_to_mspackage_directory>]  [/OEMInputXML:<path_to_xml>]
[/ProductName:<product_name>]  [/Variables:<name>:<value>] [[+|-]Encrypted] [[+|-]Overwrite] [/?]
```

## Switches and arguments

| Switch | Required? | Arguments |
| --- | --- | --- |
| /CustomizationXML | No | Specifies the path to a Windows provisioning XML file that contains the customization assets and settings. For more information, see Windows provisioning answer file. |
| /PackagePath | Yes | Specifies the path and the package name where the built provisioning package will be saved. |
| /StoreFile | No</br></br></br>See Important note. | For partners using a settings store other than the default store(s) used by Windows Configuration Designer, use this parameter to specify the path to one or more comma-separated Windows settings store file. By default, if you don't specify a settings store file, the settings store that's common to all Windows editions will be loaded by Windows Configuration Designer.</br></br></br>**Important**  If you use this parameter, you must not use /MSPackageRoot or /OEMInputXML. |
| /Variables | No | Specifies a semicolon separated <name> and <value> macro pair. The format for the argument must be <name>=<value>. |
| Encrypted | No | Denotes whether the provisioning package should be built with encryption. Windows Configuration Designer auto-generates the decryption password and includes this information in the output.</br></br></br>Precede with + for encryption or - for no encryption. The default is no encryption. |
| Overwrite | No | Denotes whether to overwrite an existing provisioning package.</br></br></br>Precede with + to overwrite an existing package or - if you don't want to overwrite an existing package. The default is false (don't overwrite). |
| /? | No | Lists the switches and their descriptions for the command-line tool or for certain commands. |
 



## Related topics

- [Provisioning packages for Windows 10](provisioning-packages.md)
- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows 10 (reference)](provisioning-powershell.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)
 





