---
title: Policy CSP - Connectivity
description: Policy CSP - Connectivity
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - Connectivity

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## Connectivity policies  

<!--StartPolicy-->
<a href="" id="connectivity-allowbluetooth"></a>**Connectivity/AllowBluetooth**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the user to enable Bluetooth or restrict access.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disallow Bluetooth. If this is set to 0, the radio in the Bluetooth control panel will be greyed out and the user will not be able to turn Bluetooth on.
-   1 – Reserved. If this is set to 1, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

> [!NOTE]
>  This value is not supported in Windows Phone 8.1 MDM and EAS, Windows 10 for desktop, or Windows 10 Mobile.

-   2 (default) – Allow Bluetooth. If this is set to 2, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 2 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowcellulardata"></a>**Connectivity/AllowCellularData**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows the cellular data channel on the device. Device reboot is not required to enforce the policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow the cellular data channel. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow the cellular data channel. The user can turn it off.
-   2 - Allow the cellular data channel. The user cannot turn it off.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowcellulardataroaming"></a>**Connectivity/AllowCellularDataRoaming**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows or disallows cellular data roaming on the device. Device reboot is not required to enforce the policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow cellular data roaming. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow cellular data roaming.
-   2 - Allow cellular data roaming on. The user cannot turn it off.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To validate, the enterprise can confirm by observing the roaming enable switch in the UX. It will be inactive if the roaming policy is being enforced by the enterprise policy.

<p style="margin-left: 20px">To validate on mobile devices, do the following:

1.  Go to Cellular & SIM.
2.  Click on the SIM (next to the signal strength icon) and select **Properties**.
3.  On the Properties page, select **Data roaming options**.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowconnecteddevices"></a>**Connectivity/AllowConnectedDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins the ability to disable the Connected Devices Platform (CDP) component. CDP enables discovery and connection to other devices (either proximally with BT/LAN or through the cloud) to support remote app launching, remote messaging, remote app sessions, and other cross-device experiences.

<p style="margin-left: 20px">The following list shows the supported values:

-   1 (default) - Allow (CDP service available).
-   0 - Disable (CDP service not available).

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allownfc"></a>**Connectivity/AllowNFC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows near field communication (NFC) on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow NFC capabilities.
-   1 (default) – Allow NFC capabilities.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowusbconnection"></a>**Connectivity/AllowUSBConnection**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Enables USB connection between the device and a computer to sync files with the device or to use developer tools to deploy or debug applications. Changing this policy does not affect USB charging.

<p style="margin-left: 20px">Both Media Transfer Protocol (MTP) and IP over USB are disabled when this policy is enforced.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowvpnovercellular"></a>**Connectivity/AllowVPNOverCellular**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies what type of underlying connections VPN is allowed to use.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – VPN is not allowed over cellular.
-   1 (default) – VPN can use any connection, including cellular.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-allowvpnroamingovercellular"></a>**Connectivity/AllowVPNRoamingOverCellular**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Prevents the device from connecting to VPN when the device roams over cellular networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="None"></a>**Connectivity/DiablePrintingOverHTTP**  

<!--StartDescription-->
<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off printing over HTTP*
-   GP name: *DisableHTTPPrinting_2*
-   GP ADMX file name: *ICM.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="None"></a>**Connectivity/DisableDownloadingOfPrintDriversOverHTTP**  

<!--StartDescription-->
<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off downloading of print drivers over HTTP*
-   GP name: *DisableWebPnPDownload_2*
-   GP ADMX file name: *ICM.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="None"></a>**Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards**  

<!--StartDescription-->
<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off Internet download for Web publishing and online ordering wizards*
-   GP name: *ShellPreventWPWDownload_2*
-   GP ADMX file name: *ICM.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="connectivity-hardeneduncpaths"></a>**Connectivity/HardenedUNCPaths**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
This policy setting configures secure access to UNC paths.

If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling additional security requirements.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Hardened UNC Paths*
-   GP name: *Pol_HardenedPaths*
-   GP ADMX file name: *networkprovider.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="None"></a>**Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge**  

<!--StartDescription-->
<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prohibit installation and configuration of Network Bridge on your DNS domain network*
-   GP name: *NC_AllowNetBridge_NLA*
-   GP ADMX file name: *NetworkConnections.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartEAS-->
## <a href="" id="eas"></a>Connectivity policies that can be set using Exchange Active Sync (EAS)  

-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [Connectivity/AllowCellularDataRoaming](#connectivity-allowcellulardataroaming)  
-   [Connectivity/AllowUSBConnection](#connectivity-allowusbconnection)  
<!--EndEAS-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Connectivity policies supported by Windows Holographic for Business  

-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
<!--EndHoloLens-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Connectivity policies supported by IoT Core  

-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [Connectivity/AllowCellularDataRoaming](#connectivity-allowcellulardataroaming)  
-   [Connectivity/AllowNFC](#connectivity-allownfc)  
-   [Connectivity/AllowUSBConnection](#connectivity-allowusbconnection)  
-   [Connectivity/AllowVPNOverCellular](#connectivity-allowvpnovercellular)  
-   [Connectivity/AllowVPNRoamingOverCellular](#connectivity-allowvpnroamingovercellular)  
-   [Connectivity/HardenedUNCPaths](#connectivity-hardeneduncpaths)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Connectivity policies supported by Microsoft Surface Hub  

-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [Connectivity/AllowConnectedDevices](#connectivity-allowconnecteddevices)  
<!--EndSurfaceHub-->

