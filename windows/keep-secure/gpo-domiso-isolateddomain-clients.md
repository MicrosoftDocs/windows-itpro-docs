---
title: GPO\_DOMISO\_IsolatedDomain\_Clients (Windows 10)
description: GPO\_DOMISO\_IsolatedDomain\_Clients
ms.assetid: 73cd9e25-f2f1-4ef6-b0d1-d36209518cd9
author: brianlic-msft
---

# GPO\_DOMISO\_IsolatedDomain\_Clients


This GPO is authored by using the Windows Firewall with Advanced Security interface in the Group Policy editing tools. The User Configuration section of the GPO is disabled. It is intended to only apply to client computers that are running Windows 8, Windows 7, or Windows Vista.

Because client computers can sometimes be portable, the settings and rules for this GPO are applied to only the domain profile.

## General settings


This GPO provides the following settings:

-   No firewall settings are included in this GPO. Woodgrove Bank created separate GPOs for firewall settings (see the [Firewall GPOs](../p_server_archive/firewall-gpos.md) section) in order to share them with all clients in all isolation zones with minimum redundancy.

-   The ICMP protocol is exempted from authentication requirements to support easier network troubleshooting.

-   Diffie-Hellman Group 2 is specified as the key exchange algorithm. This is the strongest algorithm available that is supported by all the operating systems that are being used at Woodgrove Bank. After Woodgrove Bank has completed the upgrade to versions of Windows that support stronger algorithms, such as Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008 or Windows Server 2008 R2, they can remove the weaker key exchange algorithms, and use only the stronger ones.

-   The registry settings shown in the following table. For more information, see the description of the registry settings in [Isolated Domain](../p_server_archive/isolated-domain.md).

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Setting</th>
    <th>Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>Enable PMTU Discovery</p></td>
    <td><p>1</p></td>
    </tr>
    <tr class="even">
    <td><p>IPsec Exemptions</p></td>
    <td><p>3</p></td>
    </tr>
    </tbody>
    </table>

     

-   The main mode security method combinations in the order shown in the following table.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Integrity</th>
    <th>Encryption</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>Secure Hash Algorithm (SHA-1)</p></td>
    <td><p>Advanced Encryption Standard (AES-128)</p></td>
    </tr>
    <tr class="even">
    <td><p>SHA-1</p></td>
    <td><p>3DES</p></td>
    </tr>
    </tbody>
    </table>

     

-   The following quick mode security data integrity algorithms combinations in the order shown in the following table.

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Protocol</th>
    <th>Integrity</th>
    <th>Key Lifetime (minutes/KB)</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>ESP</p></td>
    <td><p>SHA-1</p></td>
    <td><p>60/100,000</p></td>
    </tr>
    </tbody>
    </table>

     

-   The quick mode security data integrity and encryption algorithm combinations in the order shown in the following table.

    <table>
    <colgroup>
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Protocol</th>
    <th>Integrity</th>
    <th>Encryption</th>
    <th>Key Lifetime (minutes/KB)</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>ESP</p></td>
    <td><p>SHA-1</p></td>
    <td><p>AES-128</p></td>
    <td><p>60/100,000</p></td>
    </tr>
    <tr class="even">
    <td><p>ESP</p></td>
    <td><p>SHA-1</p></td>
    <td><p>3DES</p></td>
    <td><p>60/100,000</p></td>
    </tr>
    </tbody>
    </table>

     

**Note**  
Do not use the MD5 and DES algorithms in your GPOs. They are included only for compatibility with previous versions of Windows.

 

## Connection Security Rules


This GPO provides the following rules:

-   A connection security rule named **Isolated Domain Rule** with the following settings:

    -   From **Any IP address** to **Any IP address**.

    -   **Require inbound and request outbound** authentication requirements.

        **Important**  
        On this, and all other GPOs that require authentication, Woodgrove Bank first chose to only request authentication. After confirming that the computers were successfully communicating by using IPsec, they switched the GPOs to require authentication.

         

    -   For **First authentication methods**, select **Computer Kerberos v5** as the primary method. Add certificate-based authentication from **DC=com,DC=woodgrovebank,CN=CorporateCertServer** for computers that cannot run Windows or cannot join the domain, but must still participate in the isolated domain.

    -   For **Second authentication**, select **User Kerberos v5**, and then select the **Second authentication is optional** check box.

-   A connection security rule to exempt computers that are in the exemption list from the requirement to authenticate:

    -   The IP addresses of all computers on the exemption list must be added individually under **Endpoint 2**.

    -   Authentication mode is set to **Do not authenticate**.

**Next: **[GPO\_DOMISO\_IsolatedDomain\_Servers](../p_server_archive/gpo-domiso-isolateddomain-servers.md)

 

 





