---
title: Enable 802.1x wired authentication
description: 802.1x Wired Authentication MDM policies have been enabled on Surface Hub devices. 
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 11/15/2017
ms.localizationpriority: medium
---

# Enable 802.1x wired authentication

The [November 14, 2017 update to Windows 10](https://support.microsoft.com/help/4048954/windows-10-update-kb4048954) (build 15063.726) enables 802.1x wired authentication MDM policies on Surface Hub devices. The feature allows organizations to enforce standardized wired network authentication using the [IEEE 802.1x authentication protocol](http://www.ieee802.org/1/pages/802.1x-2010.html). This is already available for wireless authentication using WLAN profiles via MDM. This topic explains how to  configure a Surface Hub for use with wired authentication. 

Enforcement and enablement of 802.1x wired authentication on Surface Hub can be done through MDM [OMA-URI definition](https://docs.microsoft.com/intune-classic/deploy-use/windows-10-policy-settings-in-microsoft-intune#oma-uri-settings). 

The primary configuration to set is the **LanProfile** policy. Depending on the authentication method selected, other policies may be required, either the **EapUserData** policy or through MDM policies for adding user or machine certificates (such as [ClientCertificateInstall](https://docs.microsoft.com/windows/client-management/mdm/clientcertificateinstall-csp) for user/device certificates or [RootCATrustedCertificates](https://docs.microsoft.com/windows/client-management/mdm/rootcacertificates-csp) for device certificates). 

## LanProfile policy element

To configure Surface Hub to use one of the supported 802.1x authentication methods, utilize the following OMA-URI. 

```
./Vendor/MSFT/SurfaceHub/Dot3/LanProfile
```

This OMA-URI node takes a text string of XML as a parameter. The XML provided as a parameter should conform to the [Wired LAN Profile Schema](https://msdn.microsoft.com/library/cc233002.aspx) including elements from the [802.1X schema](https://msdn.microsoft.com/library/cc233003.aspx). 

In most instances, an administrator or user can export the LanProfile XML from an existing PC that is already configured on the network for 802.1X using this following NETSH command. 

```
netsh lan export profile folder=.
```

Running this command will give the following output and place a file titled **Ethernet.xml** in the current directory. 

```
Interface: Ethernet
Profile File Name: .\Ethernet.xml
1 profile(s) were exported successfully.
```

## EapUserData policy element

If your selected authentication method requires a username and password as opposed to a certificate, you can use the **EapUserData** element to specify credentials for the device to use to authenticate to the network. 

```
./Vendor/MSFT/SurfaceHub/Dot3/EapUserData 
```

This OMA-URI node takes a text string of XML as a parameter. The XML provided as a parameter should conform to the [PEAP MS-CHAPv2 User Properties example](https://msdn.microsoft.com/library/windows/desktop/bb891979). In the example, you will need to replace all instances of *test* and *ias-domain* with your information.



## Adding certificates

If your selected authentication method is certificate-based, you will need to [create a provisioning package](provisioning-packages-for-surface-hub.md), [utilize MDM](https://docs.microsoft.com/windows/client-management/mdm/clientcertificateinstall-csp), or import a certificate from settings (**Settings** > **Update and Security** > **Certificates**) to deploy those certificates to your Surface Hub device in the appropriate Certificate Store. When adding certificates, each PFX must contain only one certificate (a PFX cannot have multiple certificates).

