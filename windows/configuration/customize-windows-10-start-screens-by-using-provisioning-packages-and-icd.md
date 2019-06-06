---
title: Customize Windows 10 Start and tasbkar with provisioning packages (Windows 10)
description: In Windows 10, you can use a provisioning package to deploy a customized Start layout to users.
ms.assetid: AC952899-86A0-42FC-9E3C-C25F45B1ACAC
ms.reviewer: 
manager: dansimp
keywords: ["Start layout", "start menu"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 11/15/2017
---

# Customize Windows 10 Start and taskbar with provisioning packages


**Applies to**

- Windows 10


>**Looking for consumer information?** [Customize the Start menu](https://go.microsoft.com/fwlink/p/?LinkId=623630)

In Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, version 1703, you can use a provisioning package that you create with Windows Configuration Designer to deploy a customized Start and taskbar layout to users. No reimaging is required, and the Start and taskbar layout can be updated simply by overwriting the .xml file that contains the layout. The provisioning package can be applied to a running device. This enables you to customize Start and taskbar layouts for different departments or organizations, with minimal management overhead.

>[!IMPORTANT]
>If you use a provisioning package to configure the taskbar, your configuration will be reapplied each time the explorer.exe process restarts. If your configuration pins an app and the user unpins that app, the user's change will be overwritten the next time the configuration is applied. To apply a taskbar configuration and allow users to make changes that will persist, apply your configuration by using Group Policy.

**Before you begin**: [Customize and export Start layout](customize-and-export-start-layout.md) for desktop editions.

## <a href="" id="bkmk-howstartscreencontrolworks"></a>How Start layout control works


Three features enable Start and taskbar layout control:

-   The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format. 

    >[!NOTE]  
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](https://docs.microsoft.com/powershell/module/startlayout/import-startlayout) cmdlet.

-    [You can modify the Start .xml file](configure-windows-10-taskbar.md) to include  `<CustomTaskbarLayoutCollection>` or create an .xml file just for the taskbar configuration.

-   In Windows Configuration Designer, you use the **Policies/Start/StartLayout** setting to provide the contents of the .xml file that defines the Start and taskbar layout.

<span id="escape" />
## Prepare the Start layout XML file

The **Export-StartLayout** cmdlet produces an XML file. Because Windows Configuration Designer produces a customizations.xml file that contains the configuration settings, adding the Start layout section to the customizations.xml file directly would result in an XML file embedded in an XML file. Before you add the Start layout section to the customizations.xml file, you must replace the markup characters in your layout.xml with escape characters. 


1. Copy the contents of layout.xml into an online tool that escapes characters.

3. During the procedure to create a provisioning package, you will copy the text with the escape characters and paste it in the customizations.xml file for your project.  

## <a href="" id="bkmk-domaingpodeployment"></a>Create a provisioning package that contains a customized Start layout


Use the Windows Configuration Designer tool to create a provisioning package. [Learn how to install Windows Configuration Designer.](provisioning-packages/provisioning-install-icd.md)

>[!IMPORTANT]
>When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

1.  Open Windows Configuration Designer (by default, %systemdrive%\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Imaging and Configuration Designer\\x86\\ICD.exe).

2. Choose **Advanced provisioning**.

3. Name your project, and click **Next**.

4. Choose **All Windows desktop editions** and click **Next**.

5. On **New project**, click **Finish**. The workspace for your package opens.

6. Expand **Runtime settings** &gt; **Policies** &gt; **Start**, and click **StartLayout**.

   >[!TIP]
   >If **Start** is not listed, check the type of settings you selected in step 4. You must create the project using settings for **All Windows desktop editions**.

7. Enter **layout.xml**. This value creates a placeholder in the customizations.xml file that you will replace with the contents of the layout.xml file in a later step.

7. Save your project and close Windows Configuration Designer.

7. In File Explorer, open the project's directory. (The default location is C:\Users\\*user name*\Documents\Windows Imaging and Configuration Designer (WICD)\\*project name*) 

7. Open the customizations.xml file in a text editor. The **&lt;Customizations&gt;** section will look like this:

    ![Customizations file with the placeholder text to replace highlighted](images/customization-start.png)

7. Replace **layout.xml** with the text from the layout.xml file, [with markup characters replaced with escape characters](#escape).

8. Save and close the customizations.xml file.

8. Open Windows Configuration Designer and open your project.

8.  On the **File** menu, select **Save.**

9.  On the **Export** menu, select **Provisioning package**.

10. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

11. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Browse** and choosing the certificate you want to use to sign the package.

12. Click **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows Imaging and Configuration Designer (ICD) uses the project folder as the output location.

    Optionally, you can click **Browse** to change the default output location.

13. Click **Next**.

14. Click **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status.

    If you need to cancel the build, click **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

15. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.

    If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    -   If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, click **Back** to change the output package name and path, and then click **Next** to start another build.
    -   If you are done, click **Finish** to close the wizard and go back to the **Customizations Page**.

16. Copy the provisioning package to the target device.

17. Double-click the ppkg file and allow it to install.

## Related topics


- [Manage Windows 10 Start and taskbar layout](windows-10-start-layout-options-and-policies.md)
- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Add image for secondary tiles](start-secondary-tiles.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and tasbkar with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)
- [Changes to Start policies in Windows 10](changes-to-start-policies-in-windows-10.md)

 

 





