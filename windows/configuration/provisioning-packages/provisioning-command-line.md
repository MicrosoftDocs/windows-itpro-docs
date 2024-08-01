---
title: Windows Configuration Designer command line interface
description: Learn more about the ICD syntax, switches, and arguments that you can use in the Windows Configuration Designer command line interface for Windows devices.
ms.topic: how-to
ms.date: 07/09/2024
---

# Windows Configuration Designer command line interface

You can use the Windows Configuration Designer command line interface (CLI) to automate the building of provisioning packages.

- IT pros can use the Windows Configuration Designer CLI to require less retooling of existing processes. You must run the Windows Configuration Designer CLI from a command window with administrator privileges.
- You must use the Windows Configuration Designer CLI and edit the customizations.xml sources to create a provisioning package with multivariant support. You need the customizations.xml file as one of the inputs to the Windows Configuration Designer CLI to build a provisioning package. For more information, see [Create a provisioning package with multivariant settings](provisioning-multivariant.md).

## Syntax

``` cmd
icd.exe /Build-ProvisioningPackage /CustomizationXML:<path_to_xml> /PackagePath:<path_to_ppkg>

[/StoreFile:<path_to_storefile>]  [/MSPackageRoot:<path_to_mspackage_directory>]  [/OEMInputXML:<path_to_xml>]
[/ProductName:<product_name>]  [/Variables:<name>:<value>] [[+|-]Encrypted] [[+|-]Overwrite] [/?]
```

## Switches and arguments

| Switch | Required? | Arguments |
| --- | --- | --- |
| /CustomizationXML | No | Specifies the path to a Windows provisioning XML file that contains the customization assets and settings. For more information, see Windows provisioning answer file. |
| /PackagePath | Yes | Specifies the path and the package name where the built provisioning package is saved. |
| /StoreFile | No</br></br></br>See Important note. | For partners using a settings store other than the default store(s) used by Windows Configuration Designer, use this parameter to specify the path to one or more comma-separated Windows settings store file. By default, if you don't specify a settings store file, the settings store that's common to all Windows editions is loaded by Windows Configuration Designer.</br></br></br>**Important**  If you use this parameter, you must not use /MSPackageRoot or /OEMInputXML. |
| /Variables | No | Specifies a semicolon separated `<name>` and `<value>` macro pair. The format for the argument must be `<name>=<value>`. |
| Encrypted | No | Denotes whether the provisioning package should be built with encryption. Windows Configuration Designer autogenerates the decryption password and includes this information in the output. <br></br>Precede with `+` for encryption, or `-` for no encryption. The default is no encryption. |
| Overwrite | No | Denotes whether to overwrite an existing provisioning package. </br></br>Precede with + to overwrite an existing package or - if you don't want to overwrite an existing package. The default is false (don't overwrite). |
| /? | No | Lists the switches and their descriptions for the command-line tool or for certain commands. |
