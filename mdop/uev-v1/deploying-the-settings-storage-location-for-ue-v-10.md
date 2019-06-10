---
title: Deploying the Settings Storage Location for UE-V 1.0
description: Deploying the Settings Storage Location for UE-V 1.0
author: levinec
ms.assetid: b187d44d-649b-487e-98d3-a61ee2be8c2f
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Deploying the Settings Storage Location for UE-V 1.0


Microsoft User Experience Virtualization (UE-V) deployment requires a settings storage location where the user settings are stored in a settings package file. The settings storage location can be configured in one of the following two ways:

-   **Active Directory home directory** – if a home directory is defined for the user in Active Directory, the UE-V agent will use this location to store settings location packages. The UE-V agent dynamically creates the user-specific storage folder below the root of the home directory. The agent only uses the home directory of the Active Directory if a settings storage location is not defined.

-   **Create a settings storage share** – the settings storage share is a standard network share that is accessible by UE-V users.

## Deploy a UE-V settings storage share


When you create the settings storage share, you should limit access only to users that need access. The necessary permissions are shown in the tables below.

**To deploy the UE-V network share**

1.  Create a new security group for UE-V users.

2.  Create a new folder on the centrally located computer that will store the UE-V settings packages, and then grant the UE-V users with group permissions to the folder. The administrator supporting UE-V will need permissions to this shared folder.

3.  Set the following share-level (SMB) permissions for the setting storage location folder:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>User account</strong></th>
    <th align="left"><strong>Recommended permissions</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>No Permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Security group of UE-V users</p></td>
    <td align="left"><p>Full Control</p></td>
    </tr>
    </tbody>
    </table>

     

4.  Set the following NTFS permissions for the settings storage location folder:

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>User account</strong></th>
    <th align="left"><strong>Recommended permissions</strong></th>
    <th align="left"><strong>Folder</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Creator/Owner</p></td>
    <td align="left"><p>Full Control</p></td>
    <td align="left"><p>Subfolders and Files Only</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Security group of UE-V users</p></td>
    <td align="left"><p>List Folder/Read Data, Create Folders/Append Data</p></td>
    <td align="left"><p>This Folder Only</p></td>
    </tr>
    </tbody>
    </table>

     

5.  Click **OK** to close the dialog boxes.

This permission configuration allows users to create folders for settings storage. The UE-V agent creates and secures a `settingspackage` folder while running in the context of the user. The user receives full control to their `settingspackage` folder. Other users do not inherit access to this folder. You do not need to create and secure individual user directories, because this will be done automatically by the agent that runs in the context of the user.

**Note**  
Additional security can be configured when a Windows server is utilized for the settings storage share. UE-V can be configured to verify that either the local administrator's group or the current user is the owner of the folder where settings packages are stored. To enable additional security complete the following:

1.  Add a **REG\_DWORD** registry key named "RepositoryOwnerCheckEnabled" to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\UEV\\Agent\\Configuration.**

2.  Set registry key value to 1.

 

## Related topics


[Deploying UE-V 1.0](deploying-ue-v-10.md)

[Supported Configurations for UE-V 1.0](supported-configurations-for-ue-v-10.md)

Deploy the Central Storage for User Experience Virtualization Settings Templates and Settings Packages
[Installing the UE-V Generator](installing-the-ue-v-generator.md)

[Deploying the UE-V Agent](deploying-the-ue-v-agent.md)

 

 





