---
title: Office CSP
description: The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device. This CSP was added in Windows 10, version 1703.
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Office CSP


The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device via the Office Deployment Tool. For more information, see [Configuration options for the Office Deployment Tool](https://technet.microsoft.com/en-us/library/jj219426.aspx). 
This CSP was added in Windows 10, version 1703.

For additional information, see [Office DDF](office-ddf.md).

The following diagram shows the Office configuration service provider in tree format.

![Office CSP diagram](images/provisioning-csp-office.png)

<a href="" id="office"></a>**Office**

<p style="margin-left: 20px">The root node for the Office configuration service provider.</p>

<a href="" id="installation"></a>**Installation**  

<p style="margin-left: 20px">Specifies the options for the Microsoft Office installation.

<p style="margin-left: 20px">The supported operations are Add, Delete, Get, and Replace.

<a href="" id="id"></a>**id**  

<p style="margin-left: 20px">Specifies a unique identifier that represents the ID of the Microsoft Office product to install. 

<p style="margin-left: 20px">The supported operations are Add, Delete, Get, and Replace.

<a href="" id="install"></a>**Install**  

<p style="margin-left: 20px">Installs Office by using the XML data specified in the configuration.xml file. 

<p style="margin-left: 20px">The supported operations are Get and Execute.

<a href="" id="status"></a>**Status**  

<p style="margin-left: 20px">The Microsoft Office installation status. 

<p style="margin-left: 20px">The only supported operation is Get.

<a href="" id="currentstatus"></a>**CurrentStatus** 

<p style="margin-left: 20px">Returns an XML of current Office 365 installation status on the device.

<p style="margin-left: 20px">The only supported operation is Get.

## Examples

Sample SyncML to install Office 365 Business Retail from current channel.

```syntax
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

```syntax
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

``` syntax
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

<table>
<colgroup>
<col width="30%" />
<col width="50%" />
<col width="20%" />

</colgroup>
<thead>
<tr class="header">
<th>Status</th>
<th>Description</th>
<th>Comment</th>
</tr>
</thead>
<tbody>
<tr>
<td>0</td>
<td>Installation succeeded</td>
<td>OK</td>
</tr>
<tr>
<td>997</td>
<td>Installation in progress</td>
<td>Windows Information Protection</td>
</tr>
<tr>
<td>13 (ERROR_INVALID_DATA)</td>
<td>Cannot verify signature of the downloaded ODT</td>
<td>Failure</td>
</tr>
<tr>
<td>1460 (ERROR_TIMEOUT)</td>
<td>Failed to download ODT </td>
<td>Failure</td>
</tr>
<tr>
<td>1603 (ERROR_INSTALL_FAILURE)</td>
<td>Failed any pre-req check.
<ul>
<li>SxS (Tried to install when 2016 MSI is installed)</li>
<li>Bit mismatch</li>
</ul>
</td>
<td>Failure</td>
</tr>
<tr>
<td>17002</td>
<td>Failed to complete the process. Possible reasons:<ul>
<li>Installation cancelled by user</li>
<li>Installation cancelled by another installation</li>
<li>Out of disk space during installation </li>
<li>Unknown language ID</li>
</ul></td>
<td>Failure</td>
</tr>
<tr>
<td>17004</td>
<td>Unknown SKU</td>
<td>Failure</td>
</tr>
<tr>
<td>0x8000ffff (E_UNEXPECTED)</td>
<td>Tried to uninstall when there is no C2R Office on the machine.</td>
<td>Failure</td>
</tr>
</tbody>
</table>