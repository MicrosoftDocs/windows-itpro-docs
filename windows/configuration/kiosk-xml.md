---
title: Assigned Access configuration kiosk XML reference (Windows 10)
description: XML and XSD for kiosk device configuration.
ms.assetid: 14DDDC96-88C7-4181-8415-B371F25726C8
ms.reviewer: 
manager: dansimp
keywords: ["lockdown", "app restrictions", "applocker"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: edu, security
author: dansimp
ms.localizationpriority: medium
ms.date: 10/02/2018
ms.author: dansimp
ms.topic: article
---

#  Assigned Access configuration (kiosk) XML reference


**Applies to**

-   Windows 10

## Full XML sample

>[!NOTE]
>Updated for Windows 10, version 1809.  

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration 
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    >
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" />
                    <App AppUserModelId="Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MSPaint_8wekyb3d8bbwe!Microsoft.MSPaint" />
                    <App AppUserModelId="Microsoft.WindowsAlarms_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowsLive.calendar" />
                    <App AppUserModelId="Microsoft.WindowsStore_8wekyb3d8bbwe!App" />
                    <App DesktopAppPath="%SystemRoot%\system32\mspaint.exe" />
                    <App DesktopAppPath="%SystemDrive%\LOB\MyLOB.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
                <rs5:AllowedNamespace Name="Downloads"/>
            </rs5:FileExplorerNamespaceRestrictions>
            <StartLayout>
                <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
                      <LayoutOptions StartTileGroupCellWidth="6" />
                      <DefaultLayoutOverride>
                        <StartLayoutCollection>
                          <defaultlayout:StartLayout GroupCellWidth="6">
                            <start:Group Name="Life at a glance">
                              <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowsLive.calendar" />
                              <start:Tile Size="4x2" Column="0" Row="4" AppUserModelID="Microsoft.WindowsStore_8wekyb3d8bbwe!App" />
                              <!-- A link file is required for desktop applications to show on start layout, the link file can be placed under
                                   "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs" if the link file is shared for all users or
                                   "%AppData%\Microsoft\Windows\Start Menu\Programs" if the link file is for the specific user only 
                                   see document https://docs.microsoft.com/windows/configuration/start-layout-xml-desktop
                              -->
                              <!-- for inbox desktop applications, a link file might already exist and can be used directly -->
                              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\Accessories\paint.lnk" />
                              <!-- for 3rd party desktop application, place the link file under appropriate folder -->
                              <start:DesktopApplicationTile Size="2x2" Column="4" Row="0" DesktopApplicationLinkPath="%AppData%\Microsoft\Windows\Start Menu\Programs\MyLOB.lnk" />
                            </start:Group>
                          </defaultlayout:StartLayout>
                        </StartLayoutCollection>
                      </DefaultLayoutOverride>
                    </LayoutModificationTemplate>
                ]]>
            </StartLayout>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!BCHost" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!ContentProcess" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!F12" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!PdfReader" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" rs5:AutoLaunch="true" rs5:AutoLaunchArguments="123.txt"/>
                </AllowedApps>
            </AllAppsList>
            <StartLayout>
                <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
                      <LayoutOptions StartTileGroupCellWidth="6" />
                      <DefaultLayoutOverride>
                        <StartLayoutCollection>
                          <defaultlayout:StartLayout GroupCellWidth="6">
                            <start:Group Name="Life at a glance">
                              <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                              <start:Tile Size="4x2" Column="0" Row="4" AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%AppData%\Microsoft\Windows\Start Menu\Programs\Accessories\notepad.lnk" />
                            </start:Group>
                          </defaultlayout:StartLayout>
                        </StartLayoutCollection>
                      </DefaultLayoutOverride>
                    </LayoutModificationTemplate>
                ]]>
            </StartLayout>
            <Taskbar ShowTaskbar="false"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account>domain\account</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
        <Config>
            <Account>AzureAD\john@contoso.onmicrosoft.com</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
        <Config>
            <Account>localaccount</Account>
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <AutoLogonAccount rs5:DisplayName="Hello World"/>
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <UserGroup Type="LocalGroup" Name="mygroup" />
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <UserGroup Type="ActiveDirectoryGroup" Name="redmond\somegroup" />
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <UserGroup Type="AzureActiveDirectoryGroup" Name="a8d36e43-4180-4ac5-a627-fb8149bba1ac" />
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```
## Kiosk only sample XML

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    >
    <Profiles>
        <Profile Id="{AFF9DA33-AE89-4039-B646-3A5706E92957}">
            <KioskModeApp AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account>singleappuser</Account>
            <DefaultProfile Id="{AFF9DA33-AE89-4039-B646-3A5706E92957}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```


## XSD for AssignedAccess configuration XML

>[!NOTE]
>Updated for Windows 10, version 1809.

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/2017/config"
    >

  <xs:import namespace="http://schemas.microsoft.com/AssignedAccess/201810/config"/>

  <xs:complexType name="profile_list_t">
    <xs:sequence minOccurs="1" >
      <xs:element name="Profile" type="profile_t" minOccurs="1" maxOccurs="unbounded"/>
    </xs:sequence>
  </xs:complexType>

  <xs:complexType name="kioskmodeapp_t">
    <xs:attribute name="AppUserModelId" type="xs:string"/>
  </xs:complexType>

  <xs:complexType name="profile_t">
    <xs:choice>
      <xs:sequence minOccurs="1" maxOccurs="1">
        <xs:element name="AllAppsList" type="allappslist_t" minOccurs="1" maxOccurs="1"/>
        <xs:element ref="rs5:FileExplorerNamespaceRestrictions" minOccurs="0" maxOccurs="1"/>
        <xs:element name="StartLayout" type="xs:string" minOccurs="1" maxOccurs="1"/>
        <xs:element name="Taskbar" type="taskbar_t" minOccurs="1" maxOccurs="1"/>
      </xs:sequence>
      <xs:element name="KioskModeApp" type="kioskmodeapp_t" minOccurs="1" maxOccurs="1"/>
    </xs:choice>
    <xs:attribute name="Id" type="guid_t" use="required"/>
    <xs:attribute name="Name" type="xs:string" use="optional"/>
  </xs:complexType>

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
    <xs:sequence minOccurs="1" >
      <xs:element name="Config" type="config_t" minOccurs="1" maxOccurs="unbounded"/>
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

## XSD schema for new elements in Windows 10, version 1809

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:default="http://schemas.microsoft.com/AssignedAccess/201810/config"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/201810/config"
    >

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

  <xs:element name="FileExplorerNamespaceRestrictions" type="fileExplorerNamespaceRestrictions_t" />

  <xs:attribute name="AutoLaunch" type="xs:boolean"/>

  <xs:attribute name="AutoLaunchArguments" type="xs:string"/>

  <xs:attribute name="DisplayName" type="xs:string"/>

</xs:schema>
```
