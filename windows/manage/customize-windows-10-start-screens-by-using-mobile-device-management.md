---
title: Customize Windows 10 Start and taskbar with mobile device management (MDM) (Windows 10)
description: You can use a mobile device management (MDM) policy to deploy a customized Start layout to users.
ms.assetid: F487850D-8950-41FB-9B06-64240127C1E4
keywords: ["start screen", "start menu"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
---

# Customize Windows 10 Start and taskbar with mobile device management (MDM)


**Applies to**

- Windows 10
- Windows 10 Mobile

**Looking for consumer information?**

-   [Customize the Start menu](https://go.microsoft.com/fwlink/p/?LinkId=623630)


In Windows 10 Mobile, Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, version 1703, you can use a mobile device management (MDM) policy to deploy a customized Start and taskbar layout to users. No reimaging is required, and the Start layout can be updated simply by overwriting the .xml file that contains the layout. This enables you to customize Start layouts for different departments or organizations, with minimal management overhead.


>[!NOTE]
>Taskbar configuration is available starting in Windows 10, version 1607.
>
>Start and taskbar configuration are available for Windows 10 Pro in version 1703.

**Before you begin**: [Customize and export Start layout](customize-and-export-start-layout.md) for desktop editions or [create a Start layout XML](start-layout-xml-mobile.md) for mobile.

>[!WARNING]
>When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups.

 

## <a href="" id="bkmk-howstartscreencontrolworks"></a>How Start layout control works


Two features enable Start layout control:

-   The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format. 

    >[!NOTE]  
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](https://go.microsoft.com/fwlink/p/?LinkId=623707) cmdlet.
  
-   In MDM, you set the path to the .xml file that defines the Start layout using an OMA-URI setting, which is based on the [Policy configuration service provider (CSP)](https://go.microsoft.com/fwlink/p/?LinkID=623244).

## <a href="" id="bkmk-domaingpodeployment"></a>Create a policy for your customized Start layout


This example uses Microsoft Intune to configure an MDM policy that applies a customized Start and taskbar layout. See the documentation for your MDM solution for help in applying the policy.

1.  In your customized Start and taskbar layout XML file, replace markup characters with escape characters, and save the file. (You can replace the characters manually or use an online tool.)

    Example of a layout file:
    
    ```xml
<?xml version="1.0" encoding="utf-8"?>
  <LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">
  <LayoutOptions StartTileGroupCellWidth="6" StartTileGroupsColumnCount="1" />
  <DefaultLayoutOverride>
    <StartLayoutCollection>
      <defaultlayout:StartLayout GroupCellWidth="6" xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout">
        <start:Group Name="Life at a glance" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
          <start:Tile Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI" />
          <start:Tile Size="2x2" Column="2" Row="0" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
        </start:Group>        
      </defaultlayout:StartLayout>
    </StartLayoutCollection>
  </DefaultLayoutOverride>
    <CustomTaskbarLayoutCollection>
      <defaultlayout:TaskbarLayout>
        <taskbar:TaskbarPinList>
          <taskbar:UWA AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
          <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
        </taskbar:TaskbarPinList>
      </defaultlayout:TaskbarLayout>
    </CustomTaskbarLayoutCollection>
  </LayoutModificationTemplate>
  ```
  Example of the same layout file with escape characters replacing the markup characters:
    
    ```
    &lt;LayoutModificationTemplate
    xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;
    xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot;
    xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot;
    xmlns:taskbar=&quot;http://schemas.microsoft.com/Start/2014/TaskbarLayout&quot;
    Version=&quot;1&quot;&gt;
  &lt;LayoutOptions StartTileGroupCellWidth=&quot;6&quot; StartTileGroupsColumnCount=&quot;1&quot; /&gt;
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
    &lt;CustomTaskbarLayoutCollection&gt;
      &lt;defaultlayout:TaskbarLayout&gt;
        &lt;taskbar:TaskbarPinList&gt;
          &lt;taskbar:UWA AppUserModelID=&quot;Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge&quot; /&gt;
          &lt;taskbar:DesktopApp DesktopApplicationLinkPath=&quot;%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk&quot; /&gt;
        &lt;/taskbar:TaskbarPinList&gt;
      &lt;/defaultlayout:TaskbarLayout&gt;
    &lt;/CustomTaskbarLayoutCollection&gt;
  &lt;/LayoutModificationTemplate&gt;
    ```

2.  In the Microsoft Intune administration console, click **Policy** &gt; **Add Policy**.

3.  Under **Windows**, choose a **Custom Configuration (Windows 10 Desktop and Mobile and later)** policy.

4.  Enter a name (mandatory) and description (optional) for the policy.

5.  In the **OMA-URI Settings** section, click **Add.**

6.  In **Add or Edit OMA-URI Setting**, enter the following information.

    | Item  | Information |
    |----|----|
    | **Setting name**             | Enter a unique name for the OMA-URI setting to help you identify it in the list of settings.                      |
    | **Setting description**      | Provide a description that gives an overview of the setting and other relevant information to help you locate it. |
    | **Data type**                | **String**                                                                                                        |
    | **OMA-URI (case sensitive)** | **./User/Vendor/MSFT/Policy/Config/Start/StartLayout**                                                            |
    | **Value**                    | Paste the contents of the Start layout .xml file that you created.                                                              |

7.  Click **OK** to save the setting and return to the **Create Policy** page.

8.  Click **Save Policy**.

## Related topics


- [Manage Windows 10 Start and taskbar layout](windows-10-start-layout-options-and-policies.md)
- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Start layout XML for mobile editions of Windows 10 (reference)](start-layout-xml-mobile.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and taskbar with ICD and provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)




