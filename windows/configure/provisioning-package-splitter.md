---
title: Use the package splitter tool (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Use the package splitter tool


**Applies to**

- Windows 10 Mobile

Enterprise IT professionals who want to use a barcode to provision mobile devices during OOBE can use the package splitter tool, ppkgtobase64.exe, which is a command-line tool to split the provisioning package into smaller files.

The smallest provisioning package is typically 5-6 KB, which cannot fit into one single barcode. The package splitter tool allows partners to split the original provisioning package into multiple smaller sized chunks that are encoded with Base64 so that enterprises can leverage their existing tools to convert these files into barcodes.

Ppkgtobase64.exe is automatically installed when you install Windows Configuration Designer.

## Prerequisites

Before you can use the tool, you must have a built provisioning package. The package file is the input to the package splitter tool.

- To build a provisioning package using the Windows Configuration Designer UI, see Build and apply a provisioning package. 
- To build a provisioning package using the Windows Configuration Designer CLI, see Use the Windows ICD command-line interface.

## To use the package splitter tool (ppkgtobase64.exe)

1. Open a command-line window with administrator privileges.


2. From the command-line, navigate to the Windows Configuration Designer install directory.

    On an x64 computer, type:
    ```
    cd C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86
    ```

    - or -

    On an x86 computer, type:
    
    ```
    cd C:\Program Files\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86
    ```

3. Run the tool by calling "ppkgtobase64.exe". See the next section in this topic for more information.


### Syntax

```
ppkgtobase64.exe -i <InputFile> -o <OutputDirectory> -s <BlockSize>  [-c]  [/?]  
```

### Switches and arguments

| Switch | Required? | Arguments |
| --- | --- | --- |
| -i | Yes | Use to specify the path and file name of the provisioning package that you want to divide into smaller files.</br></br>The tool allows you to specify the absolute path of the provisioning package file. However, if you don't specify the path, the tool will search the current folder for a package that matches the file name you specified. |
| -o | Yes | Use to specify the directory where the output files will be saved. |
| -s | Yes | Use to specify the size of the block that will be encoded in Base64. |
| -c | No | Use to delete any files in the output directory if the directory already exists. This parameter is optional. |
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
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)

 

 





