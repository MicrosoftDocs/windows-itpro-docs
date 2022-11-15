---
title: GPO\_DOMISO\_IsolatedDomain\_Clients (Windows)
description: Author this GPO by using Windows Defender Firewall with Advanced Security interface in the Group Policy editing tools.
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

# GPO\_DOMISO\_IsolatedDomain\_Clients


This GPO is authored by using the Windows Defender Firewall with Advanced Security interface in the Group Policy editing tools. The User Configuration section of the GPO is disabled. It's intended to only apply to client devices that are running Windows 8, Windows 7, or Windows Vista.

Because client devices can sometimes be portable, the settings and rules for this GPO are applied to only the domain profile.

## General settings

This GPO provides the following settings:

-   No firewall settings are included in this GPO. Woodgrove Bank created separate GPOs for firewall settings (see the [Firewall GPOs](firewall-gpos.md) section) in order to share them with all clients in all isolation zones with minimum redundancy.

-   The ICMP protocol is exempted from authentication requirements to support easier network troubleshooting.

-   Diffie-Hellman Group 2 is specified as the key exchange algorithm. This algorithm is the strongest algorithm available that is supported by all the operating systems that are being used at Woodgrove Bank. After Woodgrove Bank has completed the upgrade to versions of Windows that support stronger algorithms, they can remove the weaker key exchange algorithms, and use only the stronger ones.

-   The registry settings shown in the following table. For more information, see the description of the registry settings in [Isolated Domain](isolated-domain.md).

| Setting | Value |
| - | - |
| Enable PMTU Discovery | 1 |
| IPsec Exemptions | 3 |

-   The main mode security method combinations in the order shown in the following table.

| Integrity | Encryption |
| - | - |
| Secure Hash Algorithm (SHA-1) | Advanced Encryption Standard (AES-128) | 
| SHA-1 | 3DES |
    
-   The following quick mode security data integrity algorithms combinations in the order shown in the following table.

| Protocol | Integrity | Key Lifetime (minutes/KB) |
| - | - | - |
| ESP | SHA-1 | 60/100,000 |

-   The quick mode security data integrity and encryption algorithm combinations in the order shown in the following table.

| Protocol | Integrity | Encryption | Key Lifetime (minutes/KB) |
| - | - | - | - |
| ESP | SHA-1 | AES-128 | 60/100,000| 
| ESP | SHA-1 | 3DES | 60/100,000| 

>**Note:**  Do not use the MD5 and DES algorithms in your GPOs. They are included only for compatibility with previous versions of Windows.

## Connection Security Rules

This GPO provides the following rules:

-   A connection security rule named **Isolated Domain Rule** with the following settings:

    -   From **Any IP address** to **Any IP address**.

    -   **Require inbound and request outbound** authentication requirements.

        >**Important:**  On this, and all other GPOs that require authentication, Woodgrove Bank first chose to only request authentication. After confirming that the devices were successfully communicating by using IPsec, they switched the GPOs to require authentication.

    -   For **First authentication methods**, select **Computer Kerberos v5** as the primary method. Add certificate-based authentication from **DC=com,DC=woodgrovebank,CN=CorporateCertServer** for devices that can't run Windows or can't join the domain, but must still participate in the isolated domain.

    -   For **Second authentication**, select **User Kerberos v5**, and then select the **Second authentication is optional** check box.

-   A connection security rule to exempt devices that are in the exemption list from the requirement to authenticate:

    -   The IP addresses of all devices on the exemption list must be added individually under **Endpoint 2**.

    -   Authentication mode is set to **Do not authenticate**.

**Next:** [GPO\_DOMISO\_IsolatedDomain\_Servers](gpo-domiso-isolateddomain-servers.md)
