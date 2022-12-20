---
title: Deploy Windows Hello for Business hybrid key trust
description: Learn how to deploy Windows Hello for Business in a hybrid key trust scenario.
ms.date: 12/20/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: how-to
---
# Hybrid Azure AD joined Key Trust Deployment

[!INCLUDE [hello-hybrid-key-trust](../../includes/hello-hybrid-key-trust.md)]

Windows Hello for Business replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair. The following deployment guide provides the information needed to successfully deploy Windows Hello for Business in a hybrid key trust scenario.\
This deployment guide provides guidance for new and existing deployments, where customers may already be federated with Azure AD.

Hybrid environments are distributed systems that enable organizations to use on-premises and Azure AD-based identities and resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication and single sign-on to modern resources.

## Prerequisites

| Requirement | Notes |
| --- | --- |
| Directories |Hybrid Windows Hello for Business needs two directories: on-premises Active Directory and a cloud Azure Active Directory |
| Directory synchronization | The two directories used in hybrid deployments must be synchronized. You need Azure Active Directory Connect to synchronize user accounts in the on-premises Active Directory with Azure Active Directory |
| Device registration| The devices must be registered to Azure Active Directory. This ensures that only approved computers are used with that Azure AD tenant. You can use Azure AD Join or Hybrid Azure AD Join to register devices to Azure Active Directory|
| Public Key Infrastructure | An enterprise PKI is required as *trust anchor* for authentication. Domain controllers require a certificate for Windows clients to trust them |
| Authentication to Azure AD | Authentication to Azure AD can be configured with or without federation:<br><ul><li>for non-federated environments, you must deploy [Password Synchronization with Azure AD Connect](/azure/active-directory/hybrid/whatis-phs) or [Azure Active Directory Pass-through-Authentication](/azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication)</li><li>for federated environments, you can deploy Windows Hello for Business key trust using Active Directory Federation Services (AD FS) or third-party federation services</li></ul>|
|Multi-factor authentication|The Windows Hello for Business provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but requires a second factor of authentication. Hybrid deployments can use:<br><ul><li>Azure Multifactor Authentication (MFA) service</li><li>A multi-factor authentication provided by AD FS, which includes an adapter model that enables third parties to integrate their MFA into AD FS</li></ul>|
| Device management | Devices can be configured with group polices or through mobile device management (MDM) policies|

## Next Steps

Follow the Windows Hello for Business hybrid key trust deployment guide:

- for proof-of-concepts, labs, and new installations, choose the **New Installation Baseline**
- for environments transitioning from on-premises to hybrid, start with  **Configure Azure Directory Synchronization**
- for federated and non-federated environments, start with **Configure Windows Hello for Business settings**

> [!div class="op_single_selector"]
> - [New Installation Baseline](hello-hybrid-key-new-install.md)
> - [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
> - [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)


<!-- Key trust deployments do not need client issued certificates for on-premises authentication. Active Directory user accounts are automatically configured for public key mapping by Azure AD Connect synchronizing the public key of the registered Windows Hello for Business credential to an attribute on the user's Active Directory object.

You can use a Windows Server-based PKI or a third-party Enterprise certification authority. The requirements for the domain controller certificate are shown below. For more details, see [Requirements for domain controller certificates from a third-party CA](/troubleshoot/windows-server/windows-security/requirements-domain-controller).

- The certificate must have a Certificate Revocation List (CRL) distribution point extension that points to a valid CRL, or an Authority Information Access (AIA) extension that points to an Online Certificate Status Protocol (OCSP) responder
- Optionally, the certificate Subject section could contain the directory path of the server object (the distinguished name)
- The certificate Key Usage section must contain Digital Signature and Key Encipherment
- Optionally, the certificate Basic Constraints section should contain: [Subject Type=End Entity, Path Length Constraint=None]
- The certificate Enhanced Key Usage section must contain Client Authentication (`1.3.6.1.5.5.7.3.2`), Server Authentication (`1.3.6.1.5.5.7.3.1`), and KDC Authentication (`1.3.6.1.5.2.3.5`)
- The certificate Subject Alternative Name section must contain the Domain Name System (DNS) name. 
- The certificate template must have an extension that has the value "DomainController", encoded as a [BMPstring](/windows/win32/seccertenroll/about-bmpstring). If you are using Windows Server Enterprise Certificate Authority, this extension is already included in the domain controller certificate template
- The domain controller certificate must be installed in the local computer's certificate store. See [Configure Hybrid Windows Hello for Business: Public Key Infrastructure](./hello-hybrid-key-whfb-settings-pki.md) for details

> [!IMPORTANT]
> For Azure AD joined device to authenticate to and use on-premises resources, ensure you:
> - Install the root certificate authority certificate for your organization in the user's trusted root certificate store
> - Publish your certificate revocation list to a location that is available to Azure AD-joined devices, such as a web-based url
-->

## Deploy Azure AD Connect

Next, you need to synchronize the on-premises Active Directory with Azure Active Directory.  To do this, first review the [Integrating on-prem directories with Azure Active Directory](/azure/active-directory/connect/active-directory-aadconnect) and [hardware and prerequisites](/azure/active-directory/connect/active-directory-aadconnect-prerequisites) needed and then [download the software](https://go.microsoft.com/fwlink/?LinkId=615771).

> [!NOTE]
> If you installed Azure AD Connect prior to upgrading the schema, you will need to re-run the Azure AD Connect installation and refresh the on-premises AD schema to ensure the synchronization rule for msDS-KeyCredentialLink is configured.

<br>

If the user principal name (UPN) in your on-premises Active Directory is different from the UPN in Azure AD, you also need to complete the following steps:
- Configure Azure AD Connect to sync the user's on-premises UPN to the onPremisesUserPrincipalName attribute in Azure AD.
- Add the domain name of the on-premises UPN as a [verified domain](/azure/active-directory/fundamentals/add-custom-domain) in Azure AD. 

> [!NOTE]
> Windows Hello for Business Hybrid key trust is not supported if your users' on-premises domain cannot be added as a verified domain in Azure AD.

## Configure Hybrid Azure AD join

You're ready to configure device registration for your hybrid environment. Hybrid Windows Hello for Business deployment needs device registration to enable proper device authentication.

> [!NOTE]
> Before proceeding, you should familiarize yourself with device registration concepts such as:
> * Azure AD registered devices
> * Azure AD-joined devices
> * Hybrid Azure AD-joined devices
>
> You can learn about this and more by reading [What is a device identity](/azure/active-directory/devices/overview)

Begin configuring device registration to support Hybrid Windows Hello for Business by configuring device registration capabilities in Azure AD.

Follow the guidance on the [How to configure hybrid Azure Active Directory-joined devices](/azure/active-directory/devices/hybrid-azuread-join-plan) page. In the **Select your scenario based on your identity infrastructure** section, identify your configuration (either **Managed environment** or **Federated environment**) and perform only the steps applicable to your environment.

If the user principal name (UPN) in your on-premises Active Directory is different from the UPN in Azure AD, you also need to complete the following steps:

- Configure Azure AD Connect to sync the user's on-premises UPN to the onPremisesUserPrincipalName attribute in Azure AD.
- Add the domain name of the on-premises UPN as a [verified domain](/azure/active-directory/fundamentals/add-custom-domain) in Azure AD.

You can learn more about this scenario by reading [Review on-premises UPN support for Hybrid Azure Ad join](/azure/active-directory/devices/hybrid-azuread-join-plan#review-on-premises-ad-users-upn-support-for-hybrid-azure-ad-join).

> [!NOTE]
> Windows Hello for Business Hybrid key trust is not supported if your users' on-premises domain cannot be added as a verified domain in Azure AD.

The configuration for Windows Hello for Business is grouped in four categories.  These categories are: 
### Configure AD - Creating Security Groups

Windows Hello for Business uses a security group to simplify the deployment and management.

#### Create the Windows Hello for Business Users Security Group

The Windows Hello for Business Users group is used to make it easy to deploy Windows Hello for Business in phases.  You assign Group Policy and Certificate template permissions to this group to simplify the deployment by simply adding the users to the group.  This provides users with the proper permissions to provision Windows Hello for Business and to enroll in the Windows Hello for Business authentication certificate.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click **View** and click **Advanced Features**.
3. Expand the domain node from the navigation pane.
4. Right-click the **Users** container. Click **New**. Click **Group**.
5. Type **Windows Hello for Business Users** in the **Group Name** text box.
6. Click **OK**.

## Directory Synchronization

In hybrid deployments, users register the public portion of their Windows Hello for Business credential with Azure AD. Azure AD Connect synchronizes the Windows Hello for Business public key to Active Directory.  

### Group Memberships for the Azure AD Connect Service Account
>[!IMPORTANT]
> If you already have a Windows Server 2016 domain controller in your domain, you can skip **Configure Permissions for Key Synchronization**. For more detail see [Configure Hybrid Windows Hello for Business: Directory Synchronization](./hello-hybrid-cert-whfb-settings-dir-sync.md).

The KeyAdmins global group provides the Azure AD Connect service with the permissions needed to read and write the public key to Active Directory.  

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click the **Users** container in the navigation pane.
3. Right-click **Key Admins** in the details pane and click **Properties**.
4. Click the **Members** tab and click **Add**
5. In the **Enter the object names to select** text box, type the name of the service account used as an AD DS Connector account and click **OK**.
6. Click **OK** to return to **Active Directory Users and Computers**.

> [!NOTE]
> If your Active Directory forest has multiple domains, your ADConnect accounts need to be members of the **Enterprise Key Admins** group. This membership is needed to write the keys to other domain users.

# Configure Hybrid Azure AD joined Windows Hello for Business: Public Key Infrastructure

Windows Hello for Business deployments rely on certificates. Hybrid deployments use publicly issued server authentication certificates to validate the name of the server to which they are connecting and to encrypt the data that flows them and the client computer.

All deployments use enterprise issued certificates for domain controllers as a root of trust.

## Certificate Templates

This section has you configure certificate templates on your Windows Server 2012 or later issuing certificate authority.

### Domain Controller certificate template

Clients need to trust domain controllers and the best way to do this is to ensure each domain controller has a Kerberos Authentication certificate.  Installing a certificate on the domain controller enables the Key Distribution Center (KDC) to prove its identity to other members of the domain.  This provides clients a root of trust external to the domain - namely the enterprise certificate authority.

Domain controllers automatically request a domain controller certificate (if published) when they discover an enterprise certificate authority is added to Active Directory.  However, certificates based on the *Domain Controller* and *Domain Controller Authentication* certificate templates do not include the **KDC Authentication** object identifier (OID), which was later added to the Kerberos RFC. Inclusion of the **KDC Authentication** OID in domain controller certificate is not required for key trust authentication from Hybrid Azure AD-joined devices. The OID is required for enabling authentication with Windows Hello for Business to on-premises resources by Azure AD-joined devices. The steps below to update the domain controller certificate to include the **KDC Authentication** OID may be skipped if you only have Hybrid Azure AD Joined devices in your environment, but we recommend completing these steps if you are considering adding Azure AD-joined devices to your environment in the future.

By default, the Active Directory Certificate Authority provides and publishes the Kerberos Authentication certificate template.  However, the cryptography configuration included in the provided template is based on older and less performant cryptography APIs.  To ensure domain controllers request the proper certificate with the best available cryptography, use the **Kerberos Authentication** certificate template a baseline to create an updated domain controller certificate template.

#### Create a Domain Controller Authentication (Kerberos) Certificate Template

Sign-in a certificate authority or management workstations with _Domain Admin_ equivalent credentials.

1. Open the **Certificate Authority** management console.
2. Right-click **Certificate Templates** and click **Manage**.
3. In the **Certificate Template Console**, right-click the **Kerberos Authentication** template in the details pane and click **Duplicate Template**.
4. On the **Compatibility** tab, clear the **Show resulting changes** check box.  Select **Windows Server 2008 R2** from the **Certification Authority** list. Select **Windows 7.Server 2008 R2** from the **Certificate Recipient** list.
5. On the **General** tab, type **Domain Controller Authentication (Kerberos)** in Template display name.  Adjust the validity and renewal period to meet your enterprise's needs.
   > [!NOTE]
   > If you use different template names, you'll need to remember and substitute these names in different portions of the lab.
6. On the **Subject Name** tab, select the **Build from this Active Directory information** button if it is not already selected.  Select **None** from the **Subject name format** list.  Select **DNS name** from the **Include this information in alternate subject** list. Clear all other items.
7. On the **Cryptography** tab, select **Key Storage Provider** from the **Provider Category** list.  Select **RSA** from the **Algorithm name** list.  Type **2048** in the **Minimum key size** text box.  Select **SHA256** from the **Request hash** list.  Click **OK**.
8. Close the console.

>[!NOTE]
>Don't confuse the **Request hash** algorithm with the hash argorithm of the certificate.

#### Configure Certificate Superseding for the Domain Controller Authentication (Kerberos) Certificate Template

Many domain controllers may have an existing domain controller certificate.  The Active Directory Certificate Services provides a default certificate template for domain controllers--the domain controller certificate template.  Later releases provided a new certificate template--the domain controller authentication certificate template.  These certificate templates were provided prior to update of the Kerberos specification that stated Key Distribution Centers (KDCs) performing certificate authentication needed to include the **KDC Authentication** extension.  

The Kerberos Authentication certificate template is the most current certificate template designated for domain controllers and should be the one you deploy to all your domain controllers (2008 or later).

The autoenrollment feature in Windows enables you to effortlessly replace these domain controller certificates.  You can use the following configuration to replace older domain controller certificates with a new certificate using the Kerberos Authentication certificate template. 

Sign-in a certificate authority or management workstations with _Enterprise Admin_ equivalent credentials.

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

> [!NOTE]
> The domain controller's certificate must chain to a root in the NTAuth store. By default, the Active Directory Certificate Authority's root certificate is added to the NTAuth store. If you are using a third-party CA, this may not be done by default. If the domain controller certificate does not chain to a root in the NTAuth store, user authentication will fail.
>To see all certificates in the NTAuth store, use the following command:
>
> `Certutil -viewstore -enterprise NTAuth`

### Publish Certificate Templates to a Certificate Authority

The certificate authority may only issue certificates for certificate templates that are published to that certificate authority.  If you have more than one certificate authority and you want that certificate authority to issue certificates based on a specific certificate template, then you must publish the certificate template to all certificate authorities that are expected to issue the certificate.

Sign-in to the certificate authority or management workstations with _enterprise administrator_ equivalent credentials.

1. Open the **Certificate Authority** management console.
2. Expand the parent node from the navigation pane.
3. Click **Certificate Templates** in the navigation pane.
4. Right-click the **Certificate Templates** node.  Click **New**, and click **Certificate Template** to issue.
5. In the **Enable Certificates Templates** window, select the **Domain Controller Authentication (Kerberos)** template you created in the previous steps.  Click **OK** to publish the selected certificate templates to the certificate authority.
6. If you published the **Domain Controller Authentication (Kerberos)** certificate template, then you should unpublish the certificate templates you included in the superseded templates list.
    - To unpublish a certificate template, right-click the certificate template you want to unpublish in the details pane of the Certificate Authority console and select **Delete**. Click **Yes** to confirm the operation.
7. Close the console.

### Unpublish Superseded Certificate Templates

The certificate authority only issues certificates based on published certificate templates.  For defense in depth security, it is a good practice to unpublish certificate templates that the certificate authority is not configured to issue.  This includes the pre-published certificate template from the role installation and any superseded certificate templates.

The newly created domain controller authentication certificate template supersedes previous domain controller certificate templates.  Therefore, you need to unpublish these certificate templates from all issuing certificate authorities.

Sign-in to the certificate authority or management workstation with _Enterprise Admin_ equivalent credentials.

1. Open the **Certificate Authority** management console.
2. Expand the parent node from the navigation pane.
3. Click **Certificate Templates** in the navigation pane.
4. Right-click the **Domain Controller** certificate template in the content pane and select **Delete**.  Click **Yes** on the **Disable certificate templates** window.
5. Repeat step 4 for the **Domain Controller Authentication** and **Kerberos Authentication** certificate templates.


## Policy Configuration

You need at least a Windows 10, version 1703 workstation to run the Group Policy Management Console, which provides the latest Windows Hello for Business and PIN Complexity Group Policy settings.  To run the Group Policy Management Console, you need to install the Remote Server Administration Tools for Windows. You can download these tools from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=45520).
Install the Remote Server Administration Tools for Windows on a computer running Windows 10, version 1703 or later.

Alternatively, you can create copy the .ADMX and .ADML files from a Windows 10 Creators Edition (1703) to their respective language folder on a Windows Server or you can create a Group Policy Central Store and copy them their respective language folder. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) for more information.

Domain controllers of Windows Hello for Business deployments need one Group Policy setting, which enables automatic certificate enrollment for the newly create domain controller authentication certificate. This policy setting ensures domain controllers (new and existing) automatically request and renew the correct domain controller certificate.  

Hybrid Azure AD-joined devices need one Group Policy setting:
* Enable Windows Hello for Business

### Configure Domain Controllers for Automatic Certificate Enrollment

Domain controllers automatically request a certificate from the *Domain Controller* certificate template.  However, the domain controller is unaware of newer certificate templates or superseded configurations on certificate templates.  

To continue automatic enrollment and renewal of domain controller certificates that understand newer certificate template and superseded certificate template configurations, create and configure a Group Policy object for automatic certificate enrollment and link the Group Policy object to the Domain Controllers OU.

#### Create a Domain Controller Automatic Certificate Enrollment Group Policy object

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**
4. Type *Domain Controller Auto Certificate Enrollment* in the name box and click **OK**.
5. Right-click the **Domain Controller Auto Certificate Enrollment** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **Computer Configuration**.
7. Expand **Windows Settings**, **Security Settings**, and click **Public Key Policies**.
8. In the details pane, right-click **Certificate Services Client � Auto-Enrollment** and select **Properties**.
9. Select **Enabled** from the **Configuration Model** list.
10. Select the **Renew expired certificates**, **update pending certificates**, and **remove revoked certificates** check box.
11. Select the **Update certificates that use certificate templates** check box.
12. Click **OK**. Close the **Group Policy Management Editor**.

#### Deploy the Domain Controller Auto Certificate Enrollment Group Policy Object

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. In the navigation pane, expand the domain and expand the node that has your Active Directory domain name.  Right-click the **Domain Controllers** organizational unit and click **Link an existing GPO�**
3. In the **Select GPO** dialog box, select **Domain Controller Auto Certificate Enrollment** or the name of the domain controller certificate enrollment Group Policy object you previously created and click **OK**.

>[!IMPORTANT]
>If you don't find options in GPO, you have to load the [PolicyDefinitions folder](/troubleshoot/windows-client/group-policy/create-and-manage-central-store). 

### Windows Hello for Business Group Policy

The Windows Hello for Business Group Policy object delivers the correct Group Policy settings to the user, which enables them to enroll and use Windows Hello for Business to authenticate to Azure and Active Directory

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Microsoft Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more details about deploying Windows Hello for Business configuration using Microsoft Intune, see [Windows device settings to enable Windows Hello for Business in Intune](/mem/intune/protect/identity-protection-windows-settings) and [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp). For more details about policy conflicts, see [Policy conflicts from multiple policy sources](./hello-manage-in-organization.md#policy-conflicts-from-multiple-policy-sources)

#### Enable Windows Hello for Business

The Enable Windows Hello for Business Group Policy setting is the configuration needed for Windows to determine if a user should attempt to enroll for Windows Hello for Business.  A user will only attempt enrollment if this policy setting is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computer or users. Deploying this policy setting to computers results in ALL users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment.  Additionally, you can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

#### Create the Windows Hello for Business Group Policy object

The Group Policy object contains the policy setting needed to trigger Windows Hello for Business provisioning.

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**.
4. Type *Enable Windows Hello for Business* in the name box and click **OK**.
5. In the content pane, right-click the **Enable Windows Hello for Business** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **User Configuration**.
7. Expand **Administrative Templates > Windows Component**, and select **Windows Hello for Business**.
8. In the content pane, double-click **Use Windows Hello for Business**. Click **Enable** and click **OK**. Close the **Group Policy Management Editor**.

#### Configure Security in the Windows Hello for Business Group Policy object

The best way to deploy the Windows Hello for Business Group Policy object is to use security group filtering. The enables you to easily manage the users that should receive Windows Hello for Business by simply adding them to a group. This enables you to deploy Windows Hello for Business in phases.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Double-click the **Enable Windows Hello for Business** Group Policy object.
4. In the **Security Filtering** section of the content pane, click **Add**.  Type *Windows Hello for Business Users* or the name of the security group you previously created and click **OK**.
5. Click the **Delegation** tab. Select **Authenticated Users** and click **Advanced**.
6. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Click **OK**.

#### Deploy the Windows Hello for Business Group Policy object

The application of the Windows Hello for Business Group Policy object uses security group filtering.  This enables you to link the Group Policy object at the domain, ensuring the Group Policy object is within scope to all users. However, the security group filtering ensures only the users included in the *Windows Hello for Business Users* global group receive and apply the Group Policy object, which results in the provisioning of Windows Hello for Business.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and click **Link an existing GPO**
3. In the **Select GPO** dialog box, select **Enable Windows Hello for Business** or the name of the Windows Hello for Business Group Policy object you previously created and click **OK**.

Just to reassure, linking the **Windows Hello for Business** Group Policy object to the domain ensures the Group Policy object is in scope for all domain users. However, not all users will have the policy settings applied to them. Only users who are members of the Windows Hello for Business group receive the policy settings. All others users ignore the Group Policy object. 

## Other Related Group Policy settings

### Windows Hello for Business

There are other Windows Hello for Business policy settings you can configure to manage your Windows Hello for Business deployment.  These policy settings are computer-based policy setting; so they are applicable to any user that sign-in from a computer with these policy settings. 

#### Use a hardware security device

The default configuration for Windows Hello for Business is to prefer hardware protected credentials; however, not all computers are able to create hardware protected credentials.  When Windows Hello for Business enrollment encounters a computer that cannot create a hardware protected credential, it will create a software-based credential.

You can enable and deploy the **Use a hardware security device** Group Policy Setting to force Windows Hello for Business to only create hardware protected credentials.  Users that sign-in from a computer incapable of creating a hardware protected credential do not enroll for Windows Hello for Business.

Another policy setting becomes available when you enable the **Use a hardware security device** Group Policy setting that enables you to prevent Windows Hello for Business enrollment from using version 1.2 Trusted Platform Modules (TPM). Version 1.2 TPMs typically perform cryptographic operations slower than version 2.0 TPMs and are more unforgiving during anti-hammering and PIN lockout activities. Some organizations may not want slow sign-in performance and management overhead associated with version 1.2 TPMs. To prevent Windows Hello for Business from using version 1.2 TPMs, select the TPM 1.2 check box after you enable the Use a hardware security device Group Policy object.

#### Use biometrics

Windows Hello for Business provides a great user experience when combined with the use of biometrics.  Rather than providing a PIN to sign-in, a user can use a fingerprint or facial recognition to sign-in to Windows, without sacrificing security.  

The default Windows Hello for Business enables users to enroll and use biometrics. However, some organization may want more time before using biometrics and want to disable their use until they are ready. To not allow users to use biometrics, configure the **Use biometrics** Group Policy setting to disabled and apply it to your computers.  The policy setting disabled all biometrics. Currently, Windows doesn't provide the ability to set granular policies that enable you to disable specific modalities of biometrics, such as allowing facial recognition but disallowing fingerprint recognition.

### PIN Complexity

PIN complexity is not specific to Windows Hello for Business. Windows enables users to use PINs outside of Windows Hello for Business. PIN Complexity Group Policy settings apply to all uses of PINs, even when Windows Hello for Business is not deployed.

>[!IMPORTANT]
> Starting from Windows 10, version 1703, the PIN complexity Group Policy settings have moved to remove misunderstanding that PIN complexity policy settings were exclusive to Windows Hello for Business. The new location of these Group Policy settings is under **Computer Configuration\Administrative Templates\System\PIN Complexity**  of the Group Policy editor.

Windows provides eight PIN Complexity Group Policy settings that give you granular control over PIN creation and management. You can deploy these policy settings to computers, where they affect all users creating PINs on that computer; or, you can deploy these settings to users, where they affect those users creating PINs regardless of the computer they use.  If you deploy both computer and user PIN complexity Group Policy settings, the user policy settings have precedence over computer policy settings. Also, this conflict resolution is based on the last applied policy. Windows does not merge the policy settings automatically; however, you can deploy Group Policy to provide to accomplish a variety of configurations.  The policy settings included are:
* Require digits
* Require lowercase letters
* Maximum PIN length
* Minimum PIN length
* Expiration
* History
* Require special characters
* Require uppercase letters

## Add users to the Windows Hello for Business Users group

Users must receive the Windows Hello for Business group policy settings and have the proper permission to provision  Windows Hello for Business. You can provide users with these settings and permissions by adding the users or groups to the **Windows Hello for Business Users** group.   Users and groups who are not members of this group will not attempt to enroll for Windows Hello for Business.

## Provisioning

The Windows Hello for Business provisioning begins immediately after the user has signed in, after the user profile is loaded, but before the user receives their desktop.  Windows only launches the provisioning experience if all the prerequisite checks pass. You can determine the status of the prerequisite checks by viewing the **User Device Registration** in the **Event Viewer** under **Applications and Services Logs\Microsoft\Windows**.

![Event358.](images/Event358-2.png)

The first thing to validate is the computer has processed device registration. You can view this from the User device registration logs where the check **Device is Azure Active Directory-joined (AADJ or DJ++): Yes** appears.  Additionally, you can validate this using the **dsregcmd /status** command from a console prompt where the value for **AzureADJoined** reads **Yes**.

Windows Hello for Business provisioning begins with a full screen page with the title **Setup a PIN** and button with the same name.  The user clicks **Setup a PIN**.

![Setup a PIN Provisioning.](images/setupapin.png)

The provisioning flow proceeds to the Multi-Factor authentication portion of the enrollment.  Provisioning informs the user that it is actively attempting to contact the user through their configured form of MFA.  The provisioning process does not proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry.
  
![MFA prompt during provisioning.](images/mfa.png)

After a successful MFA, the provisioning flow asks the user to create and validate a PIN.  This PIN must observe any PIN complexity requirements that you deployed to the environment.

![Create a PIN during provisioning.](images/createPin.png)

The provisioning flow has all the information it needs to complete the Windows Hello for Business enrollment.

- A successful single factor authentication (username and password at sign-in)
- A device that has successfully completed device registration
- A fresh, successful multi-factor authentication
- A validated PIN that meets the PIN complexity requirements

The remainder of the provisioning includes Windows Hello for Business requesting an asymmetric key pair for the user, preferably from the TPM (or required if explicitly set through policy). Once the key pair is acquired, Windows communicates with Azure Active Directory to register the public key.  When key registration completes, Windows Hello for Business provisioning informs the user they can use their PIN to sign-in.  The user may close the provisioning application and see their desktop.  While the user has completed provisioning, Azure AD Connect synchronizes the user's key to Active Directory.

> [!IMPORTANT]
> The minimum time needed to synchronize the user's public key from Azure Active Directory to the on-premises Active Directory is 30 minutes. The Azure AD Connect scheduler controls the synchronization interval. 
> **This synchronization latency delays the user's ability to authenticate and use on-premises resources until the user's public key has synchronized to Active Directory.** Once synchronized, the user can authenticate and use on-premises resources.
> Read [Azure AD Connect sync: Scheduler](/azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler) to view and adjust the **synchronization cycle** for your organization.