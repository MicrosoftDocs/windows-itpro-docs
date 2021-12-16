---
title: Configuration service provider reference
description: A configuration service provider (CSP) is an interface to read, set, modify, or delete configuration settings on the device.
ms.assetid: 71823658-951f-4163-9c40-c4d4adceaaec
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2020
ms.collection: highpri
---

# Configuration service provider reference

A configuration service provider (CSP) is an interface to read, set, modify, or delete configuration settings on the device. These settings map to registry keys or files. Some configuration service providers support the WAP format, some support SyncML, and some support both. SyncML is only used over–the–air for Open Mobile Alliance Device Management (OMA DM), whereas WAP can be used over–the–air for OMA Client Provisioning, or it can be included in the phone image as a .provxml file that is installed during boot.

For information about the bridge WMI provider classes that map to these CSPs, see [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal). For CSP DDF files, see [CSP DDF files download](#csp-ddf-files-download).


Additional lists:
- [List of CSPs supported in HoloLens devices](#hololens)
- [List of CSPs supported in Microsoft Surface Hub](#surfacehubcspsupport)
- [List of CSPs supported in Windows 10 IoT Core](#iotcoresupport)

<!--StartCSPs-->
<hr/>

## CSP support

<!--StartCSP-->
[AccountManagement CSP](accountmanagement-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Accounts CSP](accounts-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[ActiveSync CSP](activesync-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[AllJoynManagement CSP](alljoynmanagement-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[APPLICATION CSP](application-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[ApplicationControl CSP](applicationcontrol-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[AppLocker CSP](applocker-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[AssignedAccess CSP](assignedaccess-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[BOOTSTRAP CSP](bootstrap-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[BitLocker CSP](bitlocker-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[BrowserFavorite CSP](browserfavorite-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CMPolicy CSP](cmpolicy-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CMPolicyEnterprise CSP](cmpolicyenterprise-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CM_CellularEntries CSP](cm-cellularentries-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CM_ProxyEntries CSP](cm-proxyentries-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CellularSettings CSP](cellularsettings-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CertificateStore CSP](certificatestore-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CleanPC CSP](cleanpc-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[ClientCertificateInstall CSP](clientcertificateinstall-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[CustomDeviceUI CSP](customdeviceui-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DMAcc CSP](dmacc-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DMClient CSP](dmclient-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Defender CSP](defender-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DevDetail CSP](devdetail-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DevInfo CSP](devinfo-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DeveloperSetup CSP](developersetup-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DeviceInstanceService CSP](deviceinstanceservice-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DeviceLock CSP](devicelock-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DeviceManageability CSP](devicemanageability-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DeviceStatus CSP](devicestatus-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DiagnosticLog CSP](diagnosticlog-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[DynamicManagement CSP](dynamicmanagement-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EMAIL2 CSP](email2-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnrollmentStatusTracking CSP](enrollmentstatustracking-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseAPN CSP](enterpriseapn-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseAppManagement CSP](enterpriseappmanagement-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseAppVManagement CSP](enterpriseappvmanagement-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes<br> [Only for mobile application management (MAM)](/windows/client-management/mdm/implement-server-side-mobile-application-management#integration-with-windows-information-protection)|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseExt CSP](enterpriseext-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseExtFileSystem CSP](enterpriseextfilessystem-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[eUICCs CSP](euiccs-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[FileSystem CSP](filesystem-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Firewall CSP](firewall-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[HealthAttestation CSP](healthattestation-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[HotSpot CSP](hotspot-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[LanguagePackManagement CSP](language-pack-management-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|Mobile Enterprise|
|--- |--- |--- |--- |--- |--- |--- |
|Yes|Yes|No|Yes|Yes|No|No|

<!--EndSKU-->
<!--EndCSP-->
<!--StartCSP-->
[Maps CSP](maps-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Messaging CSP](messaging-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[MultiSIM CSP](multisim-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[NAP CSP](nap-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[NAPDEF CSP](napdef-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[NetworkProxy CSP](networkproxy-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[NetworkQoSPolicy CSP](networkqospolicy-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[NodeCache CSP](nodecache-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Office CSP](office-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[PROXY CSP](proxy-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[PXLOGICAL CSP](pxlogical-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[PassportForWork CSP](passportforwork-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Personalization CSP](personalization-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Policy CSP](policy-configuration-service-provider.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[PolicyManager CSP](policymanager-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Provisioning CSP](provisioning-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Reboot CSP](reboot-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[RemoteFind CSP](remotefind-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[RemoteRing CSP](remotering-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[RemoteWipe CSP](remotewipe-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Reporting CSP](reporting-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[RootCATrustedCertificates CSP](rootcacertificates-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[SUPL CSP](supl-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[SecureAssessment CSP](secureassessment-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[SecurityPolicy CSP](securitypolicy-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[SharedPC CSP](sharedpc-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Storage CSP](storage-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[SurfaceHub](surfacehub-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|||||||

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[TenantLockdown CSP](tenantlockdown-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[TPMPolicy CSP](tpmpolicy-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[UEFI CSP](uefi-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[UnifiedWriteFilter CSP](unifiedwritefilter-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Update CSP](update-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[VPN CSP](vpn-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|No|No|No|No|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[VPNv2 CSP](vpnv2-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[W4 Application CSP](w4-application-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
||||||Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[WiFi CSP](wifi-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Win32AppInventory CSP](win32appinventory-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[Win32CompatibilityAppraiser CSP](win32compatibilityappraiser-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[WindowsDefenderApplicationGuard CSP](windowsdefenderapplicationguard-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|No|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->

[WindowsLicensing CSP](windowslicensing-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|Yes|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[WiredNetwork CSP](wirednetwork-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
|No|Yes|Yes|Yes|Yes|Yes|

<!--EndSKU-->
<!--EndCSP-->

<!--StartCSP-->
[w7 Application CSP](w7-application-csp.md)

<!--StartSKU-->

|Home|Pro|Business|Enterprise|Education|Mobile|
|--- |--- |--- |--- |--- |--- |
||||||Yes|

<!--EndSKU-->
<!--EndCSP-->

<hr/>
<!--EndCSPs-->

## CSP DDF files download

You can download the DDF files for various CSPs from the links below:
- [Download all the DDF files for Windows 10, version 2004](https://download.microsoft.com/download/4/0/f/40f9ec45-3bea-442c-8afd-21edc1e057d8/Windows10_2004_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1903](https://download.microsoft.com/download/6/F/0/6F019079-6EB0-41B5-88E8-D1CE77DBA27B/Windows10_1903_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1809](https://download.microsoft.com/download/6/A/7/6A735141-5CFA-4C1B-94F4-B292407AF662/Windows10_1809_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1803](https://download.microsoft.com/download/6/2/7/6276FE19-E3FD-4254-9C16-3C31CAA2DE50/Windows10_1803_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1709](https://download.microsoft.com/download/9/7/C/97C6CF99-F75C-475E-AF18-845F8CECCFA4/Windows10_1709_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1703](https://download.microsoft.com/download/C/7/C/C7C94663-44CF-4221-ABCA-BC895F42B6C2/Windows10_1703_DDF_download.zip)
- [Download all the DDF files for Windows 10, version 1607](https://download.microsoft.com/download/2/3/E/23E27D6B-6E23-4833-B143-915EDA3BDD44/Windows10_1607_DDF.zip)


## <a href="" id="hololens"></a>CSPs supported in HoloLens devices


The following list shows the CSPs supported in HoloLens devices:

| Configuration service provider        | HoloLens (1st gen) Development Edition      | HoloLens (1st gen) Commercial Suite | HoloLens 2 |
|------|--------|--------|--------|
| [AccountManagement CSP](accountmanagement-csp.md)   | No | Yes        | Yes
| [Accounts CSP](accounts-csp.md)    | Yes | Yes | Yes |
| [ApplicationControl CSP](applicationcontrol-csp.md) | No | No |  Yes |
| [AppLocker CSP](applocker-csp.md)      | No | Yes       | No |
| [AssignedAccess CSP](assignedaccess-csp.md)      | No | Yes        | Yes |
| [CertificateStore CSP](certificatestore-csp.md)    | Yes | Yes| Yes |
| [ClientCertificateInstall CSP](clientcertificateinstall-csp.md)  | No | Yes       | Yes |
| [DevDetail CSP](devdetail-csp.md)   | Yes | Yes       | Yes |
| [DeveloperSetup CSP](developersetup-csp.md)   | No | Yes    (runtime provisioning via provisioning packages only; no MDM support)| Yes |
| [DeviceManageability CSP](devicemanageability-csp.md) | No | No | Yes |
| [DeviceStatus CSP](devicestatus-csp.md)  | No | Yes  | Yes |
| [DevInfo CSP](devinfo-csp.md)  | Yes | Yes       | Yes |
| [DiagnosticLog CSP](diagnosticlog-csp.md)  | No | Yes       | Yes |
| [DMAcc CSP](dmacc-csp.md)      | Yes | Yes       | Yes |
| [DMClient CSP](dmclient-csp.md)    | Yes | Yes       | Yes |
| [EnrollmentStatusTracking CSP](enrollmentstatustracking-csp.md) | No | No | Yes   |
| [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) | No | Yes       | Yes |
| [NetworkProxy CSP](networkproxy-csp.md) | No | No | Yes |
| [NetworkQoSPolicy CSP](networkqospolicy-csp.md)  | No | No       | Yes |
| [NodeCache CSP](nodecache-csp.md)  | Yes | Yes       | Yes |
[PassportForWork CSP](passportforwork-csp.md) | No | Yes | Yes |
| [Policy CSP](policy-configuration-service-provider.md)    | No | Yes       | Yes |
| [RemoteFind CSP](remotefind-csp.md)    | No | Yes        | Yes |
| [RemoteWipe CSP](remotewipe-csp.md) (**doWipe** and **doWipePersistProvisionedData** nodes only)  | No | Yes        | Yes |
| [RootCATrustedCertificates CSP](rootcacertificates-csp.md)   | No | Yes       | Yes |
| [TenantLockdown CSP](tenantlockdown-csp.md) | No | No | Yes   |
| [Update CSP](update-csp.md)     | No | Yes       | Yes |
| [VPNv2 CSP](vpnv2-csp.md)    | No | Yes       | Yes |
| [WiFi CSP](wifi-csp.md)     | No | Yes       | Yes |
| [WindowsLicensing CSP](windowslicensing-csp.md)   | Yes | Yes       | No |

 
## <a href="" id="surfacehubcspsupport"></a>CSPs supported in Microsoft Surface Hub

-   [Accounts CSP](accounts-csp.md) 
    > [!NOTE]
    > Support in Surface Hub is limited to **Domain\ComputerName**.
-   [AccountManagement CSP](accountmanagement-csp.md)
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
-   [Firewall-CSP](firewall-csp.md) 
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
-   [UEFI CSP](uefi-csp.md)
-   [Wifi-CSP](wifi-csp.md) 
-   [WindowsAdvancedThreatProtection CSP](windowsadvancedthreatprotection-csp.md)
-   [Wirednetwork-CSP](wirednetwork-csp.md) 


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
- [HealthAttestation CSP](healthattestation-csp.md)
- [NetworkProxy CSP](networkproxy-csp.md)
- [Policy CSP](policy-configuration-service-provider.md)
- [Provisioning CSP (Provisioning only)](provisioning-csp.md)
- [Reboot CSP](reboot-csp.md)
- [RemoteWipe CSP](remotewipe-csp.md)
- [RootCATrustedCertificates CSP](rootcacertificates-csp.md)
- [UnifiedWriteFilter CSP](unifiedwritefilter-csp.md)
- [Update CSP](update-csp.md)
- [VPNv2 CSP](vpnv2-csp.md)
- [WiFi CSP](wifi-csp.md)

<hr>

