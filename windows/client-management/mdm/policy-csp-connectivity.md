---
title: Policy CSP - Connectivity
description: Policy CSP - Connectivity
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 01/29/2018
---

# Policy CSP - Connectivity



<hr/>

<!--StartPolicies-->
## Connectivity policies  

<dl>
  <dd>
    <a href="#connectivity-allowbluetooth">Connectivity/AllowBluetooth</a>
  </dd>
  <dd>
    <a href="#connectivity-allowcellulardata">Connectivity/AllowCellularData</a>
  </dd>
  <dd>
    <a href="#connectivity-allowcellulardataroaming">Connectivity/AllowCellularDataRoaming</a>
  </dd>
  <dd>
    <a href="#connectivity-allowconnecteddevices">Connectivity/AllowConnectedDevices</a>
  </dd>
  <dd>
    <a href="#connectivity-allownfc">Connectivity/AllowNFC</a>
  </dd>
  <dd>
    <a href="#connectivity-allowusbconnection">Connectivity/AllowUSBConnection</a>
  </dd>
  <dd>
    <a href="#connectivity-allowvpnovercellular">Connectivity/AllowVPNOverCellular</a>
  </dd>
  <dd>
    <a href="#connectivity-allowvpnroamingovercellular">Connectivity/AllowVPNRoamingOverCellular</a>
  </dd>
  <dd>
    <a href="#connectivity-diableprintingoverhttp">Connectivity/DiablePrintingOverHTTP</a>
  </dd>
  <dd>
    <a href="#connectivity-disabledownloadingofprintdriversoverhttp">Connectivity/DisableDownloadingOfPrintDriversOverHTTP</a>
  </dd>
  <dd>
    <a href="#connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards">Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards</a>
  </dd>
  <dd>
    <a href="#connectivity-disallownetworkconnectivityactivetests">Connectivity/DisallowNetworkConnectivityActiveTests</a>
  </dd>
  <dd>
    <a href="#connectivity-hardeneduncpaths">Connectivity/HardenedUNCPaths</a>
  </dd>
  <dd>
    <a href="#connectivity-prohibitinstallationandconfigurationofnetworkbridge">Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge</a>
  </dd>
</dl>


<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allowbluetooth"></a>**Connectivity/AllowBluetooth**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the user to enable Bluetooth or restrict access.

> [!NOTE]
>  This value is not supported in Windows Phone 8.1 MDM and EAS, Windows 10 for desktop, or Windows 10 Mobile.

If this is not set or it is deleted, the default value of 2 (Allow) is used.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disallow Bluetooth. If this is set to 0, the radio in the Bluetooth control panel will be greyed out and the user will not be able to turn Bluetooth on.
-   1 – Reserved. If this is set to 1, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.
-   2 (default) – Allow Bluetooth. If this is set to 2, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allowcellulardata"></a>**Connectivity/AllowCellularData**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the cellular data channel on the device. Device reboot is not required to enforce the policy.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Do not allow the cellular data channel. The user cannot turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow the cellular data channel. The user can turn it off.
-   2 - Allow the cellular data channel. The user cannot turn it off.

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allowcellulardataroaming"></a>**Connectivity/AllowCellularDataRoaming**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows or disallows cellular data roaming on the device. Device reboot is not required to enforce the policy.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Do not allow cellular data roaming. The user cannot turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow cellular data roaming.
-   2 - Allow cellular data roaming on. The user cannot turn it off.

<!--/SupportedValues-->
<!--Validation-->
To validate, the enterprise can confirm by observing the roaming enable switch in the UX. It will be inactive if the roaming policy is being enforced by the enterprise policy.

To validate on mobile devices, do the following:

1.  Go to Cellular & SIM.
2.  Click on the SIM (next to the signal strength icon) and select **Properties**.
3.  On the Properties page, select **Data roaming options**.

<!--/Validation-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allowconnecteddevices"></a>**Connectivity/AllowConnectedDevices**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Added in Windows 10, version 1703. Allows IT Admins the ability to disable the Connected Devices Platform (CDP) component. CDP enables discovery and connection to other devices (either proximally with BT/LAN or through the cloud) to support remote app launching, remote messaging, remote app sessions, and other cross-device experiences.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   1 (default) - Allow (CDP service available).
-   0 - Disable (CDP service not available).

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allownfc"></a>**Connectivity/AllowNFC**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


Allows or disallows near field communication (NFC) on the device.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Do not allow NFC capabilities.
-   1 (default) – Allow NFC capabilities.

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allowusbconnection"></a>**Connectivity/AllowUSBConnection**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


Enables USB connection between the device and a computer to sync files with the device or to use developer tools to deploy or debug applications. Changing this policy does not affect USB charging.

Both Media Transfer Protocol (MTP) and IP over USB are disabled when this policy is enforced.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allowvpnovercellular"></a>**Connectivity/AllowVPNOverCellular**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies what type of underlying connections VPN is allowed to use.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – VPN is not allowed over cellular.
-   1 (default) – VPN can use any connection, including cellular.

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-allowvpnroamingovercellular"></a>**Connectivity/AllowVPNRoamingOverCellular**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Prevents the device from connecting to VPN when the device roams over cellular networks.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-diableprintingoverhttp"></a>**Connectivity/DiablePrintingOverHTTP**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMX-->
ADMX Info:  
-   GP English name: *Turn off printing over HTTP*
-   GP name: *DisableHTTPPrinting_2*
-   GP path: *Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMX-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-disabledownloadingofprintdriversoverhttp"></a>**Connectivity/DisableDownloadingOfPrintDriversOverHTTP**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMX-->
ADMX Info:  
-   GP English name: *Turn off downloading of print drivers over HTTP*
-   GP name: *DisableWebPnPDownload_2*
-   GP path: *Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMX-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards"></a>**Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMX-->
ADMX Info:  
-   GP English name: *Turn off Internet download for Web publishing and online ordering wizards*
-   GP name: *ShellPreventWPWDownload_2*
-   GP path: *Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMX-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-disallownetworkconnectivityactivetests"></a>**Connectivity/DisallowNetworkConnectivityActiveTests**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to http://www.msftconnecttest.com/connecttest.txt to determine if the device can communicate with the Internet.  This policy disables the NCSI active probe, preventing network connectivity to www.msftconnecttest.com.

Value type is integer.

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-hardeneduncpaths"></a>**Connectivity/HardenedUNCPaths**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures secure access to UNC paths.

If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling additional security requirements.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMX-->
ADMX Info:  
-   GP English name: *Hardened UNC Paths*
-   GP name: *Pol_HardenedPaths*
-   GP path: *Network/Network Provider*
-   GP ADMX file name: *networkprovider.admx*

<!--/ADMX-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="connectivity-prohibitinstallationandconfigurationofnetworkbridge"></a>**Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMX-->
ADMX Info:  
-   GP English name: *Prohibit installation and configuration of Network Bridge on your DNS domain network*
-   GP name: *NC_AllowNetBridge_NLA*
-   GP path: *Network/Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMX-->
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
-   [Connectivity/DiablePrintingOverHTTP](#connectivity-diableprintingoverhttp)  
-   [Connectivity/DisableDownloadingOfPrintDriversOverHTTP](#connectivity-disabledownloadingofprintdriversoverhttp)  
-   [Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards](#connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards)  
-   [Connectivity/HardenedUNCPaths](#connectivity-hardeneduncpaths)  
-   [Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge](#connectivity-prohibitinstallationandconfigurationofnetworkbridge)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Connectivity policies supported by Microsoft Surface Hub  

-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)  
-   [Connectivity/AllowConnectedDevices](#connectivity-allowconnecteddevices)  
<!--EndSurfaceHub-->

