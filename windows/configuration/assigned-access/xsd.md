---
title: Assigned Access XML Schema Definition (XSD)
description: Assigned Access XSD reference article.
ms.topic: reference
ms.date: 04/08/2024
---

# Assigned Access XML Schema Definition (XSD)

This reference article contains the latest Assigned Access XML schema definition (XSD) and the XSD additions for each version of Windows.

## Assigned Access XSD

Here's the latest Assigned Access XSD, introduced in Windows 11:

```xml
<xs:schema
    elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v4="http://schemas.microsoft.com/AssignedAccess/2021/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/2017/config">

    <xs:import namespace="http://schemas.microsoft.com/AssignedAccess/201810/config"/>
    <xs:import namespace="http://schemas.microsoft.com/AssignedAccess/2020/config"/>
    <xs:import namespace="http://schemas.microsoft.com/AssignedAccess/2021/config"/>
    <xs:import namespace="http://schemas.microsoft.com/AssignedAccess/2022/config"/>

    <xs:complexType name="profile_list_t">
        <xs:sequence minOccurs="1">
            <xs:element name="Profile" type="profile_t" minOccurs="1" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="kioskmodeapp_t">
        <xs:attribute name="AppUserModelId" type="xs:string"/>
        <xs:attributeGroup ref="ClassicApp_attributeGroup"/>
    </xs:complexType>

    <xs:attributeGroup name="ClassicApp_attributeGroup">
        <xs:attribute ref="v4:ClassicAppPath"/>
        <xs:attribute ref="v4:ClassicAppArguments" use="optional"/>
    </xs:attributeGroup>

    <xs:complexType name="profile_t">
        <xs:choice>
            <xs:sequence minOccurs="1" maxOccurs="1">
                <xs:element name="AllAppsList" type="allappslist_t" minOccurs="1" maxOccurs="1"/>
                <xs:element ref="rs5:FileExplorerNamespaceRestrictions" minOccurs="0" maxOccurs="1"/>
                <xs:element name="StartLayout" type="xs:string" minOccurs="0" maxOccurs="1"/>
                <xs:element ref="v5:StartPins" minOccurs="0" maxOccurs="1"/>
                <xs:element name="Taskbar" type="taskbar_t" minOccurs="1" maxOccurs="1"/>
                <xs:element ref="v5:TaskbarLayout" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
            <xs:sequence minOccurs="1" maxOccurs="1">
                <xs:element name="KioskModeApp" type="kioskmodeapp_t" minOccurs="1" maxOccurs="1">
                    <xs:key name="mutualExclusionAumidOrClassicAppPath">
                        <xs:selector xpath="."/>
                        <xs:field xpath="@AppUserModelId|@v4:ClassicAppPath"/>
                    </xs:key>
                    <xs:unique name="mutualExclusionAumidOrClassicAppArgumentsOptional">
                        <xs:selector xpath="."/>
                        <xs:field xpath="@AppUserModelId|@v4:ClassicAppArguments"/>
                    </xs:unique>
                </xs:element>
                <xs:element ref="v4:BreakoutSequence" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
        </xs:choice>
        <xs:attribute name="Id" type="guid_t" use="required"/>
        <xs:attribute name="Name" type="xs:string" use="optional"/>
    </xs:complexType>

    <xs:complexType name="allappslist_t">
        <xs:sequence minOccurs="1">
            <xs:element name="AllowedApps" type="allowedapps_t" minOccurs="1" maxOccurs="1">
                <xs:unique name="ForbidDupApps">
                    <xs:selector xpath="default:App"/>
                    <xs:field xpath="@AppUserModelId|@DesktopAppPath"/>
                </xs:unique>
                <xs:unique name="OnlyOneAppCanHaveAutoLaunch">
                    <xs:selector xpath="default:App"/>
                    <xs:field xpath="@rs5:AutoLaunch"/>
                </xs:unique>
            </xs:element>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="allowedapps_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="App" type="app_t" minOccurs="1" maxOccurs="unbounded">
                <xs:key name="mutexAumidOrDesktopApp">
                    <xs:selector xpath="."/>
                    <xs:field xpath="@AppUserModelId|@DesktopAppPath"/>
                </xs:key>
            </xs:element>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="app_t">
        <xs:attribute name="AppUserModelId" type="xs:string"/>
        <xs:attribute name="DesktopAppPath" type="xs:string"/>
        <xs:attributeGroup ref="autoLaunch_attributeGroup"/>
    </xs:complexType>

    <xs:attributeGroup name="autoLaunch_attributeGroup">
        <xs:attribute ref="rs5:AutoLaunch"/>
        <xs:attribute ref="rs5:AutoLaunchArguments" use="optional"/>
    </xs:attributeGroup>

    <xs:complexType name="taskbar_t">
        <xs:attribute name="ShowTaskbar" type="xs:boolean" use="required"/>
    </xs:complexType>

    <xs:complexType name="profileId_t">
        <xs:attribute name="Id" type="guid_t" use="required"/>
    </xs:complexType>

    <xs:simpleType name="guid_t">
        <xs:restriction base="xs:string">
            <xs:pattern value="\{[0-9a-fA-F]{8}\-([0-9a-fA-F]{4}\-){3}[0-9a-fA-F]{12}\}"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="config_list_t">
        <xs:sequence minOccurs="1">
            <xs:element ref="v3:GlobalProfile" minOccurs="0" maxOccurs="1"/>
            <xs:element name="Config" type="config_t" minOccurs="0" maxOccurs="unbounded"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="config_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:choice>
                <xs:element name="Account" type="xs:string" minOccurs="1" maxOccurs="1"/>
                <xs:element name="AutoLogonAccount" type="autologon_account_t" minOccurs="1" maxOccurs="1"/>
                <xs:element name="UserGroup" type="group_t" minOccurs="1" maxOccurs="1"/>
                <xs:element name="SpecialGroup" type="specialGroup_t" minOccurs="1" maxOccurs="1" />
            </xs:choice>
            <xs:element name="DefaultProfile" type="profileId_t" minOccurs="1" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="autologon_account_t">
        <xs:attribute name="HiddenId" type="guid_t" fixed="{74331115-F68A-4DF9-8D2C-52BA2CE2ADB1}"/>
        <xs:attribute ref="rs5:DisplayName" use="optional" />
    </xs:complexType>

    <xs:complexType name="group_t">
        <xs:attribute name="Name" type="xs:string" use="required"/>
        <xs:attribute name="Type" type="groupType_t" use="required"/>
    </xs:complexType>

    <xs:complexType name="specialGroup_t">
        <xs:attribute name="Name" type="specialGroupType_t" use="required"/>
    </xs:complexType>

    <xs:simpleType name="groupType_t">
        <xs:restriction base="xs:string">
            <xs:enumeration value="LocalGroup"/>
            <xs:enumeration value="ActiveDirectoryGroup"/>
            <xs:enumeration value="AzureActiveDirectoryGroup"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:simpleType name="specialGroupType_t">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Visitor"/>
            <xs:enumeration value="DeviceOwner"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="fileExplorerNamespaceRestrictions_t">
        <xs:sequence minOccurs="1">
            <xs:element name="AllowedNamespace" type="allowedFileExplorerNamespace_t"/>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="allowedFileExplorerNamespace_t">
        <xs:attribute name="Name" type="allowedFileExplorerNamespaceValues_t"/>
    </xs:complexType>

    <xs:simpleType name="allowedFileExplorerNamespaceValues_t">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Downloads"/>
        </xs:restriction>
    </xs:simpleType>

    <!--below is the definition of the config xml content-->
    <xs:element name="AssignedAccessConfiguration">
        <xs:complexType>
            <xs:all minOccurs="1">
                <xs:element name="Profiles" type="profile_list_t">
                    <xs:unique name="duplicateRolesForbidden">
                        <xs:selector xpath="default:Profile"/>
                        <xs:field xpath="@Id"/>
                    </xs:unique>
                </xs:element>
                <xs:element name="Configs" type="config_list_t">
                    <xs:unique name="duplicateAutoLogonAccountForbidden">
                        <xs:selector xpath=".//default:AutoLogonAccount"/>
                        <xs:field xpath="@HiddenId"/>
                    </xs:unique>
                </xs:element>
            </xs:all>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

## Windows 11, version 22H2 additions

Here's the Assigned Access XSD for the features added in Windows 11:

```xml
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:vc="http://www.w3.org/2007/XMLSchema-versioning"
    vc:minVersion="1.1"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2022/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/2022/config"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/2022/config"
    >

    <xs:element name = "StartPins" type = "xs:string"/>
    <xs:element name = "TaskbarLayout" type="xs:string"/>
</xs:schema>
```

## Windows 11, version 21H2 additions

Here's the Assigned Access XSD for the features added in Windows 11, version 21H2:

```xml
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:vc="http://www.w3.org/2007/XMLSchema-versioning"
    vc:minVersion="1.1"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2021/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/2021/config"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/2021/config"
    >

    <xs:attribute name="ClassicAppPath" type="xs:string"/>
    <xs:attribute name="ClassicAppArguments" type="xs:string"/>

    <xs:element name="BreakoutSequence" type="BreakoutSequence_t" />

    <xs:complexType name="BreakoutSequence_t">
        <xs:attribute name="Key" type="xs:string" use="required"/>
    </xs:complexType>

</xs:schema>
```

## Windows 10, version 1909 additions

Here are the Assigned Access XSDs for the features added in Windows 10, version 1909:

```xml
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:vc="http://www.w3.org/2007/XMLSchema-versioning" vc:minVersion="1.1"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/202010/config" targetNamespace="http://schemas.microsoft.com/AssignedAccess/2020/config">

    <xs:import namespace="http://schemas.microsoft.com/AssignedAccess/202010/config" />

    <xs:simpleType name="guid_t">
        <xs:restriction base="xs:string">
            <xs:pattern value="\{[0-9a-fA-F]{8}\-([0-9a-fA-F]{4}\-){3}[0-9a-fA-F]{12}\}"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:complexType name="globalProfile_t">
        <xs:sequence minOccurs="0" maxOccurs="1">
            <xs:element ref="v5:Exclusions" minOccurs="0" maxOccurs="1" />
        </xs:sequence>
        <xs:attribute name="Id" type="guid_t" />
    </xs:complexType>

    <xs:element name="AllowRemovableDrives"/>
    <xs:element name="NoRestriction" />
    <xs:element name="GlobalProfile" type="globalProfile_t" />

</xs:schema>
```

```xml
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:vc="http://www.w3.org/2007/XMLSchema-versioning"
    vc:minVersion="1.1"
    xmlns="http://schemas.microsoft.com/AssignedAccess/202010/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/202010/config"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/202010/config"
    >

    <xs:complexType name="deviceOwnerGroup_t">
        <xs:attribute name="Name" type="xs:string" fixed="DeviceOwner" />
    </xs:complexType>

    <xs:complexType name="exclusion_t">
            <xs:sequence minOccurs="1" maxOccurs="1">
                <xs:choice>
                   <xs:element name="SpecialGroup" type="deviceOwnerGroup_t" minOccurs="1" maxOccurs="1" />
                </xs:choice>
            </xs:sequence>
    </xs:complexType>

    <xs:element name="Exclusions" type="exclusion_t" />
</xs:schema>
```

## Windows 10, version 1809 additions

Here's the Assigned Access XSD for the features added in Windows 10, version 1809:

```xml
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config" targetNamespace="http://schemas.microsoft.com/AssignedAccess/201810/config">

    <xs:import namespace="http://schemas.microsoft.com/AssignedAccess/2020/config"/>

    <xs:complexType name="fileExplorerNamespaceRestrictions_t">
        <xs:choice>
            <xs:sequence minOccurs="0">
                <xs:element name="AllowedNamespace" type="allowedFileExplorerNamespace_t" minOccurs="0"/>
                <xs:element ref="v3:AllowRemovableDrives" minOccurs="0" maxOccurs="1"/>
            </xs:sequence>
            <xs:element ref="v3:NoRestriction" minOccurs="0" maxOccurs="1" />
        </xs:choice>
    </xs:complexType>

    <xs:complexType name="allowedFileExplorerNamespace_t">
        <xs:attribute name="Name" type="allowedFileExplorerNamespaceValues_t" use="required"/>
    </xs:complexType>

    <xs:simpleType name="allowedFileExplorerNamespaceValues_t">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Downloads"/>
        </xs:restriction>
    </xs:simpleType>

    <xs:element name="FileExplorerNamespaceRestrictions" type="fileExplorerNamespaceRestrictions_t" />
    <xs:attribute name="AutoLaunch" type="xs:boolean"/>
    <xs:attribute name="AutoLaunchArguments" type="xs:string"/>
    <xs:attribute name="DisplayName" type="xs:string"/>
</xs:schema>
```
