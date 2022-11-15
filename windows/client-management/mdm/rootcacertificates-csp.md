---
title: RootCATrustedCertificates CSP
description: Learn how the RootCATrustedCertificates configuration service provider (CSP) enables the enterprise to set the Root Certificate Authority (CA) certificates.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 03/06/2018
---

# RootCATrustedCertificates CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The RootCATrustedCertificates configuration service provider enables the enterprise to set the Root Certificate Authority (CA) certificates.

> [!Note]
> The **./User/** configuration is not supported for **RootCATrustedCertificates/Root/**.

The following example shows the RootCATrustedCertificates configuration service provider in tree format.

Detailed specification of the principal root nodes:
```
./Vendor/MSFT
RootCATrustedCertificates
----Root
--------CertHash
------------EncodedCertificate
------------IssuedBy
------------IssuedTo
------------ValidFrom
------------ValidTo
------------TemplateName
----CA
--------CertHash
------------EncodedCertificate
------------IssuedBy
------------IssuedTo
------------ValidFrom
------------ValidTo
------------TemplateName
----TrustedPublisher
--------CertHash
------------EncodedCertificate
------------IssuedBy
------------IssuedTo
------------ValidFrom
------------ValidTo
------------TemplateName
----TrustedPeople
--------CertHash
------------EncodedCertificate
------------IssuedBy
------------IssuedTo
------------ValidFrom
------------ValidTo
------------TemplateName
```
<a href="" id="device-or-user"></a>**Device or User**
For device certificates, use **./Device/Vendor/MSFT** path, and for user certificates use **./User/Vendor/MSFT** path.

<a href="" id="rootcatrustedcertificates"></a>**RootCATrustedCertificates**
The root node for the RootCATrustedCertificates configuration service provider.

<a href="" id="rootcatrustedcertificates-root-"></a>**RootCATrustedCertificates/Root/**
Defines the certificate store that contains root or self-signed certificates, in this case, the computer store.

> [!Note]
> The **./User/** configuration is not supported for **RootCATrustedCertificates/Root/**.

<a href="" id="rootcatrustedcertificates-ca"></a>**RootCATrustedCertificates/CA**
Node for CA certificates.

<a href="" id="rootcatrustedcertificates-trustedpublisher"></a>**RootCATrustedCertificates/TrustedPublisher**
Node for trusted publisher certificates.

<a href="" id="rootcatrustedcertificates-trustedpeople"></a>**RootCATrustedCertificates/TrustedPeople**
Node for trusted people certificates.

<a href="" id="rootcatrustedcertificates-untrustedcertificates"></a>**RootCATrustedCertificates/UntrustedCertificates**
Added in Windows 10, version 1803. Node for certificates that aren't trusted. IT admin can use this node to immediately flag certificates that have been compromised and no longer usable.

<a href="" id="certhash"></a>**_CertHash_**
Defines the SHA1 hash for the certificate. The 20-byte value of the SHA1 certificate hash is specified as a hexadecimal string value. This node is common for all the principal root nodes.  The supported operations are Get and Delete.

The following nodes are all common to the **_CertHash_** node:

- <a href="" id="-encodedcertificate"></a>**/EncodedCertificate**
Specifies the X.509 certificate as a Base64-encoded string. The Base-64 string value cannot include extra formatting characters such as embedded linefeeds, etc.  The supported operations are Add, Get, and Replace.

- <a href="" id="-issuedby"></a>**/IssuedBy**
Returns the name of the certificate issuer. This name is equivalent to the **Issuer** member in the CERT\_INFO data structure.  The only supported operation is Get.

- <a href="" id="-issuedto"></a>**/IssuedTo**
Returns the name of the certificate subject. This name is equivalent to the **Subject** member in the CERT\_INFO data structure.  The only supported operation is Get.

- <a href="" id="-validfrom"></a>**/ValidFrom**
Returns the starting date of the certificate's validity. This date is equivalent to the **NotBefore** member in the CERT\_INFO data structure.  The only supported operation is Get.

- <a href="" id="-validto"></a>**/ValidTo**
Returns the expiration date of the certificate. This date is equivalent to the **NotAfter** member in the CERT\_INFO data structure.  The only supported operation is Get.

- <a href="" id="-templatename"></a>**/TemplateName**
Returns the certificate template name.  The only supported operation is Get.

## Related topics

[Configuration service provider reference](index.yml)
