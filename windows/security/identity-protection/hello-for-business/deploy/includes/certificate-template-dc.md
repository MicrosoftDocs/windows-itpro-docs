---
ms.date: 01/03/2024
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
1. Use the following table to configure the template:

    | Tab Name | Configurations |
    | --- | --- |
    | *Compatibility* | <ul><li>Clear the **Show resulting changes** check box</li><li>Select **Windows Server 2016** from the *Certification Authority list*</li><li>Select **Windows 10 / Windows Server 2016** from the *Certification Recipient list*</li></ul>|
    | *General* | <ul><li>Specify a **Template display name**, for example *Domain Controller Authentication (Kerberos)*</li><li>Set the validity period to the desired value</li><li>Take note of the template name for later, which should be the same as the Template display name minus spaces</li></ul>|
    | *Subject Name* | <ul><li>Select **Build from this Active Directory information**</li><li>Select **None** from the **Subject name format** list</li><li>Select **DNS name** from the **Include this information in alternate subject** list</li><li>Clear all other items</li></ul>|
    |*Cryptography*|<ul><li>Set the *Provider Category* to **Key Storage Provider**</li><li>Set the *Algorithm name* to **RSA**</li><li>Set the *minimum key size* to **2048**</li><li>Set the *Request hash* to **SHA256**</li>|

1. Select **OK** to finalize your changes and create the new template
1. Close the console
