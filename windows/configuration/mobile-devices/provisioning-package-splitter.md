---
title: Barcode provisioning and the package splitter tool (Windows 10)
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

# Barcode provisioning and  the package splitter tool


**Applies to**

- Windows 10 Mobile

Enterprises that do bulk provisioning can use barcode-based device provisioning to provide a provisioning package to the device that's being provisioned. 

The barcode provisioning option enables the administrator to provide a provisioning package during initial device setup (the out-of-box experience or OOBE phase). To use barcodes to provision a device, your devices must have an integrated barcode scanner. You can get the barcode format that the scanner supports from your OEM or device provider, and use your existing tools and processes to convert a provisioning package into barcodes.

Enterprise IT professionals who want to use a barcode to provision mobile devices during OOBE can use the package splitter tool, **ppkgtobase64.exe**, which is a command-line tool to split the provisioning package into smaller files.

The smallest provisioning package is typically 5-6 KB, which cannot fit into one single barcode. The package splitter tool allows partners to split the original provisioning package into multiple smaller sized chunks that are encoded with Base64 so that enterprises can leverage their existing tools to convert these files into barcodes.

When you [install Windows Configuration Designer](../provisioning-packages/provisioning-install-icd.md) from the Windows Assessment and Deployment Kit (ADK), **ppkgtobase64.exe** is installed to the same folder.

## Prerequisites

Before you can use the tool, you must have a built provisioning package. The package file is the input to the package splitter tool.

- To build a provisioning package using the Windows Configuration Designer UI, see [Use Windows Configuration Designer to configure Windows 10 Mobile devices](provisioning-configure-mobile.md). 
- To build a provisioning package using the Windows Configuration Designer CLI, see [Windows Configuration Designer command-line interface](../provisioning-packages/provisioning-command-line.md).

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

3. Run `ppkgtobase64.exe`. The [syntax](#syntax) and [switches and arguments](#switches-and-arguments) sections provide details for the command.


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


 

 





