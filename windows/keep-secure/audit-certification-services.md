---
title: Audit Certification Services (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Certification Services, which determines whether the operating system generates events when Active Directory Certificate Services (AD CS) operations are performed.
ms.assetid: cdefc34e-fb1f-4eff-b766-17713c5a1b03
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
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

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Event message</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>4868</p></td>
<td align="left"><p>The certificate manager denied a pending certificate request.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4869</p></td>
<td align="left"><p>Certificate Services received a resubmitted certificate request.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4870</p></td>
<td align="left"><p>Certificate Services revoked a certificate.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4871</p></td>
<td align="left"><p>Certificate Services received a request to publish the certificate revocation list (CRL).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4872</p></td>
<td align="left"><p>Certificate Services published the certificate revocation list (CRL).</p></td>
</tr>
<tr class="even">
<td align="left"><p>4873</p></td>
<td align="left"><p>A certificate request extension changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4874</p></td>
<td align="left"><p>One or more certificate request attributes changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4875</p></td>
<td align="left"><p>Certificate Services received a request to shut down.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4876</p></td>
<td align="left"><p>Certificate Services backup started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4877</p></td>
<td align="left"><p>Certificate Services backup completed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4878</p></td>
<td align="left"><p>Certificate Services restore started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4879</p></td>
<td align="left"><p>Certificate Services restore completed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4880</p></td>
<td align="left"><p>Certificate Services started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4881</p></td>
<td align="left"><p>Certificate Services stopped.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4882</p></td>
<td align="left"><p>The security permissions for Certificate Services changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4883</p></td>
<td align="left"><p>Certificate Services retrieved an archived key.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4884</p></td>
<td align="left"><p>Certificate Services imported a certificate into its database.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4885</p></td>
<td align="left"><p>The audit filter for Certificate Services changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4886</p></td>
<td align="left"><p>Certificate Services received a certificate request.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4887</p></td>
<td align="left"><p>Certificate Services approved a certificate request and issued a certificate.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4888</p></td>
<td align="left"><p>Certificate Services denied a certificate request.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4889</p></td>
<td align="left"><p>Certificate Services set the status of a certificate request to pending.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4890</p></td>
<td align="left"><p>The certificate manager settings for Certificate Services changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4891</p></td>
<td align="left"><p>A configuration entry changed in Certificate Services.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4892</p></td>
<td align="left"><p>A property of Certificate Services changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4893</p></td>
<td align="left"><p>Certificate Services archived a key.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4894</p></td>
<td align="left"><p>Certificate Services imported and archived a key.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4895</p></td>
<td align="left"><p>Certificate Services published the CA certificate to Active Directory Domain Services.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4896</p></td>
<td align="left"><p>One or more rows have been deleted from the certificate database.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4897</p></td>
<td align="left"><p>Role separation enabled:</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4898</p></td>
<td align="left"><p>Certificate Services loaded a template.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





