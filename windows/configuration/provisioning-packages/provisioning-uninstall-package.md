---
title: Settings changed when you uninstall a provisioning package
description: This article lists the settings that are reverted when you uninstall a provisioning package on Windows desktop client devices.
ms.topic: conceptual
ms.date: 07/09/2024
---

# Settings changed when you uninstall a provisioning package

When you uninstall a provisioning package, only certain settings are revertible. This article lists the settings that are reverted when you uninstall a provisioning package. As an administrator, you can uninstall by using the **Add or remove a package for work or school** option available under **Settings** > **Accounts** > **Access work or school**.

When a provisioning package is uninstalled, some of its settings are reverted, which means the value for the setting is changed to the next available or default value. Not all settings, however, are revertible.

> [!IMPORTANT]
> Only settings in the following lists are revertible.

## Registry-based settings

The registry-based settings that are revertible when a provisioning package is uninstalled all fall under these categories, which you can find in the  Windows Configuration Designer.

- [Wi-Fi Sense](../wcd/wcd-connectivityprofiles.md#wifisense)
- [CountryAndRegion](../wcd/wcd-countryandregion.md)
- [DeviceManagement / PGList / LogicalProxyName](../wcd/wcd-devicemanagement.md#pglist)
- [UniversalAppInstall](../wcd/wcd-universalappinstall.md) / LaunchAppAtLogin
- [Power](/previous-versions//dn953704(v=vs.85))
- [TabletMode](../wcd/wcd-tabletmode.md)
- [Maps](../wcd/wcd-maps.md)
- [Browser](../wcd/wcd-browser.md)
- [DeviceFormFactor](../wcd/wcd-deviceformfactor.md)
- [USBErrorsOEMOverride](/previous-versions/windows/hardware/previsioning-framework/mt769908(v=vs.85))
- [WeakCharger](../wcd/wcd-weakcharger.md)

## CSP-based settings

Here's the list of revertible settings based on configuration service providers (CSPs).

- [ActiveSync CSP](/windows/client-management/mdm/activesync-csp)
- [AppLocker CSP](/windows/client-management/mdm/applocker-csp)
- [BrowserFavorite CSP](/windows/client-management/mdm/browserfavorite-csp)
- [CertificateStore CSP](/windows/client-management/mdm/certificatestore-csp)
- [ClientCertificateInstall CSP](/windows/client-management/mdm/clientcertificateinstall-csp)
- [RootCATrustedCertificates CSP](/windows/client-management/mdm/rootcacertificates-csp)
- [CM_CellularEntries CSP](/windows/client-management/mdm/cm-cellularentries-csp)
- [CM_ProxyEntries CSP](/windows/client-management/mdm/cm-proxyentries-csp)
- [CMPolicy CSP](/windows/client-management/mdm/cmpolicy-csp)
- [CMPolicyEnterprise CSP](/windows/client-management/mdm/cmpolicyenterprise-csp)
- [EMAIL2 CSP](/windows/client-management/mdm/email2-csp)
- [EnterpriseAPN CSP](/windows/client-management/mdm/enterpriseapn-csp)
- [EnterpriseDesktopAppManagement CSP](/windows/client-management/mdm/enterprisedesktopappmanagement-csp)
- [EnterpriseModernAppManagement CSP](/windows/client-management/mdm/enterprisemodernappmanagement-csp)
- [NAP CSP](/windows/client-management/mdm/nap-csp)
- [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp)
- [Provisioning CSP](/windows/client-management/mdm/provisioning-csp)
- [SecureAssessment CSP](/windows/client-management/mdm/secureassessment-csp)
- [VPN CSP](/windows/client-management/mdm/vpn-csp)
- [VPNv2 CSP](/windows/client-management/mdm/vpnv2-csp)
- [WiFi CSP](/windows/client-management/mdm/wifi-csp)
