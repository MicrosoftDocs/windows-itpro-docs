---
title: Configure Key trust Azure AD joined devices for authentication to Active Directory
description: Azure Active Directory joined devices in a hybrid Deployment for on-premises single sign-on
keywords: identity, PIN, biometric, Hello, passport, AADJ, SSO, 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 05/05/2018
---
# Configure Key trust Azure AD joined devices for authentication to Active Directory

**Applies to**
- Windows 10
- Azure Active Directory joined
- Hybrid Deployment
- Key trust model

## Prerequisites

Before adding Azure Active Directory joined device to your existing hybrid deployment, you need to verify the existing deployment can support Azure AD joined devices.  Unlike hybrid Azure AD joined devices, Azure AD joined devices do not have a relationship with your Active Directory domain.  This factor changes the way in which users authenticate to Active Directory.  Validate the following configurations to ensure they support Azure Active Directory joined devices.

-  Certificate Revocation List (CRL) Distribution Point (CDP)
-  Domain Controller certificate

### CRL Distribution Point (CDP)

Certificates issued by a certificate authority can be revoked.  When a certificate authority revokes as certificate, it writes information about the certificate into a revocation list.  During certificate validation, Windows 10 consults the CRL distribution point within the certificate to get a list of revoked certificates.  Certificate validates compares the current certificate with information in the certificate revocation list to determine if the certificate remains valid.  

![Domain Controller Certificate with LDAP CDP](images/aadj/Certificate-CDP.png)

The preceding domain controller certificate shows a CRL distribution path (CDP) using Active Directory.  You can determine this because the value in the URL begins with **ldap**.  Using Active Directory for domain joined devices provides a highly available CRL distribution point.  However, Azure Active Directory joined devices and users on Azure Active Directory joined devices cannot read data from Active Directory, and certificate validation does not provide an opportunity to authenticate prior to reading the certificate revocation list.  This becomes a circular problem as the user is attempting to authenticate, but must read Active Directory to perform the complete the authentication.  However, the user cannot read Active Directory because they have not authenticated.  To resolve this issue, the CRL distribution point must be a location that is accessible by Azure Active Directory joined devices that does not require authentication.  The easiest solution is to publish the CRL distribution point on a web server that uses HTTP (not HTTPS).

If your CRL distribution point does not list an HTTP distribution point, then you need to reconfigure the issuing certificate authority to include an HTTP CRL distribution point, preferably first in the list of distribution points. 

### Domain Controller Certificates

Certificate authorities write CRL distribution points in certificates as they are issued.  If the distribution point changes, then previously issued certificates must be reissued for the certificate authority to include the new CRL distribution point.  The domain controller certificate is one the critical components of Azure AD joined devices authenticating to Active Directory

## Configuring a CRL Distribution Point for an issuing certificate authority

Use this set of procedures to update your certificate authority that issues your domain controller certificates to include an http-based CRL distribution point. 

Steps you will be performing include:
-[Configure Internet Information Services to host CRL distribution point](#configure-internet-information-services-to-host-crl-distribution-point) 
- [Prepare a file share to host the certificate revocation list](#prepare-a-file-share-to-host-the-certificate-revocation-list)
- [Configure the new CRL distribution point in the issuing certificate authority](#Configure-the-new-crl-distribution-point-in-the-issuing-certificate-authority)
- [Publish CRL](#publish-a-new-crl)
- [Reissue domain controller certificates](#reissue-domain-controller-certificates)


### Configure Internet Information Services to host CRL distribution point

You need to host your new certificate revocation list of a web server so Azure AD joined devices can easily validate certificates without authentication.  You can host these files on web servers many ways.  The following steps is just one and may be useful for those unfamiliar with adding a new CRL distribution point.

#### Installing the Web Server

1. Sign-in to your server as a local administrator and start **Server Manager** if it did not start during your sign in. 
2. Click the **Local Server** node in the navigation pane.  Click **Manage** and click **Add Roles and Features**.
3. In the **Add Role and Features Wizard**, click **Server Selection**.  Verify the selected server is the local server.  Click **Server Roles**.  Select the check box next to **Web Server (IIS)**.
4. Click **Next** through the remaining options in the wizard, accepting the defaults, and install the Web Server role.
 
#### Configure the Web Server

1. From **Windows Administrative Tools**, Open **Internet Information Services (IIS) Manager**.
2. Expand the navigation pane to show **Default Web Site**.  Select and then right-click **Default Web site** and click **Add Virtual Directory...**.
3. In the **Add Virtual Directory** dialog box, type **cdp** in **alias**.  For physical path, type or browse for the physical file location where you will host the certificate revocation list.  For this example, the path **c:\cdp** is used. Click **OK**. 
> [!NOTE]
> Make note of this path as you will use it later to configure share and file permissions.

4. Select **CDP** under **Default Web Site** in the navigation pane.  Double-click **Directory Browsing** in the content pane.  Click **Enable** in the details pane.
5. Select **CDP** under **Default Web Site** in the navigation pane.  Double-click **Configuration Editor**.
6. In the **Section** list, navigate to **system.webServer/security/requestFiltering**.  In the list of named value-pairs in the content pane, configure **allowDoubleEscapting** to **True**.  Click **Apply** in the actions pane.
7. Close **Internet Information Services (IIS) Manager**. 

#### Create a DNS resource record for the CRL distribution point URL 

1. On your DNS server or from an administrative workstation, open **DNS Manager** from **Administrative Tools**.
2. Expand **Forward Lookup Zones** to show the DNS zone for your domain.  Right-click your domain name in the navigation pane and click **New Host (A or AAAA)...**.
3. In the **New Host** dialog box, type **crl** in **Name**.  Type the IP address of the web server you configured in **IP Address**. Click **Add Host**.  Click **OK** to dismiss **DNS** dialog box.
4. Close the **DNS Manager**. 

### Prepare a file share to host the certificate revocation list

These procedures configure NTFS and share permissions on the web server to allow the certificate authority to automatically publish the certificate revocation list.

#### Configure the CDP file share

1. On the web server, open **Windows Explorer** and navigate to the **cdp** folder you created in step 3 of [Configure the Web Server](#configure-the-web-server).
2. Right-click the **cdp** folder and click **Properties**.  Click the **Sharing** tab.  Click **Advanced Sharing**.
3. Select **Share this folder**. Type **cdp$** in **Share name:**. Click **Permissions**. 
4. In the **Permissions for cdp$** dialog box, click **Add**.
5. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, click **Object Types**.  In the **Object Types** dialog box, select **Computers**, and then click **OK**.
7. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, in **Enter the object names to select**, type the name of the web server, and then click **Check Names**. Click **OK**.
8. In the **Permissions for cdp$** dialog box, select the web server from the **Group or user names list**. In the **Permissions for** section, select **Allow** for **Full control**. Click **OK**.
9. In the **Advanced Sharing** dialog box, click **OK**.

#### Disable Caching 
1. On the web server, open **Windows Explorer** and navigate to the **cdp** folder you created in step 3 of [Configure the Web Server](#configure-the-web-server).
2. Right-click the **cdp** folder and click **Properties**.  Click the **Sharing** tab.  Click **Advanced Sharing**.
3. Click **Caching**. Select **No files or programs from the shared folder are available offline**.
4. Click **OK**. 

#### Configure NTFS permission for the CDP folder

1. On the web server, open **Windows Explorer** and navigate to the **cdp** folder you created in step 3 of [Configure the Web Server](#configure-the-web-server).
2. Right-click the **cdp** folder and click **Properties**.  Click the **Security** tab.
3. On the **Security** tab, click Edit.
5. In the **Permissions for cdp** dialog box, click **Add**.
6. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, click **Object Types**.  In the **Object Types** dialog box, select **Computers**. Click **OK**.
7. In the **Select Users, Computers, Service Accounts, or Groups** dialog box, in **Enter the object names to select**, type the name of the web server, and then click **Check Names**. Click **OK**.
8. In the **Permissions for cdp** dialog box, select the name of the web server from the **Group or user names** list. In the **Permissions for** section, select **Allow** for **Full control**. Click **OK**.
9. Click **Close** in the **cdp Properties** dialog box.




### Configure the new CRL distribution point in the issuing certifcate authority


### Publish a new CRL



### Reissue domain controller certificates



## Configure and Assign a Trusted Certificate Device Configuration Profile


### Export Domain Controller certificates