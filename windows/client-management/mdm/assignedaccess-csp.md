---
title: AssignedAccess CSP
description: The AssignedAccess configuration service provider (CSP) is used set the device to run in kiosk mode.
ms.assetid: 421CC07D-6000-48D9-B6A3-C638AAF83984
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# AssignedAccess CSP


The AssignedAccess configuration service provider (CSP) is used set the device to run in kiosk mode. Once the CSP has been executed, then the next user login that is associated with the kiosk mode puts the device in the kiosk mode running the application specified in the CSP configuration.

For a step-by-step guide for setting up devices to run in kiosk mode, see [Set up a kiosk on Windows 10 Pro, Enterprise, or Education.](http://go.microsoft.com/fwlink/p/?LinkID=722211)

 In Windows 10, version 1709, the AssignedAccess configuration service provider (CSP) has been expanded to make it easy for administrators to create kiosks that run more than one app. You can configure multi-app kiosks using a provisioning package. For a step-by-step guide, see [Create a Windows 10 kiosk that runs multiple apps](https://docs.microsoft.com/en-us/windows/configuration/lock-down-windows-10-to-specific-apps).

> [!Note]
> The AssignedAccess CSP is supported in Windows 10 Enterprise and Windows 10 Education. Starting in Windows 10, version 1709 it is also supported in Windows 10 Pro and Windows 10 S.

The following diagram shows the AssignedAccess configuration service provider in tree format

![assignedaccess csp diagram](images/provisioning-csp-assignedaccess.png)

<a href="" id="--vendor-msft-assignedaccess"></a>**./Device/Vendor/MSFT/AssignedAccess**  
Root node for the CSP.

<a href="" id="assignedaccess-kioskmodeapp"></a>**./Device/Vendor/MSFT/AssignedAccess/KioskModeApp**  
A JSON string that contains the user account name and Application User Model ID (AUMID) of the Kiosk mode app. For more information about how to get the AUMID, follow the information in [this Microsoft website](http://go.microsoft.com/fwlink/p/?LinkId=404220).

> [!Note]  
> You cannot set both KioskModeApp and Configuration at the same time in the device in Windows 10, version 1709.

In Windows 10, version 1607, you can use a provisioned app to configure the kiosk mode. For more information about how to remotely provision an app, see [Enterprise app management](enterprise-app-management.md).

Here's an example:

``` syntax
{"Account":"contoso\\kioskuser","AUMID":"Microsoft.Windows.Contoso_cw5n1h2txyewy!Microsoft.ContosoApp.ContosoApp"}
```

> [!Tip]  
> In this example the double \\\ is only required because it's in json and json escapes \ into \\\\. If MDM server uses json parser\composer, they should only ask customer to type one \\, which will be \\\ in the json. If user types \\\\, it'll be \\\\\\\ in json, which is wrong. For the same reason, domain\account used in Configuration xml does not need \\\ but only one \\, because xml does not (require) escape \\.
>
> This comment applies to both domain\account, AzureAD\someone@contoso.onmicrosoft.com, i.e. as long as a \ used in json string. 

When configuring the kiosk mode app, the account name will be used to find the target user. The account name includes domain name and user name.

> [!Note]  
> The domain name can be optional if the user name is unique across the system.

For a local account, the domain name should be the device name. When Get is executed on this node, the domain name is always returned in the output.


The supported operations are Add, Delete, Get and Replace. When there's no configuration, the Get and Delete methods fail. When there's already a configuration for kiosk mode app, the Add method fails. The data pattern for Add and Replace is the same.

<a href="" id="assignedaccess-configuration"></a>**./Device/Vendor/MSFT/AssignedAccess/Configuration**  
Added in Windows 10, version 1709. Specifies the settings that you can configure in the kiosk or device. This node accepts an AssignedAccessConfiguration xml as input to configure the device experience. For details about the configuration settings in the XML, see [Create a Windows 10 kiosk that runs multiple apps](https://docs.microsoft.com/en-us/windows/configuration/lock-down-windows-10-to-specific-apps).Here is the schema for the [AssignedAccessConfiguration](#assignedaccessconfiguration-xsd). 

> [!Note]  
> You cannot set both KioskModeApp and Configuration at the same time in the device in Windows 10, version 1709.

Enterprises can use this to easily configure and manage the curated lockdown experience. 

Supported operations are Add, Get, Delete, and Replace.

Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all the enforced policies back (e.g. Start Layout).

## KioskModeApp examples

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

## Example AssignedAccessConfiguration XML

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

## Configuration examples

XML encoding (escaped) and CDATA of the XML in the Data node both ensure that DM client can properly interpret the SyncML and send the configuration xml as string (in original format, unescaped) to AssignedAccess CSP to handle. 

Similarly, the StartLayout xml inside the configuration xml is using the same format, xml inside xml as string. In the sample Configuration xml provided above, CDATA is used to embed the StartLayout xml. If you use CDATA to embed configuration xml in SyncML as well, you’ll have nested CDATA so pay attention to how CDATA is used in the provided CDATA sample. With that being said, when the Configuration xml is being constructed, MDM server can either escape start layout xml or put startlayout xml inside CDATA, when MDM server puts configuration xml inside SyncML, MDM server can also either escape it or wrap with CDATA. 

Escape and CDATA are mechanisms when handling xml in xml. Consider it’s a transportation channel to send the configuration xml as payload from server to client. It’s transparent to both end user who configures the CSP and transparent to our CSP. Both the customer on the server side and our CSP must only see the original configuration XML.

This example shows escaped XML of the Data node.

```
<SyncML xmlns='SYNCML:SYNCML1.2'>
    <SyncBody>
        <Add>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>
                    &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
&lt;AssignedAccessConfiguration xmlns=&quot;http://schemas.microsoft.com/AssignedAccess/2017/config&quot;&gt;
    &lt;Profiles&gt;
        &lt;Profile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;&gt;
            &lt;AllAppsList&gt;
                &lt;AllowedApps&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt;
                    &lt;App DesktopAppPath=&quot;%windir%\system32\mspaint.exe&quot; /&gt;
                    &lt;App DesktopAppPath=&quot;C:\Windows\System32\notepad.exe&quot; /&gt;
                &lt;/AllowedApps&gt;
            &lt;/AllAppsList&gt;
            &lt;StartLayout&gt;
                &lt;![CDATA[&lt;LayoutModificationTemplate xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot; xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot; Version=&quot;1&quot; xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;&gt; 
                      &lt;LayoutOptions StartTileGroupCellWidth=&quot;6&quot; /&gt; 
                      &lt;DefaultLayoutOverride&gt; 
                        &lt;StartLayoutCollection&gt; 
                          &lt;defaultlayout:StartLayout GroupCellWidth=&quot;6&quot;&gt; 
                            &lt;start:Group Name=&quot;Group1&quot;&gt; 
                              &lt;start:Tile Size=&quot;4x4&quot; Column=&quot;0&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt; 
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;2&quot; AppUserModelID=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt; 
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt; 
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt; 
                              &lt;start:Tile Size=&quot;4x2&quot; Column=&quot;0&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt; 
                            &lt;/start:Group&gt; 
                            &lt;start:Group Name=&quot;Group2&quot;&gt; 
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;2&quot; Row=&quot;0&quot; DesktopApplicationID=&quot;{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\mspaint.exe&quot; /&gt; 
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;0&quot; Row=&quot;0&quot; DesktopApplicationID=&quot;{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\notepad.exe&quot; /&gt; 
                            &lt;/start:Group&gt; 
                          &lt;/defaultlayout:StartLayout&gt; 
                        &lt;/StartLayoutCollection&gt; 
                      &lt;/DefaultLayoutOverride&gt; 
                    &lt;/LayoutModificationTemplate&gt; 
                ]]&gt;
            &lt;/StartLayout&gt;
            &lt;Taskbar ShowTaskbar=&quot;true&quot;/&gt;
        &lt;/Profile&gt;
    &lt;/Profiles&gt;
    &lt;Configs&gt;
        &lt;Config&gt;
            &lt;Account&gt;MultiAppKioskUser&lt;/Account&gt;
            &lt;DefaultProfile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;/&gt;
        &lt;/Config&gt;
    &lt;/Configs&gt;
&lt;/AssignedAccessConfiguration&gt;

                </Data>
            </Item>
        </Add>
        <Final />
    </SyncBody>
</SyncML>
```
This example shows escaped XML of the Data node.
```
<SyncML xmlns='SYNCML:SYNCML1.2'>
    <SyncBody>
        <Replace>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>
                    &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
&lt;AssignedAccessConfiguration xmlns=&quot;http://schemas.microsoft.com/AssignedAccess/2017/config&quot;&gt;
    &lt;Profiles&gt;
        &lt;Profile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;&gt;
            &lt;AllAppsList&gt;
                &lt;AllowedApps&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
                    &lt;App AppUserModelId=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt;
                    &lt;App DesktopAppPath=&quot;%windir%\system32\mspaint.exe&quot; /&gt;
                    &lt;App DesktopAppPath=&quot;C:\Windows\System32\notepad.exe&quot; /&gt;
                &lt;/AllowedApps&gt;
            &lt;/AllAppsList&gt;
            &lt;StartLayout&gt;
                &lt;![CDATA[&lt;LayoutModificationTemplate xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot; xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot; Version=&quot;1&quot; xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;&gt; 
                      &lt;LayoutOptions StartTileGroupCellWidth=&quot;6&quot; /&gt; 
                      &lt;DefaultLayoutOverride&gt; 
                        &lt;StartLayoutCollection&gt; 
                          &lt;defaultlayout:StartLayout GroupCellWidth=&quot;6&quot;&gt; 
                            &lt;start:Group Name=&quot;Group1&quot;&gt; 
                              &lt;start:Tile Size=&quot;4x4&quot; Column=&quot;0&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt; 
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;2&quot; AppUserModelID=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt; 
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt; 
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt; 
                              &lt;start:Tile Size=&quot;4x2&quot; Column=&quot;0&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt; 
                            &lt;/start:Group&gt; 
                            &lt;start:Group Name=&quot;Group2&quot;&gt; 
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;2&quot; Row=&quot;0&quot; DesktopApplicationID=&quot;{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\mspaint.exe&quot; /&gt; 
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;0&quot; Row=&quot;0&quot; DesktopApplicationID=&quot;{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\notepad.exe&quot; /&gt; 
                            &lt;/start:Group&gt; 
                          &lt;/defaultlayout:StartLayout&gt; 
                        &lt;/StartLayoutCollection&gt; 
                      &lt;/DefaultLayoutOverride&gt; 
                    &lt;/LayoutModificationTemplate&gt; 
                ]]&gt;
            &lt;/StartLayout&gt;
            &lt;Taskbar ShowTaskbar=&quot;true&quot;/&gt;
        &lt;/Profile&gt;
    &lt;/Profiles&gt;
    &lt;Configs&gt;
        &lt;Config&gt;
            &lt;Account&gt;MultiAppKioskUser&lt;/Account&gt;
            &lt;DefaultProfile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;/&gt;
        &lt;/Config&gt;
    &lt;/Configs&gt;
&lt;/AssignedAccessConfiguration&gt;

                </Data>
            </Item>
        </Replace>
        <Final />
    </SyncBody>
</SyncML>
```

This example uses CData for the XML.
```
<SyncML xmlns='SYNCML:SYNCML1.2'>
    <SyncBody>
        <Add>
            <CmdID>2</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">chr</Format>
                </Meta>
                <Data>
                    <![CDATA[<?xml version="1.0" encoding="utf-8" ?> 
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
                  ]]]]><![CDATA[>
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
]]>
                </Data>
            </Item>
        </Add>
        <Final />
    </SyncBody>
</SyncML>
```

Example of Get command that returns the configuration in the device.
```
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Get>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
               </Target>
           </Item>
       </Get>
       <Final />
   </SyncBody>
</SyncML>
```

Example of the Delete command.
```
<SyncML xmlns='SYNCML:SYNCML1.2'>
   <SyncBody>
       <Delete>
           <CmdID>2</CmdID>
           <Item>
               <Target>
                   <LocURI>./Device/Vendor/MSFT/AssignedAccess/Configuration</LocURI>
               </Target>
           </Item>
       </Delete>
       <Final />
   </SyncBody>
</SyncML>
```
