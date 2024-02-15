---
title: Assigned Access reference
description: Learn how to configure Shell Launcher to change the default Windows shell when a user signs in to a device.
ms.topic: reference
ms.date: 12/31/2017
---

# Assigned Access reference

## XML namespaces

| Namespace alias | Namespace |
|-|-|
|default|`http://schemas.microsoft.com/AssignedAccess/2017/config`|
|rs5|`http://schemas.microsoft.com/AssignedAccess/201810/config`|
|V2|`http://schemas.microsoft.com/ShellLauncher/2019/Configuration`|
|v3|`http://schemas.microsoft.com/AssignedAccess/2020/config`|
|v4 >> Windows 10 21H2|`http://schemas.microsoft.com/AssignedAccess/2021/config`|
|v5 >> Windows 11 22H2|`http://schemas.microsoft.com/AssignedAccess/2022/config`|

## default schema

### Profile

```xml
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
        <xs:attribute name="ShowTaskbar" type="xs:boolean" use="required"/>
    </xs:complexType>

```

#### AllAppList

```xml
<xs:complexType name="allappslist_t">
    <xs:sequence minOccurs="1" >
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
```

```xml
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

```

### StartLayout
### Taskbar
###

### Property

## rs5 schema

```xml
<xs:schema
    <xs:element name="FileExplorerNamespaceRestrictions" type="fileExplorerNamespaceRestrictions_t" />
        <xs:element ref="v3:AllowRemovableDrives" minOccurs="0" maxOccurs="1"/>
    <xs:attribute name="AutoLaunch" type="xs:boolean"/>
    <xs:attribute name="AutoLaunchArguments" type="xs:string"/>
    <xs:attribute name="DisplayName" type="xs:string"/>
</xs:schema>
```

### AutoLaunch (rs5)

### AutoLaunchArguments (rs5)

### DisplayName (rs5)



### FileExplorerNamespaceRestrictions (rs5)


## v2 Schema

```xml
<xs:schema
    <xs:attribute name="AppType">
      <xs:simpleType>
        <xs:restriction base="xs:string">
          <xs:enumeration value="UWP"/>
          <xs:enumeration value="Desktop"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:attribute>

    <xs:attribute name="AllAppsFullScreen" type="xs:boolean"/>

</xs:schema>
```

### AppType (v2)

### AllAppsFullScreen (v2)



## v3 schema

```xml
<xs:schema
    <xs:complexType name="globalProfile_t">
        <xs:attribute name="Id" type="guid_t" />
    </xs:complexType>
    <xs:element name="AllowRemovableDrives"/>
    <xs:element name="NoRestriction" />
    <xs:element name="GlobalProfile" type="globalProfile_t" />
</xs:schema>
```

### AllowRemovableDrives (v3)

### NoRestriction (v3)

### Globalprofile (v3)

If you want everyone who signs into a specific device to be assigned as an access user, even if there's no dedicated profile for that user. Alternatively, perhaps Assigned Access couldn't identify a profile for the user and you want to have a fallback profile. Global profile is designed for these scenarios.

Usage is demonstrated below, by using the new XML namespace and specifying `GlobalProfile` from that namespace. When you configure `GlobalProfile`, a non-admin account logs in, if this user doesn't have a designated profile in Assigned Access, or Assigned Access fails to determine a profile for current user, a global profile is applied for the user.

> [!NOTE]
> 1. `GlobalProfile` can only be a multi-app profile.
> 1. Only one `GlobalProfile` can be used in one `AssignedAccess` configuration XML.
> 1. `GlobalProfile` can be used as the only config, or it can be used along with regular user or group config.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="https://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:v3="https://schemas.microsoft.com/AssignedAccess/2020/config"
>
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            ...
        </Profile>
    </Profiles>
    <Configs>
        <v3:GlobalProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
    </Configs>
</AssignedAccessConfiguration>
```

## v4 schema

```xml
<xs:schema
    <xs:attribute name="ClassicAppPath" type="xs:string"/>
    <xs:attribute name="ClassicAppArguments" type="xs:string"/>
    <xs:element name="BreakoutSequence" type="BreakoutSequence_t" />
    <xs:complexType name="BreakoutSequence_t">
        <xs:attribute name="Key" type="xs:string" use="required"/>
    </xs:complexType>
</xs:schema>
```

### BreakoutSequence

### ClassicApp
#### ClassicAppPath
#### ClassicAppArguments

## v5 schema

### Exclusions

### StartPins
Type: string

### TaskbarLayout
Type: string
