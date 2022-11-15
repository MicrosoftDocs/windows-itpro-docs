---
title: Policy CSP - Connectivity
description: Learn how to use the Policy CSP - Connectivity setting to allow the user to enable Bluetooth or restrict access.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Connectivity

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
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
    <a href="#connectivity-allowphonepclinking">Connectivity/AllowPhonePCLinking</a>
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
    <a href="#connectivity-disableprintingoverhttp">Connectivity/DisablePrintingOverHTTP</a>
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

<!--Policy-->
<a href="" id="connectivity-allowbluetooth"></a>**Connectivity/AllowBluetooth**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the user to enable Bluetooth or restrict access.

> [!NOTE]
>  This value isn't supported in Windows 10.

If this policy isn't set or is deleted, the default value of 2 (Allow) is used.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disallow Bluetooth. If this is set to 0, the radio in the Bluetooth control panel will be grayed out and the user won't be able to turn on Bluetooth.
-   1 – Reserved. If this is set to 1, the radio in the Bluetooth control panel will be functional and the user will be able to turn on Bluetooth.
-   2 (default) – Allow Bluetooth. If this is set to 2, the radio in the Bluetooth control panel will be functional and the user will be able to turn on Bluetooth.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-allowcellulardata"></a>**Connectivity/AllowCellularData**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy allows the cellular data channel on the device. Device reboot isn't required to enforce the policy.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Don't allow the cellular data channel. The user can't turn it on. This value isn't supported in Windows 10, version 1511.
-   1 (default) – Allow the cellular data channel. The user can turn it off.
-   2 - Allow the cellular data channel. The user can't turn it off.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-allowcellulardataroaming"></a>**Connectivity/AllowCellularDataRoaming**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows or disallows cellular data roaming on the device. Device reboot isn't required to enforce the policy.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prohibit connection to roaming Mobile Broadband networks*
-   GP name: *WCM_DisableRoaming*
-   GP path: *Network/Windows Connection Manager*
-   GP ADMX file name: *WCM.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Don't allow cellular data roaming. The user can't turn it on. This value isn't supported in Windows 10, version 1511.
-   1 (default) – Allow cellular data roaming.
-   2 - Allow cellular data roaming on. The user can't turn it off.

<!--/SupportedValues-->
<!--Validation-->
To validate, the enterprise can confirm by observing the roaming enable switch in the UX. It will be inactive if the roaming policy is being enforced by the enterprise policy.

To validate on devices, perform the following steps:

1.  Go to Cellular & SIM.
2.  Click on the SIM (next to the signal strength icon) and select **Properties**.
3.  On the Properties page, select **Data roaming options**.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-allowconnecteddevices"></a>**Connectivity/AllowConnectedDevices**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

This policy allows IT Admins the ability to disable the Connected Devices Platform (CDP) component. CDP enables discovery and connection to other devices (either proximally with BT/LAN or through the cloud) to support remote app launching, remote messaging, remote app sessions, and other cross-device experiences.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   1 (default) - Allow (CDP service available).
-   0 - Disable (CDP service not available).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-allowphonepclinking"></a>**Connectivity/AllowPhonePCLinking**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows IT admins to turn off the ability to Link a Phone with a PC to continue tasks, such as reading, email, and other tasks that require linking between Phone and PC.

If you enable this policy setting, the Windows device will be able to enroll in Phone-PC linking functionality and participate in 'Continue on PC experiences'.

If you disable this policy setting, the Windows device isn't allowed to be linked to phones, will remove itself from the device list of any linked Phones, and can't participate in 'Continue on PC experiences'.

If you don't configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP name: *enableMMX*
-   GP ADMX file name: *grouppolicy.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

- 0 - Don't link
- 1 (default) - Allow phone-PC linking

<!--/SupportedValues-->
<!--Validation-->
Validation:


If the Connectivity/AllowPhonePCLinking policy is configured to value 0, add a phone button in the Phones section in settings will be grayed out and clicking it will not launch the window for a user to enter their phone number.

Device that has previously opt-in to MMX will also stop showing on the device list.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-allowusbconnection"></a>**Connectivity/AllowUSBConnection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|No|No|
|Enterprise|No|No|
|Education|No|No|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Currently, this policy is supported only in HoloLens 2, Hololens (1st gen) Commercial Suite, and HoloLens (1st gen) Development Edition.

Enables USB connection between the device and a computer to sync files with the device or to use developer tools to deploy or debug applications. Changing this policy doesn't affect USB charging.

Both Media Transfer Protocol (MTP) and IP over USB are disabled when this policy is enforced.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-allowvpnovercellular"></a>**Connectivity/AllowVPNOverCellular**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

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

-   0 – VPN isn't allowed over cellular.
-   1 (default) – VPN can use any connection, including cellular.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-allowvpnroamingovercellular"></a>**Connectivity/AllowVPNRoamingOverCellular**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy prevents the device from connecting to VPN when the device roams over cellular networks.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-disableprintingoverhttp"></a>**Connectivity/DisablePrintingOverHTTP**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether to allow printing over HTTP from this client.

Printing over HTTP allows a client to print to printers on the intranet and the Internet.

Note: This policy setting affects the client side of Internet printing only. It doesn't prevent this computer from acting as an Internet Printing server and making its shared printers available via HTTP.

If you enable this policy setting, it prevents this client from printing to Internet printers over HTTP.

If you disable or don't configure this policy setting, users can choose to print to Internet printers over HTTP.

Also, see the "Web-based printing" policy setting in Computer Configuration/Administrative Templates/Printers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off printing over HTTP*
-   GP name: *DisableHTTPPrinting_2*
-   GP path: *Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-disabledownloadingofprintdriversoverhttp"></a>**Connectivity/DisableDownloadingOfPrintDriversOverHTTP**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether to allow this client to download print driver packages over HTTP.

To set up HTTP printing, non-inbox drivers need to be downloaded over HTTP.

Note: This policy setting doesn't prevent the client from printing to printers on the Intranet or the Internet over HTTP.  It only prohibits downloading drivers that aren't already installed locally.

If you enable this policy setting, print drivers can't be downloaded over HTTP.

If you disable or don't configure this policy setting, users can download print drivers over HTTP.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off downloading of print drivers over HTTP*
-   GP name: *DisableWebPnPDownload_2*
-   GP path: *Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards"></a>**Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether Windows should download a list of providers for the web publishing and online ordering wizards.

These wizards allow users to select from a list of companies that provide services such as online storage and photographic printing. By default, Windows displays providers downloaded from a Windows website in addition to providers specified in the registry.

If you enable this policy setting, Windows doesn't download providers, and only the service providers that are cached in the local registry are displayed.

If you disable or don't configure this policy setting, a list of providers is downloaded when the user uses the web publishing or online ordering wizards.

For more information, including details on specifying service providers in the registry, see the documentation for the web publishing and online ordering wizards.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Internet download for Web publishing and online ordering wizards*
-   GP name: *ShellPreventWPWDownload_2*
-   GP path: *Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-disallownetworkconnectivityactivetests"></a>**Connectivity/DisallowNetworkConnectivityActiveTests**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to `<http://www.msftconnecttest.com/connecttest.txt>` to determine if the device can communicate with the Internet.  This policy disables the NCSI active probe, preventing network connectivity to `www.msftconnecttest.com`.

Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Turn off Windows Network Connectivity Status Indicator active tests*
-   GP name: *NoActiveProbe*
-   GP path: *Internet Communication settings*
-   GP ADMX file name: *ICM.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-hardeneduncpaths"></a>**Connectivity/HardenedUNCPaths**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures secure access to UNC paths.

If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling other security requirements.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hardened UNC Paths*
-   GP name: *Pol_HardenedPaths*
-   GP path: *Network/Network Provider*
-   GP ADMX file name: *networkprovider.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="connectivity-prohibitinstallationandconfigurationofnetworkbridge"></a>**Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy determines whether a user can install and configure the Network Bridge.

Important: This setting is location aware. It only applies when a computer is connected to the same DNS domain network it was connected to when the setting was refreshed on that computer. If a computer is connected to a DNS domain network other than the one it was connected to when the setting was refreshed, this setting doesn't apply.

The Network Bridge allows users to create a layer 2 MAC bridge, enabling them to connect two or more network segments together. This connection appears in the Network Connections folder.

If you disable this setting or don't configure it, the user will be able to create and modify the configuration of a Network Bridge. Enabling this setting doesn't remove an existing Network Bridge from the user's computer.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit installation and configuration of Network Bridge on your DNS domain network*
-   GP name: *NC_AllowNetBridge_NLA*
-   GP path: *Network/Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>



<!--/Policies-->
