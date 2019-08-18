---
title: Get Started with UE-V 2.x
description: Get Started with UE-V 2.x
author: levinec
ms.assetid: 526ecbf0-0dee-4f0b-b017-8f8d25357b14
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 02/13/2017
---


# Get Started with UE-V 2.x


Follow the steps in this guide to quickly deploy Microsoft User Experience Virtualization (UE-V) 2.0 or 2.1 in a small test environment. This helps you determine whether UE-V is the right solution to manage user settings across multiple devices within your enterprise.

**Note**  
The information in this section is repeated in greater detail throughout the rest of the documentation. So if you already know that UE-V 2 is the right solution and you don’t need to evaluate it, you can just go right to [Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md).

 

The standard installation of UE-V synchronizes the default Microsoft Windows and Office settings and many Windows app settings. Make sure your test environment includes two or more user computers that share network access and you’ll be evaluating UE-V in just a short time.

-   [Step 1: Confirm Prerequisites](#step1): Make sure your environment is able to run UE-V, including details about supported configurations.

-   [Step 2: Deploy the Settings Storage Location for UE-V 2](#step2): All UE-V deployments require a location for settings packages that contain the synchronized setting values.

-   [Step 3: Deploy the UE-V 2 Agent](#step3): To synchronize settings using UE-V, devices must have the UE-V Agent installed and running.

-   [Step 4: Test Your UE-V 2 Evaluation Deployment](#step4): Run a few tests on two computers that have the UE-V Agent installed and see how UE-V works.

That’s it! Once you follow the steps, you’ll be able to evaluate how UE-V can work in your enterprise.

**Further evaluation:** You can also perform additional steps to configure some third-party and line-of-business applications to synchronize their settings using UE-V as detailed in [Deploy UE-V 2.x for Custom Applications](deploy-ue-v-2x-for-custom-applications-new-uevv2.md).

## <a href="" id="step1"></a>Step 1: Confirm Prerequisites


Before you proceed, make sure your environment includes these requirements for running UE-V.

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Operating system</strong></th>
<th align="left"><strong>Edition</strong></th>
<th align="left"><strong>Service pack</strong></th>
<th align="left"><strong>System architecture</strong></th>
<th align="left"><strong>Windows PowerShell</strong></th>
<th align="left"><strong>Microsoft .NET Framework</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Ultimate, Enterprise, or Professional Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4 or higher</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, Datacenter, or Web Server</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4 or higher</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8.1</p></td>
<td align="left"><p>Enterprise or Pro</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 or Windows Server 2012 R2</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 10, pre-1607 verison</p></td>
<td align="left"><p>Enterprise or Pro</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2016</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>Windows PowerShell 3.0 or higher</p></td>
<td align="left"><p>.NET Framework 4.5</p></td>
</tr>
</tbody>
</table>

**Note:** Starting with Windows 10, version 1607, UE-V is included with [Windows 10 for Enterprise](https://www.microsoft.com/en-us/WindowsForBusiness/windows-for-enterprise) and is no longer part of the Microsoft Desktop Optimization Pack

Also…

-   **MDOP License:** This technology is a part of the Microsoft Desktop Optimization Pack (MDOP). Enterprise customers can get MDOP with Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see How Do I Get MDOP (https://go.microsoft.com/fwlink/p/?LinkId=322049).

-   **Administrative Credentials** for any computer on which you’ll be installing

## <a href="" id="step2"></a>Step 2: Deploy the Settings Storage Location for UE-V 2


You’ll need to deploy a settings storage location, a standard network share where user settings are stored in a settings package file. When you create the settings storage share, you should limit access to users that require it. [Deploy a Settings Storage Location](https://technet.microsoft.com/library/dn458891.aspx#ssl) provides more detailed information.

**Create a network share**

1.  Create a new security group and add UE-V users to it.

2.  Create a new folder on the centrally located computer that stores the UE-V settings packages, and then grant the UE-V users access with group permissions to the folder. The administrator who supports UE-V must have permissions to this shared folder.

3.  Assign UE-V users permission to create a directory when they connect. Grant full permission to all subdirectories of that directory, but block access to anything above.

    1.  Set the following share-level Server Message Block (SMB) permissions for the settings storage location folder.

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
        <td align="left"><p>No permissions</p></td>
        </tr>
        <tr class="even">
        <td align="left"><p>Security group of UE-V users</p></td>
        <td align="left"><p>Full control</p></td>
        </tr>
        </tbody>
        </table>

         

    2.  Set the following NTFS file system permissions for the settings storage location folder.

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
        <td align="left"><p>Creator/owner</p></td>
        <td align="left"><p>Full control</p></td>
        <td align="left"><p>Subfolders and files only</p></td>
        </tr>
        <tr class="even">
        <td align="left"><p>Security group of UE-V users</p></td>
        <td align="left"><p>List folder/read data, create folders/append data</p></td>
        <td align="left"><p>This folder only</p></td>
        </tr>
        </tbody>
        </table>

         

**Security Note:**

If you create the settings storage share on a computer running a Windows Server operating system, configure UE-V to verify that either the local Administrators group or the current user is the owner of the folder where settings packages are stored. To enable this additional security, specify this setting in the Windows Server Registry Editor:

1.  Add a **REG\_DWORD** registry key named **"RepositoryOwnerCheckEnabled"** to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\UEV\\Agent\\Configuration**.

2.  Set the registry key value to *1*.

## <a href="" id="step3"></a>Step 3: Deploy the UE-V 2 Agent


The UE-V Agent synchronizes application and Windows settings between users’ computers and devices. For evaluation purposes, install the agent on at least two computers in your test environment that belong to the same user.

Run the AgentSetup.exe file from the command line to install the UE-V Agent. It installs on both 32-bit and 64-bit operating systems.

``` syntax
AgentSetup.exe SettingsStoragePath=\\server\settingsshare\%username%
```

You must specify the SettingsStoragePath command line parameter as the network share from Step 2. [Deploy a UE-V Agent](https://technet.microsoft.com/library/dn458891.aspx#agent) provides more detailed information.

## <a href="" id="step4"></a>Step 4: Test Your UE-V 2 Evaluation Deployment


You can now run a few tests on your UE-V evaluation deployment to see how UE-V works.

****

1.  On the first computer (Computer A), make one or more of these changes:

    1.  Open to Windows Desktop and move the taskbar to a different location in the window.

    2.  Change the default fonts.

    3.  Open Calculator and set to **scientific**.

    4.  Change the behavior of any Windows app, as detailed in [Managing UE-V 2.x Settings Location Templates Using Windows PowerShell and WMI](managing-ue-v-2x-settings-location-templates-using-windows-powershell-and-wmi-both-uevv2.md).

    5.  Disable Microsoft Account settings synchronization and Roaming Profiles.

2.  Log off Computer A. Settings are saved in a UE-V settings package when users lock, logoff, exit an application, or when the sync provider runs (every 30 minutes by default).

3.  Log in to the second computer (Computer B) as the same user as Computer A.

4.  Open to Windows Desktop and verify that the taskbar location matches that of Computer A. Verify that the default fonts match and that Calculator is set to **scientific**. Also verify the change you made to any Windows app.

You can change the settings in Computer B back to the original Computer A settings. Then log off Computer B and log in to Computer A to verify the changes.

## Other resources for this product


-   [Microsoft User Experience Virtualization (UE-V) 2.x](index.md)

-   [Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md)

-   [Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)

-   [Troubleshooting UE-V 2.x](troubleshooting-ue-v-2x-both-uevv2.md)

-   [Technical Reference for UE-V 2.x](technical-reference-for-ue-v-2x-both-uevv2.md)






 

 





