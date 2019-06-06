---
title: Deploy UE-V 2.x for Custom Applications
description: Deploy UE-V 2.x for Custom Applications
author: levinec
ms.assetid: f7cb089f-d764-4a93-82b6-926fe0385a23
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/19/2016
---


# Deploy UE-V 2.x for Custom Applications


Microsoft User Experience Virtualization (UE-V) 2.0. 2.1, and 2.1 SP1 use XML files called **settings location templates** to monitor and synchronize desktop application settings and Windows desktop settings between user computers. By default, some settings location templates are included in UE-V. But if you want to synchronize settings for desktop applications other than those included in the default templates, you can create your own custom settings location templates by using the UE-V Generator.

Once you have read through the planning material in [Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md) and have decided that you want to synchronize settings for custom applications (third-party, line-of-business, etc.), you will deploy the features of UE-V as described in this topic. To start, here are the main steps required to synchronize settings for custom applications:

-   [Install the UEV Generator](#uevgen)

    Use the UEV Generator to create custom XML settings location templates.

-   [Configure a UE-V settings template catalog](#deploycatalogue)

    You can define this path where custom settings location templates are stored.

-   [Create custom settings location templates](#createcustomtemplates)

    These custom templates let users sync settings for custom applications.

-   [Deploy the custom settings location templates](#deploycustomtemplates)

    After you test the custom template to ensure that settings are synced correctly, you can deploy these templates in one of these ways:

    -   Through your existing deployment infrastructure, such as Configuration Manager

    -   By using Group Policy preferences

    -   [Deploy a UE-V settings template catalog](#deploycatalogue)

    **Note**  
    Templates that are deployed by using ESD or Group Policy must be registered with UE-V Windows Management Instrumentation (WMI) or Windows PowerShell.

     

## Prepare to Deploy UE-V 2.x for Custom Applications


Before you start deploying the UE-V features that handle custom applications, there are just a couple things to review.

### The UE-V Generator

The UE-V Generator monitors an application to discover and capture the locations where the application stores its settings. The application that is monitored must be a traditional application. You use the UE-V Generator to create settings location templates, but it cannot create a settings location template from these application types:

-   Virtualized applications

-   Applications that are offered through Terminal Services

-   Java applications

-   Windows apps

**Note**  
UE-V settings location templates cannot be created from virtualized applications or Terminal Services applications. However, settings that are synchronized by using the templates can be applied to those applications. To create templates that support Virtual Desktop Infrastructure (VDI) and Terminal Services applications, open a version of the Windows Installer (.msi) package of the application by using the UE-V Generator. For more information about synchronizing settings for virtual applications, see [Using UE-V 2.x with Application Virtualization Applications](using-ue-v-2x-with-application-virtualization-applications-both-uevv2.md).

 

**Excluded Locations:** The discovery process excludes locations that commonly store application software files that do not synchronize settings well between user computers or computing environments. By default, these are excluded:

-   HKEY\_CURRENT\_USER registry keys and files to which the logged-on user cannot write values

-   HKEY\_CURRENT\_USER registry keys and files that are associated with the core functionality of the Windows operating system

-   All registry keys that are located in the HKEY\_LOCAL\_MACHINE hive

-   Files that are located in Program Files directories

-   Files that are located in Users \\ \[User name\] \\ AppData \\ LocalLow

-   Windows operating system files that are located in %Systemroot%

If registry keys and files that are stored in excluded locations are required to synchronize application settings, you can manually add the locations to the settings location template during the template creation process.
However, only changes to the HKEY\_CURRENT\_USER hive will be sync-ed.

### Replace the default Microsoft templates

The UE-V Agent installs a default group of settings location templates for common Microsoft applications and Windows settings. If you customize these templates, or create settings location templates to synchronize settings for custom applications, the UE-V Agent can be configured to use a settings template catalog to store the templates. In this case, you will need to include the default templates along with the custom templates in the settings template catalog.

When you [Deploy a UE-V Agent](https://technet.microsoft.com/library/dn458891.aspx#agent), you can use the command-line parameter `RegisterMSTemplates` to disable the registration of the default Microsoft templates.

When you use Group Policy to configure the settings template catalog path, you can choose to replace the default Microsoft templates. If you configure the policy settings to replace the default Microsoft templates, all of the default Microsoft templates that are installed by the UE-V Agent are deleted and only the templates that are located in the settings template catalog are used. The UE-V Agent configuration setting parameter `RegisterMSTemplates` must be set to *true* in order to override the default Microsoft template.

**Note**  
If you disable this policy setting after it has been enabled, the UE-V Agent does not restore the default Microsoft templates.

 

If there are customized templates in the settings template catalog that use the same ID as the default Microsoft templates, and the UE-V Agent is not configured to replace the default Microsoft templates, the Microsoft templates are ignored.

You can also replace the default templates by using the UE-V Windows PowerShell features. To replace the default Microsoft template with Windows PowerShell, unregister all of the default Microsoft templates, and then register the customized templates.

**Note**  
Old settings packages remain in the settings storage location even if you deploy new settings location templates for an application. These packages are not read by the agent, but neither are they automatically deleted.

 

## <a href="" id="uevgen"></a>Install the UEV 2.x Generator


Install the Microsoft User Experience Virtualization (UE-V) 2.0 Generator on a computer that you can then use to create a custom settings location template. This computer should have the applications installed for which custom settings location templates are to be generated.

**To install the UE-V Generator**

1.  As a user with local administrator rights, locate the UE-V Generator installation file **ToolSetup.exe** provided with the UE-V software. Or, if you know the computer architecture, you can run the appropriate Windows Installer (.msi) file, **ToolsSetupx64.msi** or **ToolsSetupx86.msi**.

2.  Double-click the installation file. The User Experience Virtualization Generator Setup wizard opens. Click **Next** to continue.

3.  Accept the Microsoft Software License Terms, and then click **Next**.

4.  Click the options for Microsoft Updates and the Customer Experience Improvement Program.

5.  Select the destination folder in which to install the UE-V Generator, and then click **Next**.

6.  Click **Install** to begin the installation.

    **Note**  
    A prompt for **User Account Control** appears before the application is installed. Permission is required to install the UE-V Generator.

     

7.  Click **Finish** to close the wizard after the installation is finished. You must restart your computer before you can run the UE-V Generator.

    To verify that the installation was successful, click **Start**, click **All Programs**, click **Microsoft User Experience Virtualization**, and then click **Microsoft User Experience Virtualization Generator**.

    **Note**  
    The UE-V 2 Generator can only be used to create templates for UE-V 2 Agents. In a mixed deployment of UE-V 1.0 Agents and UE-V 2 Agents, you should continue to use the UE-V 1.0 Generator until you have upgraded all UE-V Agents.

     

## <a href="" id="deploycatalogue"></a>Deploy a Settings Template Catalog


The User Experience Virtualization settings template catalog is a folder path on UE-V computers or a Server Message Block (SMB) network share that stores all the custom settings location templates. A scheduled task in the UE-V Agent checks this location one time each day and updates its synchronization behavior, based on the templates in this folder.

The UE-V Agent registers templates that were added or updated in this folder after the last time that the folder was checked and unregisters templates that are removed. By default, templates are registered and unregistered one time per day at 3:30 A.M. local time by the Task Scheduler and at system startup. To customize the frequency of this scheduled task, see [Changing the Frequency of UE-V 2.x Scheduled Tasks](changing-the-frequency-of-ue-v-2x-scheduled-tasks-both-uevv2.md).

You can configure the settings template catalog path by using the installation command-line options, Group Policy, WMI, or Windows PowerShell. Templates that are stored at the settings template catalog path are automatically registered and unregistered by a scheduled task.

**To configure the settings template catalog for UE-V 2.x**

1.  Create a new folder on the computer that stores the UE-V settings template catalog.

2.  Set the following share-level (SMB) permissions for the settings template catalog folder.

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
    <td align="left"><p>Domain Computers</p></td>
    <td align="left"><p>Read Permission Levels</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Administrators</p></td>
    <td align="left"><p>Read/Write Permission Levels</p></td>
    </tr>
    </tbody>
    </table>

     

3.  Set the following NTFS file system permissions for the settings template catalog folder.

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">User account</th>
    <th align="left">Recommended permissions</th>
    <th align="left">Apply to</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Creator/Owner</p></td>
    <td align="left"><p>Full Control</p></td>
    <td align="left"><p>This Folder, Subfolders and Files</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Domain Computers</p></td>
    <td align="left"><p>List Folder Contents and Read</p></td>
    <td align="left"><p>This Folder, Subfolders and Files</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>No Permissions</p></td>
    <td align="left"><p>No Permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Administrators</p></td>
    <td align="left"><p>Full Control</p></td>
    <td align="left"><p>This Folder, Subfolders and Files</p></td>
    </tr>
    </tbody>
    </table>

     

4.  Click **OK** to close the dialog boxes.

At a minimum, the network share must grant permissions for the Domain Computers group. In addition, grant access permissions for the network share folder to administrators who are to manage the stored templates.

## <a href="" id="createcustomtemplates"></a>Create Custom Settings Location Templates


Use the UE-V Generator to create settings location templates for line-of-business applications or other custom applications. After the template for an application is created, you can deploy it to computers so that settings are synchronized for that application.

**To create a UE-V settings location template with the UE-V Generator**

1.  Click **Start**, click **All Programs**, click **Microsoft User Experience Virtualization**, and then click **Microsoft User Experience Virtualization Generator**.

2.  Click **Create a settings location template**.

3.  Specify the application. Browse to the file path of the application (.exe) or the application shortcut (.lnk) for which you want to create a settings location template. Specify the command-line arguments, if any, and working directory, if any. Click **Next** to continue.

    **Note**  
    Before the application is started, the system displays a prompt for **User Account Control**. Permission is required to monitor the registry and file locations that the application uses to store settings.

     

4.  After the application starts, close the application. The UE-V Generator records the locations where the application stores its settings.

5.  After the process is completed, click **Next** to continue.

6.  Review and select the check boxes that are next to the appropriate registry settings locations and settings file locations to synchronize for this application. The list includes the following two categories for settings locations:

    -   **Standard**: Application settings that are stored in the registry under the HKEY\_CURRENT\_USER keys or in the file folders under \\ **Users** \\ \[User name\] \\ **AppData** \\ **Roaming**. The UE-V Generator includes these settings by default.

    -   **Nonstandard**: Application settings that are stored outside the locations are specified in the best practices for settings data storage (optional). These include files and folders under **Users** \\ \[User name\] \\ **AppData** \\ **Local**. Review these locations to determine whether to include them in the settings location template. Select the locations check boxes to include them.

    Click **Next** to continue.

7.  Review and edit any **Properties**, **Registry** locations, and **Files** locations for the settings location template.

    -   Edit the following properties on the **Properties** tab:

        -   **Application Name**: The application name that is written in the description of the program files properties.

        -   **Program name**: The name of the program that is taken from the program file properties. This name usually has the .exe file name extension.

        -   **Product version**: The product version number of the .exe file of the application. This property, in conjunction with the **File version**, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, the settings location template applies to all versions of the product.

        -   **File version**: The file version number of the .exe file of the application. This property, in conjunction with the **Product version**, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, the settings location template applies to all versions of the program.

        -   **Template author name** (optional): The name of the settings location template author.

        -   **Template author email** (optional): The email address of the settings location template author.

    -   The **Registry** tab lists the **Key** and **Scope** of the registry locations that are included in the settings location template. Edit the registry locations by using the **Tasks** drop-down menu. Tasks enable you to add new keys, edit the name or scope of existing keys, delete keys, and browse the registry where the keys are located. Use the **All Settings** scope to include all the registry settings under the specified key. Use the **All Settings and Subkeys** to include all the registry settings under the specified key, subkeys, and subkey settings.

    -   The **Files** tab lists the file path and file mask of the file locations that are included in the settings location template. Edit the file locations by use of the **Tasks** drop-down menu. Tasks for file locations enable you to add new files or folder locations, edit the scope of existing files or folders, delete files or folders, and open the selected location in Windows Explorer. Leave the file mask empty to include all files in the specified folder.

8.  Click **Create**, and then click **Save** to save the settings location template on the computer.

9.  Click **Close** to close the Settings Template Wizard. Exit the UE-V Generator application.

    After you have created the settings location template for an application, you should test the template. Deploy the template in a lab environment before you put it into production in the enterprise.

[Application Template Schema Reference for UE-V](https://technet.microsoft.com/library/dn763947.aspx) details the XML structure of the UE-V settings location template and provides guidance for editing these files.

## <a href="" id="deploycustomtemplates"></a>Deploy the Custom Settings Location Templates


After you create a settings location template with the UE-V Generator, you should test it to ensure that the application settings are synchronized correctly. You can then safely deploy the settings location template to computers in the enterprise.

Settings location templates can be deployed by using one of these methods:

-   An enterprise software distribution (ESD) system such as System Center Configuration Manager

-   Group Policy preferences

-   A UE-V settings template catalog

Templates that are deployed by using an ESD system or Group Policy Objects must be registered through UE-V Windows Management Instrumentation (WMI) or Windows PowerShell. Templates that are stored in the settings template catalog location are automatically registered by the UE-V Agent.

**To use the settings template catalog path to deploy UE-V settings location templates**

1.  Browse to the network share folder that is defined as the settings template catalog.

2.  Add, remove, or update settings location templates in the settings template catalog to reflect the UE-V Agent template configuration that you want for UE-V computers.

    **Note**  
    Templates on computers are updated daily. The update is based on changes to the settings template catalog.

     

3.  To manually update templates on a computer that runs the UE-V Agent, open an elevated command prompt, and browse to **%Program Files%\\Microsoft User Experience Virtualization \\ Agent \\ &lt;x86 or x64 &gt;**, and then run **ApplySettingsTemplateCatalog.exe**.

    **Note**  
    This program runs automatically during computer startup and daily at 3:30 A. M. to gather any new templates that were recently added to the catalog.

     






## Related topics


[Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md)

[Deploy Required Features for UE-V 2.x](deploy-required-features-for-ue-v-2x-new-uevv2.md)

 

 





