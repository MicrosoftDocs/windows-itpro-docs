---
title: Office CSP
description: The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device. This CSP was added in Windows 10, version 1703.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 08/15/2018
ms.reviewer: 
manager: dansimp
---

# Office CSP


The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device via the Office Deployment Tool (ODT). For more information, see [Configuration options for the Office Deployment Tool](/deployoffice/office-deployment-tool-configuration-options) and [How to assign Office 365 apps to Windows 10 devices with Microsoft Intune](/intune/apps-add-office365). 

This CSP was added in Windows 10, version 1703.

For more information, see [Office DDF](office-ddf.md).

The following shows the Office configuration service provider in tree format.

```console
./Vendor/MSFT
Office
----Installation
--------id
------------Install
------------Status


./Device/Vendor/MSFT
Office
----Installation
--------id
------------Install
------------Status


./Vendor/MSFT
./Device/Vendor/MSFT
Office
----Installation
--------id
------------Install
------------Status
```

<a href="" id="office"></a>**./Device/Vendor/MSFT/Office/ or ./User/Vendor/MSFT/Office**  
The root node for the Office configuration service provider.</p>

<a href="" id="installation"></a>**Installation**  
Specifies the options for the Microsoft Office installation.

The supported operations are Add, Delete, and Get.

<a href="" id="id"></a>**Installation/_id_**  
Specifies a unique identifier that represents the ID of the Microsoft Office product to install. 

The supported operations are Add, Delete, and Get.

<a href="" id="install"></a>**Installation/_id_/Install**  
Installs Office by using the XML data specified in the configuration.xml file. 

The supported operations are Get and Execute.

<a href="" id="status"></a>**Installation/_id_/Status**  
The Microsoft Office installation status. 

The only supported operation is Get.

<a href="" id="finalstatus"></a>**Installation/_id_/FinalStatus**  
Added in Windows 10, version 1809. Indicates the status of the Final Office 365 installation.

The only supported operation is Get.

Behavior:  
-  When Office CSP is triggered to install, it will first check if the FinalStatus node exists or not. If the node exists, delete it.
-  When Office installation reaches any terminal states (either success or failure), this node is created that contains the following values:  
    - When status = 0: 70 (succeeded)
    - When status!= 0: 60 (failed)

<a href="" id="currentstatus"></a>**Installation/CurrentStatus**  
Returns an XML of current Office 365 installation status on the device.

The only supported operation is Get.

## Examples

Sample SyncML to install Microsoft 365 Apps for business Retail from current channel.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
      <CmdID>7</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Office/Installation/0AA79349-F334-4859-96E8-B4AB43E9FEA0/install</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta> 
          <Data>&lt;Configuration&gt;&lt;Add OfficeClientEdition=&quot;32&quot; Channel=&quot;Current&quot;&gt;&lt;Product ID=&quot;O365BusinessRetail&quot;&gt;&lt;Language ID=&quot;en-us&quot; /&gt;&lt;/Product&gt;&lt;/Add&gt;&lt;Display Level=&quot;None&quot; AcceptEULA=&quot;TRUE&quot; /&gt;&lt;/Configuration&gt;</Data>
        </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```

To uninstall the Office 365 from the system:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
      <CmdID>7</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Office/Installation/E24B23D8-94A8-4997-9E6E-8FF25025845B/install</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta> 
          <Data>&lt;Configuration&gt;&lt;Remove All=&quot;TRUE&quot;/&gt;&lt;Display Level=&quot;None&quot; AcceptEULA=&quot;TRUE&quot; /&gt;&lt;/Configuration&gt;</Data>
        </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```

To get the current status of Office 365 on the device.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>7</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Office/Installation/CurrentStatus</LocURI>
          </Target>
        </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```

## Status code

|Status|Description|Comment|
|--- |--- |--- |
|0|Installation succeeded|OK|
|997|Installation in progress||
|13|ERROR_INVALID_DATA <br>Cannot verify signature of the downloaded Office Deployment Tool (ODT)|Failure|
|1460|ERROR_TIMEOUT <br>Failed to download ODT|Failure|
|1602|ERROR_INSTALL_USEREXIT <br>User canceled the installation|Failure|
|1603|ERROR_INSTALL_FAILURE<br>Failed any pre-req check.<li>SxS (Tried to install when 2016 MSI is installed)<li>Bit mismatch between the currently installed Office and the Office that was attempting to be installed (such as when you try to install a 32-bit version while 64-bit version is currently installed.)|Failure|
|17000|ERROR_PROCESSPOOL_INITIALIZATION <br/>Failed to start C2RClient|Failure|
|17001|ERROR_QUEUE_SCENARIO <br/>Failed to queue installation scenario in C2RClient|Failure|
|17002|ERROR_COMPLETING_SCENARIO <br>Failed to complete the process. Possible reasons:<li>Installation canceled by user<li>Installation canceled by another installation<li>Out of disk space during installation <li>Unknown language ID|Failure|
|17003|ERROR_ANOTHER_RUNNING_SCENARIO <br>Another scenario is running|Failure|
|17004|ERROR_COMPLETING_SCENARIO_NEED_CLEAN_UP<br>Possible reasons:<li>Unknown SKUs<li>Content does't exist on CDN<ul><li>Such as trying to install an unsupported LAP, like zh-sg<li>CDN issue that content is not available</li></ul><li>Signature check issue, such as failed the signature check for Office content<li>User canceled|Failure|
|17005|ERROR_SCENARIO_CANCELLED_AS_PLANNED|Failure|
|17006|ERROR_SCENARIO_CANCELLED<br>Blocked update by running apps|Failure|
|17007|ERROR_REMOVE_INSTALLATION_NEEDED<br>The client is requesting client clean-up in a "Remove Installation" scenario|Failure|
|17100|ERROR_HANDLING_COMMAND_LINE<br>C2RClient command-line error|Failure|
|0x80004005|E_FAIL <br>ODT cannot be used to install Volume license|Failure|
|0x8000ffff|E_UNEXPECTED<br>Tried to uninstall when there is no C2R Office on the machine.|Failure|
