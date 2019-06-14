---
title: Get Started with UE-V
description: Get Started with UE-V
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 03/08/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# Get Started with UE-V

**Applies to**
-   Windows 10, version 1607

>[!NOTE]
>This documentation is for the most recent version of UE-V. If you're looking for information about UE-V 2.x, which was included in the Microsoft Desktop Optimization Pack (MDOP), see [Get Started with UE-V 2.x](https://docs.microsoft.com/microsoft-desktop-optimization-pack/uev-v2/get-started-with-ue-v-2x-new-uevv2).

Follow the steps in this topic to deploy User Experience Virtualization (UE-V) for the first time in a test environment. Evaluate UE-V to determine whether it’s the right solution to manage user settings across multiple devices within your enterprise.

>[!NOTE]
>The information in this section is explained in greater detail throughout the rest of the documentation. If you’ve already determined that UE-V is the right solution and you don’t need to further evaluate it, see [Prepare a UE-V deployment](uev-prepare-for-deployment.md).

The standard installation of UE-V synchronizes the default Microsoft Windows and Office settings and many Windows applications settings. For best results, ensure that your test environment includes two or more user computers that share network access.

-   [Step 1: Confirm prerequisites](#step-1-confirm-prerequisites). Review the supported configurations in this section to verify that your environment is able to run UE-V.

-   [Step 2: Deploy the settings storage location](#step-2-deploy-the-settings-storage-location). Explains how to deploy a settings storage location. All UE-V deployments require a location to store settings packages that contain the synchronized setting values.

-   [Step 3: Enable and configure the UE-V service](#step-3-enable-and-configure-the-ue-v-service-on-user-devices). Explains how to enable to UE-V service on user devices and configure the storage path. To synchronize settings using UE-V, devices must have the UE-V service enabled and running.

-   [Step 4: Test Your UE-V evaluation deployment](#step-4-test-your-ue-v-evaluation-deployment). Run a few tests on two computers with the UE-V service enabled to see how UE-V works and if it meets your organization’s needs.

-   Step 5: Deploy UE-V for custom applications (optional). If you want to evaluate how your third-party and line-of-business applications work with UE-V, follow the steps in [Use UE-V with custom applications](uev-deploy-uev-for-custom-applications.md). Following this link takes you to another topic. Use your browser’s **Back** button to return to this topic.

## Step 1: Confirm prerequisites

Before you proceed, ensure that your environment meets the following requirements for running UE-V.

| **Operating system**   | **Edition**  | **Service pack** | **System architecture** | **Windows PowerShell**           | **Microsoft .NET Framework** |
|-------------------------|-------------|------------------|-------------------------|----------------------------------|------------------------------|
| Windows 10, version 1607 | Windows 10 Enterprise         | NA                      | 32-bit or 64-bit        | Windows PowerShell 3.0 or higher | .NET Framework 4 or higher   |
| Windows 8 and Windows 8.1 | Enterprise or Pro              | None                  | 32-bit or 64-bit        | Windows PowerShell 3.0 or higher | .NET Framework 4.5  |
| Windows Server 2012 or Windows Server 2012 R2 | Standard or Datacenter    | None   | 64-bit                  | Windows PowerShell 3.0 or higher | .NET Framework 4.5 |

## Step 2: Deploy the settings storage location

You’ll need to deploy a settings storage location, a standard network share where user settings are stored in a settings package file. When you create the settings storage share, you should limit access to users that require it. For more information, see [Deploy a UE-V Settings Storage Location](uev-deploy-required-features.md#deploy-a-ue-v-settings-storage-location).

**Create a network share**

1.  Create a new security group and add UE-V users to the group.

2.  Create a new folder on the centrally located computer that stores the UE-V settings packages, and then grant the UE-V users access with group permissions to the folder. The administrator who supports UE-V must have permissions to this shared folder.

3.  Assign UE-V users permission to create a directory when they connect. Grant full permission to all subdirectories of that directory, but block access to anything above.

4.  Set the following share-level Server Message Block (SMB) permissions for the settings storage location folder.

    | **User account**             | **Recommended permissions** |
    |------------------------------|-----------------------------|
    | Everyone                     | No permissions              |
    | Security group of UE-V users | Full control                |

5.  Set the following NTFS file system permissions for the settings storage location folder.

    | **User account**             | **Recommended permissions**                       | **Folder**                |
    |------------------------------|---------------------------------------------------|---------------------------|
    | Creator/owner                | Full control                                      | Subfolders and files only |
    | Security group of UE-V users | List folder/read data, create folders/append data | This folder only          |

**Security Note**&nbsp;&nbsp;If you create the settings storage share on a computer running a Windows Server operating system, configure UE-V to verify that either the local Administrators group or the current user is the owner of the folder where settings packages are stored. To enable this additional security, specify this setting in the Windows Server Registry Editor:

1.  Add a **REG\_DWORD** registry key named **"RepositoryOwnerCheckEnabled"** to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\UEV\\Agent\\Configuration**.

2.  Set the registry key value to *1*.

## Step 3: Enable and configure the UE-V service on user devices

For evaluation purposes, enable the service on at least two devices that belong to the same user in your test environment.

The UE-V service is the client-side component that captures user-personalized application and Windows settings and saves them in settings packages. Settings packages are built, locally stored, and copied to the settings storage location.

Before enabling the UE-V service, you'll need to register the UE-V templates for first use. In a PowerShell window, type `Register-UevTemplate [TemplateName]` where **TemplateName** is the name of the UE-V template you want to register, and press ENTER. For instance, to register all built-in UE-V templates, use the following PowerShell Command:
`Get-childItem c:\programdata\Microsoft\UEV\InboxTemplates\*.xml|% {Register-UevTemplate $_.Fullname}`

A storage path must be configured on the client-side to tell where the personalized settings are stored. 

**To set the storage path for UE-V with Group Policy**

1.  Open the device’s **Group Policy Editor**.

2.  Navigate to **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft** **User Experience Virtualization**.

3.  Double click **Settings storage path**.

4.  Select **Enabled**, fill in the **Settings storage path**, and click **OK**.

    - Ensure that the storage path ends with **%username%** to ensure that each user gets a unique folder.

**To set the storage path for UE-V with PowerShell**

1.  In a PowerShell window, type **Set-uevConfiguration -SettingsStoragePath [StoragePath]** where **[StoragePath]** is the path to the location created in step 2 followed by **\%username%**.

    - Ensure that the storage path ends with **%username%** to ensure that each user gets a unique folder.

With Windows 10, version 1607 and later, the UE-V service is installed on user devices when the operating system is installed. Enable the service to start using UE-V. You can enable the service with the Group Policy editor or with Windows PowerShell.

**To enable the UE-V service with Group Policy**

1.  Open the device’s **Group Policy Editor**.

2.  Navigate to **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft** **User Experience Virtualization**.

3.  Double click **Use User Experience Virtualization (UE-V)**.

4.  Select **Enabled** and click **OK**.

5.  Restart the device.

**To enable the UE-V service with Windows PowerShell**

1.  In a PowerShell window, type **Enable-UEV** and press ENTER.

2.  Restart the device.

3.  In a PowerShell window, type **Get-UEVStatus** and press ENTER to verify that the UE-V service was successfully enabled.

## Step 4: Test your UE-V evaluation deployment

You’re ready to run a few tests on your UE-V evaluation deployment to see how UE-V works.

1.  On the first device (Computer A), make one or more of these changes:

    -   Open Windows Desktop and move the taskbar to a different location in the window.

    -   Change the default fonts.

    -   Open Notepad and set format -&gt; word wrap **on**.

    -   Change the behavior of any Windows application, as detailed in [Managing UE-V settings location templates using Windows PowerShell and WMI](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md).

    -   Disable Microsoft Account settings synchronization and roaming profiles.

2.  Log off Computer A. Settings are saved in a UE-V settings package when users lock, logoff, exit an application, or when the sync provider runs (every 30 minutes by default).

3.  Log in to the second device (Computer B) as the same user as Computer A.

4.  Open Windows Desktop and verify that the taskbar location matches that of Computer A. Verify that the default fonts match and that NotePad is set to **word wrap on**. Also verify the change you made to any Windows applications.

5.  You can change the settings in Computer B back to the original Computer A settings. Then log off Computer B and log in to Computer A to verify the changes.



For UE-V issues, use the [UE-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-us/home?forum=mdopuev&filter=alltypes&sort=lastpostdesc).

## Other resources for this feature

-   [User Experience Virtualization overview](uev-for-windows.md)

-   [Prepare a UE-V Deployment](uev-prepare-for-deployment.md)

-   [Upgrade to UE-V for Windows 10](uev-upgrade-uev-from-previous-releases.md)

-   [Administering UE-V ](uev-administering-uev.md)

-   [Troubleshooting UE-V ](uev-troubleshooting.md)

-   [Technical Reference for UE-V](uev-technical-reference.md)
