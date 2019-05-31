---
title: Working with Custom UE-V Templates and the UE-V Generator
description: Working with Custom UE-V Templates and the UE-V Generator
author: levinec
ms.assetid: 7bb2583a-b032-4800-9bf9-eb33528e1d0d
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Working with Custom UE-V Templates and the UE-V Generator


In order to roam applications between user computers, Microsoft User Experience Virtualization (UE-V) uses *settings location templates*. Some settings location templates are included with User Experience Virtualization. You can also create, edit, or validate custom settings location templates with the UE-V Generator.

The UE-V Generator monitors an application to discover and capture the locations where the application stores its settings. The application being monitored must be a traditional application. The UE-V Generator cannot create a settings location template for the following application types:

-   Virtualized applications

-   Application offered through terminal services

-   Java applications

-   Windows 8 applications

## Create UE-V Settings Location Templates with the UE-V Generator


How to use the UE-V Generator to create settings location templates.

[Create UE-V Settings Location Templates with the UE-V Generator](create-ue-v-settings-location-templates-with-the-ue-v-generator.md)

## Edit UE-V Settings Location Templates with the UE-V Generator


How to use the UE-V Generator to edit settings location templates.

[Edit UE-V Settings Location Templates with the UE-V Generator](edit-ue-v-settings-location-templates-with-the-ue-v-generator.md)

## Validate UE-V Settings Location Templates with UE-V Generator


How to use the UE-V Generator to validate settings location templates modified outside the UE-V Generator.

[Validate UE-V Settings Location Templates with UE-V Generator](validate-ue-v-settings-location-templates-with-ue-v-generator.md)

## <a href="" id="bkmk-standardnonstandardsettingslocations"></a>Standard and Nonstandard settings locations


The UE-V Generator helps you identify where applications look for settings files and registry settings that applications use to store settings information. You can use the UE-V Generator to open the application as part of the discovery process to capture settings in standard locations. Standard locations include the following:

-   **Registry Settings** – Registry locations under **HKEY\_CURRENT\_USER**

-   **Application Settings Files** – Files stored under \\ **Users** \\ \[User name\] \\ **AppData** \\ **Roaming**

The UE-V Generator excludes locations which commonly store application software files do not roam well between user computers or environments. The UE-V Generator excludes these locations. Excluded locations are as follows:

-   HKEY\_CURRENT\_USER registry keys and files to which the logged-on user cannot write values

-   HKEY\_CURRENT\_USER registry keys and files that are associated with the core functionality of the Windows operating system

-   All registry keys that are located in the HKEY\_LOCAL\_MACHINE hive (Requires Administrator rights and might require UAC agreement to set)

-   Files that are located in Program Files directories (Requires Administrator rights and might require UAC agreement to set)

-   Files located in Users \\ \[User name\] \\ AppData \\ LocalLow

-   Windows operating system files that are located in %systemroot% (Requires Administrator rights and might require UAC agreement to set)

If registry keys and files stored in these locations are required in order to roam application settings, you can manually add the excluded locations to the settings location template during the template creation process.

## Other resources for this product


[Operations for UE-V 1.0](operations-for-ue-v-10.md)

[Administering UE-V 1.0](administering-ue-v-10.md)

 

 





