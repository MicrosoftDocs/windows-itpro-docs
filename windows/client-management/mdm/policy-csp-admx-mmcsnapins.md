---
title: Policy CSP - ADMX_MMCSnapins
description: Learn about Policy CSP - ADMX_MMCSnapins.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/13/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_MMCSnapins
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_MMCSnapins policies

<dl>
  <dd>
    <a href="#admx-mmcsnapins-mmc-admcomputers-1">ADMX_MMCSnapins/MMC_ADMComputers_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-admcomputers-2">ADMX_MMCSnapins/MMC_ADMComputers_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-admusers-1">ADMX_MMCSnapins/MMC_ADMUsers_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-admusers-2">ADMX_MMCSnapins/MMC_ADMUsers_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-adsi">ADMX_MMCSnapins/MMC_ADSI</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-activedirdomtrusts">ADMX_MMCSnapins/MMC_ActiveDirDomTrusts</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-activedirsitesservices">ADMX_MMCSnapins/MMC_ActiveDirSitesServices</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-activediruserscomp">ADMX_MMCSnapins/MMC_ActiveDirUsersComp</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-appletalkrouting">ADMX_MMCSnapins/MMC_AppleTalkRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-authman">ADMX_MMCSnapins/MMC_AuthMan</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-certauth">ADMX_MMCSnapins/MMC_CertAuth</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-certauthpolset">ADMX_MMCSnapins/MMC_CertAuthPolSet</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-certs">ADMX_MMCSnapins/MMC_Certs</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-certstemplate">ADMX_MMCSnapins/MMC_CertsTemplate</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-componentservices">ADMX_MMCSnapins/MMC_ComponentServices</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-computermanagement">ADMX_MMCSnapins/MMC_ComputerManagement</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-connectionsharingnat">ADMX_MMCSnapins/MMC_ConnectionSharingNAT</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-dcomcfg">ADMX_MMCSnapins/MMC_DCOMCFG</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-dfs">ADMX_MMCSnapins/MMC_DFS</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-dhcprelaymgmt">ADMX_MMCSnapins/MMC_DHCPRelayMgmt</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-devicemanager-1">ADMX_MMCSnapins/MMC_DeviceManager_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-devicemanager-2">ADMX_MMCSnapins/MMC_DeviceManager_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-diskdefrag">ADMX_MMCSnapins/MMC_DiskDefrag</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-diskmgmt">ADMX_MMCSnapins/MMC_DiskMgmt</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-enterprisepki">ADMX_MMCSnapins/MMC_EnterprisePKI</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-eventviewer-1">ADMX_MMCSnapins/MMC_EventViewer_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-eventviewer-2">ADMX_MMCSnapins/MMC_EventViewer_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-eventviewer-3">ADMX_MMCSnapins/MMC_EventViewer_3</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-eventviewer-4">ADMX_MMCSnapins/MMC_EventViewer_4</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-faxservice">ADMX_MMCSnapins/MMC_FAXService</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-failoverclusters">ADMX_MMCSnapins/MMC_FailoverClusters</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-folderredirection-1">ADMX_MMCSnapins/MMC_FolderRedirection_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-folderredirection-2">ADMX_MMCSnapins/MMC_FolderRedirection_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-frontpageext">ADMX_MMCSnapins/MMC_FrontPageExt</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-grouppolicymanagementsnapin">ADMX_MMCSnapins/MMC_GroupPolicyManagementSnapIn</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-grouppolicysnapin">ADMX_MMCSnapins/MMC_GroupPolicySnapIn</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-grouppolicytab">ADMX_MMCSnapins/MMC_GroupPolicyTab</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-hra">ADMX_MMCSnapins/MMC_HRA</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ias">ADMX_MMCSnapins/MMC_IAS</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-iaslogging">ADMX_MMCSnapins/MMC_IASLogging</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-iemaintenance-1">ADMX_MMCSnapins/MMC_IEMaintenance_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-iemaintenance-2">ADMX_MMCSnapins/MMC_IEMaintenance_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-igmprouting">ADMX_MMCSnapins/MMC_IGMPRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-iis">ADMX_MMCSnapins/MMC_IIS</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-iprouting">ADMX_MMCSnapins/MMC_IPRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ipsecmanage-gp">ADMX_MMCSnapins/MMC_IPSecManage_GP</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ipxriprouting">ADMX_MMCSnapins/MMC_IPXRIPRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ipxrouting">ADMX_MMCSnapins/MMC_IPXRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ipxsaprouting">ADMX_MMCSnapins/MMC_IPXSAPRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-indexingservice">ADMX_MMCSnapins/MMC_IndexingService</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ipsecmanage">ADMX_MMCSnapins/MMC_IpSecManage</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ipsecmonitor">ADMX_MMCSnapins/MMC_IpSecMonitor</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-localusersgroups">ADMX_MMCSnapins/MMC_LocalUsersGroups</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-logicalmappeddrives">ADMX_MMCSnapins/MMC_LogicalMappedDrives</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-npsui">ADMX_MMCSnapins/MMC_NPSUI</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-napsnap">ADMX_MMCSnapins/MMC_NapSnap</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-napsnap-gp">ADMX_MMCSnapins/MMC_NapSnap_GP</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-net-framework">ADMX_MMCSnapins/MMC_Net_Framework</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ocsp">ADMX_MMCSnapins/MMC_OCSP</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ospfrouting">ADMX_MMCSnapins/MMC_OSPFRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-perflogsalerts">ADMX_MMCSnapins/MMC_PerfLogsAlerts</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-publickey">ADMX_MMCSnapins/MMC_PublicKey</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-qosadmission">ADMX_MMCSnapins/MMC_QoSAdmission</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ras-dialinuser">ADMX_MMCSnapins/MMC_RAS_DialinUser</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-riprouting">ADMX_MMCSnapins/MMC_RIPRouting</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-ris">ADMX_MMCSnapins/MMC_RIS</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-rra">ADMX_MMCSnapins/MMC_RRA</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-rsm">ADMX_MMCSnapins/MMC_RSM</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-remstore">ADMX_MMCSnapins/MMC_RemStore</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-remoteaccess">ADMX_MMCSnapins/MMC_RemoteAccess</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-remotedesktop">ADMX_MMCSnapins/MMC_RemoteDesktop</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-resultantsetofpolicysnapin">ADMX_MMCSnapins/MMC_ResultantSetOfPolicySnapIn</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-routing">ADMX_MMCSnapins/MMC_Routing</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-sca">ADMX_MMCSnapins/MMC_SCA</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-smtpprotocol">ADMX_MMCSnapins/MMC_SMTPProtocol</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-snmp">ADMX_MMCSnapins/MMC_SNMP</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-scriptsmachine-1">ADMX_MMCSnapins/MMC_ScriptsMachine_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-scriptsmachine-2">ADMX_MMCSnapins/MMC_ScriptsMachine_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-scriptsuser-1">ADMX_MMCSnapins/MMC_ScriptsUser_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-scriptsuser-2">ADMX_MMCSnapins/MMC_ScriptsUser_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-securitysettings-1">ADMX_MMCSnapins/MMC_SecuritySettings_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-securitysettings-2">ADMX_MMCSnapins/MMC_SecuritySettings_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-securitytemplates">ADMX_MMCSnapins/MMC_SecurityTemplates</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-sendconsolemessage">ADMX_MMCSnapins/MMC_SendConsoleMessage</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-servermanager">ADMX_MMCSnapins/MMC_ServerManager</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-servicedependencies">ADMX_MMCSnapins/MMC_ServiceDependencies</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-services">ADMX_MMCSnapins/MMC_Services</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-sharedfolders">ADMX_MMCSnapins/MMC_SharedFolders</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-sharedfolders-ext">ADMX_MMCSnapins/MMC_SharedFolders_Ext</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-softwareinstalationcomputers-1">ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-softwareinstalationcomputers-2">ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-softwareinstallationusers-1">ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_1</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-softwareinstallationusers-2">ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_2</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-sysinfo">ADMX_MMCSnapins/MMC_SysInfo</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-sysprop">ADMX_MMCSnapins/MMC_SysProp</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-tpmmanagement">ADMX_MMCSnapins/MMC_TPMManagement</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-telephony">ADMX_MMCSnapins/MMC_Telephony</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-terminalservices">ADMX_MMCSnapins/MMC_TerminalServices</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-wmi">ADMX_MMCSnapins/MMC_WMI</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-windowsfirewall">ADMX_MMCSnapins/MMC_WindowsFirewall</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-windowsfirewall-gp">ADMX_MMCSnapins/MMC_WindowsFirewall_GP</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-wirednetworkpolicy">ADMX_MMCSnapins/MMC_WiredNetworkPolicy</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-wirelessmon">ADMX_MMCSnapins/MMC_WirelessMon</a>
  </dd>
  <dd>
    <a href="#admx-mmcsnapins-mmc-wirelessnetworkpolicy">ADMX_MMCSnapins/MMC_WirelessNetworkPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-admcomputers-1"></a>**ADMX_MMCSnapins/MMC_ADMComputers_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted. It can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited. It can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Administrative Templates (Computers)*
-   GP name: *MMC_ADMComputers_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-admcomputers-2"></a>**ADMX_MMCSnapins/MMC_ADMComputers_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted. It can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited. It can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Administrative Templates (Computers)*
-   GP name: *MMC_ADMComputers_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-admusers-1"></a>**ADMX_MMCSnapins/MMC_ADMUsers_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Administrative Templates (Users)*
-   GP name: *MMC_ADMUsers_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-admusers-2"></a>**ADMX_MMCSnapins/MMC_ADMUsers_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-  GP Friendly name: *Administrative Templates (Users)*
-   GP name: *MMC_ADMUsers_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-adsi"></a>**ADMX_MMCSnapins/MMC_ADSI**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *ADSI Edit*
-   GP name: *MMC_ADSI*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-activedirdomtrusts"></a>**ADMX_MMCSnapins/MMC_ActiveDirDomTrusts**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Active Directory Domains and Trusts*
-   GP name: *MMC_ActiveDirDomTrusts*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-activedirsitesservices"></a>**ADMX_MMCSnapins/MMC_ActiveDirSitesServices**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Active Directory Sites and Services*
-   GP name: *MMC_ActiveDirSitesServices*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-activediruserscomp"></a>**ADMX_MMCSnapins/MMC_ActiveDirUsersComp**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted. It can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Active Directory Users and Computers*
-   GP name: *MMC_ActiveDirUsersComp*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-appletalkrouting"></a>**ADMX_MMCSnapins/MMC_AppleTalkRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *AppleTalk Routing*
-   GP name: *MMC_AppleTalkRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-authman"></a>**ADMX_MMCSnapins/MMC_AuthMan**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Authorization Manager*
-   GP name: *MMC_AuthMan*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-certauth"></a>**ADMX_MMCSnapins/MMC_CertAuth**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Certification Authority*
-   GP name: *MMC_CertAuth*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-certauthpolset"></a>**ADMX_MMCSnapins/MMC_CertAuthPolSet**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Certification Authority Policy Settings*
-   GP name: *MMC_CertAuthPolSet*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-certs"></a>**ADMX_MMCSnapins/MMC_Certs**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Certificates*
-   GP name: *MMC_Certs*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-certstemplate"></a>**ADMX_MMCSnapins/MMC_CertsTemplate**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Certificate Templates*
-   GP name: *MMC_CertsTemplate*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-componentservices"></a>**ADMX_MMCSnapins/MMC_ComponentServices**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Component Services*
-   GP name: *MMC_ComponentServices*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-computermanagement"></a>**ADMX_MMCSnapins/MMC_ComputerManagement**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Computer Management*
-   GP name: *MMC_ComputerManagement*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-connectionsharingnat"></a>**ADMX_MMCSnapins/MMC_ConnectionSharingNAT**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Connection Sharing (NAT)*
-   GP name: *MMC_ConnectionSharingNAT*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-dcomcfg"></a>**ADMX_MMCSnapins/MMC_DCOMCFG**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *DCOM Configuration Extension*
-   GP name: *MMC_DCOMCFG*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-dfs"></a>**ADMX_MMCSnapins/MMC_DFS**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Distributed File System*
-   GP name: *MMC_DFS*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-dhcprelaymgmt"></a>**ADMX_MMCSnapins/MMC_DHCPRelayMgmt**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *DHCP Relay Management*
-   GP name: *MMC_DHCPRelayMgmt*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-devicemanager-1"></a>**ADMX_MMCSnapins/MMC_DeviceManager_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Device Manager*
-   GP name: *MMC_DeviceManager_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-devicemanager-2"></a>**ADMX_MMCSnapins/MMC_DeviceManager_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Device Manager*
-   GP name: *MMC_DeviceManager_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-diskdefrag"></a>**ADMX_MMCSnapins/MMC_DiskDefrag**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disk Defragmenter*
-   GP name: *MMC_DiskDefrag*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-diskmgmt"></a>**ADMX_MMCSnapins/MMC_DiskMgmt**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disk Management*
-   GP name: *MMC_DiskMgmt*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-enterprisepki"></a>**ADMX_MMCSnapins/MMC_EnterprisePKI**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enterprise PKI*
-   GP name: *MMC_EnterprisePKI*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-eventviewer-1"></a>**ADMX_MMCSnapins/MMC_EventViewer_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Event Viewer*
-   GP name: *MMC_EventViewer_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-eventviewer-2"></a>**ADMX_MMCSnapins/MMC_EventViewer_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Event Viewer (Windows Vista)*
-   GP name: *MMC_EventViewer_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-eventviewer-3"></a>**ADMX_MMCSnapins/MMC_EventViewer_3**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Event Viewer*
-   GP name: *MMC_EventViewer_3*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-eventviewer-4"></a>**ADMX_MMCSnapins/MMC_EventViewer_4**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Event Viewer (Windows Vista)*
-   GP name: *MMC_EventViewer_4*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-eventviewer-2"></a>**ADMX_MMCSnapins/MMC_EventViewer_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Event Viewer (Windows Vista)*
-   GP name: *MMC_EventViewer_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-faxservice"></a>**ADMX_MMCSnapins/MMC_FAXService**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *FAX Service*
-   GP name: *MMC_FAXService*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-failoverclusters"></a>**ADMX_MMCSnapins/MMC_FailoverClusters**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Failover Clusters Manager*
-   GP name: *MMC_FailoverClusters*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-folderredirection-1"></a>**ADMX_MMCSnapins/MMC_FolderRedirection_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Folder Redirection*
-   GP name: *MMC_FolderRedirection_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-folderredirection-2"></a>**ADMX_MMCSnapins/MMC_FolderRedirection_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Folder Redirection*
-   GP name: *MMC_FolderRedirection_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-frontpageext"></a>**ADMX_MMCSnapins/MMC_FrontPageExt**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *FrontPage Server Extensions*
-   GP name: *MMC_FrontPageExt*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-grouppolicymanagementsnapin"></a>**ADMX_MMCSnapins/MMC_GroupPolicyManagementSnapIn**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Group Policy Management*
-   GP name: *MMC_GroupPolicyManagementSnapIn*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-grouppolicysnapin"></a>**ADMX_MMCSnapins/MMC_GroupPolicySnapIn**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Group Policy Object Editor*
-   GP name: *MMC_GroupPolicySnapIn*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-grouppolicytab"></a>**ADMX_MMCSnapins/MMC_GroupPolicyTab**

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
This policy setting permits or prohibits use of the Group Policy tab in property sheets for the Active Directory Users and Computers and Active Directory Sites and Services snap-ins.

If you enable this setting, the Group Policy tab is displayed in the property sheet for a site, domain, or organizational unit displayed by the Active Directory Users and Computers and Active Directory Sites and Services snap-ins. If you disable the setting, the Group Policy tab isn't displayed in those snap-ins.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this tab is displayed.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users will not have access to the Group Policy tab.

To explicitly permit use of the Group Policy tab, enable this setting. If this setting isn't configured (or disabled), the Group Policy tab is inaccessible.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users will have access to the Group Policy tab.

To explicitly prohibit use of the Group Policy tab, disable this setting. If this setting isn't configured (or enabled), the Group Policy tab is accessible.

When the Group Policy tab is inaccessible, it doesn't appear in the site, domain, or organizational unit property sheets.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Group Policy tab for Active Directory Tools*
-   GP name: *MMC_GroupPolicyTab*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-hra"></a>**ADMX_MMCSnapins/MMC_HRA**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Health Registration Authority (HRA)*
-   GP name: *MMC_HRA*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ias"></a>**ADMX_MMCSnapins/MMC_IAS**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Internet Authentication Service (IAS)*
-   GP name: *MMC_IAS*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-iaslogging"></a>**ADMX_MMCSnapins/MMC_IASLogging**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IAS Logging*
-   GP name: *MMC_IASLogging*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-iemaintenance-1"></a>**ADMX_MMCSnapins/MMC_IEMaintenance_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Internet Explorer Maintenance*
-   GP name: *MMC_IEMaintenance_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-iemaintenance-2"></a>**ADMX_MMCSnapins/MMC_IEMaintenance_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Internet Explorer Maintenance*
-   GP name: *MMC_IEMaintenance_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-igmprouting"></a>**ADMX_MMCSnapins/MMC_IGMPRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IGMP Routing*
-   GP name: *MMC_IGMPRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-iis"></a>**ADMX_MMCSnapins/MMC_IIS**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Internet Information Services*
-   GP name: *MMC_IIS*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-iprouting"></a>**ADMX_MMCSnapins/MMC_IPRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IP Routing*
-   GP name: *MMC_IPRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ipsecmanage-gp"></a>**ADMX_MMCSnapins/MMC_IPSecManage_GP**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IP Security Policy Management*
-   GP name: *MMC_IPSecManage_GP*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ipxriprouting"></a>**ADMX_MMCSnapins/MMC_IPXRIPRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IPX RIP Routing*
-   GP name: *MMC_IPXRIPRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ipxrouting"></a>**ADMX_MMCSnapins/MMC_IPXRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IPX Routing*
-   GP name: *MMC_IPXRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ipxsaprouting"></a>**ADMX_MMCSnapins/MMC_IPXSAPRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IPX SAP Routing*
-   GP name: *MMC_IPXSAPRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-indexingservice"></a>**ADMX_MMCSnapins/MMC_IndexingService**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Indexing Service*
-   GP name: *MMC_IndexingService*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ipsecmanage"></a>**ADMX_MMCSnapins/MMC_IpSecManage**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IP Security Policy Management*
-   GP name: *MMC_IpSecManage*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ipsecmonitor"></a>**ADMX_MMCSnapins/MMC_IpSecMonitor**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IP Security Monitor*
-   GP name: *MMC_IpSecMonitor*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-localusersgroups"></a>**ADMX_MMCSnapins/MMC_LocalUsersGroups**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Local Users and Groups*
-   GP name: *MMC_LocalUsersGroups*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-logicalmappeddrives"></a>**ADMX_MMCSnapins/MMC_LogicalMappedDrives**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Logical and Mapped Drives*
-   GP name: *MMC_LogicalMappedDrives*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-npsui"></a>**ADMX_MMCSnapins/MMC_NPSUI**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Network Policy Server (NPS)*
-   GP name: *MMC_NPSUI*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-napsnap"></a>**ADMX_MMCSnapins/MMC_NapSnap**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *NAP Client Configuration*
-   GP name: *MMC_NapSnap*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-napsnap-gp"></a>**ADMX_MMCSnapins/MMC_NapSnap_GP**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *NAP Client Configuration*
-   GP name: *MMC_NapSnap_GP*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-net-framework"></a>**ADMX_MMCSnapins/MMC_Net_Framework**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *.Net Framework Configuration*
-   GP name: *MMC_Net_Framework*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ocsp"></a>**ADMX_MMCSnapins/MMC_OCSP**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Online Responder*
-   GP name: *MMC_OCSP*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ospfrouting"></a>**ADMX_MMCSnapins/MMC_OSPFRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *OSPF Routing*
-   GP name: *MMC_OSPFRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-perflogsalerts"></a>**ADMX_MMCSnapins/MMC_PerfLogsAlerts**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Performance Logs and Alerts*
-   GP name: *MMC_PerfLogsAlerts*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-publickey"></a>**ADMX_MMCSnapins/MMC_PublicKey**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Public Key Policies*
-   GP name: *MMC_PublicKey*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-qosadmission"></a>**ADMX_MMCSnapins/MMC_QoSAdmission**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *QoS Admission Control*
-   GP name: *MMC_QoSAdmission*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ras-dialinuser"></a>**ADMX_MMCSnapins/MMC_RAS_DialinUser**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *RAS Dialin - User Node*
-   GP name: *MMC_RAS_DialinUser*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-riprouting"></a>**ADMX_MMCSnapins/MMC_RIPRouting**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *RIP Routing*
-   GP name: *MMC_RIPRouting*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-ris"></a>**ADMX_MMCSnapins/MMC_RIS**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remote Installation Services*
-   GP name: *MMC_RIS*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-rra"></a>**ADMX_MMCSnapins/MMC_RRA**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Routing and Remote Access*
-   GP name: *MMC_RRA*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-rsm"></a>**ADMX_MMCSnapins/MMC_RSM**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Removable Storage Management*
-   GP name: *MMC_RSM*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-remstore"></a>**ADMX_MMCSnapins/MMC_RemStore**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Removable Storage*
-   GP name: *MMC_RemStore*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-remoteaccess"></a>**ADMX_MMCSnapins/MMC_RemoteAccess**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remote Access*
-   GP name: *MMC_RemoteAccess*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-remotedesktop"></a>**ADMX_MMCSnapins/MMC_RemoteDesktop**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remote Desktops*
-   GP name: *MMC_RemoteDesktop*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-resultantsetofpolicysnapin"></a>**ADMX_MMCSnapins/MMC_ResultantSetOfPolicySnapIn**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Resultant Set of Policy snap-in*
-   GP name: *MMC_ResultantSetOfPolicySnapIn*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-routing"></a>**ADMX_MMCSnapins/MMC_Routing**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Routing*
-   GP name: *MMC_Routing*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-sca"></a>**ADMX_MMCSnapins/MMC_SCA**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Security Configuration and Analysis*
-   GP name: *MMC_SCA*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-smtpprotocol"></a>**ADMX_MMCSnapins/MMC_SMTPProtocol**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *SMTP Protocol*
-   GP name: *MMC_SMTPProtocol*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-snmp"></a>**ADMX_MMCSnapins/MMC_SNMP**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *SNMP*
-   GP name: *MMC_SNMP*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-scriptsmachine-1"></a>**ADMX_MMCSnapins/MMC_ScriptsMachine_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scripts (Startup/Shutdown)*
-   GP name: *MMC_ScriptsMachine_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-scriptsmachine-2"></a>**ADMX_MMCSnapins/MMC_ScriptsMachine_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scripts (Startup/Shutdown)*
-   GP name: *MMC_ScriptsMachine_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-scriptsuser-1"></a>**ADMX_MMCSnapins/MMC_ScriptsUser_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scripts (Logon/Logoff)*
-   GP name: *MMC_ScriptsUser_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-scriptsuser-2"></a>**ADMX_MMCSnapins/MMC_ScriptsUser_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Scripts (Logon/Logoff)*
-   GP name: *MMC_ScriptsUser_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-securitysettings-1"></a>**ADMX_MMCSnapins/MMC_SecuritySettings_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Security Settings*
-   GP name: *MMC_SecuritySettings_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-securitysettings-2"></a>**ADMX_MMCSnapins/MMC_SecuritySettings_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Security Settings*
-   GP name: *MMC_SecuritySettings_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-securitytemplates"></a>**ADMX_MMCSnapins/MMC_SecurityTemplates**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Security Templates*
-   GP name: *MMC_SecurityTemplates*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-sendconsolemessage"></a>**ADMX_MMCSnapins/MMC_SendConsoleMessage**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Send Console Message*
-   GP name: *MMC_SendConsoleMessage*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-servermanager"></a>**ADMX_MMCSnapins/MMC_ServerManager**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Server Manager*
-   GP name: *MMC_ServerManager*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-servicedependencies"></a>**ADMX_MMCSnapins/MMC_ServiceDependencies**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Service Dependencies*
-   GP name: *MMC_ServiceDependencies*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-services"></a>**ADMX_MMCSnapins/MMC_Services**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Services*
-   GP name: *MMC_Services*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-sharedfolders"></a>**ADMX_MMCSnapins/MMC_SharedFolders**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Shared Folders*
-   GP name: *MMC_SharedFolders*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-sharedfolders-ext"></a>**ADMX_MMCSnapins/MMC_SharedFolders_Ext**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Shared Folders Ext*
-   GP name: *MMC_SharedFolders_Ext*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-softwareinstalationcomputers-1"></a>**ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Software Installation (Computers)*
-   GP name: *MMC_SoftwareInstalationComputers_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-softwareinstalationcomputers-2"></a>**ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Software Installation (Computers)*
-   GP name: *MMC_SoftwareInstalationComputers_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-softwareinstallationusers-1"></a>**ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_1**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Software Installation (Users)*
-   GP name: *MMC_SoftwareInstallationUsers_1*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-softwareinstallationusers-2"></a>**ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_2**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Software Installation (Users)*
-   GP name: *MMC_SoftwareInstallationUsers_2*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Resultant Set of Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-sysinfo"></a>**ADMX_MMCSnapins/MMC_SysInfo**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *System Information*
-   GP name: *MMC_SysInfo*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-sysprop"></a>**ADMX_MMCSnapins/MMC_SysProp**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *System Properties*
-   GP name: *MMC_SysProp*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Extension snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-tpmmanagement"></a>**ADMX_MMCSnapins/MMC_TPMManagement**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *TPM Management*
-   GP name: *MMC_TPMManagement*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-telephony"></a>**ADMX_MMCSnapins/MMC_Telephony**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Telephony*
-   GP name: *MMC_Telephony*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-terminalservices"></a>**ADMX_MMCSnapins/MMC_TerminalServices**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remote Desktop Services Configuration*
-   GP name: *MMC_TerminalServices*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-wmi"></a>**ADMX_MMCSnapins/MMC_WMI**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *WMI Control*
-   GP name: *MMC_WMI*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-windowsfirewall"></a>**ADMX_MMCSnapins/MMC_WindowsFirewall**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Windows Firewall with Advanced Security*
-   GP name: *MMC_WindowsFirewall*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-windowsfirewall-gp"></a>**ADMX_MMCSnapins/MMC_WindowsFirewall_GP**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Windows Firewall with Advanced Security*
-   GP name: *MMC_WindowsFirewall_GP*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-wirednetworkpolicy"></a>**ADMX_MMCSnapins/MMC_WiredNetworkPolicy**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Wired Network (IEEE 802.3) Policies*
-   GP name: *MMC_WiredNetworkPolicy*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-wirelessmon"></a>**ADMX_MMCSnapins/MMC_WirelessMon**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Wireless Monitor*
-   GP name: *MMC_WirelessMon*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-mmcsnapins-mmc-wirelessnetworkpolicy"></a>**ADMX_MMCSnapins/MMC_WirelessNetworkPolicy**

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
This policy setting permits or prohibits the use of this snap-in.

If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting. If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting. If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Wireless Network (IEEE 802.11) Policies*
-   GP name: *MMC_WirelessNetworkPolicy*
-   GP path: *Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\Group Policy\Group Policy snap-in extensions*
-   GP ADMX file name: *MMCSnapins.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)