---
title: Configure Windows 10 taskbar (Windows 10)
description: Admins can pin apps to users' taskbars. 
keywords: ["taskbar layout","pin apps"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---
#Configure Windows 10 taskbar

Starting in Windows 10, version 1607, administrators can pin additional apps to the taskbar and remove default pinned apps from the taskbar by adding a `<TaskbarLayout>` section to a layout modification XML file. This method never removes user-pinned apps from the taskbar.


You can specify different taskbar configurations based on device locale and region, or operating system edition. There is no limit on the number of apps that you can pin. You specify apps using the [Application User Model ID (AUMID)](http://go.microsoft.com/fwlink/p/?LinkId=614867), Desktop Application ID, or Desktop Application Link Path. 

If you specify an app to be pinned that is not installed on the computer, it won't appear on the taskbar.

The order of apps in the xml file dictates order of apps on taskbar from left to right, to the right of any existing apps pinned by user.

**Note**  
In operating systems configured to use a right-to-left language, the taskbar order will be reversed.

The following example shows how apps will be pinned - Windows default apps to the left (blue), apps pinned by the user in the center (orange), and apps that you pin using XML to the right (green).

![Windows left, user center, enterprise to the right](/images/taskbar-generic.png)


## Configure taskbar (general)

To configure the taskbar:
1. Create the XML file.
   * If you are also [customizing the Start layout](customize-and-export-start-layout.md), use Export-StartLayout to create the XML, and then add the `<TaskbarLayout>` section from the following sample to the file and edit it to your specific requirements.
   * If you are only configuring the taskbar, use the following sample to create LayoutModification.xml, and then edit the file for your specific requirements.
2. Apply LayoutModification.xml to devices using [Group Policy](customize-windows-10=start-screens-by-using-group-policy.md) or a [provisioning package created in Windows Imaging and Configuration Designer (Windows ICD)](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md).

### Sample XML

```xml
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">

  <TaskbarLayout>
    <TaskbarPinList>
      <PinnedApp AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
      <PinnedApp DesktopApplicationID="Microsoft.Windows.Explorer" />
      <PinnedApp AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word" />
      <PinnedApp AppUserModelID="Microsoft.Reader_8wekyb3d8bbwe!Microsoft.Reader" />
    </TaskbarPinList>
  </TaskbarLayout>

</LayoutModificationTemplate>
```

##Keep default apps and add your own

```xml
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">
  <CustomTaskbarLayoutCollection>
    <defaultlayout:TaskbarLayout>
      <taskbar:TaskbarPinList>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.InternetExplorer.Default"  />
        <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk" />
        <taskbar:UWA AppUserModelID="Microsoft.Reader_8wekyb3d8bbwe!Microsoft.Reader" />
        <taskbar:DesktopApp DesktopApplicationLinkPath="%appdata%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk" />
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
  </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
```
**Before:**

**After:**
 

##Remove default apps and add your own

By adding `<PinListPlacement="Replace">` as a parameter to `<CustomTaskbarLayoutCollection>`, you remove all default pinned apps and only the apps that you specify will be pinned to the taskbar.

```xml
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">
  <CustomTaskbarLayoutCollection PinListPlacement="Replace">
    <defaultlayout:TaskbarLayout>
      <taskbar:TaskbarPinList>
        <taskbar:UWA AppUserModelID="Microsoft.InternetExplorer.Default" />
        <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk" />
        <taskbar:UWA AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word" />
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
  </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>

```
**Before:**

![Taskbar with default apps](/images/taskbar-default.png)

**After:**

![Taskbar with default apps](/images/taskbar-default-removed.png)

## Configure taskbar (by region)

The following example shows you how to configure taskbars by region.

```xml
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">

  <TaskbarLayout>
    <TaskbarPinList region="US|UK">
      <PinnedApp AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
    </TaskbarPinList>
    <TaskbarPinList>
      <PinnedApp DesktopApplicationID="Microsoft.Windows.Explorer" />
      <PinnedApp AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word" />
    </TaskbarPinList>
    <TaskbarPinList region="DE|FR">
      <PinnedApp AppUserModelID="Microsoft.Office.Excel_8wekyb3d8bbwe!microsoft.excel" />
    </TaskbarPinList>
    <TaskbarPinList>
      <PinnedApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk"/>
      <PinnedApp AppUserModelID="Microsoft.Reader_8wekyb3d8bbwe!Microsoft.Reader" />
    </TaskbarPinList>
  </TaskbarLayout>

</LayoutModificationTemplate>
```

When specifying taskbar configuration by region, the taskbar will concatenate pinlists together so long as the target computer meets the region requirements. If no region is specified for a `<TaskbarPinList>` node, it will apply to every region.

When the preceding example XML for region is applied, the resulting tasbkar for computers in the US or UK:

The resulting taskbar for computers in Germany or France:

The resulting tasbkar for computers in any other region:


## Configure taskbar (by Windows 10 edition)

The following example shows you how to configure taskbars by edition, so that you can apply one configuration to Windows 10 Enterprise and a different configuration to Windows 10 Education.

```xml
sample
```



## Layout Modification Template schema definition

```xml
<?xml version="1.0" encoding="utf-8"?> 
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
            xmlns:local="http://schemas.microsoft.com/Start/2014/TaskbarLayout" 
            targetNamespace="http://schemas.microsoft.com/Start/2014/TaskbarLayout" 
            elementFormDefault="qualified"> 
  <xsd:complexType name="ct_PinnedUWA"> 
    <xsd:attribute name="AppUserModelID" type="xsd:string" /> 
  </xsd:complexType> 
  <xsd:complexType name="ct_PinnedDesktopApp"> 
    <xsd:attribute name="DesktopApplicationID" type="xsd:string" /> 
    <xsd:attribute name="DesktopApplicationLinkPath" type="xsd:string" /> 
  </xsd:complexType> 
  <xsd:complexType name="ct_TaskbarPinList"> 
    <xsd:sequence> 
      <xsd:choice minOccurs="1" maxOccurs="unbounded"> 
        <xsd:element name="UWA" type="local:ct_PinnedUWA" /> 
        <xsd:element name="DesktopApp" type="local:ct_PinnedDesktopApp" /> 
      </xsd:choice> 
    </xsd:sequence> 
    <xsd:attribute name="Region" type="xsd:string" use="optional" /> 
  </xsd:complexType> 
  <xsd:simpleType name="st_TaskbarPinListPlacement"> 
    <xsd:restriction base="xsd:string"> 
      <xsd:enumeration value="Append" /> 
      <xsd:enumeration value="Replace" /> 
    </xsd:restriction> 
  </xsd:simpleType> 
  <xsd:attributeGroup name="ag_SelectionAttributes"> 
    <xsd:attribute name="SKU" type="xsd:string" use="optional"/> 
    <xsd:attribute name="Region" type="xsd:string" use="optional"/> 
  </xsd:attributeGroup> 
  <xsd:complexType name="ct_TaskbarLayout"> 
    <xsd:sequence> 
      <xsd:element name="TaskbarPinList" type="local:ct_TaskbarPinList" minOccurs="1" maxOccurs="1" /> 
    </xsd:sequence> 
    <xsd:attributeGroup ref="local:ag_SelectionAttributes"/> 
  </xsd:complexType> 
</xsd:schema>
```