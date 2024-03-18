---
title: Start XML Schema Definition (XSD)
description: Start XSD reference article.
ms.topic: reference
ms.date: 02/15/2024
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
---

# Start XML Schema Definition (XSD)

This reference article contains the Start XML schema definition (XSD).

## StartLayoutSchema

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"
            xmlns:local="http://schemas.microsoft.com/Start/2014/StartLayout"
            targetNamespace="http://schemas.microsoft.com/Start/2014/StartLayout"
            elementFormDefault="qualified">

    <xsd:simpleType name="st_SKUType">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Mobile"/>
            <xsd:enumeration value="Desktop"/>
            <xsd:enumeration value="DesktopARM"/>
            <xsd:enumeration value="DesktopN"/>
            <xsd:enumeration value="DesktopEnterprise"/>
            <xsd:enumeration value="DesktopEnterpriseN"/>
            <xsd:enumeration value="Server"/>
            <xsd:enumeration value="ServerSolution"/>
            <xsd:enumeration value="PPI"/>
        </xsd:restriction>
    </xsd:simpleType>

    <xsd:simpleType name="st_TileSize">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="1x1"/>
            <xsd:enumeration value="2x2"/>
            <xsd:enumeration value="2x4"/>
            <xsd:enumeration value="4x2"/>
            <xsd:enumeration value="4x4"/>
        </xsd:restriction>
    </xsd:simpleType>

    <xsd:simpleType name="st_InstallDelay">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="onDemand"/>
            <xsd:enumeration value="immediate"/>
            <xsd:enumeration value="fast"/>
            <xsd:enumeration value="medium"/>
            <xsd:enumeration value="slow"/>
            <xsd:enumeration value="eventTrigger"/>
        </xsd:restriction>
    </xsd:simpleType>

    <xsd:complexType name="ct_StartTile">
        <xsd:attribute name="AppUserModelID" type="xsd:string" use="required"/>
        <xsd:attribute name="TileID" type="xsd:string" use="optional"/>
        <xsd:attribute name="ProductID" type="xsd:string" use="optional" />
        <xsd:attribute name="SkuID" type="xsd:string" use="optional" />
        <xsd:attribute name="InstallDelay" type="local:st_InstallDelay" use="optional" />
        <xsd:attribute name="Size" type="local:st_TileSize" use="required"/>
        <xsd:attribute name="Row" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="Column" type="xsd:nonNegativeInteger" use="required"/>
    </xsd:complexType>

    <xsd:complexType name="ct_DesktopApplicationTile">
        <xsd:attribute name="DesktopApplicationID" type="xsd:string" use="optional"/>
        <xsd:attribute name="DesktopApplicationLinkPath" type="xsd:string" use="optional"/>
        <xsd:attribute name="Size" type="local:st_TileSize" use="required"/>
        <xsd:attribute name="Row" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="Column" type="xsd:nonNegativeInteger" use="required"/>
    </xsd:complexType>

    <xsd:complexType name="ct_StartSecondaryTile">
        <xsd:attribute name="AppUserModelID" type="xsd:string" use="required"/>
        <xsd:attribute name="TileID" type="xsd:string" use="required"/>
        <xsd:attribute name="Arguments" type="xsd:string" use="required"/>
        <xsd:attribute name="DisplayName" type="xsd:string" use="required"/>
        <xsd:attribute name="Size" type="local:st_TileSize" use="required"/>
        <xsd:attribute name="Row" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="Column" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="Square150x150LogoUri" type="xsd:string" use="required"/>
        <xsd:attribute name="Square310x310LogoUri" type="xsd:string" use="optional"/>
        <xsd:attribute name="Square71x71LogoUri" type="xsd:string" use="optional"/>
        <xsd:attribute name="Wide310x150LogoUri" type="xsd:string" use="optional"/>
        <xsd:attribute name="ShowNameOnSquare150x150Logo" type="xsd:boolean" use="optional"/>
        <xsd:attribute name="ShowNameOnWide310x150Logo" type="xsd:boolean" use="optional"/>
        <xsd:attribute name="BackgroundColor" use="optional">
           <xsd:simpleType>
              <xsd:restriction base="xsd:string">
                <xsd:pattern value="#[0-9A-Fa-f]{6}|#[0-9A-Fa-f]{8}|transparent"/>
              </xsd:restriction>
          </xsd:simpleType>
        </xsd:attribute>
        <xsd:attribute name="ForegroundText" use="optional">
           <xsd:simpleType>
              <xsd:restriction base="xsd:string">
                <xsd:pattern value="light|dark"/>
              </xsd:restriction>
          </xsd:simpleType>
        </xsd:attribute>
        <xsd:attribute name="RegisterWNSCapableSettings" type="xsd:nonNegativeInteger" use="optional"/>
        <xsd:attribute name="IsSuggestedApp" type="xsd:boolean" use="optional"/>
    </xsd:complexType>

    <xsd:complexType name="ct_PhoneLegacyTile">
        <xsd:attribute name="ProductID" type="xsd:string" use="required"/>
        <xsd:attribute name="Size" type="local:st_TileSize" use="required"/>
        <xsd:attribute name="Row" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="Column" type="xsd:nonNegativeInteger" use="required"/>
    </xsd:complexType>

    <xsd:complexType name="ct_TargetedContentTile">
        <xsd:attribute name="TileID" type="xsd:string" use="required"/>
        <xsd:attribute name="Size" type="local:st_TileSize" use="required"/>
        <xsd:attribute name="Row" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="Column" type="xsd:nonNegativeInteger" use="required"/>
    </xsd:complexType>

    <xsd:complexType name="ct_StartFolder">
        <xsd:sequence>
            <xsd:choice minOccurs="1" maxOccurs="unbounded">
                <xsd:element name="Tile" type="local:ct_StartTile"/>
                <xsd:element name="SecondaryTile" type="local:ct_StartSecondaryTile"/>
                <xsd:element name="DesktopApplicationTile" type="local:ct_DesktopApplicationTile"/>
                <xsd:element name="PhoneLegacyTile" type="local:ct_PhoneLegacyTile"/>
                <xsd:element name="TargetedContentTile" type="local:ct_TargetedContentTile" />
            </xsd:choice>
        </xsd:sequence>
        <xsd:attribute name="Name" type="xsd:string" use="optional"/>
        <xsd:attribute name="Size" type="local:st_TileSize" use="required"/>
        <xsd:attribute name="Row" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="Column" type="xsd:nonNegativeInteger" use="required"/>
        <xsd:attribute name="LocalizedNameResourceTag" type="xsd:string" use="optional"/>
    </xsd:complexType>

    <xsd:complexType name="ct_StartGroup">
        <xsd:sequence>
            <xsd:choice minOccurs="1" maxOccurs="unbounded">
                <xsd:element name="Tile" type="local:ct_StartTile"/>
                <xsd:element name="SecondaryTile" type="local:ct_StartSecondaryTile"/>
                <xsd:element name="DesktopApplicationTile" type="local:ct_DesktopApplicationTile"/>
                <xsd:element name="PhoneLegacyTile" type="local:ct_PhoneLegacyTile"/>
                <xsd:element name="TargetedContentTile" type="local:ct_TargetedContentTile" />
                <xsd:element name="Folder" type="local:ct_StartFolder"/>
            </xsd:choice>
        </xsd:sequence>
        <xsd:attribute name="Name" type="xsd:string" use="optional"/>
        <xsd:attribute name="LocalizedNameResourceTag" type="xsd:string" use="optional"/>
    </xsd:complexType>

    <xsd:attributeGroup name="ag_SelectionAttributes">
        <xsd:attribute name="SKU" type="xsd:string" use="optional"/>
        <xsd:attribute name="GroupCellWidth" type="xsd:positiveInteger" use="optional"/>
        <xsd:attribute name="Region" type="xsd:string" use="optional"/>
        <xsd:attribute name="PreInstalledAppsEnabled" type="xsd:boolean" use="optional" />
        <xsd:attribute name="TargetedContentTilesEnabled" type="xsd:boolean" use="optional" />
        <xsd:attribute name="EducationModeEnabled" type="xsd:boolean" use="optional" />
        <xsd:attribute name="CommercialDevice" type="xsd:boolean" use="optional" />
        <xsd:attribute name="DualSim" type="xsd:boolean" use="optional" />
        <xsd:attribute name="SystemFeatures" type="xsd:string" use="optional" />
        <xsd:attribute name="OfficeSKU" type="xsd:string" use="optional" />
    </xsd:attributeGroup>

    <xsd:complexType name="ct_startLayout">
        <xsd:sequence>
            <xsd:element name="Group" type="local:ct_StartGroup" minOccurs="0" maxOccurs="unbounded"/>
        </xsd:sequence>
        <xsd:attributeGroup ref="local:ag_SelectionAttributes"/>
    </xsd:complexType>

    <xsd:element name="StartLayout" type="local:ct_startLayout"/>

</xsd:schema>
```

## LayoutModification

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"
            xmlns:local="http://schemas.microsoft.com/Start/2014/LayoutModification"
            xmlns:defaultLayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
            xmlns:startLayout="http://schemas.microsoft.com/Start/2014/StartLayout"
            xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
            targetNamespace="http://schemas.microsoft.com/Start/2014/LayoutModification"
            elementFormDefault="qualified">

    <xsd:import namespace="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"/>
    <xsd:import namespace="http://schemas.microsoft.com/Start/2014/StartLayout"/>
    <xsd:import namespace="http://schemas.microsoft.com/Start/2014/TaskbarLayout"/>

    <xsd:complexType name="ct_Tile">
        <xsd:attribute name="AppUserModelID" type="xsd:string" use="required"/>
        <xsd:attribute name="TileID" type="xsd:string" use="optional"/>
    </xsd:complexType>

    <xsd:complexType name="ct_PhoneLegacyTile">
        <xsd:attribute name="ProductID" type="xsd:string" use="required"/>
    </xsd:complexType>

    <xsd:complexType name="ct_DesktopApplicationTile">
        <xsd:attribute name="LinkFilePath" type="xsd:string" use="required" />
    </xsd:complexType>

    <xsd:complexType name="ct_RequiredStartGroups">
        <xsd:sequence>
            <xsd:element name="AppendGroup" type="startLayout:ct_StartGroup" maxOccurs="2"/>
        </xsd:sequence>
        <xsd:attributeGroup ref="startLayout:ag_SelectionAttributes"/>
    </xsd:complexType>

    <xsd:complexType name="ct_RequiredStartGroupsCollection">
        <xsd:sequence>
            <xsd:element name="RequiredStartGroups" type="local:ct_RequiredStartGroups" minOccurs="1" maxOccurs="unbounded"/>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_RequiredStartTiles">
        <xsd:sequence>
            <xsd:choice minOccurs="1" maxOccurs="unbounded">
                <xsd:element name="Tile" type="local:ct_Tile"/>
                <xsd:element name="PhoneLegacyTile" type="local:ct_PhoneLegacyTile"/>
            </xsd:choice>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_AppendOfficeSuiteChoice">
        <xsd:attribute name="Choice" default="Mobile">
            <xsd:simpleType>
                <xsd:restriction base="xsd:string">
                    <xsd:enumeration value="Mobile"/>
                    <xsd:enumeration value="Desktop2016"/>
                    <xsd:enumeration value="DesktopBridge"/>
                    <xsd:enumeration value="DesktopBridgeSubscription"/>
                </xsd:restriction>
            </xsd:simpleType>
        </xsd:attribute>
    </xsd:complexType>

    <xsd:complexType name="ct_DefaultLayoutOverride">
        <xsd:sequence>
            <xsd:choice minOccurs="1" maxOccurs="1">
                <xsd:element name="StartLayoutCollection" type="defaultLayout:ct_StartLayoutCollectionType"/>
            </xsd:choice>
        </xsd:sequence>
        <xsd:attribute name="LayoutCustomizationRestrictionType" use="optional" default="FullLayout">
            <xsd:simpleType>
                <xsd:restriction base="xsd:string">
                    <xsd:enumeration value="OnlySpecifiedGroups"/>
                    <xsd:enumeration value="FullLayout"/>
                </xsd:restriction>
            </xsd:simpleType>
        </xsd:attribute>
    </xsd:complexType>

    <xsd:complexType name="ct_LayoutOptions">
        <xsd:attribute name="FullScreenStart" type="xsd:boolean" use="optional"/>
        <xsd:attribute name="StartTileGroupsColumnCount" use="optional">
            <xsd:simpleType>
                <xsd:restriction base="xsd:positiveInteger">
                    <xsd:maxInclusive value="2"/>
                </xsd:restriction>
            </xsd:simpleType>
        </xsd:attribute>
        <xsd:attribute name="StartTileGroupCellWidth" use="optional">
            <xsd:simpleType>
                <xsd:restriction base="xsd:positiveInteger">
                    <xsd:enumeration value="6"/>
                    <xsd:enumeration value="8"/>
                </xsd:restriction>
            </xsd:simpleType>
        </xsd:attribute>
        <xsd:attribute name="DeviceCategoryHint" type="xsd:string" use="optional"/>
    </xsd:complexType>

    <xsd:complexType name="ct_TopMFUApps">
        <xsd:choice minOccurs="0" maxOccurs="3">
            <xsd:element name="Tile" type="local:ct_Tile" />
            <xsd:element name="DesktopApplicationTile" type="local:ct_DesktopApplicationTile" />
        </xsd:choice>
    </xsd:complexType>

    <xsd:complexType name="ct_IWSTopApps">
        <xsd:sequence>
            <xsd:choice minOccurs="0" maxOccurs="3">
                <xsd:element name="Tile" type="local:ct_Tile" />
                <xsd:element name="DesktopApplicationTile" type="local:ct_DesktopApplicationTile" />
            </xsd:choice>
        </xsd:sequence>
        <xsd:attributeGroup ref="startLayout:ag_SelectionAttributes"/>
    </xsd:complexType>

    <xsd:complexType name="ct_LayoutModificationTemplateType">
        <xsd:sequence>
            <xsd:element name="LayoutOptions" type="local:ct_LayoutOptions" minOccurs="0" maxOccurs="1"/>
            <xsd:element name="DefaultLayoutOverride" type="local:ct_DefaultLayoutOverride" minOccurs="0" maxOccurs="1"/>
            <xsd:choice minOccurs="0">
                <xsd:element name="RequiredStartGroupsCollection" type="local:ct_RequiredStartGroupsCollection"/>
                <xsd:element name="RequiredStartTiles" type="local:ct_RequiredStartTiles" />
            </xsd:choice>
            <xsd:choice minOccurs="0" maxOccurs="1">
                <xsd:element name="AppendDownloadOfficeTile" type="xsd:boolean" fixed="true"/>
                <xsd:element name="AppendOfficeSuite" type="xsd:boolean" fixed="true"/>
            </xsd:choice>
            <xsd:element name="AppendOfficeSuiteChoice" type="local:ct_AppendOfficeSuiteChoice" minOccurs="0" maxOccurs="1" />
            <xsd:element name="TopMFUApps" type="local:ct_TopMFUApps"  minOccurs="0" maxOccurs="1" />
            <xsd:element name="CustomTaskbarLayoutCollection" type="defaultLayout:ct_TaskbarLayoutCollectionType" minOccurs="0" maxOccurs="1" />
            <xsd:element name="InkWorkspaceTopApps" type="local:ct_IWSTopApps"  minOccurs="0" maxOccurs="1" />
        </xsd:sequence>
        <xsd:attribute name="Version" type="xsd:positiveInteger" use="required"/>
    </xsd:complexType>

    <xsd:element name="LayoutModificationTemplate" type="local:ct_LayoutModificationTemplateType"/>

</xsd:schema>
```

## Taskbar

Here's the Taskbar XSD:

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

    <xsd:complexType name="ct_TaskbarSecondaryTile">
        <xsd:attribute name="AppUserModelID" type="xsd:string" use="required"/>
        <xsd:attribute name="TileID" type="xsd:string" use="required"/>
        <xsd:attribute name="Arguments" type="xsd:string" use="required"/>
        <xsd:attribute name="DisplayName" type="xsd:string" use="required"/>
        <xsd:attribute name="Square150x150LogoUri" type="xsd:string" use="required"/>
        <xsd:attribute name="Wide310x150LogoUri" type="xsd:string" use="optional"/>
    </xsd:complexType>

    <xsd:complexType name="ct_TaskbarPinList">
        <xsd:sequence>
            <xsd:choice minOccurs="0" maxOccurs="unbounded">
                <xsd:element name="UWA" type="local:ct_PinnedUWA" />
                <xsd:element name="DesktopApp" type="local:ct_PinnedDesktopApp" />
                <xsd:element name="SecondaryTile" type="local:ct_TaskbarSecondaryTile" />
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

## Full Layout

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"
            xmlns:local="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
            xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
            xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
            targetNamespace="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
            elementFormDefault="qualified">

    <xsd:import namespace="http://schemas.microsoft.com/Start/2014/StartLayout"/>
    <xsd:import namespace="http://schemas.microsoft.com/Start/2014/TaskbarLayout"/>

    <xsd:complexType name="ct_Windows8UpgradeGroups">
        <xsd:sequence>
            <xsd:element name="PrependGroup" type="start:ct_StartGroup" />
        </xsd:sequence>
        <xsd:attributeGroup ref="start:ag_SelectionAttributes" />
    </xsd:complexType>

    <xsd:complexType name="ct_Windows8UpgradeGroupsCollection">
        <xsd:sequence>
            <xsd:element name="Windows8UpgradeGroups" type="local:ct_Windows8UpgradeGroups" minOccurs="1" maxOccurs="unbounded" />
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_InstalledOfficeMobileSuiteTiles">
        <xsd:sequence>
            <xsd:choice minOccurs="4" maxOccurs="4">
                <xsd:element name="Tile" type="start:ct_StartTile"/>
                <xsd:element name="SecondaryTile" type="start:ct_StartSecondaryTile"/>
            </xsd:choice>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_InstalledOfficeDesktopSuiteTiles">
        <xsd:sequence>
            <xsd:choice minOccurs="4" maxOccurs="4">
                <xsd:element name="Tile" type="start:ct_StartTile"/>
                <xsd:element name="DesktopApplicationTile" type="start:ct_DesktopApplicationTile"/>
            </xsd:choice>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_InstalledOfficeDesktop2016SuiteTiles">
        <xsd:sequence>
            <xsd:choice minOccurs="4" maxOccurs="4">
                <xsd:element name="Tile" type="start:ct_StartTile"/>
                <xsd:element name="DesktopApplicationTile" type="start:ct_DesktopApplicationTile"/>
            </xsd:choice>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_InstalledOfficeDesktopBridgeSuiteTiles">
        <xsd:sequence>
            <xsd:choice minOccurs="4" maxOccurs="4">
                <xsd:element name="Tile" type="start:ct_StartTile"/>
            </xsd:choice>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_DownloadOfficeTile">
        <xsd:sequence>
            <xsd:choice>
                <xsd:element name="Tile" type="start:ct_StartTile"/>
                <xsd:element name="DesktopApplicationTile" type="start:ct_DesktopApplicationTile"/>
            </xsd:choice>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_WebOfficeTiles">
        <xsd:sequence>
            <xsd:choice minOccurs="4" maxOccurs="4">
                <xsd:element name="SecondaryTile" type="start:ct_StartSecondaryTile"/>
            </xsd:choice>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_StartLayoutCollectionType">
        <xsd:sequence>
            <xsd:element name="StartLayout" type="start:ct_startLayout" minOccurs="1" maxOccurs="unbounded"/>
        </xsd:sequence>
    </xsd:complexType>

    <xsd:complexType name="ct_TaskbarLayoutCollectionType">
        <xsd:sequence>
            <xsd:element name="TaskbarLayout" type="taskbar:ct_TaskbarLayout" minOccurs="1" maxOccurs="unbounded"/>
        </xsd:sequence>
        <xsd:attribute name="PinListPlacement" type="taskbar:st_TaskbarPinListPlacement" default="Append" />
    </xsd:complexType>

    <xsd:complexType name="ct_fullDefaultLayoutTemplateType">
        <xsd:sequence>
            <xsd:element name="StartLayoutCollection" type="local:ct_StartLayoutCollectionType"/>
            <xsd:element name="TaskbarLayoutCollection" type="local:ct_TaskbarLayoutCollectionType" minOccurs="0" maxOccurs="1"/>
            <xsd:element name="Windows8UpgradeGroupsCollection" type="local:ct_Windows8UpgradeGroupsCollection" minOccurs="0" />
            <xsd:element name="InstalledOfficeMobileSuiteTiles" type="local:ct_InstalledOfficeMobileSuiteTiles" minOccurs="0"/>
            <xsd:element name="InstalledOfficeDesktopSuiteTiles" type="local:ct_InstalledOfficeDesktopSuiteTiles" minOccurs="0"/>
            <xsd:element name="InstalledOfficeDesktop2016SuiteTiles" type="local:ct_InstalledOfficeDesktop2016SuiteTiles" minOccurs="0"/>
            <xsd:element name="InstalledOfficeDesktopBridgeSuiteTiles" type="local:ct_InstalledOfficeDesktopBridgeSuiteTiles" minOccurs="0"/>
            <xsd:element name="DownloadOfficeTile" type="local:ct_DownloadOfficeTile" minOccurs="0"/>
            <xsd:element name="WebOfficeTiles" type="local:ct_WebOfficeTiles" minOccurs="0"/>
        </xsd:sequence>
        <xsd:attribute name="Version" type="xsd:positiveInteger" use="required"/>
    </xsd:complexType>

    <xsd:element name="FullDefaultLayoutTemplate" type="local:ct_fullDefaultLayoutTemplateType" />

</xsd:schema>
```
