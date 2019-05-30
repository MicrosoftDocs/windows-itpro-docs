---
title: Deploy required UE-V features
description: Deploy required UE-V features
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.topic: article
---

# Deploy required UE-V features

**Applies to**
-   Windows 10, version 1607

To get up and running with User Experience Virtualization (UE-V), install and configure the following features.

-   [Deploy a settings storage location](#deploy-a-ue-v-settings-storage-location) that is accessible to end users.

    This is a standard network share that stores and retrieves user settings.

-   [Choose the configuration method for UE-V](#choose-the-configuration-method-for-ue-v)

    You can deploy and configure UE-V with common management tools including group policy, Configuration Manager, or Windows Management Infrastructure and PowerShell.

-   [Enable the UE-V service](#enable-the-ue-v-service) on user devices.

    With Windows 10, version 1607, UE-V is installed automatically. You need to enable the UE-V service on each user device you want to include in your UE-V environment.

The topics in this section describe how to deploy these features.

## Deploy a UE-V Settings Storage Location

UE-V requires a location in which to store user settings in settings package files. You can configure this settings storage location in one of these ways:

-   Create your own settings storage location

-   Use existing Active Directory for your settings storage location

> **Note**&nbsp;&nbsp; As a matter of [performance and capacity planning](uev-prepare-for-deployment.md#performance-and-capacity-planning) and to reduce problems with network latency, create settings storage locations on the same local networks where the users’ devices reside. We recommend 20 MB of disk space per user for the settings storage location.

### Create a UE-V Settings Storage Location

Before you define the settings storage location, you must create a root directory with read/write permissions for users who store settings on the share. The UE-V service creates user-specific folders under this root directory.

The settings storage location is defined by setting the SettingsStoragePath configuration option, which you can configure by using one of these methods:

-   Through [Group Policy](uev-configuring-uev-with-group-policy-objects.md) settings

-   With the [System Center Configuration Pack](uev-configuring-uev-with-system-center-configuration-manager.md) for UE-V

-   With [Windows PowerShell or Windows Management Instrumentation (WMI)](uev-administering-uev-with-windows-powershell-and-wmi.md)

    The path must be in a universal naming convention (UNC) path of the server and share. For example, **\\\\Server\\Settingsshare\\**. This configuration option supports the use of variables to enable specific synchronization scenarios. For example, you can use the %username%\\%computername% variables to preserve the end user settings experience in these scenarios:

-   End users that use multiple physical devices in your enterprise

-   Enterprise computers that are used by multiple end users

The UE-V service dynamically creates a user-specific settings storage path, with a hidden system folder named **SettingsPackages**, based on the configuration setting of **SettingsStoragePath**. The service reads and writes settings to this location as defined by the registered UE-V settings location templates.

**UE-V settings are determined by a "Last write wins" rule:** If the settings storage location is the same for a user with multiple managed computers, one UE-V service reads and writes to the settings location independently of services running on other computers. The last written settings and values are the ones applied when the service next reads from the settings storage location.

**Deploy the settings storage location:** Follow these steps to define the settings storage location rather than using your existing Active Directory agent. You should limit access to the settings storage share to those users that require it, as shown in the tables below.

**To deploy the UE-V network share**

1.  Create a new security group for UE-V users.

2.  Create a new folder on the centrally located computer that stores the UE-V settings packages, and then grant UE-V users access with group permissions to the folder. The administrator who supports UE-V must have permissions to this shared folder.

3.  Set the following share-level Server Message Block (SMB) permissions for the settings storage location folder.

    | **User account**             | **Recommended permissions** |
    |------------------------------|-----------------------------|
    | Everyone                     | No permissions              |
    | Security group of UE-V users | Full control                |

4.  Set the following NTFS file system permissions for the settings storage location folder.

    | **User account**             | **Recommended permissions**                       | **Folder**                |
    |------------------------------|---------------------------------------------------|---------------------------|
    | Creator/owner                | Full control                                      | Subfolders and files only |
    | Security group of UE-V users | List folder/read data, create folders/append data | This folder only          |

With this configuration, the UE-V service creates and secures a Settingspackage folder while it runs in the context of the user, and grants each user permission to create folders for settings storage. Users receive full control to their Settingspackage folder while other users cannot access it.

**Note**
If you create the settings storage share on a computer running a Windows Server operating system, configure UE-V to verify that either the local Administrators group or the current user is the owner of the folder where settings packages are stored. To enable this additional security, specify this setting in the Windows Server Registry Editor:

1.  Add a **REG\_DWORD** registry key named **"RepositoryOwnerCheckEnabled"** to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\UEV\\Agent\\Configuration**.

2.  Set the registry key value to *1*.

### Use Active Directory with UE-V

The UE-V service uses Active Directory (AD) by default if you don’t define a settings storage location. In these cases, the UE-V service dynamically creates the settings storage folder under the root of the AD home directory of each user. However, if a custom directory setting is configured in AD, then that directory is used instead.

## Choose the Configuration Method for UE-V

You’ll need to decide which configuration method you'll use to manage UE-V after deployment since this will be the configuration method you use to deploy the UE-V Agent. Typically, this is the configuration method that you already use in your environment, such as Windows PowerShell or Configuration Manager.

You can configure UE-V before, during, or after you enable the UE-V service on user devices, depending on the configuration method that you use.

-   [**Group Policy**](uev-configuring-uev-with-group-policy-objects.md) You can use your existing Group Policy infrastructure to configure UE-V before or after you enable the UE-V service. The UE-V Group Policy ADMX template enables the central management of common UE-V service configuration options and includes settings to configure UE-V synchronization.

    >**Note**  Starting with Windows 10, version 1607, UE-V ADMX templates are installed automatically.

    Group Policy ADMX templates configure the synchronization settings for the UE-V service and enable the central management of common UE-V service configuration settings by using an existing Group Policy infrastructure.

    Supported operating systems for the domain controller that deploys the Group Policy Objects include:

    Windows Server 2012 and Windows Server 2012 R2

-   [**Configuration Manager**](uev-configuring-uev-with-system-center-configuration-manager.md) The UE-V Configuration Pack lets you use the Compliance Settings feature of System Center Configuration Manager to apply consistent configurations across sites where UE-V and Configuration Manager are installed.

-   [**Windows PowerShell and WMI**](uev-administering-uev-with-windows-powershell-and-wmi.md) You can use scripted commands for Windows PowerShell and Windows Management Instrumentation (WMI) to modify the configuration of the UE-V service.

>**Note**
Registry modification can result in data loss, or the computer becomes unresponsive. We recommend that you use other configuration methods.

## Enable the UE-V service

The UE-V service is the client-side component that captures user-personalized application and Windows settings and saves them in settings packages. Settings packages are built, locally stored, and copied to the settings storage location.

Before enabling the UE-V service, you need to register the UE-V templates for first time use. In a PowerShell window, type **register-&lt;TemplateName&gt;** where **TemplateName** is the name of the UE-V template you want to register, and press ENTER.

>**Note**
With Windows 10, version 1607, you must register UE-V templates for all inbox and custom templates. This provides flexibility for only deploying the required templates.

With Windows 10, version 1607 and later, the UE-V service is installed on user devices. Enable the service to start using UE-V. You can enable the service with the Group Policy editor or with Windows PowerShell.

**To enable the UE-V service with Group Policy**

1.  Open the device’s **Group Policy Editor**.

2.  Navigate to **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft** **User Experience Virtualization**.

3.  Run **Enable UEV**.

4.  Restart the device.

**To enable the UE-V service with Windows PowerShell**

1.  In a PowerShell window, type **Enable-UEV** and press ENTER.

2.  Restart the device.

3.  In a PowerShell window, type **Get-UEVStatus** and press ENTER to verify that the UE-V service was successfully enabled.





## Related topics

[Prepare a UE-V deployment](uev-prepare-for-deployment.md)

[Deploy UE-V for use with custom applications](uev-deploy-uev-for-custom-applications.md)

[Upgrade to UE-V for Windows 10](uev-upgrade-uev-from-previous-releases.md)

