---
ms.localizationpriority: medium
ms.mktglfcycl: plan
description: Review the file types that are created and used by tools in the Internet Explorer Administration Kit 11 (IEAK 11).
author: lomayor
ms.prod: ie11
ms.assetid: e5735074-3e9b-4a00-b1a7-b8fd8baca327
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: File types used or created by IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# File types used or created by IEAK 11
A list of the file types used or created by tools in IEAK 11:

|File type |Description              |
|----------|-------------------------|
|.adm | An admin file (located at `<system_drive>:\Program Files\Windows IEAK 11\policies`), used by Group Policy to define the system policies and restrictions for Windows. You can use the IEAK 11 to change these settings. |
|.bat |An ASCII text file that contains a sequence of operating system commands, including the parameters and operators supported by the batch command language. When you run the batch file from a command prompt, the computer processes each command sequentially. |
|.bmp, .gif, .jpeg, and .jpg |Image files you can use to customize your toolbar button and favorites list icons. For info, see the [Customize the Toolbar button and Favorites List icons using IEAK 11](guidelines-toolbar-and-favorites-list-ieak11.md) page. |
|.cab |A compressed cabinet (.cab) file, created by the Internet Explorer Customization Wizard 11 to store your custom component files. We highly recommend that your .cab files be signed for security purposes. For more info, see the [Security features and IEAK 11](security-and-ieak11.md) page. |
|.cif |A component info file (IESetup.cif), identifying the new or updated components you're going to install with Internet Explorer. Each component file has an associated *ComponentID* that's used by Windows Update Setup to determine whether a new component or an update exists. |
|.cmp |Connection profile files that are created by the Connection Manager Administration Kit (CMAK). |
|.cms |Service provider files, created by the CMAK tool to specify the configuration of the phone book and many of the other functions of your service profiles. |
|.exe |Executable files that control the setup process, by installing the .cab files that install the custom browser package on your employee's devices. |
|.inf |Setup information files that provide installation instructions for your custom browser packages. For more info, see the [Use the uninstallation .INF files to uninstall custom components](create-uninstall-inf-files-for-custom-components.md) page. |
|.ins |Internet Settings files that specify how to configure your custom browser and its components. You can create multiple versions of your custom package by customizing copies of this file. For more info, see the [Using Internet Settings (.INS) files with IEAK 11](using-internet-settings-ins-files.md) page. |
|.pac |Proxy auto-configuration script files that determine whether to connect directly to a host or to use a proxy server. For more info, see the [Use the Automatic Configuration page in the IEAK 11 Wizard](auto-config-ieak11-wizard.md) page. |
|.js and .jvs |JScript and JavaScript files that let you configure and maintain your advanced proxy settings. For more info, see the [Use the Automatic Configuration page in the IEAK 11 Wizard](auto-config-ieak11-wizard.md) page. |
|.pvk |A file format used by some certification authorities to store the private key of the digital certificate. The public part of the digital certificate is stored in an SPC file, while the private part is stored in the PVK file. For more info, see the **Understanding certificates** section of the [Security features and IEAK 11](security-and-ieak11.md) page. |
|.sed |Connection profile files, created by the CMAK tool, including the instructions for building the self-extracting executable (.exe) file for your service profiles.<p>**Important**<br>You must never edit a .sed file. |
|.spc |The software publishing certificate file, which includes:<ul><li>The name and other identifying information of the owner of the certificate.</li><li>The public key associated with the certificate.</li><li>The serial number.</li><li>The length of time the certificate is valid.</li><li>The digital signature of the certification authority that issued the certificate.</li></ul> |

