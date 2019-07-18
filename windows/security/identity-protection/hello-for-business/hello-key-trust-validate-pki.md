---
title: Validate Public Key Infrastructure (Windows Hello for Business)
description: How to Validate Public Key Infrastructure for Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
ms.reviewer: 
---
# Validate and Configure Public Key Infrastructure

**Applies to**
-   Windows 10, version 1703 or later
-   On-premises deployment
-   Key trust


Windows Hello for Business must have a public key infrastructure regardless of the deployment or trust model.  All trust models depend on the domain controllers having a certificate.  The certificate serves as a root of trust for clients to ensure they are not communicating with a rogue domain controller.  

## Deploy an enterprise certificate authority

This guide assumes most enterprise have an existing public key infrastructure.  Windows Hello for Business depends on a Windows enterprise public key infrastructure running the Active Directory Certificate Services role from Windows Server 2012 or later.

### Lab-based public key infrastructure

The following instructions may be used to deploy simple public key infrastructure that is suitable for a lab environment.

Sign-in using _Enterprise Admin_ equivalent credentials on Windows Server 2012 or later server where you want the certificate authority installed.

>[!NOTE]
>Never install a certificate authority on a domain controller in a production environment.

1. Open an elevated Windows PowerShell prompt.
2. Use the following command to install the Active Directory Certificate Services role.   
    ```PowerShell
    Add-WindowsFeature Adcs-Cert-Authority -IncludeManagementTools
    ```

3. Use the following command to configure the Certificate Authority using a basic certificate authority configuration.   
    ```PowerShell
    Install-AdcsCertificationAuthority
    ```   
    
## Configure a Production Public Key Infrastructure

If you do have an existing public key infrastructure, please review [Certification Authority Guidance](https://technet.microsoft.com/library/hh831574.aspx) from Microsoft TechNet to properly design your infrastructure.   Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy](https://technet.microsoft.com/library/hh831348.aspx) for instructions on how to configure your public key infrastructure using the information from your design session.

### Configure Domain Controller Certificates

Clients need to trust domain controllers and the best way to do this is to ensure each domain controller has a Kerberos Authentication certificate.  Installing a certificate on the domain controller enables the Key Distribution Center (KDC) to prove its identity to other members of the domain.  This provides clients a root of trust external to the domain—namely the enterprise certificate authority.

Domain controllers automatically request a domain controller certificate (if published) when they discover an enterprise certificate authority is added to Active Directory.  However, certificates based on the Domain Controller and Domain Controller Authentication certificate templates do not include the KDC Authentication object identifier (OID), which was later added to the Kerberos RFC.  Therefore, domain controllers need to request a certificate based on the Kerberos Authentication certificate template.

By default, the Active Directory Certificate Authority provides and publishes the Kerberos Authentication certificate template.  However, the cryptography configuration included in the provided template is based on older and less performant cryptography APIs.  To ensure domain controllers request the proper certificate with the best available cryptography, use the Kerberos Authentication certificate template as a baseline to create an updated domain controller certificate template.

Sign-in to a certificate authority or management workstations with _Domain Admin_ equivalent credentials.
1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template Console**, right-click the **Kerberos Authentication** template in the details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2008 R2** from the **Certification Authority** list. Select **Windows 7.Server 2008 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **Domain Controller Authentication (Kerberos)** in Template display name.  Adjust the validity and renewal period to meet your enterprise’s needs.   
    **Note**If you use different template names, you’ll need to remember and substitute these names in different portions of the lab.
6. On the **Subject Name** tab, select the **Build from this Active Directory information** button if it is not already selected.  Select **None** from the **Subject name format** list.  Select **DNS name** from the **Include this information in alternate subject** list. Clear all other items.
7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**. 
8. Close the console.

### Superseding the existing Domain Controller certificate

Many domain controllers may have an existing domain controller certificate.  The Active Directory Certificate Services provides a default certificate template from domain controllers—the domain controller certificate template.  Later releases provided a new certificate template—the domain controller authentication certificate template.  These certificate templates were provided prior to update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the KDC Authentication extension.  

The Kerberos Authentication certificate template is the most current certificate template designated for domain controllers and should be the one you deploy to all your domain controllers (2008 or later).   The autoenrollment feature in Windows enables you to effortlessly replace these domain controller certificates.  You can use the following configuration to replace older domain controller certificates with a new certificate using the Kerberos Authentication certificate template. 

Sign-in to a certificate authority or management workstations with _Enterprise Admin_ equivalent credentials.
1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template Console**, right-click the **Domain Controller Authentication (Kerberos)** (or the name of the certificate template you created in the previous section) template in the details pane and click **Properties**.
4. Click the **Superseded Templates** tab. Click **Add**.
5. From the **Add Superseded Template** dialog, select the **Domain Controller** certificate template and click **OK**.  Click **Add**.
6. From the **Add Superseded Template** dialog, select the **Domain Controller Authentication** certificate template and click **OK**.
7. From the **Add Superseded Template dialog**, select the **Kerberos Authentication** certificate template and click **OK**. 
8. Add any other enterprise certificate templates that were previously configured for domain controllers to the **Superseded Templates** tab.
9. Click **OK** and close the **Certificate Templates** console.

The certificate template is configured to supersede all the certificate templates provided in the certificate templates superseded templates list.  However, the certificate template and the superseding of certificate templates is not active until you publish the certificate template to one or more certificate authorities.

### Configure an Internal Web Server Certificate template

Windows 10 clients use the https protocol when communicating with Active Directory Federation Services.  To meet this need, you must issue a server authentication certificate to all the nodes in the Active Directory Federation Services farm.  On-premises deployments can use a server authentication certificate issued by their enterprise PKI.  You must configure a server authentication certificate template so the host running the Active Directory Federation Service can request the certificate. 

Sign-in to a certificate authority or management workstations with _Domain Admin_ equivalent credentials.
1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template Console**, right-click the **Web Server** template in the details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5. On the **General** tab, type **Internal Web Server** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise’s needs.   
    **Note:** If you use different template names, you’ll need to remember and substitute these names in different portions of the lab.
6. On the **Request Handling** tab, select **Allow private key to be exported**.
7. On the **Subject** tab, select the **Supply in the request** button if it is not already selected.
8. On the **Security** tab, Click **Add**. Type **Domain Computers** in the **Enter the object names to select** box.  Click **OK**. Select the **Allow** check box next to the **Enroll** permission.
9. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**. 
10. Close the console.

### Unpublish Superseded Certificate Templates

The certificate authority only issues certificates based on published certificate templates.  For defense in depth security, it is a good practice to unpublish certificate templates that the certificate authority is not configured to issue.  This includes the pre-published certificate template from the role installation and any superseded certificate templates.

The newly created domain controller authentication certificate template supersedes previous domain controller certificate templates.  Therefore, you need to unpublish these certificate templates from all issuing certificate authorities.

Sign-in to the certificate authority or management workstation with _Enterprise Admin_ equivalent credentials.
1. Open the **Certificate Authority** management console.
2. Expand the parent node from the navigation pane.
3. Click **Certificate Templates** in the navigation pane.
4. Right-click the **Domain Controller** certificate template in the content pane and select **Delete**.  Click **Yes** on the **Disable certificate templates** window.
5. Repeat step 4 for the **Domain Controller Authentication** and **Kerberos Authentication** certificate templates.

### Publish Certificate Templates to the Certificate Authority

The certificate authority may only issue certificates for certificate templates that are published to that certificate authority.  If you have more than one certificate authority and you want that certificate authority to issue certificates based on a specific certificate template, then you must publish the certificate template to all certificate authorities that are expected to issue the certificate.

Sign-in to the certificate authority or management workstations with an _Enterprise Admin_ equivalent credentials.
1. Open the **Certificate Authority** management console.
2. Expand the parent node from the navigation pane.
3. Click **Certificate Templates** in the navigation pane.
4. Right-click the **Certificate Templates** node.  Click **New**, and click **Certificate Template** to issue.
5. In the **Enable Certificates Templates** window, select the **Domain Controller Authentication (Kerberos)**, and **Internal Web Server** templates you created in the previous steps.  Click **OK** to publish the selected certificate templates to the certificate authority.
6. If you published the Domain Controller Authentication (Kerberos) certificate template, then you should unpublish the certificate templates you included in the superseded templates list.   
    * To unpublish a certificate template, right-click the certificate template you want to unpublish in the details pane of the Certificate Authority console and select **Delete**. Click **Yes** to confirm the operation.   

7. Close the console.

### Configure Domain Controllers for Automatic Certificate Enrollment

Domain controllers automatically request a certificate from the domain controller certificate template.  However, the domain controller is unaware of newer certificate templates or superseded configurations on certificate templates.  To continue automatic enrollment and renewal of domain controller certificates that understand newer certificate template and superseded certificate template configurations, create and configure a Group Policy object for automatic certificate enrollment and link the Group Policy object to the Domain Controllers OU.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**
4. Type *Domain Controller Auto Certificate Enrollment* in the name box and click **OK**.
5. Right-click the **Domain Controller Auto Certificate Enrollment** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **Computer Configuration**.
7. Expand **Windows Settings**, **Security Settings**, and click **Public Key Policies**.
8. In the details pane, right-click **Certificate Services Client – Auto-Enrollment** and select **Properties**.
9. Select **Enabled** from the **Configuration Model** list.
10. Select the **Renew expired certificates**, **update pending certificates**, and **remove revoked certificates** check box.
11. Select the **Update certificates that use certificate templates** check box.
12. Click **OK**. Close the **Group Policy Management Editor**.

### Deploy the Domain Controller Auto Certificate Enrollment Group Policy Object

Sign-in to a domain controller or management workstations with _Domain Admin_ equivalent credentials.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. In the navigation pane, expand the domain and expand the node that has your Active Directory domain name.  Right-click the **Domain Controllers** organizational unit and click **Link an existing GPO…**
3. In the **Select GPO** dialog box, select **Domain Controller Auto Certificate Enrollment** or the name of the domain controller certificate enrollment Group Policy object you previously created and click **OK**.

### Validating your work

Windows Hello for Business is a distributed system, which on the surface appears complex and difficult.  The key to a successful Windows Hello for Business deployment is to validate phases of work prior to moving to the next phase.

You want to confirm your domain controllers enroll the correct certificates and not any unnecessary (superseded) certificate templates.  You need to check each domain controller that autoenrollment for the computer occurred.

#### Use the Event Logs

Windows Server 2012 and later include Certificate Lifecycle events to determine the lifecycles of certificates for both users and computers.  Using the Event Viewer, navigate to the CertificateServices-Lifecycles-System event log under Application and Services/Microsoft/Windows.

Look for an event indicating a new certificate enrollment (autoenrollment).  The details of the event include the certificate template on which the certificate was issued.  The name of the certificate template used to issue the certificate should match the certificate template name included in the event.  The certificate thumbprint and EKUs for the certificate are also included in the event.  The EKU needed for proper Windows Hello for Business authentication is Kerberos Authentication, in addition to other EKUs provide by the certificate template. 

Certificates superseded by your new domain controller certificate generate an archive event in the CertificateServices-Lifecycles-System event.  The archive event contains the certificate template name and thumbprint of the certificate that was superseded by the new certificate.


#### Certificate Manager

You can use the Certificate Manager console to validate the domain controller has the properly enrolled certificate based on the correct certificate template with the proper EKUs.  Use **certlm.msc** to view certificate in the local computers certificate stores.  Expand the **Personal** store and view the certificates enrolled for the computer.  Archived certificates do not appear in Certificate Manager.

#### Certutil.exe

You can use **certutil.exe** to view enrolled certificates in the local computer. Certutil shows enrolled and archived certificates for the local computer.  From an elevated command prompt, run `certutil -q -store my` to view locally enrolled certificates.

To view detailed information about each certificate in the store, use `certutil -q -v -store my` to validate automatic certificate enrollment enrolled the proper certificates. 

#### Troubleshooting

Windows triggers automatic certificate enrollment for the computer during boot, and when Group Policy updates.  You can refresh Group Policy from an elevated command prompt using `gpupdate /force`.

Alternatively, you can forcefully trigger automatic certificate enrollment using `certreq -autoenroll -q` from an elevated command prompt.

Use the event logs to monitor certificate enrollment and archive.  Review the configuration, such as publishing certificate templates to issuing certificate authority and the allow auto enrollment permissions.


## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. [Validate Active Directory prerequisites](hello-key-trust-validate-ad-prereq.md)
2. Validate and Configure Public Key Infrastructure (*You are here*)
3. [Prepare and Deploy Windows Server 2016 Active Directory Federation Services](hello-key-trust-adfs.md)
4. [Validate and Deploy Multifactor Authentication Services (MFA)](hello-key-trust-validate-deploy-mfa.md)
5. [Configure Windows Hello for Business Policy settings](hello-key-trust-policy-settings.md)
