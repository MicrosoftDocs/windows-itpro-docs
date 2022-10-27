---
title: Policy CSP - Printers
description: Use this policy setting to control the client Point and Print behavior, including  security prompts for Windows Vista computers.
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

# Policy CSP - Printers


<hr/>

<!--Policies-->
## Printers policies

<dl>
  <dd>
    <a href="#printers-approvedusbprintdevices">Printers/ApprovedUsbPrintDevices</a>
  </dd>
  <dd>
    <a href="#printers-approvedusbprintdevicesuser">Printers/ApprovedUsbPrintDevicesUser</a>
  </dd>
  <dd>
    <a href="#printers-configurecopyfilespolicy">Printers/ConfigureCopyFilesPolicy</a>
  </dd>
  <dd>
    <a href="#printers-configuredrivervalidationlevel">Printers/ConfigureDriverValidationLevel</a>
  </dd>
  <dd>
    <a href="#printers-configureipppagecountspolicy">Printers/ConfigureIppPageCountsPolicy</a>
  </dd>
  <dd>
    <a href="#printers-configureredirectionguardpolicy">Printers/ConfigureRedirectionGuardPolicy</a>
  </dd>
  <dd>
    <a href="#printers-configurerpcconnectionpolicy">Printers/ConfigureRpcConnectionPolicy</a>
  </dd>
  <dd>
    <a href="#printers-configurerpclistenerpolicy">Printers/ConfigureRpcListenerPolicy</a>
  </dd>
  <dd>
    <a href="#printers-configurerpctcpport">Printers/ConfigureRpcTcpPort</a>
  </dd>
  <dd>
    <a href="#printers-enabledevicecontrol">Printers/EnableDeviceControl</a>
  </dd>
  <dd>
    <a href="#printers-enabledevicecontroluser">Printers/EnableDeviceControlUser</a>
  </dd>
  <dd>
    <a href="#printers-managedriverexclusionlist">Printers/ManageDriverExclusionList</a>
  </dd>
  <dd>
    <a href="#printers-pointandprintrestrictions">Printers/PointAndPrintRestrictions</a>
  </dd>
  <dd>
    <a href="#printers-pointandprintrestrictions-user">Printers/PointAndPrintRestrictions_User</a>
  </dd>
  <dd>
    <a href="#printers-publishprinters">Printers/PublishPrinters</a>
  </dd>
  <dd>
    <a href="#printers-restrictdriverinstallationtoadministrators">Printers/RestrictDriverInstallationToAdministrators</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="printers-approvedusbprintdevices"></a>**Printers/ApprovedUsbPrintDevices**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy implements the print portion of the Device Control requirements.
These requirements include restricting printing to USB connected printers that match a list of approved USB Vid/Pid combinations or to corporate connected printers, while either directly connected to the corporate network or when using a VPN connection to the corporate network.

This policy will contain the comma-separated list of approved USB Vid&Pid combinations that the print spooler will allow to print when Device Control is enabled.
The format of this setting is `<vid>/<pid>[,<vid>/<pid>]`

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Support for new Device Control Print feature*
-   GP name: *ApprovedUsbPrintDevices*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="printers-approvedusbprintdevicesuser"></a>**Printers/ApprovedUsbPrintDevicesUser**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy implements the print portion of the Device Control requirements.
These requirements include restricting printing to USB connected printers that match a list of approved USB Vid/Pid combinations or to corporate connected printers, while either directly connected to the corporate network or when using a VPN connection to the corporate network.

This policy will contain the comma separated list of approved USB Vid&Pid combinations that the print spooler will allow to print when Device Control is enabled.
The format of this setting is `<vid>/<pid>[,<vid>/<pid>]`

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Support for new Device Control Print feature*
-   GP name: *ApprovedUsbPrintDevicesUser*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-configurecopyfilespolicy"></a>**Printers/ConfigureCopyFilesPolicy**

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
This new Group Policy entry will be used to manage the `Software\Policies\Microsoft\Windows NT\Printers\CopyFilesPolicy` registry entry to restrict processing of the CopyFiles registry entries during printer connection installation. This registry key was added to the print system as part of the 9B security update.

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the code will default to *SyncCopyFilestoColorFolderOnly* as the value and process the CopyFiles entries as appropriate.

If the policy object is Enabled, the code will read the *DWORD* value from the registry entry and act accordingly.

The following are the supported values:

Type: DWORD. Defaults to 1.

- 0 (DisableCopyFiles) - Don't process any CopyFiles registry entries when installing printer connections.
- 1 (SyncCopyFilestoColorFolderOnly) - Only allow CopyFiles entries that conform to the standard Color Profile scheme. This means entries using the Registry Key CopyFiles\ICM, containing a Directory value of COLOR and supporting mscms.dll as the Module value.
- 2 (AllowCopyFile) - Allow any CopyFiles registry entries to be processed/created when installing printer connections.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Manage processing of Queue-specific files*
-   GP name: *ConfigureCopyFilesPolicy*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-configuredrivervalidationlevel"></a>**Printers/ConfigureDriverValidationLevel**

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

This new Group Policy entry will be used to manage the `Software\Policies\Microsoft\Windows NT\Printers\Driver\ValidationLevel` registry entry to determine the print driver digital signatures. This registry key was added to the print system as part of the 10C security update.

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the code will default to *DriverValidationLevel_Legacy* as the value and process the print driver digital signatures as appropriate.

If the policy object is Enabled, the code will read the *DWORD* value from the registry entry and act accordingly.

The following are the supported values:

Type: DWORD. Defaults to 4.

- 0 (DriverValidationLevel_Inbox) - Only drivers that are shipped as part of a Windows image are allowed on this computer.
- 1 (DriverValidationLevel_Trusted) - Only drivers that are shipped as part of a Windows image or drivers that are signed by certificates installed in the 'PrintDrivers' certificate store are allowed on this computer.
- 2 (DriverValidationLevel_WHQL)- Only drivers allowed on this computer are those that are: shipped as part of a Windows image, signed by certificates installed in the 'PrintDrivers' certificate store, or signed by the Windows Hardware Quality Lab (WHQL).
- 3 (DriverValidationLevel_TrustedShared) - Only drivers allowed on this computer are those that are: shipped as part of a Windows image, signed by certificates installed in the 'PrintDrivers' certificate store, signed by the Windows Hardware Quality Lab (WHQL), or signed by certificates installed in the 'Trusted Publishers' certificate store.
- 4 (DriverValidationLevel_Legacy) - Any print driver that has a valid embedded signature or can be validated against the print driver catalog can be installed on this computer.
<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Manage Print Driver signature validation*
-   GP name: *ConfigureDriverValidationLevel*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-configureipppagecountspolicy"></a>**Printers/ConfigureIppPageCountsPolicy**

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

This new Group Policy entry will be used to manage the `Software\Policies\Microsoft\Windows NT\Printers\IPP\AlwaysSendIppPageCounts`registry entry to allow administrators to configure setting for the IPP print stack.

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the code will default to sending page count job accounting information for IPP print jobs only when necessary.

If the policy object is Enabled, the code will always send page count job accounting information for IPP print jobs.

The following are the supported values:

AlwaysSendIppPageCounts: DWORD. Defaults to 0.

- 0 (Disabled) - Job accounting information will not always be sent for IPP print jobs **(default)**.
- 1 (Enabled) - Job accounting information will always be sent for IPP print jobs.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Always send job page count information for IPP printers*
-   GP name: *ConfigureIppPageCountsPolicy*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-configureredirectionguardpolicy"></a>**Printers/ConfigureRedirectionGuardPolicy**

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

This new Group Policy entry will be used to manage the `Software\Policies\Microsoft\Windows NT\Printers\ConfigureRedirectionGuard` registry entry, which in turn is used to control the functionality of the Redirection Guard feature in the spooler process.

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the code will default to 1 (enabled) as the value and will prevent redirection primitives in the spooler from being used.

If the policy object is Enabled, the code will read the *DWORD* value from the registry entry and act accordingly.

The following are the supported values:

Type: DWORD, defaults to 1.

- 0 (Redirection Guard Disabled) - Redirection Guard is not enabled for the spooler process and will not prevent the use of redirection primitives within said process.
- 1 (Redirection Guard Enabled) - Redirection Guard is enabled for the spooler process and will prevent the use of redirection primitives from being used.
- 2 (Redirection Guard Audit Mode) - Redirection Guard will be disabled but will log telemetry events as though it were enabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Redirection Guard*
-   GP name: *ConfigureRedirectionGuardPolicy*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-configurerpcconnectionpolicy"></a>**Printers/ConfigureRpcConnectionPolicy**

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

This new Group Policy entry will be used to manage 2 new DWORD Values added under the `Software\Policies\Microsoft\Windows NT\Printers\RPC` registry key to allow administrators to configure RPC security settings used by RPC connections in the print stack.

There are 2 values which can be configured:

- RpcUseNamedPipeProtocol DWORD
     - 0: RpcOverTcp (default)
     - 1: RpcOverNamedPipes
- RpcAuthentication DWORD
     - 0: RpcConnectionAuthenticationDefault (default)
     - 1: RpcConnectionAuthenticationEnabled
     - 2: RpcConnectionAuthenticationDisabled

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the code will default to *RpcOverTcp*, and RPC authentication enabled on domain joined machines and RPC authentication disabled on non domain joined machines.

If the policy object is Enabled, the code will read the DWORD values from the registry entries and act accordingly.

The following are the supported values:

- Not configured or Disabled - The print stack makes RPC connections over TCP and enables RPC authentication on domain joined machines, but disables RPC authentication on non domain joined machines.
- Enabled - The print stack reads from the registry to determine RPC protocols to connect on and whether to perform RPC authentication.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure RPC connection settings*
-   GP name: *ConfigureRpcConnectionPolicy*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-configurerpclistenerpolicy"></a>**Printers/ConfigureRpcListenerPolicy**

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

This new Group Policy entry will be used to manage 2 new DWORD Values added under the `Software\Policies\Microsoft\Windows NT\Printers\RPC` registry key to allow administrators to configure RPC security settings used by RPC listeners in the print stack.

There are 2 values which can be configured:
- RpcProtocols DWORD
     - 3: RpcOverNamedPipes - Only listen for incoming RPC connections using named pipes
     - 5: RpcOverTcp - Only listen for incoming RPC connections using TCP (default)
     - 7: RpcOverNamedPipesAndTcp - Listen for both RPC connections over named pipes over TCP
- ForceKerberosForRpc DWORD
     - 0: RpcAuthenticationProtocol_Negotiate - Use Negotiate protocol for RPC connection authentication (default). Negotiate negotiates between Kerberos and NTLM depending on client/server support
     - 1: RpcAuthenticationProtocol_Kerberos - Only allow Kerberos protocol to be used for RPC authentication

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the code will default to *RpcOverTcp* and *RpcAuthenticationProtocol_Negotiate*.

If the policy object is Enabled, the code will read the DWORD values from the registry entry and act accordingly.

The following are the supported values:

- Not configured or Disabled - The print stack listens for incoming RPC connections over TCP and uses Negotiate authentication protocol.
- Enabled - The print stack reads from the registry to determine RPC protocols to listen on and authentication protocol to use.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure RPC listener settings*
-   GP name: *ConfigureRpcListenerPolicy*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-configurerpctcpport"></a>**Printers/ConfigureRpcTcpPort**

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

This new Group Policy entry will be used to manage a new DWORD Value added under the  the `Software\Policies\Microsoft\Windows NT\Printers\RPC` registry key to allow administrators to configure RPC security settings used by RPC listeners and connections in the print stack.

- RpcTcpPort DWORD
     - 0: Use dynamic TCP ports for RPC over TCP (default).
     - 1-65535: Use the given port for RPC over TCP.

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the code will default to dynamic ports for *RpcOverTcp*.

If the policy object is Enabled, the code will read the DWORD values from the registry entry and act accordingly.

The following are the supported values:

- Not configured  or Disabled - The print stack uses dynamic TCP ports for RPC over TCP.
- Enabled - The print stack reads from the registry to determine which TCP port to use for RPC over TCP.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure RPC over TCP port*
-   GP name: *ConfigureRpcTcpPort*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-enabledevicecontrol"></a>**Printers/EnableDeviceControl**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy implements the print portion of the Device Control requirements.
These requirements include restricting printing to USB connected printers that match a list of approved USB Vid/Pid combinations or to corporate connected printers, while either directly connected to the corporate network or when using a VPN connection to the corporate network.

This policy will control whether the print spooler will attempt to restrict printing as part of Device Control.

The default value of the policy will be Unconfigured.

If the policy value is either Unconfigured or Disabled, the print spooler won't restrict printing.

If the policy value is Enabled, the print spooler will restrict local printing to USB devices in the Approved Device list.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Support for new Device Control Print feature*
-   GP name: *EnableDeviceControl*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>


<!--Policy-->
<a href="" id="printers-enabledevicecontroluser"></a>**Printers/EnableDeviceControlUser**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy implements the print portion of the Device Control requirements.
These requirements include restricting printing to USB connected printers that match a list of approved USB Vid/Pid combinations or to corporate connected printers, while either directly connected to the corporate network or when using a VPN connection to the corporate network.

This policy will control whether the print spooler will attempt to restrict printing as part of Device Control.

The default value of the policy will be Unconfigured.

If the policy value is either Unconfigured or Disabled, the print spooler won't restrict printing.

If the policy value is Enabled, the print spooler will restrict local printing to USB devices in the Approved Device list.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Support for new Device Control Print feature*
-   GP name: *EnableDeviceControlUser*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="printers-managedriverexclusionlist"></a>**Printers/ManageDriverExclusionList**

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

This new Group Policy entry will be used to manage the `Software\Policies\Microsoft\Windows NT\Printers\Driver\ExclusionList` registry key to allow administrators to curate a set of print drivers that are not allowed to be installed on the computer. This registry key was added to the print system as part of the 10C security update.

The default value of the policy will be Unconfigured.

If the policy object is either Unconfigured or Disabled, the registry Key will not exist and there will not be a Print Driver exclusion list.

If the policy object is Enabled, the ExclusionList Reg Key will contain one or more *REG_ZS* values that represent the list of excluded print driver INF or main DLL files. Tach *REG_SZ* value will have the file hash as the name and the file name as the data value.

The following are the supported values:

Create REG_SZ Values under key `Software\Policies\Microsoft\Windows NT\Printers\Driver\ExclusionList`

Type: REG_SZ
Value Name: Hash of excluded file
Value Data: Name of excluded file

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Manage Print Driver exclusion list*
-   GP name: *ManageDriverExclusionList*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--Policy-->
<a href="" id="printers-pointandprintrestrictions"></a>**Printers/PointAndPrintRestrictions**

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
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

If you enable this policy setting:

- Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver isn't available on the client, no connection will be made.

- You can configure Windows Vista clients so that security warnings and elevated command prompts don't appear when users Point and Print, or when printer connection drivers need to be updated.

If you don't configure this policy setting:

- Windows Vista client computers can point and print to any server.

- Windows Vista computers will show a warning and an elevated command prompt, when users create a printer connection to any server using Point and Print.

- Windows Vista computers will show a warning and an elevated command prompt, when an existing printer connection driver needs to be updated.

- Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

If you disable this policy setting:

- Windows Vista client computers can create a printer connection to any server using Point and Print.

- Windows Vista computers won't show a warning or an elevated command prompt, when users create a printer connection to any server using Point and Print.

- Windows Vista computers won't show a warning or an elevated command prompt, when an existing printer connection driver needs to be updated.

- Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.

- The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Point and Print Restrictions*
-   GP name: *PointAndPrint_Restrictions_Win7*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--Example-->
Example:

```xml
Name: Point and Print Enable Oma-URI: ./Device/Vendor/MSFT/Policy/Config/Printers/PointAndPrintRestrictions
Data type: String Value: <enabled/>
<data id="PointAndPrint_TrustedServers_Chk" value="true"/>
<data id="PointAndPrint_TrustedServers_Edit" value="Printserver1.Contoso.com"/>
<data id="PointAndPrint_TrustedForest_Chk" value="false"/>
<data id="PointAndPrint_NoWarningNoElevationOnInstall_Enum" value="1"/>
<data id="PointAndPrint_NoWarningNoElevationOnUpdate_Enum" value="2"/>
```
<!--/Example-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="printers-pointandprintrestrictions-user"></a>**Printers/PointAndPrintRestrictions_User**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.

If you enable this policy setting:

- Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver isn't available on the client, no connection will be made.

- You can configure Windows Vista clients so that security warnings and elevated command prompts don't appear when users Point and Print, or when printer connection drivers need to be updated.

If you don't configure this policy setting:

- Windows Vista client computers can point and print to any server.

- Windows Vista computers will show a warning and an elevated command prompt, when users create a printer connection to any server using Point and Print.

- Windows Vista computers will show a warning and an elevated command prompt, when an existing printer connection driver needs to be updated.

- Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.

If you disable this policy setting:

- Windows Vista client computers can create a printer connection to any server using Point and Print.

- Windows Vista computers won't show a warning or an elevated command prompt, when users create a printer connection to any server using Point and Print.

- Windows Vista computers won't show a warning or an elevated command prompt, when an existing printer connection driver needs to be updated.

- Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.

- The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).

<!--/Description-->
<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Point and Print Restrictions*
-   GP name: *PointAndPrint_Restrictions*
-   GP path: *Control Panel/Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="printers-publishprinters"></a>**Printers/PublishPrinters**

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
Determines whether the computer's shared printers can be published in Active Directory.

If you enable this setting or don't configure it, users can use the "List in directory" option in the Printer's Properties' on the Sharing tab, to publish shared printers in Active Directory.

If you disable this setting, this computer's shared printers can't be published in Active Directory, and the "List in directory" option isn't available.

> [!NOTE]
> This setting takes priority over the setting "Automatically publish new printers in the Active Directory".

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow printers to be published*
-   GP name: *PublishPrinters*
-   GP path: *Printers*
-   GP ADMX file name: *Printing2.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="printers-restrictdriverinstallationtoadministrators"></a>**Printers/RestrictDriverInstallationToAdministrators**

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

This new Group Policy entry will be used to manage the `Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint\RestrictDriverInstallationToAdministrators` registry entry for restricting print driver installation to Administrator users.

This registry key was added to the print system as part of the 7OOB security update and use of this registry key was expanded as part of the 8B security rollup.

The default value of the policy will be Unconfigured.

If the policy value is either Unconfigured or Enabled, only Administrators or members of an Administrator security group (Administrators, Domain Administrators, Enterprise Administrators) will be allowed to install print drivers on the computer.

If the policy value is Disabled, standard users will also be allowed to install print drivers on the computer.

The following are the supported values:

- Not configured or Enabled - Only administrators can install print drivers on the computer.
- Disabled - Standard users are allowed to install print drivers on the computer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict installation of print drivers to Administrators*
-   GP name: *RestrictDriverInstallationToAdministrators*
-   GP path: *Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXBacked-->

<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)