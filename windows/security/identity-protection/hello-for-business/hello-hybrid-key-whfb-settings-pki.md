---
title: Configuring Hybrid key trust Windows Hello for Business - Public Key Infrastructure (PKI)
description: Configuring Hybrid key trust Windows Hello for Business - Public Key Infrastructure (PKI)
keywords: identity, PIN, biometric, Hello, passport, WHFB, PKI, Windows Hello, key trust, key-trust
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
ms.reviewer: 
---

# Configure Hybrid Windows Hello for Business: Public Key Infrastructure

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid Deployment
-   Key trust


Windows Hello for Business deployments rely on certificates.  Hybrid deployments uses publicly issued server authentication certificates to validate the name of the server to which they are connecting and to encrypt the data that flows them and the client computer.

All deployments use enterprise issued certificates for domain controllers as a root of trust. 

## Certificate Templates

This section has you configure certificate templates on your Windows Server 2012 or later issuing certificate authority. 

### Domain Controller certificate template

Clients need to trust domain controllers and the best way to do this is to ensure each domain controller has a Kerberos Authentication certificate.  Installing a certificate on the domain controller enables the Key Distribution Center (KDC) to prove its identity to other members of the domain.  This provides clients a root of trust external to the domain - namely the enterprise certificate authority.

Domain controllers automatically request a domain controller certificate (if published) when they discover an enterprise certificate authority is added to Active Directory.  However, certificates based on the *Domain Controller* and *Domain Controller Authentication* certificate templates do not include the **KDC Authentication** object identifier (OID), which was later added to the Kerberos RFC.  Therefore, domain controllers need to request a certificate based on the Kerberos Authentication certificate template.

By default, the Active Directory Certificate Authority provides and publishes the Kerberos Authentication certificate template.  However, the cryptography configuration included in the provided template is based on older and less performant cryptography APIs.  To ensure domain controllers request the proper certificate with the best available cryptography, use the **Kerberos Authentication** certificate template a baseline to create an updated domain controller certificate template.

#### Create a Domain Controller Authentication (Kerberos) Certificate Template

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Right-click **Certificate Templates** and click **Manage**.
3.	In the **Certificate Template Console**, right-click the **Kerberos Authentication** template in the details pane and click **Duplicate Template**.
4.	On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2008 R2** from the **Certification Authority** list. Select **Windows 7.Server 2008 R2** from the **Certification Recipient** list.
5.	On the **General** tab, type **Domain Controller Authentication (Kerberos)** in Template display name.  Adjust the validity and renewal period to meet your enterprise's needs.   
    **Note**If you use different template names, you'll need to remember and substitute these names in different portions of the lab.
6.	On the **Subject Name** tab, select the **Build from this Active Directory information** button if it is not already selected.  Select **None** from the **Subject name format** list.  Select **DNS name** from the **Include this information in alternate subject** list. Clear all other items.
7.	On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**. 
8.	Close the console.

#### Configure Certificate Superseding for the Domain Controller Authentication (Kerberos) Certificate Template

Many domain controllers may have an existing domain controller certificate.  The Active Directory Certificate Services provides a default certificate template for domain controllers--the domain controller certificate template.  Later releases provided a new certificate template--the domain controller authentication certificate template.  These certificate templates were provided prior to update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the **KDC Authentication** extension.  

The Kerberos Authentication certificate template is the most current certificate template designated for domain controllers and should be the one you deploy to all your domain controllers (2008 or later).

The autoenrollment feature in Windows enables you to effortlessly replace these domain controller certificates.  You can use the following configuration to replace older domain controller certificates with a new certificate using the Kerberos Authentication certificate template. 

Sign-in a certificate authority or management workstations with _Enterprise Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Right-click **Certificate Templates** and click **Manage**.
3.	In the **Certificate Template Console**, right-click the **Domain Controller Authentication (Kerberos)** (or the name of the certificate template you created in the previous section) template in the details pane and click **Properties**.
4.	Click the **Superseded Templates** tab. Click **Add**.
5.	From the **Add Superseded Template** dialog, select the **Domain Controller** certificate template and click **OK**.  Click **Add**.
6.	From the **Add Superseded Template** dialog, select the **Domain Controller Authentication** certificate template and click **OK**.
7.	From the **Add Superseded Template dialog**, select the **Kerberos Authentication** certificate template and click **OK**. 
8.	Add any other enterprise certificate templates that were previously configured for domain controllers to the **Superseded Templates** tab.
9.	Click **OK** and close the **Certificate Templates** console.

The certificate template is configured to supersede all the certificate templates provided in the certificate templates superseded templates list.  However, the certificate template and the superseding of certificate templates is not active until you publish the certificate template to one or more certificate authorities.


### Publish Certificate Templates to a Certificate Authority

The certificate authority may only issue certificates for certificate templates that are published to that certificate authority.  If you have more than one certificate authority and you want that certificate authority to issue certificates based on a specific certificate template, then you must publish the certificate template to all certificate authorities that are expected to issue the certificate.

Sign-in to the certificate authority or management workstations with an _enterprise administrator_ equivalent credentials.

1. Open the **Certificate Authority** management console.
2. Expand the parent node from the navigation pane.
3. Click **Certificate Templates** in the navigation pane.
4. Right-click the **Certificate Templates** node.  Click **New**, and click **Certificate Template** to issue.
5. In the **Enable Certificates Templates** window, select the **Domain Controller Authentication (Kerberos)** template you created in the previous steps.  Click **OK** to publish the selected certificate templates to the certificate authority.
6. If you published the **Domain Controller Authentication (Kerberos)** certificate template, then you should unpublish the certificate templates you included in the superseded templates list.
    * To unpublish a certificate template, right-click the certificate template you want to unpublish in the details pane of the Certificate Authority console and select **Delete**. Click **Yes** to confirm the operation.
7. Close the console.

### Unpublish Superseded Certificate Templates

The certificate authority only issues certificates based on published certificate templates.  For defense in depth security, it is a good practice to unpublish certificate templates that the certificate authority is not configured to issue.  This includes the pre-published certificate template from the role installation and any superseded certificate templates.

The newly created domain controller authentication certificate template supersedes previous domain controller certificate templates.  Therefore, you need to unpublish these certificate templates from all issuing certificate authorities.

Sign-in to the certificate authority or management workstation with _Enterprise Admin_ equivalent credentials.

1.	Open the **Certificate Authority** management console.
2.	Expand the parent node from the navigation pane.
3.	Click **Certificate Templates** in the navigation pane.
4.	Right-click the **Domain Controller** certificate template in the content pane and select **Delete**.  Click **Yes** on the **Disable certificate templates** window.
5.	Repeat step 4 for the **Domain Controller Authentication** and **Kerberos Authentication** certificate templates.

### Section Review
> [!div class="checklist"]
> * Domain Controller certificate template
> * Configure superseded domain controller certificate templates
> * Publish Certificate templates to certificate authorities
> * Unpublish superseded certificate templates


> [!div class="step-by-step"]
[< Configure Azure AD Connect](hello-hybrid-key-whfb-settings-dir-sync.md)
[Configure policy settings >](hello-hybrid-key-whfb-settings-policy.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-key-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. Configure Windows Hello for Business settings: PKI (*You are here*)
7. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
