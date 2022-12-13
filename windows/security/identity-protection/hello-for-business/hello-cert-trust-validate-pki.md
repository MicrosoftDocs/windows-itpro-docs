---
title: Configure and validate the Public Key Infrastructure
description: Configure and validate the Public Key Infrastructure the Public Key Infrastructure when deploying Windows Hello for Business in a certificate trust model.
ms.date: 12/12/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/en-us/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: tutorial
---
# Configure and validate the Public Key Infrastructure in an on-premises certificate trust model

[!INCLUDE [hello-on-premises-cert-trust](../../includes/hello-on-premises-cert-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *key trust* or *certificate trust* models. The domain controllers must have a certificate, which serves as a root of trust for clients. The certificate ensures that clients don't communicate with rogue domain controllers. The certificate trust model extends certificate issuance to client computers. During Windows Hello for Business provisioning, the user receives a sign-in certificate.

## Deploy an enterprise certification authority

This guide assumes most enterprises have an existing public key infrastructure. Windows Hello for Business depends on an enterprise PKI running the Windows Server *Active Directory Certificate Services* role.

### Lab-based PKI

The following instructions may be used to deploy simple public key infrastructure that is suitable **for a lab environment**.

Sign in using *Enterprise Administrator* equivalent credentials on a Windows Server where you want the certification authority (CA) installed.

>[!NOTE]
>Never install a certification authority on a domain controller in a production environment.

1. Open an elevated Windows PowerShell prompt
1. Use the following command to install the Active Directory Certificate Services role.
    ```PowerShell
    Add-WindowsFeature Adcs-Cert-Authority -IncludeManagementTools
    ```
3. Use the following command to configure the CA using a basic certification authority configuration
    ```PowerShell
    Install-AdcsCertificationAuthority
    ```

## Configure a PKI

If you have an existing PKI, review [Certification Authority Guidance](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831574(v=ws.11)) to properly design your infrastructure.  Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831348(v=ws.11)) for instructions on how to configure your PKI using the information from your design session.

Expand the following sections to configure the PKI for Windows Hello for Business.

<br>
<details>
<summary><b>Configure domain controller certificates</b></summary>

Clients must trust the domain controllers, and to it each domain controller must have a *Kerberos Authentication* certificate. Installing a certificate on the domain controllers enables the Key Distribution Center (KDC) to prove its identity to other members of the domain. The certificates provide clients a root of trust external to the domain, namely the *enterprise certification authority*.

Domain controllers automatically request a domain controller certificate (if published) when they discover an enterprise CA is added to Active Directory. However, certificates based on the Domain Controller and Domain Controller Authentication certificate templates don't include the *KDC Authentication* object identifier (OID), which was later added to the Kerberos RFC. Therefore, domain controllers need to request a certificate based on the *Kerberos Authentication* certificate template.

By default, the Active Directory CA provides and publishes the *Kerberos Authentication* certificate template. The cryptography configuration included in the template is based on older and less performant cryptography APIs. To ensure domain controllers request the proper certificate with the best available cryptography, use the *Kerberos Authentication* certificate template as a *baseline* to create an updated domain controller certificate template.

Sign in to a CA or management workstations with *Domain Admintistrator* equivalent credentials.

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
   - select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. Select **OK**
1. Close the console

</details>

<br>
<details>
<summary><b>Supersede existing domain controller certificates</b></summary>

The domain controllers may have an existing domain controller certificate. The Active Directory Certificate Services provides a default certificate template for domain controllers called *domain controller certificate*. Later releases of Windows Server provided a new certificate template called *domain controller authentication certificate*. These certificate templates were provided prior to the update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the *KDC Authentication* extension. 

The *Kerberos Authentication* certificate template is the most current certificate template designated for domain controllers, and should be the one you deploy to all your domain controllers.\
The *autoenrollment* feature allows to replace the domain controller certificates. Use the following configuration to replace older domain controller certificates with new ones, using the *Kerberos Authentication* certificate template.

Sign in to a CA or management workstations with *Enterprise Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates > Manage**
1. In the **Certificate Template Console**, right-click the *Domain Controller Authentication (Kerberos)* (or the name of the certificate template you created in the previous section) template in the details pane and select **Properties**
1. Select the **Superseded Templates** tab. Select **Add**
1. From the **Add Superseded Template** dialog, select the *Domain Controller* certificate template and select **OK > Add**
1. From the **Add Superseded Template** dialog, select the *Domain Controller Authentication* certificate template and select **OK**
1. From the **Add Superseded Template** dialog, select the *Kerberos Authentication* certificate template and select **OK**
1. Add any other enterprise certificate templates that were previously configured for domain controllers to the **Superseded Templates** tab
1. Select **OK** and close the **Certificate Templates** console

The certificate template is configured to supersede all the certificate templates provided in the certificate templates superseded templates list. However, the certificate template and the superseding of certificate templates isn't active until the certificate template is published to one or more certificate authorities.

</details>

<br>
<details>
<summary><b>Configure an internal web server certificate template</b></summary>

Windows clients use the https protocol when communicating with Active Directory Federation Services (AD FS). To meet this need, you must issue a server authentication certificate to all the nodes in the AD FS farm. On-premises deployments can use a server authentication certificate issued by their enterprise PKI. You must configure a server authentication certificate template so the host running theAD FS can request the certificate.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click the **Web Server** template in the details pane and select **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list
   - Select **Windows 10 / Windows Server 2016** from the **Certificate recipient** list
1. On the **General** tab:
   - Type *Internal Web Server* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the lab.
1. On the **Request Handling** tab, select **Allow private key to be exported**
1. On the **Subject** tab, select the **Supply in the request** button if it isn't already selected
1. On the **Security** tab:
   - Select **Add**
   - Type **Domain Computers** in the **Enter the object names to select** box
   - Select **OK**
   - Select the **Allow** check box next to the **Enroll** permission
1. On the **Cryptography** tab:
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
   - Select **OK**
1. Close the console

</details>

<br>
<details>
<summary><b>Configure a certificate registration authority template</b></summary>

A certificate registration authority (CRA) is a trusted authority that validates certificate request. Once it validates the request, it presents the request to the certification authority (CA) for issuance. The CA issues the certificate, returns it to the CRA, which returns the certificate to the requesting user. The Windows Hello for Business on-premises certificate-based deployment uses AD FS as the CRA.

The CRA enrolls for an *enrollment agent* certificate. Once the CRA verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the CA. The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate. The CA only issues a certificate for that template if the registration authority signs the certificate request.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. In the **Certificate Template Console**, right-click on the **Exchange Enrollment Agent (Offline request)** template details pane and select **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list. 
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *WHFB Enrollment Agent* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
1. On the **Subject** tab, select the **Supply in the request** button if it is not already selected

   > [!NOTE]
   > Group Managed Service Accounts (GMSA) do not support the *Build from this Active Directory information* option and will result in the AD FS server failing to enroll the enrollment agent certificate. You must configure the certificate template with *Supply in the request* to ensure that AD FS servers can perform the automatic enrollment and renewal of the enrollment agent certificate.

1. On the **Cryptography** tab:
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. On the **Security** tab, select **Add**
1. Select **Object Types** and select the **Service Accounts** check box. Select **OK**
1. Type *adfssvc* in the **Enter the object names to select** text box and select **OK**
1. Select the **adfssvc** from the **Group or users names** list. In the **Permissions for adfssvc** section:
   - In the **Permissions for adfssvc** section, select the **Allow** check box for the **Enroll** permission
   - Excluding the **adfssvc** user, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared
   - Select **OK**
1. Close the console

</details>

<br>
<details>
<summary><b>Configure a Windows Hello for Business authentication certificate template</b></summary>

During Windows Hello for Business provisioning, Windows clients request an authentication certificate from AD FS, which requests the authentication certificate on behalf of the user. This task configures the Windows Hello for Business authentication certificate template.

Sign in to a CA or management workstations with *Domain Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Right-click **Certificate Templates** and select **Manage**
1. Right-click the **Smartcard Logon** template and choose **Duplicate Template**
1. On the **Compatibility** tab:
   - Clear the **Show resulting changes** check box
   - Select **Windows Server 2016** from the **Certification Authority** list
   - Select **Windows 10 / Windows Server 2016** from the **Certificate Recipient** list
1. On the **General** tab:
   - Type *WHFB Authentication* in **Template display name**
   - Adjust the validity and renewal period to meet your enterprise's needs
   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the deployment.
1. On the **Cryptography** tab
   - Select **Key Storage Provider** from the **Provider Category** list
   - Select **RSA** from the **Algorithm name** list
   - Type *2048* in the **Minimum key size** text box
   - Select **SHA256** from the **Request hash** list
1. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**
1. On the **Issuance Requirements** tab, 
   - Select the **This number of authorized signatures** check box. Type *1* in the text box
   - Select **Application policy** from the **Policy type required in signature**
   - Select **Certificate Request Agent** from in the **Application policy** list
   - Select the **Valid existing certificate** option
1. On the **Subject** tab, 
   - Select the **Build from this Active Directory information** button
   - Select **Fully distinguished name** from the **Subject name format** list
   - Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**
1. On the **Request Handling** tab, select the **Renew with same key** check box
1. On the **Security** tab, select **Add**. Type *Window Hello for Business Users* in the **Enter the object names to select** text box and select **OK**
1. Select the **Windows Hello for Business Users** from the **Group or users names** list. In the **Permissions for Windows Hello for Business Users** section:
   - Select the **Allow** check box for the **Enroll** permission
   - Excluding the **Windows Hello for Business Users** group, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other entries in the **Group or users names** section if the check boxes are not already cleared
   - Select **OK**
1. If you previously issued Windows Hello for Business sign-in certificates using Configuration Manger and are switching to an AD FS registration authority, then on the **Superseded Templates** tab, add the previously used **Windows Hello for Business Authentication** template(s), so they will be superseded by this template for the users that have Enroll permission for this template
1. Select on the **Apply** to save changes and close the console

#### Mark the template as the Windows Hello Sign-in template

Sign in to a CA or management workstations with *Enterprise Administrator* equivalent credentials

Open an elevated command prompt end execute the following command

```cmd
certutil.exe -dsTemplate WHFBAuthentication msPKI-Private-Key-Flag +CTPRIVATEKEY_FLAG_HELLO_LOGON_KEY
```

>[!NOTE]
>If you gave your Windows Hello for Business Authentication certificate template a different name, then replace *WHFBAuthentication* in the above command with the name of your certificate template. It's important that you use the template name rather than the template display name. You can view the template name on the **General** tab of the certificate template using the Certificate Template management console (certtmpl.msc). Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on your certification authority.


</details>

<br>
<details>
<summary><b>Unpublish Superseded Certificate Templates</b></summary>

The certification authority only issues certificates based on published certificate templates. For security, it's a good practice to unpublish certificate templates that the CA isn't configured to issue. This includes the pre-published certificate template from the role installation and any superseded certificate templates.

The newly created *domain controller authentication* certificate template supersedes previous domain controller certificate templates. Therefore, you need to unpublish these certificate templates from all issuing certificate authorities.

Sign in to the CA or management workstation with *Enterprise Administrator* equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane > **Certificate Templates**
1. Right-click the *Domain Controller* certificate template and select **Delete**. Select **Yes** on the **Disable certificate templates** window
1. Repeat step 3 for the *Domain Controller Authentication* and *Kerberos Authentication* certificate templates

</details>

<br>
<details>
<summary><b>Publish certificate templates to the CA</b></summary>

A certification authority can only issue certificates for certificate templates that are published to it. If you have more than one CA, and you want more CAs to issue certificates based on the certificate template, then you must publish the certificate template to them.

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template** to issue
1. In the **Enable Certificates Templates** window, select the *Domain Controller Authentication (Kerberos)*, *Internal Web Server*, *WHFB Enrollment Agent* and *WHFB Authentication* templates you created in the previous steps. Select **OK** to publish the selected certificate templates to the certification authority
1. If you published the *Domain Controller Authentication (Kerberos)* certificate template, then unpublish the certificate templates you included in the superseded templates list
   - To unpublish a certificate template, right-click the certificate template you want to unpublish and select **Delete**. Select **Yes** to confirm the operation
1. Close the console

</details>

### Configure automatic certificate enrollment for the domain controllers

Domain controllers automatically request a certificate from the *Domain controller certificate* template. However, domain controllers are unaware of newer certificate templates or superseded configurations on certificate templates. To continue automatic enrollment and renewal of domain controller certificates, create and configure a Group Policy Object (GPO) for automatic certificate enrollment, linking the Group Policy object to the *Domain Controllers* Organizational Unit (OU).

1. Open the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Right-click **Group Policy object** and select **New**
1. Type *Domain Controller Auto Certificate Enrollment* in the name box and select **OK**
1. Right-click the **Domain Controller Auto Certificate Enrollment** Group Policy object and select **Edit**
1. In the navigation pane, expand **Policies** under **Computer Configuration**
1. Expand **Windows Settings > Security Settings > Public Key Policies**
1. In the details pane, right-click **Certificate Services Client - Auto-Enrollment** and select **Properties**
1. Select **Enabled** from the **Configuration Model** list
1. Select the **Renew expired certificates, update pending certificates, and remove revoked certificates** check box
1. Select the **Update certificates that use certificate templates** check box
1. Select **OK**
1. Close the **Group Policy Management Editor**

### Deploy the domain controller auto certificate enrollment GPO

Sign in to domain controller or management workstations with *Domain Administrator* equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and expand the node with the Active Directory domain name. Right-click the **Domain Controllers** organizational unit and select **Link an existing GPO…**
1. In the **Select GPO** dialog box, select *Domain Controller Auto Certificate Enrollment* or the name of the domain controller certificate enrollment Group Policy object you previously created
1. Select **OK**

## Validate the configuration

Windows Hello for Business is a distributed system, which on the surface appears complex and difficult. The key to a successful Windows Hello for Business deployment is to validate phases of work prior to moving to the next phase.

You want to confirm your domain controllers enroll the correct certificates and not any unnecessary (superseded) certificate templates. You need to check each domain controller that autoenrollment for the computer occurred.

### Use the event logs

Sign in to domain controller or management workstations with *Domain Administrator* equivalent credentials.

1. Using the Event Viewer, navigate to the **Application and Services > Microsoft > Windows > CertificateServices-Lifecycles-System** event log
1. Look for an event indicating a new certificate enrollment (autoenrollment):
   - The details of the event include the certificate template on which the certificate was issued
   - The name of the certificate template used to issue the certificate should match the certificate template name included in the event
   - The certificate thumbprint and EKUs for the certificate are also included in the event
   - The EKU needed for proper Windows Hello for Business authentication is Kerberos Authentication, in addition to other EKUs provide by the certificate template

Certificates superseded by your new domain controller certificate generate an archive event in the event log. The archive event contains the certificate template name and thumbprint of the certificate that was superseded by the new certificate.

### Certificate Manager

You can use the Certificate Manager console to validate the domain controller has the properly enrolled certificate based on the correct certificate template with the proper EKUs. Use **certlm.msc** to view certificate in the local computers certificate stores. Expand the **Personal** store and view the certificates enrolled for the computer. Archived certificates don't appear in Certificate Manager.

### Certutil.exe

You can use `certutil.exe` command to view enrolled certificates in the local computer. Certutil shows enrolled and archived certificates for the local computer. From an elevated command prompt, run `certutil.exe -q -store my` to view locally enrolled certificates.

To view detailed information about each certificate in the store, use `certutil.exe -q -v -store my` to validate automatic certificate enrollment enrolled the proper certificates.

### Troubleshooting

Windows triggers automatic certificate enrollment for the computer during boot, and when Group Policy updates. You can refresh Group Policy from an elevated command prompt using `gpupdate.exe /force`.

Alternatively, you can forcefully trigger automatic certificate enrollment using `certreq.exe -autoenroll -q` from an elevated command prompt.

Use the event logs to monitor certificate enrollment and archive. Review the configuration, such as publishing certificate templates to issuing certification authority and the allow auto enrollment permissions.

> [!div class="nextstepaction"]
> [Next: prepare and deploy AD FS >](hello-cert-trust-adfs.md)