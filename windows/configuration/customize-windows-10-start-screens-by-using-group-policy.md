---
title: Customize Windows 10 Start and tasbkar with Group Policy (Windows 10)
description: In Windows 10, you can use a Group Policy Object (GPO) to deploy a customized Start layout to users in a domain.
ms.assetid: F4A47B36-F1EF-41CD-9CBA-04C83E960545
ms.reviewer: 
manager: dansimp
keywords: ["Start layout", "start menu", "layout", "group policy"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 11/15/2017
---

# Customize Windows 10 Start and taskbar with Group Policy


**Applies to**

-   Windows 10

>**Looking for consumer information?** See [Customize the Start menu](https://go.microsoft.com/fwlink/p/?LinkId=623630)

In Windows 10 Pro, Enterprise, and Education, you can use a Group Policy Object (GPO) to deploy a customized Start and taskbar layout to users in a domain. No reimaging is required, and the layout can be updated simply by overwriting the .xml file that contains the layout. This enables you to customize Start and taskbar layouts for different departments or organizations, with minimal management overhead.

This topic describes how to update Group Policy settings to display a customized Start and taskbar layout when the users sign in. By creating a domain-based GPO with these settings, you can deploy a customized Start and taskbar layout to users in a domain.

>[!WARNING]
>When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups. When you apply a taskbar layout, users will still be able to pin and unpin apps, and change the order of pinned apps.

 

**Before you begin**: [Customize and export Start layout](customize-and-export-start-layout.md)

## Operating system requirements


In Windows 10, version 1607, Start and taskbar layout control using Group Policy is supported in Windows 10 Enterprise and Windows 10 Education. In Windows 10, version 1703, Start and taskbar layout control using Group Policy is also supported in Windows 10 Pro.

The GPO can be configured from any computer on which the necessary ADMX and ADML files (StartMenu.admx and StartMenu.adml) for Windows 10 are installed. In Group Policy, ADMX files are used to define Registry-based policy settings in the Administrative Templates category. To find out how to create a central store for Administrative Templates files, see [article 929841, written for Windows Vista and still applicable](https://go.microsoft.com/fwlink/p/?LinkId=691687) in the Microsoft Knowledge Base.

## <a href="" id="bkmk-howstartscreencontrolworks"></a>How Start layout control works


Three features enable Start and taskbar layout control:

-   The [Export-StartLayout](https://docs.microsoft.com/powershell/module/startlayout/export-startlayout?view=win10-ps) cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format. 

    >[!NOTE]
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](https://docs.microsoft.com/powershell/module/startlayout/import-startlayout) cmdlet.

-    [You can modify the Start .xml file](configure-windows-10-taskbar.md) to include  `<CustomTaskbarLayoutCollection>` or create an .xml file just for the taskbar configuration. 

-   In Group Policy, you use the **Start Layout** settings for the **Start Menu and Taskbar** administrative template to set a Start and taskbar layout from an .xml file when the policy is applied. The Group Policy object doesn't support an empty tile layout, so the default tile layout for Windows is loaded in that case.

>[!NOTE]
>To learn how customize Start to include your line-of-business apps when you deploy Windows 10, see [Customize the Windows 10 Start layout]( https://go.microsoft.com/fwlink/p/?LinkId=620863).

 

## <a href="" id="bkmk-domaingpodeployment"></a>Use Group Policy to apply a customized Start layout in a domain


To apply the Start and taskbar layout to users in a domain, use the Group Policy Management Console (GPMC) to configure a domain-based Group Policy Object (GPO) that sets **Start Layout** policy settings in the **Start Menu and Taskbar** administrative template for users in a domain.

The GPO applies the Start and taskbar layout at the next user sign-in. Each time the user signs in, the timestamp of the .xml file with the Start and taskbar layout is checked and if a newer version of the file is available, the settings in the latest version of the file are applied.

The GPO can be configured from any computer on which the necessary ADMX and ADML files (StartMenu.admx and StartMenu.adml) for Windows 10 are installed.

The .xml file with the Start and taskbar layout must be located on shared network storage that is available to the users’ computers when they sign in and the users must have Read-only access to the file. If the file is not available when the first user signs in, Start and the taskbar are not customized during the session, but the user will be prevented from making changes to Start. On subsequent sign-ins, if the file is available at sign-in, the layout it contains will be applied to the user's Start and taskbar.

For information about deploying GPOs in a domain, see [Working with Group Policy Objects](https://go.microsoft.com/fwlink/p/?LinkId=620889).

## <a href="" id="bkmk-localgpimport"></a>Use Group Policy to apply a customized Start layout on the local computer


You can use the Local Group Policy Editor to provide a customized Start and taskbar layout for any user who signs in on the local computer. To display the customized Start and taskbar layout for any user who signs in, configure **Start Layout** policy settings for the **Start Menu and Taskbar** administrative template. You can use the **Start Menu and Taskbar** administrative template in **User Configuration** or **Computer Configuration**.

>[!NOTE]
>This procedure applies the policy settings on the local computer only. For information about deploying the Start and taskbar layout to users in a domain, see [Use Group Policy to deploy a customized Start layout in a domain](#bkmk-domaingpodeployment).
>
>This procedure creates a Local Group Policy that applies to all users on the computer. To configure Local Group Policy that applies to a specific user or group on the computer, see [Step-by-Step Guide to Managing Multiple Local Group Policy Objects](https://go.microsoft.com/fwlink/p/?LinkId=620881). The guide was written for Windows Vista and the procedures still apply to Windows 10.


This procedure adds the customized Start and taskbar layout to the user configuration, which overrides any Start layout settings in the local computer configuration when a user signs in on the computer.

**To configure Start Layout policy settings in Local Group Policy Editor**

1. On the test computer, press the Windows key, type **gpedit**, and then select **Edit group policy (Control panel)**.

2. Go to **User Configuration** or **Computer Configuration** &gt; **Administrative Templates** &gt;**Start Menu and Taskbar**.

   ![start screen layout policy settings](images/starttemplate.jpg)

3. Right-click **Start Layout** in the right pane, and click **Edit**.

   This opens the **Start Layout** policy settings.

   ![policy settings for start screen layout](images/startlayoutpolicy.jpg)

4. Enter the following settings, and then click **OK**:

   1.  Select **Enabled**.

   2.  Under **Options**, specify the path to the .xml file that contains the Start and taskbar layout. For example, type **C:\\Users\\Test01\\StartScreenMarketing.xml**.

   3.  Optionally, enter a comment to identify the Start and taskbar layout.

   > [!IMPORTANT]
   > If you disable Start Layout policy settings that have been in effect and then re-enable the policy, users will not be able to make changes to Start, however the layout in the .xml file will not be reapplied unless the file has been updated. In Windows PowerShell, you can update the timestamp on a file by running the following command:
   > 
   > `(ls <path>).LastWriteTime = Get-Date`

     

## <a href="" id="bkmk-updatestartscreenlayout"></a>Update a customized Start layout


After you use Group Policy to apply a customized Start and taskbar layout on a computer or in a domain, you can update the layout simply by replacing the .xml file that is specified in the Start Layout policy settings with a file with a newer timestamp.

## Related topics


- [Manage Windows 10 Start and taskbar layout](windows-10-start-layout-options-and-policies.md)
- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Add image for secondary tiles](start-secondary-tiles.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)
- [Customize Windows 10 Start and tasbkar with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)
- [Changes to Start policies in Windows 10](changes-to-start-policies-in-windows-10.md)
 
 





