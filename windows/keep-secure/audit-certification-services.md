---
title: Audit Certification Services (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Certification Services, which determines whether the operating system generates events when Active Directory Certificate Services (AD CS) operations are performed.
ms.assetid: cdefc34e-fb1f-4eff-b766-17713c5a1b03
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Certification Services

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Certification Services**, which determines whether the operating system generates events when Active Directory Certificate Services (AD CS) operations are performed.

Examples of AD CS operations include:

-   AD CS starts, shuts down, is backed up, or is restored.
-   Certificate revocation list (CRL)-related tasks are performed.
-   Certificates are requested, issued, or revoked.
-   Certificate manager settings for AD CS are changed.
-   The configuration and properties of the certification authority (CA) are changed.
-   AD CS templates are modified.
-   Certificates are imported.
-   A CA certificate is published to Active Directory Domain Services.
-   Security permissions for AD CS role services are modified.
-   Keys are archived, imported, or retrieved.
-   The OCSP Responder Service is started or stopped.

Monitoring these operational events is important to ensure that AD CS role services are functioning properly.

Event volume: Low to medium on servers that host AD CS role services

Default: Not configured

| Event ID | Event message |
| - | - |
| 4868 | The certificate manager denied a pending certificate request. |
| 4869 | Certificate Services received a resubmitted certificate request. | 
| 4870 | Certificate Services revoked a certificate. | 
| 4871 | Certificate Services received a request to publish the certificate revocation list (CRL). | 
| 4872 | Certificate Services published the certificate revocation list (CRL). | 
| 4873 | A certificate request extension changed. | 
| 4874 | One or more certificate request attributes changed. | 
| 4875 | Certificate Services received a request to shut down. | 
| 4876 | Certificate Services backup started. | 
| 4877 | Certificate Services backup completed. | 
| 4878 | Certificate Services restore started. | 
| 4879 | Certificate Services restore completed. | 
| 4880 | Certificate Services started. | 
| 4881 | Certificate Services stopped. | 
| 4882 | The security permissions for Certificate Services changed. | 
| 4883 | Certificate Services retrieved an archived key. | 
| 4884 | Certificate Services imported a certificate into its database. | 
| 4885 | The audit filter for Certificate Services changed. | 
| 4886 | Certificate Services received a certificate request. | 
| 4887 | Certificate Services approved a certificate request and issued a certificate. | 
| 4888 | Certificate Services denied a certificate request. | 
| 4889 | Certificate Services set the status of a certificate request to pending. | 
| 4890 | The certificate manager settings for Certificate Services changed. | 
| 4891 | A configuration entry changed in Certificate Services. | 
| 4892 | A property of Certificate Services changed. | 
| 4893 | Certificate Services archived a key. | 
| 4894 | Certificate Services imported and archived a key. | 
| 4895 | Certificate Services published the CA certificate to Active Directory Domain Services. |
| 4896 | One or more rows have been deleted from the certificate database. | 
| 4897 | Role separation enabled: | 
| 4898 | Certificate Services loaded a template. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
