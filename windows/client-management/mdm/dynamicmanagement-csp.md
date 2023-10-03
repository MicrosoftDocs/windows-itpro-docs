---
title: DynamicManagement CSP
description: Learn how the Dynamic Management configuration service provider (CSP) enables configuration of policies that change how the device is managed.
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
ms.reviewer:
manager: aaroncz
---

# DynamicManagement CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

Windows 10 or Windows 11 allows you to manage devices differently depending on location, network, or time.  Added in Windows 10, version 1703, the focus is on the most common areas of concern expressed by organizations. For example, managed devices can have cameras disabled when at a work location, the cellular service can be disabled when outside the country/region to avoid roaming charges, or the wireless network can be disabled when the device isn't within the corporate building or campus. Once configured, these settings will be enforced even if the device can’t reach the management server when the location or network changes. The Dynamic Management CSP enables configuration of policies that change how the device is managed in addition to setting the conditions on which the change occurs.

This CSP was added in Windows 10, version 1703.

The following example shows the DynamicManagement configuration service provider in tree format.
```
./Device/Vendor/MSFT
DynamicManagement
----NotificationsEnabled
----ActiveList
----Contexts
--------ContextID
------------SignalDefinition
------------SettingsPack
------------SettingsPackResponse
------------ContextStatus
------------Altitude
----AlertsEnabled
```

<a href="" id="dynamicmanagement"></a>**DynamicManagement**
The root node for the DynamicManagement configuration service provider.

<a href="" id="notificationsenabled"></a>**NotificationsEnabled**
Boolean value for sending notification to the user of a context change.

Default value is False.

Supported operations are Get and Replace.

Example to turn on NotificationsEnabled:

```xml
<Replace>
      <CmdID>100</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/NotificationsEnabled</LocURI>
        </Target>
        <Meta>
          <Type xmlns="syncml:metinf">text/plain</Type>
          <Format xmlns="syncml:metinf">bool</Format>
        </Meta>
          <Data>true</Data>
      </Item>
</Replace>
```

<a href="" id="activelist"></a>**ActiveList**
A string containing the list of all active ContextIDs on the device.  Delimiter is unicode character 0xF000.

Supported operation is Get.

<a href="" id="contexts"></a>**Contexts**
Node for context information.

Supported operation is Get.

<a href="" id="contextid"></a>***ContextID***
Node created by the server to define a context. Maximum number of characters allowed is 38.

Supported operations are Add, Get, and Delete.

<a href="" id="signaldefinition"></a>**SignalDefinition**
Signal Definition XML.

Value type is string.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="settingspack"></a>**SettingsPack**
Settings that get applied when the Context is active.

Value type is string.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="settingspackresponse"></a>**SettingsPackResponse**
Response from applying a Settings Pack that contains information on each individual action.

Value type is string.

Supported operation is Get.

<a href="" id="contextstatus"></a>**ContextStatus**
Reports status of the context. If there was a failure, SettingsPackResponse should be checked for what exactly is failed.

Value type is integer.

Supported operation is Get.

<a href="" id="altitude"></a>**Altitude**
A value that determines how to handle conflict resolution of applying multiple contexts on the device. This is required and must be distinct of other priorities.

Value type is integer.

Supported operations are Add, Get, Delete, and Replace.

<a href="" id="alertsenabled"></a>**AlertsEnabled**
A Boolean value for sending an alert to the server when a context fails.
Supported operations are Get and Replace.

## Examples

Disable Cortana based on Geo location and time, from 9am-5pm, when in the 100-meters radius of the specified latitude/longitude

```xml
    <Replace>
      <CmdID>200</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/Bldg109/SettingsPack</LocURI>
        </Target>
        <Meta>
          <Type xmlns="syncml:metinf">text/plain</Type>
          <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data><SyncML>
  <SyncBody><Replace><CmdID>1001</CmdID><Item><Target><LocURI>./Vendor/MSFT/Policy/Config/Experience/AllowCortana</LocURI></Target><Meta><Format xmlns="syncml:metinf">int</Format></Meta><Data>0</Data></Item></Replace><Final/></SyncBody></SyncML></Data>
      </Item>
    </Replace>
    <Replace>
      <CmdID>201</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/Bldg109/SignalDefinition</LocURI>
        </Target>
        <Meta>
          <Type xmlns="syncml:metinf">text/plain</Type>
          <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data>
          <rule schemaVersion="1.0">

           <and>
                    <signal type="geoloc" latitude="47.6375" longitude="-122.1402" radiusInMeters="100"/>
                    <signal type="time">
                              <daily startTime="09:00:00" endTime="17:00:00"/>
                    </signal>
           </and>
          </rule>
        </Data>
      </Item>
    </Replace>
    <Replace>
      <CmdID>202</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/Bldg109/Altitude</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>3</Data>
      </Item>
    </Replace>
```

Disable camera using network trigger with time trigger, from 9-5, when ip4 gateway is 192.168.0.1

```xml
<Replace>
      <CmdID>300</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/NetworkWithTime/SettingsPack</LocURI>
        </Target>
        <Meta>
          <Type xmlns="syncml:metinf">text/plain</Type>
          <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data><SyncML>
  <SyncBody><Replace><CmdID>1002</CmdID><Item><Target><LocURI>./Vendor/MSFT/Policy/Config/Camera/AllowCamera</LocURI></Target><Meta><Format xmlns="syncml:metinf">int</Format></Meta><Data>0</Data></Item></Replace> <Final/></SyncBody></SyncML></Data>
      </Item>
    </Replace>
    <Replace>
      <CmdID>301</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/NetworkWithTime/SignalDefinition</LocURI>
        </Target>
        <Meta>
          <Type xmlns="syncml:metinf">text/plain</Type>
          <Format xmlns="syncml:metinf">chr</Format>
        </Meta>
        <Data>
          <rule schemaVersion="1.0">
           <and>
             <signal type="ipConfig">
                   <ipv4Gateway>192.168.0.1</ipv4Gateway>
             </signal>
                    <signal type="time">
                              <daily startTime="09:00:00" endTime="17:00:00"/>
                    </signal>
           </and>
          </rule>
        </Data>
      </Item>
    </Replace>
    <Replace>
      <CmdID>302</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/NetworkWithTime/Altitude</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>10</Data>
      </Item>
    </Replace>
```

Delete a context:

```xml
<Delete>
      <CmdID>400</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/NetworkWithTime</LocURI>
        </Target>
      </Item>
</Delete>
```

Get ContextStatus and SignalDefinition from a specific context:

```xml
<Get>
      <CmdID>400</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/NetworkWithTime/ContextStatus</LocURI>
        </Target>
      </Item>
</Get>
<Get>
      <CmdID>401</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/DynamicManagement/Contexts/NetworkWithTime/SignalDefinition </LocURI>
        </Target>
      </Item>
</Get>
```

## Related articles

[Configuration service provider reference](index.yml)
