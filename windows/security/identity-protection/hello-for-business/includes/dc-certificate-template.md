---
ms.date: 12/28/2022
ms.topic: include
---

### Configure domain controller certificates

Clients must trust the domain controllers, and the best way to enable the trust is to ensure that each domain controller has a *Kerberos Authentication* certificate. Installing a certificate on the domain controllers enables the Key Distribution Center (KDC) to prove its identity to other members of the domain. The certificates provide clients a root of trust external to the domain, namely the *enterprise certification authority*.

Domain controllers automatically request a *domain controller certificate* (if published) when they discover an enterprise CA is added to Active Directory. The certificates based on the *Domain Controller* and *Domain Controller Authentication* certificate templates don't include the *KDC Authentication* object identifier (OID), which was later added to the Kerberos RFC. Therefore, domain controllers need to request a certificate based on the *Kerberos Authentication* certificate template.

By default, the Active Directory CA provides and publishes the *Kerberos Authentication* certificate template. The cryptography configuration included in the template is based on older and less performant cryptography APIs. To ensure domain controllers request the proper certificate with the best available cryptography, use the *Kerberos Authentication* certificate template as a *baseline* to create an updated domain controller certificate template.

> [!IMPORTANT]
> The certificates issued to the domain controllers must meet the following requirements:
> - The *Certificate Revocation List (CRL) distribution point* extension must point to a valid CRL, or an *Authority Information Access (AIA)* extension that points to an Online Certificate Status Protocol (OCSP) responder
> - Optionally, the certificate *Subject* section could contain the directory path of the server object (the distinguished name)
> - The certificate *Key Usage* section must contain *Digital Signature* and *Key Encipherment*
> - Optionally, the certificate *Basic Constraints* section should contain: `[Subject Type=End Entity, Path Length Constraint=None]`
> - The certificate *extended key usage* section must contain Client Authentication (`1.3.6.1.5.5.7.3.2`), Server Authentication (`1.3.6.1.5.5.7.3.1`), and KDC Authentication (`1.3.6.1.5.2.3.5`)
> - The certificate *Subject Alternative Name* section must contain the Domain Name System (DNS) name 
> - The certificate template must have an extension that has the value `DomainController`, encoded as a [BMPstring](/windows/win32/seccertenroll/about-bmpstring). If you are using Windows Server Enterprise Certificate Authority, this extension is already included in the domain controller certificate template
> - The domain controller certificate must be installed in the local computer's certificate store

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates > Manage**
1. In the **Certificate Template Console**, right-click the **Kerberos Authentication** template in the details pane and select **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab
   - Type *Domain Controller Authentication (Kerberos)* in Template display name
   - Adjust the validity and renewal period to meet your enterprise's needs
   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the lab.
1. On the **Subject Name** tab:
   - Select the **Build from this Active Directory information** button if it isn't already selected
   - Select **None** from the **Subject name format** list
   - Select **DNS name** from the **Include this information in alternate subject** list
   - Clear all other items
1. On the **Cryptography** tab:
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. Select **OK**
1. Close the console

