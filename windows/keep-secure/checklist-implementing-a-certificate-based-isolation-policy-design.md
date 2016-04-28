---
title: Checklist Implementing a Certificate-based Isolation Policy Design (Windows 10)
description: Checklist Implementing a Certificate-based Isolation Policy Design
ms.assetid: 1e34b5ea-2e77-4598-a765-550418d33894
author: brianlic-msft
---

# Checklist: Implementing a Certificate-based Isolation Policy Design


This parent checklist includes cross-reference links to important concepts about using certificates as an authentication option in either a domain isolation or server isolation design.

**Note**  
Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist

The procedures in this section use the Group Policy MMC snap-in interfaces to configure the GPOs, but you can also use Windows PowerShell. For more information, see [Windows Firewall with Advanced Security Administration with Windows PowerShell](http://technet.microsoft.com/library/hh831755.aspx) at http://technet.microsoft.com/library/hh831755.aspx.

 

![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif) **Checklist: Implementing certificate-based authentication**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Task</th>
<th>Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Review important concepts and examples for certificate-based authentication to determine if this design meets your deployment goals and the needs of your organization.</p></td>
<td><p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Identifying Your Windows Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Certificate-based Isolation Policy Design Example](certificate-based-isolation-policy-design-example.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Planning Certificate-based Authentication](planning-certificate-based-authentication.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Install the Active Directory Certificate Services (AD CS) role as an enterprise root issuing certification authority (CA). This step is required only if you have not already deployed a CA on your network.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Install Active Directory Certificate Services](install-active-directory-certificate-services.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the certificate template for workstation authentication certificates.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure the Workstation Authentication Certificate Template](configure-the-workstation-authentication-certificate-templatewfas-dep.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure Group Policy to automatically deploy certificates based on your template to workstation computers.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Group Policy to Autoenroll and Deploy Certificates](configure-group-policy-to-autoenroll-and-deploy-certificates.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>On a test computer, refresh Group Policy and confirm that the certificate is installed.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Confirm That Certificates Are Deployed Correctly](confirm-that-certificates-are-deployed-correctly.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





