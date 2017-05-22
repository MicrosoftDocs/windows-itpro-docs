---
title: Configuration service provider reference
description: A configuration service provider (CSP) is an interface to read, set, modify, or delete configuration settings on the device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 71823658-951f-4163-9c40-c4d4adceaaec
ms.author: windows-hardware-design-content
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Configuration service provider reference

A configuration service provider (CSP) is an interface to read, set, modify, or delete configuration settings on the device. These settings map to registry keys or files. Some configuration service providers support the WAP format, some support SyncML, and some support both. SyncML is only used over–the–air for Open Mobile Alliance Device Management (OMA DM), whereas WAP can be used over–the–air for OMA Client Provisioning, or it can be included in the phone image as a .provxml file that is installed during boot.

For information about the bridge WMI provider classes that map to these CSPs, see [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224). See the [list of CSPs supported in Windows Holographic](#hololens) and the [list of CSPs supported in Microsoft Surface Hub ](#surfacehubcspsupport) for additional information.

The following table show the configuration service providers supported in Windows 10.  

> [!Important]
> To navigate the table horizontally, click on the table and then use the left and right scroll keys on your keyboard or use the scroll bar at the bottom of the table.

<table>
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th>Configuration service provider</th>
<th>Supported in Windows 10 Pro</th>
<th>Supported in Windows 10 Business</th>
<th>Supported in Windows 10 Enterprise</th>
<th>Supported in Windows 10 Education</th>
<th>Supported in Windows 10 Home</th>
<th>Supported in Windows 10 Mobile</th>
<th>Supported in Windows 10 Mobile Enterprise</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>[ActiveSync CSP](activesync-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[AllJoynManagement CSP](alljoynmanagement-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[APPLICATION CSP](application-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[AppLocker CSP](applocker-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[AssignedAccess CSP](assignedaccess-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[BitLocker CSP](bitlocker-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>

</tr>
<tr class="even">
<td>[BOOTSTRAP CSP](bootstrap-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[BrowserFavorite CSP](browserfavorite-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="even">
<td>[CellularSettings CSP](cellularsettings-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[CertificateStore CSP](certificatestore-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[CleanPC CSP](cleanpc-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[ClientCertificateInstall CSP](clientcertificateinstall-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[CM_CellularEntries CSP](cm-cellularentries-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[CM_ProxyEntries CSP](cm-proxyentries-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[CMPolicy CSP](cmpolicy-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[CMPolicyEnterprise CSP](cmpolicyenterprise-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>

</tr>
<tr class="odd">
<td>[CustomDeviceUI CSP](customdeviceui-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="even">
<td>[Defender CSP](defender-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[DevDetail CSP](devdetail-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[DeveloperSetup CSP](developersetup-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[DeviceInstanceService CSP](deviceinstanceservice-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[DeviceLock CSP](devicelock-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[DeviceManageability CSP](devicemanageability-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[DeviceStatus CSP](devicestatus-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[DevInfo CSP](devinfo-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[DiagnosticLog CSP](diagnosticlog-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[DMAcc CSP](dmacc-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[DMClient CSP](dmclient-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[DynamicManagement CSP](dynamicmanagement-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>

</tr>
<tr class="even">
<td>[EMAIL2 CSP](email2-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[EnterpriseAPN CSP](enterpriseapn-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[EnterpriseAppManagement CSP](enterpriseappmanagement-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[EnterpriseAppVManagement CSP](enterpriseappvmanagement-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="even">
<td>[EnterpriseExt CSP](enterpriseext-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[EnterpriseExtFileSystem CSP](enterpriseextfilessystem-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[FileSystem CSP](filesystem-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>

</tr>
<tr class="even">
<td>[HealthAttestation CSP](healthattestation-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[HotSpot CSP](hotspot-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[Maps CSP](maps-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[Messaging CSP](messaging-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
</tr>
<tr class="odd">
<td>[NAP CSP](nap-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[NAPDEF CSP](napdef-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

<tr class="even">
<td>[NetworkProxy CSP](networkproxy-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>

</tr>
<tr class="even">
<td>[NetworkQoSPolicy CSP](networkqospolicy-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>

<tr class="odd">
<td>[NodeCache CSP](nodecache-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[Office CSP](office-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="even">
<td>[PassportForWork CSP](passportforwork-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[Policy CSP](policy-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[Personalization CSP](personalization-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/checkmark.png" alt="check mark" />2</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[PolicyManager CSP](policymanager-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[Provisioning CSP](provisioning-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><p></p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
</tr>

<tr class="even">
<td>[PROXY CSP](proxy-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[PXLOGICAL CSP](pxlogical-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[Reboot CSP](reboot-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[Registry CSP](registry-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[RemoteFind CSP](remotefind-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[RemoteLock](remotelock-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[RemoteRing CSP](remotering-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[RemoteWipe CSP](remotewipe-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[Reporting CSP](reporting-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[RootCATrustedCertificates CSP](rootcacertificates-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[SecureAssessment CSP](secureassessment-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[SecurityPolicy CSP](securitypolicy-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[SharedPC CSP](sharedpc-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[Storage CSP](storage-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[SUPL CSP](supl-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[SurfaceHub](surfacehub-csp.md)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>[UnifiedWriteFilter CSP](unifiedwritefilter-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[Update CSP](update-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[VPN CSP](vpn-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[VPNv2 CSP](vpnv2-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[W4 APPLICATION CSP](w4-application-csp.md)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>

</tr>
<tr class="odd">
<td>[w7 APPLICATION CSP](w7-application-csp.md)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>

</tr>
<tr class="even">
<td>[WiFi CSP](wifi-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="odd">
<td>[Win32AppInventory CSP](win32appinventory-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="even">
<td>[WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/checkmark.png" alt="check mark" />1</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>

</tr>
<tr class="odd">
<td>[WindowsLicensing CSP](windowslicensing-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
<tr class="even">
<td>[WindowsSecurityAuditing CSP](windowssecurityauditing-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>

</tr>
</tbody>
</table>


 Footnotes: 
- 1 - Added in Windows 10, version 1607
- 2 - Added in Windows 10, version 1703

> [!Note]  
> You can download the Windows 10 version 1607 DDF files from [here](http://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip).


## <a href="" id="hololens"></a>CSPs supported in Windows Holographic


The following list shows the configuration service providers supported in Windows Holographic editions.

| Configuration service provider                                                                        | Windows Holographic edition      | Windows Holographic for Business edition |
|-------------------------------------------------------------------------------------------------------|-------------------------------------|-------------------------------------------|
| [Application CSP](application-csp.md)                                     | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [AppLocker CSP](applocker-csp.md)                                         | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [CertificateStore CSP](certificatestore-csp.md)                           | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [ClientCertificateInstall CSP](clientcertificateinstall-csp.md)           | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [DevDetail CSP](devdetail-csp.md)                                         | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [DeveloperSetup CSP](developersetup-csp.md)                               | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)2   (Provisioning only)|
| [DeviceStatus CSP](devicestatus-csp.md)                                   | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [DevInfo CSP](devinfo-csp.md)                                             | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [DiagnosticLog CSP](diagnosticlog-csp.md)                                 | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [DMAcc CSP](dmacc-csp.md)                                                 | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [DMClient CSP](dmclient-csp.md)                                           | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [NodeCache CSP](nodecache-csp.md)                                         | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [Policy CSP](policy-configuration-service-provider.md)                    | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [RootCATrustedCertificates CSP](rootcacertificates-csp.md)                | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [Update CSP](update-csp.md)                                               | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [VPN2 CSP](vpnv2-csp.md)                                                  | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [WiFi CSP](wifi-csp.md)                                                   | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [WindowsLicensing CSP](windowslicensing-csp.md)                           | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |

Footnotes: 
- 2 - Added in Windows 10, version 1703

## <a href="" id="newcsps"></a>New CSPs added in Windows 10, version 1703

-   [BitLocker CSP](bitlocker-csp.md)
-   [CleanPC CSP](cleanpc-csp.md)
-   [DeveloperSetup CSP](developersetup-csp.md)
-   [DynamicManagement CSP](dynamicmanagement-csp.md)
-   [EnterpriseAppVManagement CSP](enterpriseappvmanagement-csp.md)
-   [Messaging CSP](messaging-csp.md)
-   [NetworkProxy CSP](networkproxy-csp.md)
-   [NetworkQoSPolicy CSP](networkqospolicy-csp.md)
-   [Office CSP](office-csp.md)
-   [Personalization CSP](personalization-csp.md)

## <a href="" id="newcsps"></a>New CSPs added in Windows 10, version 1511

-   [AllJoynManagement CSP](alljoynmanagement-csp.md)
-   [Maps CSP](maps-csp.md)
-   [Reporting CSP](reporting-csp.md)
-   [SurfaceHub CSP](surfacehub-csp.md)
-   [WindowsSecurityAuditing CSP](windowssecurityauditing-csp.md)

## <a href="" id="surfacehubcspsupport"></a>CSPs supported in Microsoft Surface Hub

-   [APPLICATION CSP](application-csp.md)
-   [CertificateStore CSP](certificatestore-csp.md)
-   [ClientCertificateInstall CSP](clientcertificateinstall-csp.md)
-   [Defender CSP](defender-csp.md)
-   [DevDetail CSP](devdetail-csp.md)
-   [DeviceManageability CSP](devicemanageability-csp.md)
-   [DeviceStatus CSP](devicestatus-csp.md)
-   [DevInfo CSP](devinfo-csp.md)
-   [DiagnosticLog CSP](diagnosticlog-csp.md)
-   [DMAcc CSP](dmacc-csp.md)
-   [DMClient CSP](dmclient-csp.md)
-   [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)
-   [HealthAttestation CSP](healthattestation-csp.md)
-   [NetworkQoSPolicy CSP](networkqospolicy-csp.md)
-   [NodeCache CSP](nodecache-csp.md)
-   [PassportForWork CSP](passportforwork-csp.md)
-   [Policy CSP](policy-configuration-service-provider.md)
-   [Reboot CSP](reboot-csp.md)
-   [RemoteWipe CSP](remotewipe-csp.md)
-   [Reporting CSP](reporting-csp.md)
-   [RootCATrustedCertificates CSP](rootcacertificates-csp.md)
-   [SurfaceHub CSP](surfacehub-csp.md)
-   [WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)


## <a href="" id="iotcoresupport"></a>CSPs supported in Windows 10 IoT Core

- [AllJoynManagement CSP](alljoynmanagement-csp.md)
- [APPLICATION CSP](application-csp.md)
- [CertificateStore CSP](certificatestore-csp.md)
- [ClientCertificateInstall CSP](clientcertificateinstall-csp.md)
- [CustomDeviceUI CSP](customdeviceui-csp.md)
- [DevDetail CSP](devdetail-csp.md)
- [DevInfo CSP](devinfo-csp.md)
- [DiagnosticLog CSP](diagnosticlog-csp.md)
- [DMAcc CSP](dmacc-csp.md)
- [DMClient CSP](dmclient-csp.md)
- [EnterpriseAppManagement CSP](enterpriseappmanagement-csp.md)
- [Policy CSP](policy-configuration-service-provider.md)
- [Provisioning CSP (Provisioning only)](provisioning-csp.md)
- [RootCATrustedCertificates CSP](rootcacertificates-csp.md)
- [Update CSP](update-csp.md)
- [VPNv2 CSP](vpnv2-csp.md)
- [WiFi CSP](wifi-csp.md)