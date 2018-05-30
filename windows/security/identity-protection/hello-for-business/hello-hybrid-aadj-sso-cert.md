---
title: Using Certificates for AADJ On-premises Single-sign On single sign-on
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
# Using Certificates for AADJ On-premises Single-sign On

**Applies to**
- Windows 10
- Azure Active Directory joined
- Hybrid Deployment

If you plan to use certificates for on-premises single-sign on, then follow these **addtional** steps to configure the environment to enroll certificates for Azure AD joined devices.

> [!IMPORTANT]
> Ensure you have performed the configurations in [Azure AD joined devices for On-premises Single-Sign On](hello-hybrid-aadj-sso-base.md) before you continue. 

Steps you will perform include:
- Prepare Azure AD Connect
- Prepare the Network Device Enrollment Services Service Account
- Prepare Active Directory Certificate Services
- Install the Network Device Enrollment Services Role
- Configure Network Device Enrollment Services to work with Microsoft Intune
- Install and Configure the Intune Certificate Connector
- Create and Assign a Simple Certificate Enrollment Protocol (SCEP) Certificate Profile

## Requirements

You need to install and configure additional infrastructure to provide Azure AD joined devices with on-premises single-sign on.

- An existing Windows Server 2012 R2 or later Enterprise Certificate Authority
- A Windows Server 2012 R2 domain joined server that hosts the Network Device Enrollment Services role

### High Availaibilty

The Network Device Enrollment Services (NDES) server role acts as a certificate registration authority in that enrolls certificates on behalf of the user.  Users request certificates from the NDES service rather than directly from the issuing certificate authority. 

The architecture of the NDES server prevents it from being clustered or load balanced for high availability.  To provide high availability, you need to install more than one identically configured NDES servers and use Microsoft Intune to load balance then (in round-robin fashion).

The Network Device Enrollment Service (NDES) server role can issue up to three unique certificate templates.  The server role accomplishes this by mapping the purpose of the certificate request to a configured certificate template.  The certificate request purpose has three options:

- Signature
- Encryption
- Signature and Encryption

If you need to deploy more than three types of certificates to the Azure AD joined device, you need another NDES server.  Alternatively, consider consolidating certificates templates to reduce the number of certificate templates.

### Network Requirements

All communication occurs securely over port 443. 

## Prepare Azure AD Connect

Successfully authentication to on-premises resources using a certificate requires the certificate to provide a hint about the on-premises domain.  The hint can be the user's distinguished name as the subject of the certificate, or the hint can be the user's user principal name where the suffix matches the Active Directory domain name.

Most environments change the user principal name suffix to match the organization's external domain name (or vanity domain), which prevents the user principal name as a hint to locate a domain controller.  Therefore, the certificate needs the user's on-premises distinguished name in the subject to properly locate a domain controller.

To include the on-premises distinguished name in the certificate's subject, Azure AD Connect must replicate the Active Directory **distinguishedName** attribute to the Azure Active Directory **onPremisesDistinguishedName** attribute.  Azure AD Connect version 1.1.819 includes the proper synchronization rules need to for these attributes. 

### Verify AAD Connect version

1. Open **Syncrhonization Services** from the **Azure AD Connect** folder.
2. In the **Syncrhonization Service Manager**, click **Help** and then click **About**.
3. If the version number is not **1.1.819** or later, then upgrade Azure AD Connect to the latest version.

### Verify the onPremisesDistinguishedName attribute is synchronized

The easiest way to verify the onPremisesDistingushedNamne attribute is synchronized is to use Azure AD Graph Explorer.

1. Open a web browser and navigate to https://graphexplorer.azurewebsites.net/
2. Click **Login** and provide Azure credentials
3. In the Azure AD Graph Explorer URL, type **https://graph.windows.net/myorganization/users/[userid], where **[userid]** is the user principal name of user in Azure Active Directory.  Click **Go**
4. In the returned results, review the JSON data for the **onPremisesDistinguishedName** attribute.  Ensure the attribute has a value and the value is accurate for the given user.

## Prepare the Network Device Enrollment Services Service Account

### Create the NDES Servers gobal security group

The deployment uses the **NDES Servers** security group to assign the NDES service the proper user right assignments.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1.	Open **Active Directory Users and Computers**.
2.	Expand the domain node from the navigation pane.
3.	Right-click the **Users** container. Hover over **New** and click **Group**.
4.	Type **NDES Servers** in the **Group Name** text box.
5.	Click **OK**.

### Add the NDES server to the NDES Servers global security group

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1.	Open **Active Directory Users and Computers**.
2.  Expand the domain node from the navigation pane.
3.  Click **Computers** from the navigation pane. Right-click the name of the NDES server that will host the NDES server role.  Click **Add to a group...**.
4. Type **NDES Servers** in **Enter the object names to select**.  Click **OK**.  Click **OK** on the **Active Directory Domain Services** success dialog.


### Create the NDES Service Account

The Network Device Enrollment Services (NDES) role runs under a service account. Typically, it is preferential to run services using a Group Managed Service Account (GMSA).  While the NDES role can be configured to run using a GMSA, the Intune Certificate Connector was not designed nor tested using a GMSA and is considered an unsupported configuration.

1. Sign-in to a domain controller or an administrative workstation using _domain administrator_ equivalent credentials.
2. In the navigation pane, expand the node that has your domain name.  Select **Users**.
3. Right-click the **Users** container. Hover over **New** and then select **User**.  Type **NDESSvc** in  **Full Name** and **User logon name**. Click **Next**.
4. Type a secure password in **Password**.  Confirm the secure password in **Confirm Password**.  Clear **User must change password at next logon**.  Click **Next**.
5. Click **Finish**.

> [!IMPORTANT]
> Configuring the service's account password to **Password never expires** may be more convenient, but it present a security risk.  Normal service account passwords should expire in accordance with the organizations user password expiration policy.

### Create the NDES Service User Rights Group Policy object

The Group Policy object ensures the NDES Service account has the proper user right assign all the NDES servers in the **NDES Servers** group.  As you add new NDES servers to your environment and this group, the service account automatically receives the proper user rights through Group Policy.

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**.
4. Type **NDES Service Rights** in the name box and click **OK**.
5. In the content pane, right-click the **NDES Service Rights** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **Computer Configuration**.
7. Expand **Windows Settings > Security Settings > Local Policies**. Select **User Rights Assignments**.
8. In the content pane, double-click **Allow log on locally**. Select **Define these policy settings**. and click **OK**.  Click **Add User or Group...**.  In the **Add User or Group** dialog box, click **Browse**.  In the **Select Users, Computers, Service Accounts, or Groups** dialog box, type **Administrators;Backup Operators;DOMAINNAME\NDESSvc;Users** where **DOMAINNAME** is the NetBios name of the domain (Example CONTOSO\NDESSvc) in **User and group names**.  Click **OK** twice.
9. In the content pane, double-click **Log on as a batch job**. Select **Define these policy settings**. and click **OK**.  Click **Add User or Group...**.  In the **Add User or Group** dialog box, click **Browse**.  In the **Select Users, Computers, Service Accounts, or Groups** dialog box, type **Administrators;Backup Operators;DOMAINNAME\NDESSvc;Performance Log Users** where **DOMAINNAME** is the NetBios name of the domain (Example CONTOSO\NDESSvc) in **User and group names**.  Click **OK** twice.
10. In the content pane, double-click **Log on as a batch job**. Select **Define these policy settings**. and click **OK**.  Click **Add User or Group...**.  In the **Add User or Group** dialog box, click **Browse**.  In the **Select Users, Computers, Service Accounts, or Groups** dialog box, type **NT SERVICE\ALL SERVICES;DOMAINNAME\NDESSvc** where **DOMAINNAME** is the NetBios name of the domain (Example CONTOSO\NDESSvc) in **User and group names**.  Click **OK** three times.
11. Close the **Group Policy Management Editor**. 

### Configure security for the NDES Service User Rights Group Policy object

The best way to deploy the **NDES Service User Rights** Group Policy object is to use security group filtering. The enables you to easily manage the computers that  receive the Group Policy setting by simply adding them to a group. 

1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Double-click the **NDES Service User Rights** Group Policy object.
4. In the **Security Filtering** section of the content pane, click **Add**.  Type **NDES Servers** or the name of the security group you previously created and click **OK**.
5. Click the **Delegation** tab. Select **Authenticated Users** and click **Advanced**.
6. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Click **OK**.

### Deploy the NDES Service User Rights Group Policy object

The application of the **NDES Service User Rights** Group Policy object uses security group filtering.  This enables you to link the Group Policy object at the domain, ensuring the Group Policy object is within scope to all computers. However, the security group filtering ensures only computers included in the **NDES Servers** global security group receive and apply the Group Policy object, which results in providing the **NDESSvc** service account with the proper user rights.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and click **Link an existing GPO**
3. In the **Select GPO** dialog box, select **NDES Service User Rights** or the name of the Group Policy object you previously created and click **OK**.
> [!IMPORTANT]
> Just to reassure, linking the **NDES Service User Rights** Group Policy object to the domain ensures the Group Policy object is in scope for all computers. However, not all computers will have the policy settings applied to them. Only computers that are members of the **NDES Servers** global security group receive the policy settings. All others computers ignore the Group Policy object. 

## Prepare Active Directory Certificate Authority

You must prepare the public key infrastructure and the issuing certificate authority to support issuing certificates using Microsoft Intune and the Network Devices Enrollment Services (NDES) server role.  In this task, you will

- Configure the certificate authority to let Intune provide validity periods
- Create an Intune Connector client authentication certificate template
- Create an Azure AD joined Windows Hello for Business authentication certificate template
- Create a Web Server certificate template
- Publish certificate templates

### Configure the certificate authority to let Intune provide validity periods

When deploying certificates using Microsoft Intune, you have the option of providing the validity period in the SCEP certificate profile rather than relying on the validity period in the certificate template.  If you need to issue the same certificate with different validity periods, it may be advantageous to use the SCEP profile, given the limited number of certificates a single NDES server can issue.

> [!NOTE]
> Skip this step if you do not want to enable Microsoft Intune to specify the validity period of the certificate.  Without this configuiration, the certificate request uses the validity period configured in the certificate template.

1. Sign-in to the issuing certificate authority using local administrative credentials.
2. Open and elevated command prompt.  Type the command
```
certutil -setreg Policy\EditFkags +EDITF_ATTRIBUTEENDDATE
```
3. Restart the **Active Directory Certificate Services** service. 


### Create an Intune Connector client authentication certificate template

The Intune Certificate Connector uses a client authentication certificate template to authenticate to the certificate registration point.  Given this certificate is enrolled on a domain joined server (the NDES server), you can configure this certificate template to build it's subject name from Active Directory

> [!NOTE]
> In most configurations, automatic certificate enrollment is ideal for domain joined comptuers such as the NDES server.  However, the client authentication certificate is enrolled to the computer, but statically configured in the Microsoft Intune connector.  Therefore, you must manually reconfigure the Intune Certificate Connector when renewing the client authentication certifcate and prevents the entire process from being automated.

Sign-in to the issuing certificate authority or management workstations with _Domain Admin_ equivalent credentials.
1.	Open the **Certificate Authority** management console.
2.	Right-click **Certificate Templates** and click **Manage**.
3.	In the **Certificate Template Console**, right-click the **Authenticated Session** template in the details pane and click **Duplicate Template**.
4.	On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows XP / Server 2003** from the **Certification Recipient** list.
5.	On the **General** tab, type **Intune Connector Client Auth** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise’s needs.   
    **Note:** If you use different template names, you’ll need to remember and substitute these names in different portions of the lab.
6.	On the **Subject** tab, select the **Build from Active Directory Information**.  Select **Common Name** from the **Subject name format** list.  Clear all the check boxes under **Include this information in alternate subject name**.
7. ON the **Cryptography** tab, validate the **Minimum key size** is **2048**.
8. On the **Security** tab, click **Add**. 
9. Click **Object Types**.  Select the **Computers** check box and click **OK**.
10.	Type the name of the NDES server in the **Enter the object names to select** text box and click **OK**.
11.	Click the NDES server from the **Group or users names** list. In the **Permissions for** section, select the **Allow** check box for the **Enroll** permission. Excluding the NDES server, clear the **Allow** check box for the **Enroll** and **Autoenroll** permissions for all other items in the **Group or users names** list if the check boxes are not already cleared. Click **OK**. 

### Create an Azure AD joined Windows Hello for Business authentication certificate template


### Create a Web Server certificate template


The NDES server needs an TLS server authentication certificate to keep it's communication private.  Given that internal clients are the only consumers of this URL, you can use an server authentication certificate issued by your enterprise certificate authority.  Optionally, you can use publicly trusted server authentication certificate.  

If you already have a certificate template that provides server authentication, then you can skip this section.

Sign-in to a certificate authority or management workstations with _Domain Admin_ equivalent credentials.
1.	Open the **Certificate Authority** management console.
2.	Right-click **Certificate Templates** and click **Manage**.
3.	In the **Certificate Template Console**, right-click the **Web Server** template in the details pane and click **Duplicate Template**.
4.	On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Authority** list. Select **Windows Server 2012** or **Windows Server 2012 R2** from the **Certification Recipient** list.
5.	On the **General** tab, type **Internal Web Server** in **Template display name**.  Adjust the validity and renewal period to meet your enterprise’s needs.   
    **Note:** If you use different template names, you’ll need to remember and substitute these names in different portions of the lab.
6.	On the **Request Handling** tab, select **Allow private key to be exported**.
7.	On the **Subject** tab, select the **Supply in the request** button if it is not already selected.
8.	On the **Security** tab, Click **Add**. Type **Domain Computers** in the **Enter the object names to select** box.  Click **OK**. Select the **Allow** check box next to the **Enroll** permission.
9.	On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**. 
10.	Close the console.

### Publish certificate templates



## Install the Network Device Enrollment Services Role

## Configure Network Device Enrollment Services to work with Microsoft Intune

## Install and Configure the Intune Certificate Connector

## Create and Assign a Simple Certificate Enrollment Protocol (SCEP) Certificate Profile