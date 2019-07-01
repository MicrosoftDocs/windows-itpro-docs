---
title: Settings changed when you uninstall a provisioning package (Windows 10)
description: This topic lists the settings that are reverted when you uninstall a provisioning package.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
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


- [Wi-Fi Sense](https://msdn.microsoft.com/library/windows/hardware/mt219706.aspx)
- [CountryAndRegion](https://msdn.microsoft.com/library/windows/hardware/mt219726.aspx)
- DeviceManagement / PGList/ LogicalProxyName
- UniversalAppInstall / LaunchAppAtLogin
- [Power](https://msdn.microsoft.com/library/windows/hardware/dn953704.aspx)
- [TabletMode](https://msdn.microsoft.com/library/windows/hardware/mt297550.aspx) 
- [Maps](https://msdn.microsoft.com/library/windows/hardware/mt131464.aspx) 
- [Browser](https://msdn.microsoft.com/library/windows/hardware/mt573151.aspx)
- [DeviceFormFactor](https://msdn.microsoft.com/library/windows/hardware/mt243449.aspx) 
- [USBErrorsOEMOverride](https://msdn.microsoft.com/library/windows/hardware/mt769908.aspx) 
- [WeakCharger](https://msdn.microsoft.com/library/windows/hardware/mt346401.aspx) 



## CSP-based settings

Here is the list of revertible settings based on configuration service providers (CSPs). 

[ActiveSync CSP](https://msdn.microsoft.com/library/windows/hardware/dn920017.aspx) 
[AppLocker CSP](https://msdn.microsoft.com/library/windows/hardware/dn920019.aspx)  
[BrowserFavorite CSP](https://msdn.microsoft.com/library/windows/hardware/dn914758.aspx)   
[CertificateStore CSP](https://msdn.microsoft.com/library/windows/hardware/dn920021.aspx) 
[ClientCertificateInstall CSP](https://msdn.microsoft.com/library/windows/hardware/dn920023.aspx)   
[RootCATrustedCertificates CSP](https://msdn.microsoft.com/library/windows/hardware/dn904970.aspx)   
[CM_CellularEntries CSP](https://msdn.microsoft.com/library/windows/hardware/dn914761.aspx)   
[CM_ProxyEntries CSP](https://msdn.microsoft.com/library/windows/hardware/dn914762.aspx)   
[CMPolicy CSP](https://msdn.microsoft.com/library/windows/hardware/dn914760.aspx)   
[CMPolicyEnterprise CSP](https://msdn.microsoft.com/library/windows/hardware/mt706463.aspx)   
[EMAIL2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn904953.aspx)   
[EnterpriseAPN CSP](https://msdn.microsoft.com/library/windows/hardware/dn958617.aspx)   
[EnterpriseAppManagement CSP](https://msdn.microsoft.com/library/windows/hardware/dn904955.aspx)   
[EnterpriseDesktopAppManagement CSP](https://msdn.microsoft.com/library/windows/hardware/dn958620.aspx)   
[EnterpriseModernAppManagement CSP](https://msdn.microsoft.com/library/windows/hardware/dn904956.aspx)   
[NAP CSP](https://msdn.microsoft.com/library/windows/hardware/dn914767.aspx)   
[PassportForWork CSP](https://msdn.microsoft.com/library/windows/hardware/dn987099.aspx)   
[Provisioning CSP](https://msdn.microsoft.com/library/windows/hardware/mt203665.aspx)   
[PROXY CSP](https://msdn.microsoft.com/library/windows/hardware/dn914770.aspx)   
[SecureAssessment CSP](https://msdn.microsoft.com/library/windows/hardware/mt718628.aspx)   
[VPN CSP](https://msdn.microsoft.com/library/windows/hardware/dn904978.aspx)   
[VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx)   
[WiFi CSP](https://msdn.microsoft.com/library/windows/hardware/dn904981.aspx)   



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

 

 





