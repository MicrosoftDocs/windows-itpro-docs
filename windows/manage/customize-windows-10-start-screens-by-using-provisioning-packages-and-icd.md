---
title: Customize Windows 10 Start with ICD and provisioning packages (Windows 10)
description: In Windows 10, you can use a provisioning package to deploy a customized Start layout to users.
ms.assetid: AC952899-86A0-42FC-9E3C-C25F45B1ACAC
keywords: ["Start layout", "start menu"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Customize Windows 10 Start with ICD and provisioning packages


**Applies to**

-   Windows 10

**Looking for consumer information?**

-   [Customize the Start menu](http://go.microsoft.com/fwlink/p/?LinkId=623630)

In Windows 10 Enterprise and Windows 10 Education, you can use a provisioning package that you create with Windows Imaging and Configuration Designer (ICD) tool to deploy a customized Start layout to users. No reimaging is required, and the Start layout can be updated simply by overwriting the .xml file that contains the layout. The provisioning package can be applied to a running device. This enables you to customize Start layouts for different departments or organizations, with minimal management overhead.

**Before you begin**: [Customize and export Start layout](customize-and-export-start-layout.md)

## <a href="" id="bkmk-howstartscreencontrolworks"></a>How Start layout control works


Two features enable Start layout control:

-   The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format. **Start layout** can only be applied to a device using the same architecture (32-bit or 64-bit) as the device on which **Start layout** was created.

    **Note**  
    To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](http://go.microsoft.com/fwlink/p/?LinkId=623707) cmdlet.

     

-   In ICD, you use the **Start/StartLayout** setting to set the path to the .xml file that defines the Start layout.

## <a href="" id="bkmk-domaingpodeployment"></a>Create a provisioning package that contains a customized Start layout


Use the [Imaging and Configuration Designer (ICD) tool](http://go.microsoft.com/fwlink/p/?LinkID=525483) included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package that applies a customized Start layout. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

1.  Open ICD (by default, %systemdrive%\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Imaging and Configuration Designer\\x86\\ICD.exe).

2.  Choose **New provisioning package**.

3.  Name your project, and click **Next**.

4.  Choose **Common to all Windows desktop editions** and click **Next**.

5.  On **New project**, click **Finish**. The workspace for your package opens.

6.  Expand **Runtime settings** &gt; **Start**, and click **StartLayout**.

7.  Specify the path and file name of the Start layout .xml that you created with the [Export-StartLayout](http://go.microsoft.com/fwlink/p/?LinkId=620879) cmdlet.

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


[Manage Windows 10 Start layout options](windows-10-start-layout-options-and-policies.md)

[Customize and export Start layout](customize-and-export-start-layout.md)

[Customize Windows 10 Start with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)

[Customize Windows 10 Start with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)

 

 





