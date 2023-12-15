---
title: Configure single sign-on (SSO) for Microsoft Entra joined devices
description: Learn how to configure single sign-on to on-premises resources for Microsoft Entra joined devices, using Windows Hello for Business.
ms.date: 12/30/2022
ms.topic: how-to
---
# Configure single sign-on for Microsoft Entra joined devices

[!INCLUDE [hello-hybrid-key-trust](includes/hello-hybrid-keycert-trust-aad.md)]

Windows Hello for Business combined with Microsoft Entra joined devices makes it easy for users to securely access cloud-based resources using a strong, two-factor credential. Some resources may remain on-premises as enterprises transition resources to the cloud and Microsoft Entra joined devices may need to access these resources. With additional configurations to the hybrid deployment, you can provide single sign-on to on-premises resources for Microsoft Entra joined devices using Windows Hello for Business, using a key or a certificate.

> [!NOTE]
> These steps are not needed when using the cloud Kerberos trust model.

## Prerequisites

Unlike Microsoft Entra hybrid joined devices, Microsoft Entra joined devices don't have a relationship with your Active Directory domain. This factor changes the way in which users authenticate to Active Directory. Validate the following configurations to ensure they support Microsoft Entra joined devices:

> [!div class="checklist"]
> - Certificate Revocation List (CRL) Distribution Point
> - Domain controller certificates
> - Network infrastructure in place to reach the on-premises domain controllers. If the machines are external, you can use any VPN solution

### CRL Distribution Point (CDP)

Certificates issued by a certificate authority can be revoked. When a certificate authority revokes as certificate, it writes information about the certificate into a *certificate revocation list* (CRL).\
During certificate validation, Windows compares the current certificate with information in the CRL to determine if the certificate is valid.

![Domain Controller Certificate with LDAP CDP.](images/aadj/Certificate-CDP.png)

The preceding domain controller certificate shows a *CRL distribution point* (CDP) in Active Directory. The value in the URL begins with *ldap*. Using Active Directory for domain joined devices provides a highly available CRL distribution point. However, Microsoft Entra joined devices can't read data from Active Directory, and certificate validation doesn't provide an opportunity to authenticate prior to reading the CRL. The authentication becomes a circular problem: the user is attempting to authenticate, but must read Active Directory to complete the authentication, but the user can't read Active Directory because they haven't authenticated.

To resolve this issue, the CRL distribution point must be a location accessible by Microsoft Entra joined devices that doesn't require authentication. The easiest solution is to publish the CRL distribution point on a web server that uses HTTP (not HTTPS).

If your CRL distribution point doesn't list an HTTP distribution point, then you need to reconfigure the issuing certificate authority to include an HTTP CRL distribution point, preferably first, in the list of distribution points.

> [!NOTE]
> If your CA has published both the *Base* and the *Delta CRL*, make sure to publish the *Delta CRL* in the HTTP path. Include web server to fetch the *Delta CRL* by allowing **double escaping** in the (IIS) web server.

### Domain controller certificates

Certificate authorities write CDP information in certificates as they're issued. If the distribution point changes, then previously issued certificates must be reissued for the certificate authority to include the new CDP. The domain controller certificate is one the critical components of Microsoft Entra joined devices authenticating to Active Directory.

#### Why does Windows need to validate the domain controller certificate?

Windows Hello for Business enforces the strict KDC validation security feature when authenticating from a Microsoft Entra joined device to a domain. This enforcement imposes more restrictive criteria that must be met by the Key Distribution Center (KDC). When authenticating using Windows Hello for Business on a Microsoft Entra joined device, the Windows client validates the reply from the domain controller by ensuring all of the following are met:

- The domain controller has the private key for the certificate provided
- The root CA that issued the domain controller's certificate is in the device's *Trusted Root Certificate Authorities*
- Use the *Kerberos Authentication certificate template* instead of any other older template
- The domain controller's certificate has the *KDC Authentication* extended key usage (EKU)
- The domain controller's certificate's subject alternate name has a DNS Name that matches the name of the domain
- The domain controller's certificate's signature hash algorithm is **sha256**
- The domain controller's certificate's public key is **RSA (2048 Bits)**

Authenticating from a Microsoft Entra hybrid joined device to a domain using Windows Hello for Business doesn't enforce that the domain controller certificate includes the *KDC Authentication* EKU. If you're adding Microsoft Entra joined devices to an existing domain environment, make sure to verify that your domain controller certificate has been updated to include the *KDC Authentication* EKU.

## Configure a CRL distribution point for an issuing CA

Use this set of procedures to update the CA that issues domain controller certificates to include an http-based CRL distribution point.

### Configure Internet Information Services to host CRL distribution point

You need to host your new certificate revocation list on a web server so Microsoft Entra joined devices can easily validate certificates without authentication. You can host these files on web servers many ways. The following steps are just one and may be useful for admins unfamiliar with adding a new CRL distribution point.

> [!IMPORTANT]
> Do not configure the IIS server hosting your CRL distribution point to use https or a server authentication certificate. Clients should access the distribution point using http. 

### Install the web server

1. Sign-in to your server as a local administrator and start **Server Manager** if it didn't start during your sign in
1. Select the **Local Server** node in the navigation pane. Select **Manage** and select **Add Roles and Features**
1. In the **Add Role and Features Wizard**, select **Server Selection**. Verify the selected server is the local server. Select **Server Roles**. Select the check box next to **Web Server (IIS)**
1. Select **Next** through the remaining options in the wizard, accepting the defaults, and install the Web Server role

### Configure the web server

1. From **Windows Administrative Tools**, Open **Internet Information Services (IIS) Manager**
1. Expand the navigation pane to show **Default Web Site**. Select and then right-click **Default Web site** and select **Add Virtual Directory...**
1. In the **Add Virtual Directory** dialog box, type **cdp** in **alias**. For physical path, type or browse for the physical file location where you'll host the certificate revocation list. For this example, the path `c:\cdp` is used. Select **OK**
    ![Add Virtual Directory.](images/aadj/iis-add-virtual-directory.png)
   > [!NOTE]
   > Make note of this path as you will use it later to configure share and file permissions.

1. Select **CDP** under **Default Web Site** in the navigation pane. Open **Directory Browsing** in the content pane. Select **Enable** in the details pane
1. Select **CDP** under **Default Web Site** in the navigation pane. Open **Configuration Editor**
1. In the **Section** list, navigate to **system.webServer/security/requestFiltering**
     ![IIS Configuration Editor requestFiltering.](images/aadj/iis-config-editor-requestFiltering.png)
1. In the list of named value-pairs in the content pane, configure **allowDoubleEscaping** to **True**. Select **Apply** in the actions pane
     ![IIS Configuration Editor double escaping.](images/aadj/iis-config-editor-allowDoubleEscaping.png)
1. Close **Internet Information Services (IIS) Manager**

### Create a DNS resource record for the CRL distribution point URL

1. On your DNS server or from an administrative workstation, open **DNS Manager** from **Administrative Tools**
1. Expand **Forward Lookup Zones** to show the DNS zone for your domain. Right-click your domain name in the navigation pane and select **New Host (A or AAAA)...**
1. In the **New Host** dialog box, type **crl** in **Name**. Type the IP address of the web server you configured in **IP Address**. Select **Add Host**. Select **OK** to close the **DNS** dialog box. Select **Done**
    ![Create DNS host record.](images/aadj/dns-new-host-dialog.png)
1. Close the **DNS Manager**

### Prepare a file share to host the certificate revocation list

These procedures configure NTFS and share permissions on the web server to allow the certificate authority to automatically publish the certificate revocation list.

### Configure the CDP file share

1. On the web server, open **Windows Explorer** and navigate to the **cdp** folder you created in step 3 of [Configure the Web Server](#configure-the-web-server)
1. Right-click the **cdp** folder and select **Properties**. Select the **Sharing** tab. Select **Advanced Sharing**
1. Select **Share this folder**. Type **cdp$** in **Share name**. Select **Permissions**
    ![cdp sharing.](images/aadj/cdp-sharing.png)
1. In the **Permissions for cdp$** dialog box, select **Add**
1. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, select **Object Types**. In the **Object Types** dialog box, select **Computers**, and then select **OK**
1. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, in **Enter the object names to select**, type the name of the server running the certificate authority issuing the certificate revocation list, and then select **Check Names**. Select **OK**
1. In the **Permissions for cdp$** dialog box, select the certificate authority from the **Group or user names list**. In the **Permissions for** section, select **Allow** for **Full control**. Select **OK**
    ![CDP Share Permissions.](images/aadj/cdp-share-permissions.png)
1. In the **Advanced Sharing** dialog box, select **OK**

> [!Tip]
> Make sure that users can access **\\\Server FQDN\sharename**.

### Disable Caching 
1. On the web server, open **Windows Explorer** and navigate to the **cdp** folder you created in step 3 of [Configure the Web Server](#configure-the-web-server)
1. Right-click the **cdp** folder and select **Properties**. Select the **Sharing** tab. Select **Advanced Sharing**
1. Select **Caching**. Select **No files or programs from the shared folder are available offline**
    ![CDP disable caching.](images/aadj/cdp-disable-caching.png)
1. Select **OK**

### Configure NTFS permission for the CDP folder

1. On the web server, open **Windows Explorer** and navigate to the **cdp** folder you created in step 3 of [Configure the Web Server](#configure-the-web-server)
1. Right-click the **cdp** folder and select **Properties**. Select the **Security** tab
1. On the **Security** tab, select Edit
1. In the **Permissions for cdp** dialog box, select **Add**
    ![CDP NTFS Permissions.](images/aadj/cdp-ntfs-permissions.png)
1. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, select **Object Types**. In the **Object Types** dialog box, select **Computers**. Select **OK**
1. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, in **Enter the object names to select**, type the name of the certificate authority, and then select **Check Names**. Select **OK**
1. In the **Permissions for cdp** dialog box, select the name of the certificate authority from the **Group or user names** list. In the **Permissions for** section, select **Allow** for **Full control**. Select **OK**
1. Select **Close** in the **cdp Properties** dialog box

### Configure the new CDP and publishing location in the issuing CA

The web server is ready to host the CRL distribution point. Now, configure the issuing certificate authority to publish the CRL at the new location and to include the new CRL distribution point.

#### Configure the CRL distribution Point

1. On the issuing certificate authority, sign-in as a local administrator. Start the **Certification Authority** console from **Administrative Tools**
1. In the navigation pane, right-click the name of the certificate authority and select **Properties**
1. Select **Extensions**. On the **Extensions** tab, select **CRL Distribution Point (CDP)** from the **Select extension** list
1. On the **Extensions** tab, select **Add**. Type <b>http://crl.[domainname]/cdp/</b> in **location**. For example, `<http://crl.corp.contoso.com/cdp/>` or `<http://crl.contoso.com/cdp/>` (don't forget the trailing forward slash)
    ![CDP New Location dialog box.](images/aadj/cdp-extension-new-location.png)
1. Select **\<CaName>** from the **Variable** list and select **Insert**. Select **\<CRLNameSuffix>** from the **Variable** list and select **Insert**. Select **\<DeltaCRLAllowed>** from the **Variable** list and select **Insert**
1. Type **.crl** at the end of the text in **Location**. Select **OK**
1. Select the CDP you just created
    ![CDP complete http.](images/aadj/cdp-extension-complete-http.png)
1. Select **Include in CRLs. Clients use this to find Delta CRL locations**
1. Select **Include in the CDP extension of issued certificates**
1. Select **Apply** save your selections. Select **No** when ask to restart the service

> [!NOTE]
> Optionally, you can remove unused CRL distribution points and publishing locations.

#### Configure the CRL publishing location

1. On the issuing certificate authority, sign-in as a local administrator. Start the **Certificate Authority** console from **Administrative Tools**
1. In the navigation pane, right-click the name of the certificate authority and select **Properties**
1. Select **Extensions**. On the **Extensions** tab, select **CRL Distribution Point (CDP)** from the **Select extension** list
1. On the **Extensions** tab, select **Add**. Type the computer and share name you create for your CRL distribution point in [Configure the CDP file share](#configure-the-cdp-file-share). For example, **\\\app\cdp$\\** (don't forget the trailing backwards slash)
1. Select **\<CaName>** from the **Variable** list and select **Insert**. Select **\<CRLNameSuffix>** from the **Variable** list and select **Insert**. Select **\<DeltaCRLAllowed>** from the **Variable** list and select **Insert**
1. Type **.crl** at the end of the text in **Location**. Select **OK**
1. Select the CDP you just created
    ![CDP publishing location.](images/aadj/cdp-extension-complete-unc.png)
1. Select **Publish CRLs to this location**
1. Select **Publish Delta CRLs to this location**
1. Select **Apply** save your selections. Select **Yes** when ask to restart the service. Select **OK** to close the properties dialog box

#### Publish a new CRL

1. On the issuing certificate authority, sign-in as a local administrator. Start the **Certificate Authority** console from **Administrative Tools**
1. In the navigation pane, right-click **Revoked Certificates**, hover over **All Tasks**, and select **Publish**
    ![Publish a New CRL.](images/aadj/publish-new-crl.png)
1. In the **Publish CRL** dialog box, select **New CRL** and select **OK**

#### Validate CDP Publishing

Validate the new CRL distribution point is working.

1. Open a web browser. Navigate to `http://crl.[yourdomain].com/cdp`. You should see two files created from publishing the new CRL
    ![Validate the new CRL.](images/aadj/validate-cdp-using-browser.png)

#### Reissue domain controller certificates

With the CA properly configured with a valid HTTP-based CRL distribution point, you need to reissue certificates to domain controllers as the old certificate doesn't have the updated CRL distribution point. 

1. Sign-in a domain controller using administrative credentials
1. Open the **Run** dialog box. Type **certlm.msc** to open the **Certificate Manager** for the local computer
1. In the navigation pane, expand **Personal**. Select **Certificates**. In the details pane, select the existing domain controller certificate that includes **KDC Authentication** in the list of **Intended Purposes**
    ![Certificate Manager Personal store.](images/aadj/certlm-personal-store.png)
1. Right-click the selected certificate. Hover over **All Tasks** and then select **Renew Certificate with New Key...**. In the **Certificate Enrollment** wizard, select **Next**
    ![Renew with New key.](images/aadj/certlm-renew-with-new-key.png)
1. In the **Request Certificates** page of the wizard, verify the selected certificate has the correct certificate template and ensure the status is available. Select **Enroll**
1. After the enrollment completes, select **Finish** to close the wizard
1. Repeat this procedure on all your domain controllers

> [!NOTE]
> You can configure domain controllers to automatically enroll and renew their certificates. Automatic certificate enrollment helps prevent authentication outages due to expired certificates. Refer to the [Windows Hello Deployment Guides](hello-deployment-guide.md) to learn how to deploy automatic certificate enrollment for domain controllers.

> [!IMPORTANT]
> If you are not using automatic certificate enrollment, create a calendar reminder to alert you two months before the certificate expiration date. Send the reminder to multiple people in the organization to ensure more than one or two people know when these certificates expire.

#### Validate CDP in the new certificate

1. Sign-in a domain controller using administrative credentials
1. Open the **Run** dialog box. Type **certlm.msc** to open the **Certificate Manager** for the local computer
1. In the navigation pane, expand **Personal**. Select **Certificates**. In the details pane, double-click the existing domain controller certificate includes **KDC Authentication** in the list of **Intended Purposes**
1. Select the **Details** tab. Scroll down the list until **CRL Distribution Points** is visible in the **Field** column of the list. Select **CRL Distribution Point**
1. Review the information below the list of fields to confirm the new URL for the CRL distribution point is present in the certificate. Select **OK**
    ![New Certificate with updated CDP.](images/aadj/dc-cert-with-new-cdp.png)

<a name='deploy-the-root-ca-certificate-to-azure-ad-joined-devices'></a>

## Deploy the root CA certificate to Microsoft Entra joined devices

The domain controllers have a certificate that includes the new CRL distribution point. Next, you need the enterprise root certificate so you can deploy it to Microsoft Entra joined devices. When you deploy the enterprise root certificates to a device, it ensures the device trusts any certificates issued by the certificate authority. Without the certificate, Microsoft Entra joined devices don't trust domain controller certificates and authentication fails.

### Export the enterprise root certificate

1. Sign-in a domain controller using administrative credentials
1. Open the **Run** dialog box. Type **certlm.msc** to open the **Certificate Manager** for the local computer
1. In the navigation pane, expand **Personal**. Select **Certificates**. In the details pane, double-click the existing domain controller certificate includes **KDC Authentication** in the list of **Intended Purposes**
1. Select the **Certification Path** tab. In the **Certification path** view, select the topmost node and select **View Certificate**
    ![Certificate Path.](images/aadj/certlm-cert-path-tab.png)
1. In the new **Certificate** dialog box, select the **Details** tab. Select **Copy to File**
    ![Details tab and copy to file.](images/aadj/certlm-root-cert-details-tab.png)
1. In the **Certificate Export Wizard**, select **Next**
1. On the **Export File Format** page of the wizard, select **Next**
1. On the **File to Export** page in the wizard, type the name and location of the root certificate and select **Next**. Select **Finish** and then select **OK** to close the success dialog box
    ![Export root certificate.](images/aadj/certlm-export-root-certificate.png)
1. Select **OK**  two times to return to the **Certificate Manager** for the local computer. Close the **Certificate Manager**

### Deploy the certificate via Intune

To configure devices with Microsoft Intune, use a custom policy:

1. Go to the <a href="https://go.microsoft.com/fwlink/?linkid=2109431" target="_blank"><b>Microsoft Intune admin center</b></a>
1. Select **Devices > Configuration profiles > Create profile**
1. Select **Platform > Windows 8.1 and later** and **Profile type > Trusted certificate**
1. Select **Create**
1. In **Configuration settings**, select the folder icon and browse for the enterprise root certificate file. Once the file is selected, select **Open** to upload it to Intune
1. Under **Destination store** dropdown, select **Computer certificate store - Root**
1. Select **Next**
1. Under **Assignment**, select a security group that contains as members the devices or users that you want to configure > **Next**
1. Review the policy configuration and select **Create**

If you plan on using certificates for on-premises single-sign on, perform the additional steps in [Using Certificates for On-premises Single-sign On](hello-hybrid-aadj-sso-cert.md). Otherwise, you can sign in to a Microsoft Entra joined device with Windows Hello for Business and test SSO to an on-premises resource.
