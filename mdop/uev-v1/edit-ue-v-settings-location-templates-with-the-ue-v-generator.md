---
title: Edit UE-V Settings Location Templates with the UE-V Generator
description: Edit UE-V Settings Location Templates with the UE-V Generator
author: levinec
ms.assetid: da78f9c8-1624-4111-8c96-79db7224bd0b
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Edit UE-V Settings Location Templates with the UE-V Generator


Use the Microsoft User Experience Virtualization (UE-V) Generator to edit settings location templates. When the revised settings are added to the templates using the UE-V Generator, the version information within the template is automatically updated to ensure that any existing templates deployed in the enterprise are updated correctly.

**How to edit a UE-V settings location template with the UE-V Generator**

1.  Click **Start**, click **All Programs**, click **Microsoft User Experience Virtualization**, and then click **Microsoft User Experience Virtualization Generator**.

2.  Click **Edit a settings location template**.

3.  In the list of recently used templates, select the template to be edited. Alternatively, **Browse** to the settings template file. Click **Next** to continue.

4.  Review the **Properties**, **Registry** locations, and **Files** locations for the settings template. Edit as needed.

    -   The **Properties** tab allows you to view and edit the following properties:

        -   **Application name**: The application name written in the description of the program file properties.

        -   **Program name**: The name of the program taken from the program file properties. This name usually has the .exe extension.

        -   **Product version**: The product version number of the .exe file of the application. This property, together with the **File version**, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, then the settings location template will apply to all versions of the product.

        -   **File version**: The file version number of the.exe file of the application. This property, along with the **Product version**, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, the settings location template will apply to all versions of the program.

        -   **Template author name** (optional): The name of the settings template author.

        -   **Template author email** (optional): The email address of the settings location template author.

    -   The **Registry** tab lists the **Key** and **Scope** of the registry locations that are included in the settings location template. You can edit the registry locations by use of the **Tasks** drop-down menu. Tasks include adding new keys, editing the name or scope of existing keys, deleting keys, and browsing the registry in which the keys are located. When you define the scope for the registry, you can use the **All Settings** scope to include all the registry settings under the specified key. Use **All Settings** and **Subkeys** to include all the registry settings under the specified key, subkeys, and subkey settings.

    -   The **Files** tab lists the file path and file mask of the file locations included in the settings location template. You can edit the file locations by use of the **Tasks** drop-down menu. Tasks for file locations include adding new files or folder locations, editing the scope of existing files or folders, deleting files or folders, and opening the selected location in Windows Explorer. To include all files in the specified folder, leave the file mask empty.

5.  Click **Save** to save the changes to the settings location template.

6.  Click **Close** to close the Settings Template Wizard. Exit the UE-V Generator application.

    After editing the settings location template for an application, you should test the template. Deploy the revised settings location template in a lab environment before putting it into production in the enterprise.

**How to manually edit a settings location template**

1.  Create a local copy of the settings location template (.xml file). UE-V settings location templates are .xml files identifying the locations where application store settings values.

2.  Open the settings location template file with an XML editor.

3.  Edit the settings location template file. All changes must conform to the UE-V schema file defined in SettingsLocationTempate.xsd. A copy of the .xsd file is located in `\ProgramData\Microsoft\UEV\Templates` by default.

4.  Save the settings location template file and close the XML editor.

5.  Validate the modified settings location template file with the UE-V Generator. For more information about validating with the UE-V Generator, see [Validate UE-V Settings Location Templates with UE-V Generator](validate-ue-v-settings-location-templates-with-ue-v-generator.md).

## Related topics


[Working with Custom UE-V Templates and the UE-V Generator](working-with-custom-ue-v-templates-and-the-ue-v-generator.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





