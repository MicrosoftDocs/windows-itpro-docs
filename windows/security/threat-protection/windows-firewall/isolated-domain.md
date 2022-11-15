---
title: Isolated Domain (Windows)
description: Learn about the isolated domain, which is the primary zone for trusted devices, which use connection security and firewall rules to control communication.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Isolated Domain

**Applies to:**
-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

The isolated domain is the primary zone for trusted devices. The devices in this zone use connection security and firewall rules to control the communications that can be sent between devices in the zone.

The term *domain* in this context means a boundary of communications trust instead of an Active Directory domain. In this solution, the two constructs are similar because Active Directory domain authentication (Kerberos V5) is required for accepting inbound connections from trusted devices. However, many Active Directory domains (or forests) can be linked with trust relationships to provide a single, logical, isolated domain. In addition, devices that authenticate by using certificates can also be included in an isolated domain without joining the Active Directory domain.

For most implementations, an isolated domain will contain the largest number of devices. Other isolation zones can be created for the solution if their communication requirements differ from those requirements of the isolated domain. Examples of these differences are what result in the boundary and encryption zones described in this guide. Conceptually, the isolated domain is just the largest isolation zone, and a superset to the other zones.

You must create a group in Active Directory to contain members of the isolated domain. You then apply one of several GPOs that contain connection security and firewall rules to the group so that authentication on all inbound network connections is enforced. Creation of the group and how to link the GPOs that apply the rules to its members are discussed in the [Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md) section.

The GPOs for the isolated domain should contain the following connection security rules and settings.

## GPO settings for isolated domain members running at least Windows Vista and Windows Server 2008


GPOs for devices running at least Windows Vista and Windows Server 2008 should include:

-   IPsec default settings that specify the following options:

    1.  Exempt all ICMP traffic from IPsec.

    2.  Key exchange (main mode) security methods and algorithm. We recommend that you use at least DH4, AES and SHA2 in your settings. Use the strongest algorithm combinations that are common to all your supported operating systems.

    3.  Data protection (quick mode) algorithm combinations. We recommend that you don't include DES, or MD5 in any setting. They're included only for compatibility with previous versions of Windows. Use the strongest algorithm combinations that are common to all your supported operating systems.

        If any NAT devices are present on your networks, use ESP encapsulation. If isolated domain members must communicate with hosts in the encryption zone, ensure that you include algorithms that are compatible with the requirements of the encryption mode policies.

    4.  Authentication methods. Include at least device-based Kerberos V5 authentication. If you want to use user-based access to isolated servers, then also include user-based Kerberos V5 as an optional authentication method. Likewise, if any of your isolated domain members can't use Kerberos V5 authentication, then include certificate-based authentication as an optional authentication method.

-   The following connection security rules:

    -   A connection security rule that exempts all devices on the exemption list from authentication. Be sure to include all your Active Directory domain controllers on this list. Enter subnet addresses, where possible, instead of discrete addresses, if applicable in your environment.

    -   A connection security rule, from any IP address to any, that requires inbound and requests outbound authentication by using Kerberos V5 authentication.

        >**Important:**  Be sure to begin operations by using request in and request out behavior until you are sure that all the devices in your IPsec environment are communicating successfully by using IPsec. After confirming that IPsec is operating as expected, you can change the policy to require in, request out. 

-   A registry policy that includes the following values:

    -   Enable PMTU discovery. Enabling this setting allows TCP/IP to dynamically determine the largest packet size supported across a connection. The value is found at HKLM\\System\\CurrentControlSet\\Services\\TCPIP\\Parameters\\EnablePMTUDiscovery (dword). The sample GPO preferences XML file in [Appendix A: Sample GPO Template Files for Settings Used in this Guide](appendix-a-sample-gpo-template-files-for-settings-used-in-this-guide.md) sets the value to **1**.

    >**Note:**  For a sample template for these registry settings, see [Appendix A: Sample GPO Template Files for Settings Used in this Guide](appendix-a-sample-gpo-template-files-for-settings-used-in-this-guide.md).

**Next:** [Boundary Zone](boundary-zone.md)
