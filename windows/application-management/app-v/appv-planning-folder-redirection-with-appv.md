---
title: Planning to Use Folder Redirection with App-V (Windows 10)
description: Planning to Use Folder Redirection with App-V
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.topic: article
---
# Planning to Use Folder Redirection with App-V

>Applies to: Windows 10, version 1607

Microsoft Application Virtualization (App-V) supports the use of folder redirection, a feature that enables users and administrators to redirect the path of a folder to a new location.

## What is folder redirection?

Folder redirection lets end users work with files that have been redirected to another folder as if the files still exist on the local drive.

* Users and administrators can redirect the path of a folder to a network location. The documents in the specified folder will be available to users from any computer in the network.
    * For example, you can redirect the Documents folder from your computer's local hard disk to a network location. The user can then access the folder's documents from any computer on the network.
* The new location can be a folder on either the local computer or a shared network.
* Folder redirection immediately updates the files, while roaming data is typically synchronized when the user logs in or out of a session.

## Requirements for using folder redirection with App-V

To use %AppData% folder redirection, you must:

* Have an App-V package that has an AppData virtual file system (VFS) folder.
* Enable folder redirection and redirect users’ folders to a shared folder, typically a network folder.
* Roam both or neither of the following:
    * Files under %appdata%\Microsoft\AppV\Client\Catalog
    * Registry settings under HKEY_CURRENT_USER\Software\Microsoft\AppV\Client\Packages

For more information, see [Application publishing and client interaction](appv-application-publishing-and-client-interaction.md#roaming-requirements-and-user-catalog-data-storage).

## Unsupported scenarios for App-V folder redirection

The following scenarios aren't supported by App-V:

* Configuring %LocalAppData% as a network drive.
* Redirecting the Start menu to a single folder for multiple users.
* If roaming AppData (%AppData%) is redirected to a network share that is not available, App-V applications will fail to launch, unless the unavailable network share has been enabled for Offline Files.

## How to configure folder redirection for use with App-V

Folder redirection can be applied to different folders, such as Desktop, My Documents, My Pictures, and so on. However, the only folder that impacts the use of App-V applications is the user’s roaming AppData folder (%AppData%). You can apply folder redirection to any other supported folders without impacting App-V.

## How folder redirection works with App-V

The following table describes how folder redirection works when %AppData% is redirected to a network and when you have met the requirements listed earlier in this article.

|Virtual environment state|Action that occurs|
|---|---|
|When the virtual environment starts.|The virtual file system (VFS) AppData folder is mapped to the local AppData folder (%LocalAppData%) instead of to the user’s roaming AppData folder (%AppData%).<br>- LocalAppData contains a local cache of the user’s roaming AppData folder for the package in use. The local cache is located under ```%LocalAppData%\Microsoft\AppV\Client\VFS\PackageGUID\AppData```<br>- The latest data from the user’s roaming AppData folder is copied to and replaces the data currently in the local cache.<br>- While the virtual environment is running, data continues to be saved to the local cache. Data is served only out of %LocalAppData% and is not moved or synchronized with %AppData% until the end user shuts down the computer.<br>- Entries to the AppData folder are made using the user context, not the system context.|
|When the virtual environment shuts down.|The local cached data in AppData (roaming) is zipped up and copied to the “real” roaming AppData folder in %AppData%. A time stamp that indicates the last known upload is simultaneously saved as a registry key under ```HKCU\Software\Microsoft\AppV\Client\Packages\<PACKAGE_GUID>\AppDataTime```. App-V keeps the three most recent copies of the compressed data under %AppData% for redundancy.|




