---
title: Encryption Zone (Windows)
description: Learn how to create an encryption zone to contain devices that host sensitive data and require that the sensitive network traffic be encrypted.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Encryption Zone


Some servers in the organization host data that's sensitive, including medical, financial, or other personal data. Government or industry regulations might require that this sensitive information must be encrypted when it's transferred between devices.

To support the other security requirements of these servers, we recommend that you create an encryption zone to contain the devices and that requires that the sensitive inbound and outbound network traffic is encrypted.

You must create a group in Active Directory to contain members of the encryption zone. The settings and rules for the encryption zone are typically similar to those settings and rules for the isolated domain, and you can save time and effort by copying those GPOs to serve as a starting point. You then modify the security methods list to include only algorithm combinations that include encryption protocols.

Creation of the group and how to link it to the GPOs that apply the rules to members of the group are discussed in the [Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md) section.

## GPO settings for encryption zone servers running at least Windows Server 2008


The GPO for devices that are running at least Windows Server 2008 should include:

-   IPsec default settings that specify the following options:

    1.  Exempt all ICMP traffic from IPsec.

    2.  Key exchange (main mode) security methods and algorithm. We recommend that you use at least DH4, AES and SHA2 in your settings. Use the strongest algorithm combinations that are common to all your supported operating systems.

    3.  Data protection (quick mode) algorithm combinations. Check **Require encryption for all connection security rules that use these settings**, and then specify one or more integrity and encryption combinations. We recommend that you don't include DES or MD5 in any setting. They're included only for compatibility with previous versions of Windows. Use the strongest algorithm combinations that are common to all your supported operating systems.

        If any NAT devices are present on your networks, use ESP encapsulation..

    4.  Authentication methods. Include at least device-based Kerberos V5 authentication. If you want to use user-based access to isolated servers, then you must also include user-based Kerberos V5 authentication as an optional authentication method. Likewise, if any of your domain isolation members can't use Kerberos V5 authentication, then you must include certificate-based authentication as an optional authentication method.

-   The following connection security rules:

    -   A connection security rule that exempts all devices on the exemption list from authentication. Be sure to include all your Active Directory domain controllers on this list. Enter subnet addresses, if applicable in your environment.

    -   A connection security rule, from any IP address to any, that requires inbound and requests outbound authentication using the default authentication specified earlier in this policy.

        **Important**  
        Be sure to begin operations by using request in and request out behavior until you're sure that all the devices in your IPsec environment are communicating successfully by using IPsec. After confirming that IPsec is operating as expected, you can change the GPO to require in, request out.

         

-   A registry policy that includes the following values:

    -   Enable PMTU discovery. Enabling this setting allows TCP/IP to dynamically determine the largest packet size supported across a connection. The value is found at HKLM\\System\\CurrentControlSet\\Services\\TCPIP\\Parameters\\EnablePMTUDiscovery (dword). The sample GPO preferences XML file in [Appendix A: Sample GPO Template Files for Settings Used in this Guide](appendix-a-sample-gpo-template-files-for-settings-used-in-this-guide.md) sets the value to **1**.

    >**Note:**  For a sample template for these registry settings, see [Appendix A: Sample GPO Template Files for Settings Used in this Guide](appendix-a-sample-gpo-template-files-for-settings-used-in-this-guide.md).

-   If domain member devices must communicate with devices in the encryption zone, ensure that you include in the isolated domain GPOs quick mode combinations that are compatible with the requirements of the encryption zone GPOs.

**Next:** [Planning Server Isolation Zones](planning-server-isolation-zones.md)
