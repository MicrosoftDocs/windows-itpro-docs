---
title: Create UE-V Settings Location Templates with the UE-V Generator
description: Create UE-V Settings Location Templates with the UE-V Generator
author: levinec
ms.assetid: b8e50e2f-0cc6-4f74-bb48-c471fefdc7d8
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Create UE-V Settings Location Templates with the UE-V Generator


Microsoft User Experience Virtualization (UE-V) uses *settings location templates* to roam application settings between user computers. Some standard settings location templates are included with User Experience Virtualization. You can also create, edit, or validate custom settings location templates with the UE-V Generator.

The UE-V Generator monitors an application to discover and capture the locations where the application stores its settings. The application that is being monitored must be a traditional application. The UE-V Generator cannot create a settings location template from the following application types:

-   Virtualized applications

-   Application offered through terminal services

-   Java applications

-   Windows 8 applications

**Note**  
UE-V templates cannot be created from virtualized applications or terminal services applications. However, settings synchronized using the templates can be applied to those applications. To create templates that support Virtual Desktop Infrastructure (VDI) and terminal services applications, open a Windows Installer File (.msi) version of the application with UE-V Generator.

 

**Excluded Locations**

The discovery process excludes locations which commonly store application software files that do not roam well between user computers or environments. The following are excluded:

-   HKEY\_CURRENT\_USER registry keys and files to which the logged-on user cannot write values

-   HKEY\_CURRENT\_USER registry keys and files associated with the core functionality of the Windows operating system

-   All registry keys located in the HKEY\_LOCAL\_MACHINE hive

-   Files located in Program Files directories

-   Files located in Users \\ \[User name\] \\ AppData \\ LocalLow

-   Windows operating system files located in %systemroot%

If registry keys and files stored in these excluded locations are required in order to roam application settings, administrators can manually add the locations to the settings location template during the template creation process.

## Create UE-V templates


Use the UE-V Generator to create settings location templates for line-of-business applications or other applications. After the template for an application is created, you can deploy the template to computers so users can roam the settings for that application.

**To create a UE-V settings location template with the UE-V Generator**

1.  Click **Start**, click **All Programs**, click **Microsoft User Experience Virtualization**, and then click **Microsoft User Experience Virtualization Generator**.

2.  Click **Create a settings location template**.

3.  Specify the application. Browse to the file path of the application (.exe) or the application shortcut (.lnk) for which you want to create a settings location template. Specify the command line arguments, if any, and working directory, if any. Click **Next** to continue.

    **Note**  
    Before the application is started, the system displays a prompt for **User Account Control**. Permission is required to monitor the registry and file locations that the application uses to store settings.

     

4.  After the application starts, close the application. The UE-V Generator records the locations where the application stores its settings.

5.  After the process is complete, click **Next** to continue.

6.  Review and select the check boxes next to the appropriate registry settings locations and settings file locations to roam for this application. The list includes the following two categories for settings locations:

    -   **Standard**: Application settings that are stored in the registry under the HKEY\_CURRENT\_USER keys or in the file folders under \\ **Users** \\ \[User name\] \\ **AppData** \\ **Roaming**. The UE-V Generator includes these settings by default.

    -   **Nonstandard**: Application settings that are stored outside the locations specified in the best practices for settings data storage (optional). These include files and folders under **Users** \\ \[User name\] \\ **AppData** \\ **Local**. Review these locations to determine whether to include them in the settings location template. Select the locations check boxes to include them.

    Click **Next** to continue.

7.  Review and edit any **Properties**, **Registry** locations, and **Files** locations for the settings location template.

    -   Edit the following properties on the **Properties** tab:

        -   **Application Name**: The application name written in the description of the program files properties.

        -   **Program name**: The name of the program taken from the program file properties. This name usually has the .exe extension.

        -   **Product version**: The product version number of the .exe file of the application. This property, in conjunction with the File version, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, the settings location template will apply to all versions of the product.

        -   **File version**: The file version number of the.exe file of the application. This property, in conjunction with the Product version, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, the settings location template will apply to all versions of the program.

        -   **Template author name** (optional): The name of the settings location template author.

        -   **Template author email** (optional): The email address of the settings location template author.

    -   The **Registry** tab lists the **Key** and **Scope** of the registry locations that are included in the settings location template. Edit the registry locations by use of the **Tasks** drop-down menu. Tasks include adding new keys, editing the name or scope of existing keys, deleting keys, and browsing the registry where the keys are located. Use the **All Settings** scope to include all the registry settings under the specified key. Use the **All Settings and Subkeys** to include all the registry settings under the specified key, subkeys, and subkey settings.

    -   The **Files** tab lists the file path and file mask of the file locations included in the settings location template. Edit the file locations by use of the **Tasks** drop-down menu. Tasks for file locations include adding new files or folder locations, editing the scope of existing files or folders, deleting files or folders, and opening the selected location in Windows Explorer. Leave the file mask empty to include all files in the specified folder.

8.  Click **Create** and save the settings location template on the computer.

9.  Click **Close** to close the Settings Template Wizard. Exit the UE-V Generator application.

    After you have created the settings location template for an application, you should test the template. Deploy the template in a lab environment before putting it into production in the enterprise.

## Related topics


[Working with Custom UE-V Templates and the UE-V Generator](working-with-custom-ue-v-templates-and-the-ue-v-generator.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





