---
title: Administering App-V by using Windows PowerShell (Windows 10)
description: Administering App-V by Using Windows PowerShell
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/08/2018
ms.topic: article
---
# Administering App-V by using Windows PowerShell

>Applies to: Windows 10, version 1607

Microsoft Application Virtualization (App-V) supports Windows PowerShell cmdlets that give administrators a quick and easy way to manage App-V. The following sections will tell you more about how to use Windows PowerShell with App-V.

## How to administer App-V with Windows PowerShell

The following table lists articles that will tell you more about how to use PowerShell for App-V.

|Name|Description|
|---|---|
|[How to load the Windows PowerShell cmdlets for App-V and get cmdlet help](appv-load-the-powershell-cmdlets-and-get-cmdlet-help.md)|Describes how to install the Windows PowerShell cmdlets and find cmdlet help and examples.|
|[How to manage App-V packages running on a stand-alone computer by using Windows PowerShell](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md)|Describes how to manage the client package lifecycle on a stand-alone computer with Windows PowerShell.|
|[How to manage connection groups on a stand-alone computer by using Windows PowerShell](appv-manage-connection-groups-on-a-stand-alone-computer-with-powershell.md)|Describes how to manage connection groups with Windows PowerShell.|
|[How to modify client configuration by using Windows PowerShell](appv-modify-client-configuration-with-powershell.md)|Describes how to modify the client with Windows PowerShell.|
|[How to apply the user configuration file by using Windows PowerShell](appv-apply-the-user-configuration-file-with-powershell.md)|Describes how to apply a user configuration file with Windows PowerShell.|
|[How to apply the deployment configuration file by using Windows PowerShell](appv-apply-the-deployment-configuration-file-with-powershell.md)|Describes how to apply a deployment configuration file with Windows PowerShell.|
|[How to sequence a package by using Windows PowerShell](appv-sequence-a-package-with-powershell.md)|Describes how to create a new package with Windows PowerShell.|
|[How to create a package accelerator by using Windows PowerShell](appv-create-a-package-accelerator-with-powershell.md)|Describes how to create a package accelerator with Windows PowerShell. You can use package accelerators to automatically sequence large, complex applications.|
|[How to enable reporting on the App-V client by using Windows PowerShell](appv-enable-reporting-on-the-appv-client-with-powershell.md)|Describes how to enable the computer running the App-V Client to send reporting information.|
|[How to install the App-V databases and convert the associated security identifiers by using Windows PowerShell](appv-install-the-appv-databases-and-convert-the-associated-security-identifiers-with-powershell.md)|Describes how to take an array of account names and to convert each of them to the corresponding SID in standard and hexadecimal formats.|
|[How to configure the client to receive package and connection groups updates from the publishing server](appv-configure-the-client-to-receive-updates-from-the-publishing-server.md)|Describes how to use Windows PowerShell to configure a client after you have deployed the App-V management and publishing servers and added the required packages and connection groups.|

>[!IMPORTANT]
>Make sure that any script you execute with your App-V packages matches the execution policy that you have configured for Windows PowerShell.

## Windows PowerShell error handling

The following table describes Windows PowerShell error handling for App-V.

|Event|Action|
|---|---|
|Using the **RollbackOnError** attribute with embedded scripts|When you use the **RollbackOnError** attribute with embedded scripts, the attribute is ignored for the following events:<br>- Removing a package<br>- Unpublishing a package<br>- Terminating a virtual environment<br>- Terminating a process|
|Package name contains **$**|If a package name contains the character \$\, you must use a single-quote ( **'** ). <br>For example:<br>```Add-AppvClientPackage 'Contoso$App.appv'```|





## Related topics

* [Operations for App-V](appv-operations.md)
