---
title: VPN connection types (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: dulcemontemayor
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# VPN connection types

**Applies to**
-   Windows 10
-   Windows 10 Mobile

Virtual private networks (VPNs) are point-to-point connections across a private or public network, such as the Internet. A VPN client uses special TCP/IP or UDP-based protocols, called *tunneling protocols*, to make a virtual call to a virtual port on a VPN server. In a typical VPN deployment, a client initiates a virtual point-to-point connection to a remote access server over the Internet. The remote access server answers the call, authenticates the caller, and transfers data between the VPN client and the organization’s private network.

There are many options for VPN clients. In Windows 10, the built-in plug-in and the Universal Windows Platform (UWP) VPN plug-in platform are built on top of the Windows VPN platform. This guide focuses on the Windows VPN platform clients and the features that can be configured. 

![VPN connection types](images/vpn-connection.png)

## Built-in VPN client

- Tunneling protocols

    - [Internet Key Exchange version 2 (IKEv2)](https://technet.microsoft.com/library/ff687731.aspx)

      Configure the IPsec/IKE tunnel cryptographic properties using the **Cryptography Suite** setting in the [VPNv2 Configuration Service Provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx).
           
    - [L2TP](https://technet.microsoft.com/library/ff687761.aspx)

      L2TP with pre-shared key (PSK) authentication can be configured using the **L2tpPsk** setting in the [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx).
    
    - [PPTP](https://technet.microsoft.com/library/ff687676.aspx)

    - [SSTP](https://technet.microsoft.com/library/ff687819.aspx)

        SSTP is supported for Windows desktop editions only. SSTP cannot be configured using mobile device management (MDM), but it is one of the protocols attempted in the **Automatic** option.
        
- Automatic

    The **Automatic** option means that the device will try each of the built-in tunneling protocols until one succeeds. It will attempt from most secure to least secure. 

    Configure **Automatic** for the **NativeProtocolType** setting in the [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx).
    
  
 
## Universal Windows Platform VPN plug-in

The Universal Windows Platform (UWP) VPN plug-ins were introduced in Windows 10, although there were originally separate versions available for the Windows 8.1 Mobile and Windows 8.1 PC platforms. Using the UWP platform, third-party VPN providers can create app-containerized plug-ins using WinRT APIs, eliminating the complexity and problems often associated with writing to system-level drivers.  

There are a number of Universal Windows Platform VPN applications, such as Pulse Secure, Cisco AnyConnect, F5 Access, Sonicwall Mobile Connect, and Check Point Capsule. If you want to use a UWP VPN plug-in, work with your vendor for any custom settings needed to configure your VPN solution.

## Configure connection type

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx) for XML configuration. 

The following image shows connection options in a VPN Profile configuration policy using Microsoft Intune.

![Available connection types](images/vpn-connection-intune.png)
     
In Intune, you can also include custom XML for third-party plug-in profiles.

![Custom XML](images/vpn-custom-xml-intune.png)


## Related topics

- [VPN technical guide](vpn-guide.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)
    





