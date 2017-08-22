---
title: AssignedAccess CSP
description: The AssignedAccess configuration service provider (CSP) is used set the device to run in kiosk mode.
ms.assetid: 421CC07D-6000-48D9-B6A3-C638AAF83984
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 07/27/2017
---

# AssignedAccess CSP

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The AssignedAccess configuration service provider (CSP) is used set the device to run in kiosk mode. Once the CSP has been executed, then the next user login that is associated with the kiosk mode puts the device in the kiosk mode running the application specified in the CSP configuration.

For step-by-step guide for setting up devices to run in kiosk mode, see [Set up a kiosk on Windows 10 Pro, Enterprise, or Education.](http://go.microsoft.com/fwlink/p/?LinkID=722211)

> **Note**  The AssignedAccess CSP is only supported in Windows 10 Enterprise and Windows 10 Education.

The following diagram shows the AssignedAccess configuration service provider in tree format

![assignedaccess csp diagram](images/provisioning-csp-assignedaccess.png)

<a href="" id="--vendor-msft-assignedaccess"></a>**./Vendor/MSFT/AssignedAccess**  
Root node for the CSP.

<a href="" id="assignedaccess-kioskmodeapp"></a>**AssignedAccess/KioskModeApp**  
A JSON string that contains the user account name and Application User Model ID (AUMID) of the Kiosk mode app. For more information about how to get the AUMID, follow the information in [this Microsoft website](http://go.microsoft.com/fwlink/p/?LinkId=404220).

In Windows 10, version 1607, you can use a provisioned app to configure the kiosk mode. For more information about how to remotely provision an app, see [Enterprise app management](enterprise-app-management.md).

Here's an example:

``` syntax
{"Account":"contoso\\kioskuser","AUMID":"Microsoft.Windows.Contoso_cw5n1h2txyewy!Microsoft.ContosoApp.ContosoApp"}
```

When configuring the kiosk mode app, the account name will be used to find the target user. The account name includes domain name and user name.

> **Note**  The domain name can be optional if the user name is unique across the system.


For a local account, the domain name should be the device name. When Get is executed on this node, the domain name is always returned in the output.


The supported operations are Add, Delete, Get and Replace. When there's no configuration, the Get and Delete methods fail. When there's already a configuration for kiosk mode app, the Add method fails. The data pattern for Add and Replace is the same.

<a href="" id="assignedaccess-configuration"></a>**AssignedAccess/Configuration**  
Added in Windows 10, version 1709. Specifies the settings that you can configure in the kiosk or device. This node accepts an AssignedAccessConfiguration xml as input to configure the device experience. For details about the configuration settings in the XML, see [Overview of the AssignedAccessConfiguration XML](#overview-of-the-assignedaccessconfiguration-xml). Here is the schema for the [AssignedAccessConfiguration](#assignedaccessconfiguration-xsd). 

Enterprises can use this to easily configure and manage the curated lockdown experience. 

Supported operations are Add, Get, Delete, and Replace.

Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all the enforced policies back (e.g. Start Layout).

## Examples

KioskModeApp Add

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Add>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
               <Meta>  
                   <Format xmlns="syncml:metinf">chr</Format>  
               </Meta>  
               <Data>{"Account":"Domain\\AccountName","AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}</Data>
           </Item>
       </Add>
       <Final />
   </SyncBody>
</SyncML>
```

KioskModeApp Delete

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Delete>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
           </Item>
       </Delete>
       <Final />
   </SyncBody>
</SyncML>
```

KioskModeApp Get

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Get>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
           </Item>
       </Get>
       <Final />
   </SyncBody>
</SyncML>
```

KioskModeApp Replace

``` syntax
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Replace>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/KioskModeApp</LocURI>
               </Target>
               <Meta>  
                   <Format xmlns="syncml:metinf">chr</Format>  
               </Meta>  
               <Data>{"Account":"Domain\\AccountName","AUMID":"Microsoft.WindowsAlarms_8wekyb3d8bbwe!App"}</Data>
           </Item>
       </Replace>
       <Final />
   </SyncBody>
</SyncML>
```

## AssignedAccessConfiguration XSD

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<xs:schema
    elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    targetNamespace="http://schemas.microsoft.com/AssignedAccess/2017/config"
    >

    <xs:complexType name="profile_list_t">
        <xs:sequence minOccurs="1" >
            <xs:element name="Profile" type="profile_t" minOccurs="1" maxOccurs="unbounded">
                <xs:unique name="duplicateRolesForbidden">
                    <xs:selector xpath="Profile"/>
                    <xs:field xpath="@Id"/>
                </xs:unique>
            </xs:element>
        </xs:sequence>
    </xs:complexType>

    <xs:complexType name="profile_t">
        <xs:sequence minOccurs="1" maxOccurs="1">
            <xs:element name="AllAppsList" type="allappslist_t" minOccurs="1" maxOccurs="1">
                <xs:unique name="ForbidDupApps">
                    <xs:selector xpath="App"/>
                    <xs:field xpath="@AppUserModelId"/>
                    <xs:field xpath="@DesktopAppPath"/>
                </xs:unique>
            </xs:element>
            <xs:element name="StartLayout" type="xs:string" minOccurs="1" maxOccurs="1"/>
            <xs:element name="Taskbar" type="taskbar_t" minOccurs="1" maxOccurs="1"/>
        </xs:sequence>
        <xs:attribute name="Id" type="guid_t" use="required"/>
        <xs:attribute name="Name" type="xs:string" use="optional"/>
    </xs:complexType>

    <xs:complexType name="allappslist_t">
        <xs:sequence minOccurs="1" >
            <xs:element name="AllowedApps" type="allowedapps_t" minOccurs="1" maxOccurs="1">
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
    </xs:complexType>

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
            <xs:element name="Account" type="xs:string" minOccurs="1" maxOccurs="1"/>
            <xs:element name="DefaultProfile" type="profileId_t" minOccurs="1" maxOccurs="1"/>
        </xs:sequence>
    </xs:complexType>

    <!--below is the definition of the config xml content-->
    <xs:element name="AssignedAccessConfiguration">
        <xs:complexType>
            <xs:all minOccurs="1">
                <xs:element name="Profiles" type="profile_list_t">
                </xs:element>
                <xs:element name="Configs" type="config_list_t"/>
            </xs:all>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

## Overview of the AssignedAccessConfiguration XML  

Let's start by looking at the basic structure of the XML file.  

-  A configuration xml can define multiple profiles, each profile has a unique Id and defines a curated set of applications that are allowed to run.  
-  A configuration xml can have multiple configs, each config associates a non-admin user account to a default profile Id. 
-  A profile has no effect if it’s not associated to a user account.  
 
A profile node has below information:  

-  Id: a GUID attribute to uniquely identify the Profile. 
-  AllowedApps: a node with a list of allowed to run applications, could be UWP apps or desktop apps.  
-  StartLayout: a node for startlayout policy xml.  
-  Taskbar: a node with a Boolean attribute ShowTaskbar to indicate whether to show taskbar.  

You can start your file by pasting the following XML (or any other examples in this doc) into a XML editor, and saving the file as filename.xml. 

``` syntax
<?xml version="1.0" encoding="utf-8" ?> 
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"> 
    <Profiles> 
        <Profile Id=""> 
            <AllAppsList> 
                <AllowedApps/> 
            </AllAppsList>          
            <StartLayout/> 
            <Taskbar/> 
        </Profile> 
    </Profiles> 
    <Configs> 
        <Config> 
            <Account/> 
            <DefaultProfile Id=""/> 
        </Config> 
    </Configs> 
</AssignedAccessConfiguration> 
```
 
### Allowed apps

Based on the purpose of the kiosk device, define the list of applications that are allowed to run. This list can contain both UWP apps and desktop apps, which is used to generate the assigned access AppLocker rules.  

-  For Windows apps, you need to provide the App User Model ID (AUMID).  
   -  [Learn how to get the AUMID](https://go.microsoft.com/fwlink/p/?LinkId=614867), or  
   -  Get the AUMID via the [Start Layout XML](#start-layout).  
-  For desktop apps, you need to specify the full path of the executable, which can contain one or more system environment variables in the form of %variableName% (i.e. %systemroot%, %windir%). 

Here are the predefined assigned access AppLocker rules:  

**For UWP apps**
    
1. Default rule is to allow all users to launch the signed package apps.  
2. The package app deny list is generated at run time when the assigned access user signs in. Based on the installed/provisioned package apps available for the user account, assigned access generates the deny list. This list will exclude the default allowed inbox package apps which are critical for the system to function, and then exclude the allowed package apps enterprises defined in the assigned access configuration. This deny list will be used to prevent the user from accessing the apps which are available for the user but not in the allowed list.  
 
> [!Note]   
> Assigned access multi-app mode doesn’t block the enterprises or the users from installing UWP apps. When a new UWP app is installed during the current assigned access user session, this app will not be in the deny list. When the user signs out and signs in back next time, it will be included in the deny list. If this is an enterprise deployed LoB app and you want to allow it running, make sure update the assigned access configuration to include it in the allowed app list.  
 
**For Win32 apps**

1. Default rule is to allow all users to launch the desktop programs signed with Microsoft Certificate in order for the system to boot and function. Also the rule allows admin user group to launch all desktop programs.  
2. There is a predefined inbox desktop app deny list for the assigned access user account, and this deny list is adjusted based on the desktop app allow list you defined in the multi-app configuration.  
3. Enterprise defined allowed desktop apps are added in the AppLocker allow list.  

The following example makes Groove Music, Movies & TV, Photos, Weather, Calculator, Paint and Notepad apps allowed to run on the device.  

``` syntax
      <AllAppsList> 
        <AllowedApps> 
          <App AppUserModelId="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" /> 
          <App AppUserModelId="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" /> 
          <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" /> 
          <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" /> 
          <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" /> 
          <App DesktopAppPath="%windir%\system32\mspaint.exe" /> 
          <App DesktopAppPath="C:\Windows\System32\notepad.exe" /> 
        </AllowedApps> 
      </AllAppsList> 
```

### Start layout

Once you have defined the list of allowed applications, you can customize the Start layout for your kiosk experience. You can choose to pin all the allowed apps on the Start screen or just a subset depending on whether you want the end user to directly access them on the Start.  
 
The easiest way for creating a customized Start layout to apply to other Windows 10 devices is to set up the Start screen on a test device and then export the layout.  

A few things to note here: 

-  The test device on which you customize the Start layout should have the same OS version that is installed on the device you plan to deploy the multi-app assigned access configuration.  
-  Since the multi-app assigned access experience is intended for fixed purpose devices, to ensure the device experiences are consistent and predictable, use the full Start layout option instead of the partial Start layout.  
-  There are no apps pinned on the taskbar in the multi-app mode, and it is not supported to configure Taskbar layout using the CustomTaskbarLayoutCollection tag in a layout modification XML as part of the assigned access configuration.  

The following example pins Groove Music, Movies & TV, Photos, Weather, Calculator, Paint and Notepad apps on Start.  

```syntax
      <StartLayout> 
        <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"> 
                      <LayoutOptions StartTileGroupCellWidth="6" /> 
                      <DefaultLayoutOverride> 
                        <StartLayoutCollection> 
                          <defaultlayout:StartLayout GroupCellWidth="6"> 
                            <start:Group Name="Group1"> 
                              <start:Tile Size="4x4" Column="0" Row="0" AppUserModelID="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" /> 
                              <start:Tile Size="2x2" Column="4" Row="2" AppUserModelID="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" /> 
                              <start:Tile Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" /> 
                              <start:Tile Size="2x2" Column="4" Row="4" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" /> 
                              <start:Tile Size="4x2" Column="0" Row="4" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" /> 
                            </start:Group> 
                            <start:Group Name="Group2"> 
                              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\mspaint.exe" /> 
                              <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\notepad.exe" /> 
                            </start:Group> 
                          </defaultlayout:StartLayout> 
                        </StartLayoutCollection> 
                      </DefaultLayoutOverride> 
                    </LayoutModificationTemplate> 
                ]]> 
      </StartLayout> 
```

For additional information, see [Customize and export Start layout](https://docs.microsoft.com/en-us/windows/configuration/customize-and-export-start-layout)

### Taskbar  

Define whether you want to have the taskbar present in the kiosk device. For tablet based or touch enabled All-In-One kiosks, when you don’t attach a keyboard and mouse, you can hide the taskbar as part of the multi-app experience if you want.  
The following example exposes the taskbar to the end user: 

``` syntax
      <Taskbar ShowTaskbar="true"/> 
```
The following example hides the taskbar: 

``` syntax
      <Taskbar ShowTaskbar="false"/> 
```

> [!Note] 
> This is different with the “Automatically hide the taskbar” option in tablet mode which shows the taskbar when swiping up from or moving the mouse pointer down to the bottom of the screen. Setting “ShowTaskbar” as “false” will always hide the taskbar.  

### Profiles and configs

In the XML file, you define each profile with a GUID. You can create a GUID using a GUID generator. The GUID just needs to be unique within this XML file.  

``` syntax
  <Profiles> 
    <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">…</Profile> 
  </Profiles>
```

Under Configs, define which user account will be associated with the profile. When this user account signs in on the device, the associated assigned access profile will be enforced, including the allowed apps, start layout, taskbar configuration as well as other local group policies/MDM policies set as part of the multi-app experience.  

``` syntax
  <Configs> 
    <Config> 
      <Account>MultiAppKioskUser</Account> 
      <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/> 
    </Config> 
  </Configs>  
```

> [!Note]  
> - The full multi-app assigned access experience can only work for non-admin users. It’s not supported to associate an admin user with the assigned access profile, doing this in the XML file will result unexpected/unsupported experiences when this admin user signs in.   
> - Before applying the multi-app configuration, make sure the specified user account is available on the device, otherwise it will fail. 

### Example AssignedAccessConfiguration XML

``` syntax
<?xml version="1.0" encoding="utf-8" ?> 
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"> 
  <Profiles> 
    <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"> 
      <AllAppsList> 
        <AllowedApps> 
          <App AppUserModelId="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" /> 
          <App AppUserModelId="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" /> 
          <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" /> 
          <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" /> 
          <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" /> 
          <App DesktopAppPath="%windir%\system32\mspaint.exe" /> 
          <App DesktopAppPath="C:\Windows\System32\notepad.exe" /> 
        </AllowedApps> 
      </AllAppsList> 
      <StartLayout> 
        <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"> 
                      <LayoutOptions StartTileGroupCellWidth="6" /> 
                      <DefaultLayoutOverride> 
                        <StartLayoutCollection> 
                          <defaultlayout:StartLayout GroupCellWidth="6"> 
                            <start:Group Name="Group1"> 
                              <start:Tile Size="4x4" Column="0" Row="0" AppUserModelID="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" /> 
                              <start:Tile Size="2x2" Column="4" Row="2" AppUserModelID="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" /> 
                              <start:Tile Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" /> 
                              <start:Tile Size="2x2" Column="4" Row="4" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" /> 
                              <start:Tile Size="4x2" Column="0" Row="4" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" /> 
                            </start:Group> 
                            <start:Group Name="Group2"> 
                              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\mspaint.exe" /> 
                              <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\notepad.exe" /> 
                            </start:Group> 
                          </defaultlayout:StartLayout> 
                        </StartLayoutCollection> 
                      </DefaultLayoutOverride> 
                    </LayoutModificationTemplate> 
                ]]> 
      </StartLayout> 
      <Taskbar ShowTaskbar="true"/> 
    </Profile> 
  </Profiles> 
  <Configs> 
    <Config> 
      <Account>MultiAppKioskUser</Account> 
      <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/> 
    </Config> 
  </Configs> 
</AssignedAccessConfiguration> 
```
