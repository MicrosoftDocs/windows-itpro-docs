---
title: Working with Custom UE-V Templates and the UE-V Template Generator
description: Working with Custom UE-V Templates and the UE-V Template Generator
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.topic: article
---


# Working with custom UE-V templates and the UE-V template generator

**Applies to**
-   Windows 10, version 1607

User Experience Virtualization (UE-V) uses XML files called ***settings location templates*** to monitor and synchronize application settings and Windows settings between user devices. By default, some settings location templates are included in UE-V. However, if you want to synchronize settings for desktop applications other than those included in the default templates, you can create your own custom settings location templates with the UE-V template generator. You can also edit or validate custom settings location templates with the UE-V template generator.

Use the UE-V template generator to monitor, discover, and capture the locations where Win32 applications store settings. The template generator does not create settings location templates for the following types of applications:

-   Virtualized applications
-   Applications that are offered through Terminal Services
-   Java applications
-   Windows applications

## Standard and non-standard settings locations

The UE-V template generator helps you identify where applications search for settings files and registry settings that applications use to store settings information. The generator discovers settings only in locations that are accessible to a standard user. Settings that are stored in other locations are excluded. 

Discovered settings are grouped into two categories: **Standard** and **Non-standard**. Standard settings are recommended for synchronization, and UE-V can readily capture and apply them. Non-standard settings can potentially synchronize settings but, because of the rules that UE-V uses, these settings might not consistently or dependably synchronize settings. These settings might depend on temporary files, result in unreliable synchronization, or might not be useful. These settings locations are presented in the UE-V template generator. You can choose to include or exclude them on a case-by-case basis.

The UE-V template generator opens the application as part of the discovery process. The generator can capture settings in the following locations:

-   **Registry Settings** – Registry locations under **HKEY\_CURRENT\_USER**

-   **Application Settings Files** – Files that are stored under \\ **Users** \\ \[User name\] \\ **AppData** \\ **Roaming**

The UE-V template generator excludes locations, which commonly store application software files, but do not synchronize well between user computers or environments. The UE-V template generator excludes these locations. Excluded locations are as follows:

-   HKEY\_CURRENT\_USER registry keys and files to which the logged-on user cannot write values

-   HKEY\_CURRENT\_USER registry keys and files that are associated with the core functionality of the Windows operating system

-   All registry keys that are located in the HKEY\_LOCAL\_MACHINE hive, which requires administrator rights and might require to set a User Account Control (UAC) agreement

-   Files that are located in Program Files directories, which requires administrator rights and might require to set a UAC agreement

-   Files that are located under Users \\ \[User name\] \\ AppData \\ LocalLow

-   Windows operating system files that are located in %Systemroot%, which requires administrator rights and might require to set a UAC agreement

If registry keys and files that are stored in these locations are required to synchronize application settings, you can manually add the excluded locations to the settings location template during the template creation process.

## <a href="" id="edit"></a>Edit settings location templates with the UE-V template generator

Use the UE-V template generator to edit settings location templates. When the revised settings are added to the templates with the UE-V template generator, the version information within the template is automatically updated to ensure that any existing templates that are deployed in the enterprise are updated correctly.

**To edit a UE-V settings location template with the UE-V template generator**

1.  Open the **Start** menu and navigate to **Windows Kits** > **Microsoft User Experience Virtualization (UE-V) Template Generator** to open the template generator.

2.  Click **Edit a settings location template**.

3.  In the list of recently used templates, select the template to be edited. Alternatively, click **Browse** to search for the settings template file. Click **Next** to continue.

4.  Review the **Properties**, **Registry** locations, and **Files** locations for the settings template. Edit as required.

    -   On the **Properties** tab, you can view and edit the following properties:

        -   **Application name** The application name that is written in the description of the program file properties.

        -   **Program name** The name of the program that is taken from the program file properties. This name usually has the .exe file name extension.

        -   **Product version** The product version number of the .exe file of the application. This property, together with the **File version**, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, then the settings location template applies to all versions of the product.

        -   **File version** The file version number of the .exe file of the application. This property, along with the **Product version**, helps determine which applications are targeted by the settings location template. This property accepts a major version number. If this property is empty, the settings location template applies to all versions of the program.

        -   **Template author name** (optional) The name of the settings template author.

        -   **Template author email** (optional) The email address of the settings location template author.

    -   The **Registry** tab lists the **Key** and **Scope** of the registry locations that are included in the settings location template. You can edit the registry locations by using the **Tasks** drop-down menu. In the Tasks menu, you can add new keys, edit the name or scope of existing keys, delete keys, and browse the registry in which the keys are located. When you define the scope for the registry, you can use the **All Settings** scope to include all the registry settings under the specified key. Use **All Settings** and **Subkeys** to include all the registry settings under the specified key, subkeys, and subkey settings.

    -   The **Files** tab lists the file path and file mask of the file locations that are included in the settings location template. You can edit the file locations by using the **Tasks** drop-down menu. In the **Tasks** menu for file locations, you can add new files or folder locations, edit the scope of existing files or folders, delete files or folders, and open the selected location in Windows Explorer. To include all files in the specified folder, leave the file mask empty.

5.  Click **Save** to save the changes to the settings location template.

6.  Click **Close** to close the Settings Template Wizard. Exit the UE-V template generator application.

    After you edit the settings location template for an application, you should test the template. Deploy the revised settings location template in a lab environment before you put it into production in the enterprise.

**How to manually edit a settings location template**

1.  Create a local copy of the settings location template .xml file. UE-V settings location templates are .xml files that identify the locations where application store settings values.

    >**Note**  
    A settings location template is unique because of the template **ID**. If you copy the template and rename the .xml file, template registration fails because UE-V reads the template **ID** tag in the .xml file to determine the name, not the file name of the .xml file. UE-V also reads the **Version** number to know if anything has changed. If the version number is higher, UE-V updates the template.

     
2.  Open the settings location template file with an XML editor.

3.  Edit the settings location template file. All changes must conform to the UE-V schema file that is defined in [SettingsLocationTempate.xsd](uev-application-template-schema-reference.md). By default, a copy of the .xsd file is located in \\ProgramData\\Microsoft\\UEV\\Templates.

4.  Increment the **Version** number for the settings location template.

5.  Save the settings location template file, and then close the XML editor.

6.  Validate the modified settings location template file by using the UE-V template generator.

7.  You must register the edited UE-V settings location template before it can synchronize settings between client computers. To register a template, open Windows PowerShell, and then run the following cmdlet: `update-uevtemplate [templatefilename]`. You can then copy the file to the settings storage catalog. The UE-V Agent on users’ computers should then update as scheduled in the scheduled task.

## <a href="" id="validate"></a>Validate settings location templates with the UE-V template generator


It is possible to create or edit settings location templates in an XML editor without using the UE-V template generator. If you do, you can use the UE-V template generator to validate that the new or revised XML matches the schema that has been defined for the template.

**To validate a UE-V settings location template with the UE-V template generator**

1.  Open the **Start** menu and navigate to **Windows Kits** > **Microsoft User Experience Virtualization (UE-V) Template Generator** to open the template generator.

2.  Click **Validate a settings location template**.

3.  In the list of recently used templates, select the template to be edited. Alternatively, you can **Browse** to the settings template file. Click **Next** to continue.

4.  Click **Validate** to continue.

5.  Click **Close** to close the Settings Template Wizard. Exit the UE-V template generator application.

    After you validate the settings location template for an application, you should test the template. Deploy the template in a lab environment before you put it into a production environment in enterprise.

## <a href="" id="share"></a>Share settings location templates with the Template Gallery

The [User Experience Virtualization Template Gallery](https://gallery.technet.microsoft.com/site/search?f%5B0%5D.Type=RootCategory&f%5B0%5D.Value=UE-V&f%5B0%5D.Text=UE-V) enables administrators to share their UE-V settings location templates. Upload your settings location templates to the gallery for other users to use, and download templates that other users have created.

Before you share a settings location template on the UE-V template gallery, ensure it does not contain any personal or company information. You can use any XML viewer to open and view the contents of a settings location template file. The following template values should be reviewed before you share a template with anyone outside your company.

-   Template Author Name – Specify a general, non-identifying name for the template author name or exclude this data from the template.

-   Template Author Email – Specify a general, non-identifying template author email or exclude this data from the template.

Before you deploy any settings location template that you have downloaded from the UE-V gallery, you should first test the template to ensure that the application settings synchronize settings correctly in a test environment.






## Related topics


[Administering UE-V](uev-administering-uev.md)

[Use UE-V with custom applications](uev-deploy-uev-for-custom-applications.md)

 

 





