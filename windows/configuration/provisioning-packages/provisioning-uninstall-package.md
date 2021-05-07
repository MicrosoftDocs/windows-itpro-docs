---
title: Uninstall a provisioning package - reverted settings (Windows 10)
description: This topic lists the settings that are reverted when you uninstall a provisioning package.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.reviewer: 
manager: dansimp
---

# Settings changed when you uninstall a provisioning package


**Applies to**

-   Windows 10
-   Windows 10 Mobile

When you uninstall a provisioning package, only certain settings are revertible. This topic lists the settings that are reverted when you uninstall a provisioning package.


As an administrator, you can uninstall by using the **Add or remove a package for work or school** option available under **Settings** > **Accounts** > **Access work or school**.

When a provisioning package is uninstalled, some of its settings are reverted, which means the value for the setting is changed to the next available or default value. Not all settings, however, are revertible. 

Only settings in the following lists are revertible. 

## Registry-based settings

The registry-based settings that are revertible when a provisioning package is uninstalled all fall under these categories, which you can find in the  Windows Configuration Designer. 


- [Wi-Fi Sense](../wcd/wcd-connectivityprofiles.md#wifisense)
- [CountryAndRegion](../wcd/wcd-countryandregion.md)
- DeviceManagement / PGList/ LogicalProxyName
- UniversalAppInstall / LaunchAppAtLogin
- [Power](/previous-versions//dn953704(v=vs.85))
- [TabletMode](../wcd/wcd-tabletmode.md) 
- [Maps](../wcd/wcd-maps.md) 
- [Browser](../wcd/wcd-browser.md)
- [DeviceFormFactor](../wcd/wcd-deviceformfactor.md) 
- [USBErrorsOEMOverride](/previous-versions/windows/hardware/previsioning-framework/mt769908(v=vs.85)) 
- [WeakCharger](../wcd/wcd-weakcharger.md) 



## CSP-based settings

Here is the list of revertible settings based on configuration service providers (CSPs). 

[ActiveSync CSP](/windows/client-management/mdm/activesync-csp) 
[AppLocker CSP](/windows/client-management/mdm/applocker-csp)  
[BrowserFavorite CSP](/windows/client-management/mdm/browserfavorite-csp)   
[CertificateStore CSP](/windows/client-management/mdm/certificatestore-csp) 
[ClientCertificateInstall CSP](/windows/client-management/mdm/clientcertificateinstall-csp)   
[RootCATrustedCertificates CSP](/windows/client-management/mdm/rootcacertificates-csp)   
[CM_CellularEntries CSP](/windows/client-management/mdm/cm-cellularentries-csp)   
[CM_ProxyEntries CSP](/windows/client-management/mdm/cm-proxyentries-csp)   
[CMPolicy CSP](/windows/client-management/mdm/cmpolicy-csp)   
[CMPolicyEnterprise CSP](/windows/client-management/mdm/cmpolicyenterprise-csp)   
[EMAIL2 CSP](/windows/client-management/mdm/email2-csp)   
[EnterpriseAPN CSP](/windows/client-management/mdm/enterpriseapn-csp)   
[EnterpriseAppManagement CSP](/windows/client-management/mdm/enterpriseappmanagement-csp)   
[EnterpriseDesktopAppManagement CSP](/windows/client-management/mdm/enterprisedesktopappmanagement-csp)   
[EnterpriseModernAppManagement CSP](/windows/client-management/mdm/enterprisemodernappmanagement-csp)   
[NAP CSP](/windows/client-management/mdm/nap-csp)   
[PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp)   
[Provisioning CSP](/windows/client-management/mdm/provisioning-csp)   
[PROXY CSP](/windows/client-management/mdm/proxy-csp)   
[SecureAssessment CSP](/windows/client-management/mdm/secureassessment-csp)   
[VPN CSP](/windows/client-management/mdm/vpn-csp)   
[VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp)   
[WiFi CSP](/windows/client-management/mdm/wifi-csp)   



## Related topics

- [Provisioning packages for Windows 10](provisioning-packages.md)
- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows 10 (reference)](provisioning-powershell.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)

 

 