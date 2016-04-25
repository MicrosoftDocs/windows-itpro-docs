---
title: Customize and export Start layout (Windows 10)
description: The easiest method for creating a customized Start layout is to set up the Start screen and export the layout.
ms.assetid: CA8DF327-5DD4-452F-9FE5-F17C514B6236
keywords: ["start screen"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Customize and export Start layout


**Applies to**

-   Windows 10

**Looking for consumer information?**

-   [Customize the Start menu](http://go.microsoft.com/fwlink/p/?LinkId=623630)

The easiest method for creating a customized Start layout to apply to other Windows 10 devices is to set up the Start screen on a test computer and then export the layout.

After you export the layout, decide whether you want to apply a *full* Start layout or a *partial* Start layout.

When a full Start layout is applied, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start.

When [a partial Start layout](#configure-a-partial-start-layout) is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups.

**Note**  Partial Start layout is only supported on Windows 10, version 1511 and later.

 

You can deploy the resulting .xml file to devices using one of the following methods:

-   [Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)

-   [Windows Imaging and Configuration Designer provisioning package](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)

-   [Mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)

## <a href="" id="bkmkcustomizestartscreen"></a>Customize the Start screen on your test computer


To prepare a Start layout for export, you simply customize the Start layout on a test computer.

**To prepare a test computer**

1.  Set up a test computer on which to customize the Start layout. Your test computer should have the operating system that is installed on the users’ computers (Windows 10 Enterprise or Windows 10 Education). Install all apps and services that the Start layout should display.

   2.  Create a new user account that you will use to customize the Start layout.

<a href="" id="bmk-customize-start"></a>
**To customize Start**

1.  Sign in to your test computer with the user account that you created.

2.  Customize the Start layout as you want users to see it by using the following techniques:

    -   **Pin apps to Start**. From Start, type the name of the app. When the app appears in the search results, right-click the app, and then click **Pin to Start**.

        To view all apps, click **All apps** in the bottom-left corner of Start. Right-click any app, and pin or unpin it from Start.

    -   **Unpin apps** that you don’t want to display. To unpin an app, right-click the app, and then click **Unpin from Start**.

    -   **Drag tiles** on Start to reorder or group apps.

    -   **Resize tiles**. To resize tiles, right-click the tile and then click **Resize.**

    -   **Create your own app groups**. Drag the apps to an empty area. To name a group, click above the group of tiles and then type the name in the **Name group** field that appears above the group.

## <a href="" id="bmk-exportstartscreenlayout"></a>Export the Start layout


When you have the Start layout that you want your users to see, use the [Export-StartLayout](http://go.microsoft.com/fwlink/p/?LinkId=620879) cmdlet in Windows PowerShell to export the Start layout to an .xml file.

**To export the Start layout to an .xml file**

1.  From Start, open **Windows PowerShell**.

2.  At the Windows PowerShell command prompt, enter the following command:

    `export-startlayout –path <path><file name>.xml `

    In the previous command, `-path` is a required parameter that specifies the path and file name for the export file. You can specify a local path or a UNC path (for example, \\\\FileServer01\\StartLayouts\\StartLayoutMarketing.xml).

    Use a file name of your choice—for example, StartLayoutMarketing.xml. Include the .xml file name extension. The [Export-StartLayout](http://go.microsoft.com/fwlink/p/?LinkId=620879) cmdlet does not append the file name extension, and the policy settings require the extension.
    
    Example of a layout file produced by `Export-StartLayout`:

    <span codelanguage="XML"></span>
    <table>
    <colgroup>
    <col width="100%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">XML</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><pre><code>&lt;LayoutModificationTemplate Version=&quot;1&quot; xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;&gt;
      &lt;DefaultLayoutOverride&gt;
        &lt;StartLayoutCollection&gt;
          &lt;defaultlayout:StartLayout GroupCellWidth=&quot;6&quot; xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot;&gt;
            &lt;start:Group Name=&quot;Life at a glance&quot; xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot;&gt;
              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;0&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge&quot; /&gt;
              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI&quot; /&gt;
              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;2&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
            &lt;/start:Group&gt;        
          &lt;/defaultlayout:StartLayout&gt;
        &lt;/StartLayoutCollection&gt;
      &lt;/DefaultLayoutOverride&gt;
    &lt;/LayoutModificationTemplate&gt;</code></pre></td>
    </tr>
    </tbody>
    </table>

## Configure a partial Start layout


A partial Start layout enables you to add one or more customized tile groups to users' Start screens or menus, while still allowing users to make changes to other parts of the Start layout. All groups that you add are *locked*, meaning users cannot change the contents of those tile groups, however users can change the location of those groups. Locked groups are identified with an icon, as shown in the following image.

![locked tile group](images/start-pinned-app.png)

When a partial Start layout is applied for the first time, the new groups are added to the users' existing Start layouts. If an app tile is in both an existing group and in a new locked group, the duplicate app tile is removed from the existing (unlocked) group.

When a partial Start layout is applied to a device that already has a StartLayout.xml applied, groups that were added previously are removed and the groups in the new layout are added.

If the Start layout is applied by Group Policy or MDM, and the policy is removed, the groups remain on the devices but become unlocked.

**To configure a partial Start screen layout**

1.  [Customize the Start layout](#bmk-customize-start).

2.  [Export the Start layout](#bmk-exportstartscreenlayout).
3.  Open the layout .xml file. There is a `<DefaultLayoutOverride>` element. Add `LayoutCustomizationRestrictionType="OnlySpecifiedGroups"` to the **DefaultLayoutOverride** element as follows:

    ``` syntax
    <DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
    ```

4.  Save the file and apply using any of the deployment methods.

## Related topics


[Manage Windows 10 Start layout options](windows-10-start-layout-options-and-policies.md)

[Customize Windows 10 Start with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)

[Customize Windows 10 Start with ICD and provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)

[Customize Windows 10 Start with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)

[Changes to Group Policy settings for Windows 10 Start](changes-to-start-policies-in-windows-10.md)

 

 





