---
title: Add image for secondary Microsoft Edge tiles (Windows 10)
description: 
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: jdeckerMS
---

# Add image for secondary Microsoft Edge tiles 

**Applies to**

- Windows 10
- Windows 10 Mobile

App tiles are the Start screen tiles that represent and launch an app. A tile that allows a user to go to a specific location in an app is a *secondary tile*. Some examples of secondary tiles include:

- Weather updates for a specific city in a weather app
- A summary of upcoming events in a calendar app
- Status and updates from an important contact in a social app
- A website in Microsoft Edge

In a Start layout for Windows 10, version 1703, you can include secondary tiles for Microsoft Edge that display a custom image, rather than a tile with the standard Microsoft Edge logo. 

Suppose that the [Start layout that you export](customize-and-export-start-layout.md) had two secondary tiles, such as in the following image:

![tile for MSN and for a SharePoint site](images/edge-with-logo.png)

In prior versions of Windows 10, when you applied the Start layout to a device, the tiles would display as shown in the following image:

![tile for MSN and for a SharePoint site with no logos](images/edge-without-logo.png)

In Windows 10, version 1703, by using the PowerShell cmdlet `export-StartLayoutEdgeAssets` and the policy setting `ImportEdgeAssets`, the tiles will now display the same as they did on the device from which you exported the Start layout.

![tile for MSN and for a SharePoint site](images/edge-with-logo.png)


## Export Start layout and assets

1. Follow the instructions in [Customize and export Start layout](customize-and-export-start-layout.md#bkmkcustomizestartscreen) to customize the Start screen on your test computer.
2. Open Windows PowerShell and enter the following command:
    
    ```
    Export-StartLayout -path <path><file name>.xml
    ```
    In the previous command, `-path` is a required parameter that specifies the path and file name for the export file. You can specify a local path or a UNC path (for example, \\\\FileServer01\\StartLayouts\\StartLayoutMarketing.xml).

    Use a file name of your choice—for example, StartLayoutMarketing.xml. Include the .xml file name extension. The [Export-StartLayout](https://go.microsoft.com/fwlink/p/?LinkId=620879) cmdlet does not append the file name extension, and the policy settings require the extension.
    
3. If you’d like to change the image for a secondary tile to your own custom image, open the layout.xml file, and look for the images that the tile references.
    - For example, your layout.xml contains `Square150x150LogoUri="ms-appdata:///local/PinnedTiles/21581260870/hires.png" Wide310x150LogoUri="ms-appx:///"` 
    - Open `C:\Users\<username>\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\LocalState` and replace those images with your customized images
    >[!TIP]
    >A quick method for getting appropriately sized images for each tile size is to upload your image at [BuildMyPinnedSite](http://www.buildmypinnedsite.com/) and then download the resized tile images.
        
 4. In Windows PowerShell, enter the following command:
 
    ```
    Export-StartLayoutEdgeAssets assets.xml
    ```

## Configure policy settings

You can apply the customized Start layout with images for secondary tiles by using [mobile device management](customize-windows-10-start-screens-by-using-mobile-device-management.md) or [a provisioning package](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md). However, because you are including the images for secondary tiles, you must configure an additional policy to import the Edge assets.

### Using MDM

Follow the instructions to [create a custom policy](customize-windows-10-start-screens-by-using-mobile-device-management.md#bkmk-domaingpodeployment). Replace the markup characters with escape characters in both the layout.xml and the assets.xml.

In addition to the `./User/Vendor/MSFT/Policy/Config/Start/StartLayout` setting, you must also add the `ImportEdgeAssets` setting.

| Item  | Information |
|----|----|
| **Setting name**             | Enter a unique name for the OMA-URI setting to help you identify it in the list of settings.                      |
| **Setting description**      | Provide a description that gives an overview of the setting and other relevant information to help you locate it. |
| **Data type**                | **String**                                                                                                        |
| **OMA-URI (case sensitive)** | **./User/Vendor/MSFT/Policy/Config/Start/ImportEdgeAssets**    
| **Value**                    | Paste the contents of the assets.xml file that you created.                                 |

### Using a provisioning package


#### Prepare the Start layout and Edge assets XML files

The **export-StartLayout** and **export-StartLayoutEdgeAssets** cmdlets produce XML files. Because Windows Configuration Designer produces a customizations.xml file that contains the configuration settings, adding the Start layout and Edge assets sections to the customizations.xml file directly would result in an XML file embedded in an XML file. Before you add the Start layout and Edge assets sections to the customizations.xml file, you must replace the markup characters in your layout.xml with escape characters. 


1. Copy the contents of layout.xml into an online tool that escapes characters.

2. Copy the contents of assets.xml into an online tool that escapes characters.

3. During the procedure to create a provisioning package, you will copy the text with the escape characters and paste it in the customizations.xml file for your project. 

#### <a href="" id="bkmk-domaingpodeployment"></a>Create a provisioning package that contains a customized Start layout


Use the Windows Configuration Designer tool to create a provisioning package. [Learn how to install Windows Configuration Designer.](provisioning-install-icd.md)

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

8. In the **Available customizations** pane, select **ImportEdgeAssets**.

9. Enter **assets.xml**. This value creates a placeholder in the customizations.xml file that you will replace with the contents of the assets.xml file in a later step.

7. Save your project and close Windows Configuration Designer.

7. In File Explorer, open the project's directory. (The default location is C:\Users\\*user name*\Documents\Windows Imaging and Configuration Designer (WICD)\\*project name*) 

7. Open the customizations.xml file in a text editor. The **&lt;Customizations&gt;** section will look like this:

    ![Customizations file with the placeholder text to replace highlighted](images/customization-start-edge.png)

7. Replace **layout.xml** with the text from the layout.xml file, [with markup characters replaced with escape characters](#escape).

8. Replace **assets.xml** with the text from the assets.xml file, [with markup characters replaced with escape characters](#escape).

8. Save and close the customizations.xml file.

8. Open Windows Configuration Designer and open your project.

8.  On the **File** menu, select **Save.**

9.  On the **Export** menu, select **Provisioning package**.

10. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

11. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Select...** and choosing the certificate you want to use to sign the package.

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
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and taskbar with provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)
- [Customize Windows 10 Start and tasbkar with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)
- [Changes to Start policies in Windows 10](changes-to-start-policies-in-windows-10.md)   


    
