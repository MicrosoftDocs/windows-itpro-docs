---
title: Configuring Hybrid Windows Hello for Business - Group Policy
description: Discussing the configuration of Group Policy in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB
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
# Configure Hybrid Windows Hello for Business: Group Policy

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid deployment
-   Certificate trust


## Policy Configuration

You need a Windows 10, version 1703 workstation to run the Group Policy Management Console, which provides the latest Windows Hello for Business and PIN Complexity Group Policy settings.  To run the Group Policy Management Console, you need to install the Remote Server Administration Tools for Windows 10. You can download these tools from the [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=45520).
Install the Remote Server Administration Tools for Windows 10 on a computer running Windows 10, version 1703.

Alternatively, you can create copy the .ADMX and .ADML files from a Windows 10 Creators Edition (1703) to their respective language folder on a Windows Server or you can create a Group Policy Central Store and copy them their respective language folder. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](https://support.microsoft.com/help/3087759/how-to-create-and-manage-the-central-store-for-group-policy-administrative-templates-in-windows) for more information.

Domain controllers of Windows Hello for Business deployments need one Group Policy setting, which enables automatic certificate enrollment for the newly create domain controller authentication certificate. This policy setting ensures domain controllers (new and existing) automatically request and renew the correct domain controller certificate.  

Domain joined clients of hybrid certificate-based deployments of Windows Hello for Business needs three Group Policy settings:
* Enable Windows Hello for Business
* Use certificate for on-premises authentication
* Enable automatic enrollment of certificates

### Configure Domain Controllers for Automatic Certificate Enrollment

Domain controllers automatically request a certificate from the *Domain Controller* certificate template.  However, the domain controller is unaware of newer certificate templates or superseded configurations on certificate templates.  

To continue automatic enrollment and renewal of domain controller certificates that understand newer certificate template and superseded certificate template configurations, create and configure a Group Policy object for automatic certificate enrollment and link the Group Policy object to the Domain Controllers OU.

#### Create a Domain Controller Automatic Certificate Enrollment Group Policy object

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1.	Start the **Group Policy Management Console** (gpmc.msc)
2.	Expand the domain and select the **Group Policy Object** node in the navigation pane.
3.	Right-click **Group Policy object** and select **New**
4.	Type *Domain Controller Auto Certificate Enrollment* in the name box and click **OK**.
5.	Right-click the **Domain Controller Auto Certificate Enrollment** Group Policy object and click **Edit**.
6.	In the navigation pane, expand **Policies** under **Computer Configuration**.
7.	Expand **Windows Settings**, **Security Settings**, and click **Public Key Policies**.
8.	In the details pane, right-click **Certificate Services Client - Auto-Enrollment** and select **Properties**.
9.	Select **Enabled** from the **Configuration Model** list.
10.	Select the **Renew expired certificates**, **update pending certificates**, and **remove revoked certificates** check box.
11.	Select the **Update certificates that use certificate templates** check box.
12.	Click **OK**. Close the **Group Policy Management Editor**.

#### Deploy the Domain Controller Auto Certificate Enrollment Group Policy Object

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1.	Start the **Group Policy Management Console** (gpmc.msc)
2.	In the navigation pane, expand the domain and expand the node that has your Active Directory domain name.  Right-click the **Domain Controllers** organizational unit and click **Link an existing GPO**
3.	In the **Select GPO** dialog box, select **Domain Controller Auto Certificate Enrollment** or the name of the domain controller certificate enrollment Group Policy object you previously created and click **OK**.

### Windows Hello for Business Group Policy

The Windows Hello for Business Group Policy object delivers the correct Group Policy settings to the user, which enables them to enroll and use Windows Hello for Business to authenticate to Azure and Active Directory

#### Enable Windows Hello for Business

The Enable Windows Hello for Business Group Policy setting is the configuration needed for Windows to determine if a user should be attempt to enroll for Windows Hello for Business.  A user will only attempt enrollment if this policy setting is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computer or users. Deploying this policy setting to computers results in ALL users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment.  Additionally, you can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

#### Use certificate for on-premises authentication

The Use certificate for on-premises authentication Group Policy setting determines if the on-premises deployment uses the key-trust or certificate trust on-premises authentication model.  You must configure this Group Policy setting to configure Windows to enroll for a Windows Hello for Business authentication certificate. If you do not configure this policy setting, Windows considers the deployment to use key-trust on-premises authentication, which requires a sufficient number of Windows Server 2016 domain controllers to handle the Windows Hello for Business key-trust authentication requests.

You can configure this Group Policy setting for computer or users. Deploying this policy setting to computers results in ALL users requesting a Windows Hello for Business authentication certificate.  Deploying this policy setting to a user results in only that user requesting a Windows Hello for Business authentication certificate. Additionally, you can deploy the policy setting to a group of users so only those users request a Windows Hello for Business authentication certificate. If both user and computer policy settings are deployed, the user policy setting has precedence.

#### Enable automatic enrollment of certificates

Windows Hello for Business provisioning performs the initial enrollment of the Windows Hello for Business authentication certificate. This certificate expires based on the duration configured in the Windows Hello for Business authentication certificate template. The Windows 10, version 1703 certificate auto enrollment was updated to renew these certificates before they expire, which significantly reduces user authentication failures from expired user certificates. 

The process requires no user interaction provided the user signs-in using Windows Hello for Business.  The certificate is renewed in the background before it expires.

#### Create the Windows Hello for Business Group Policy object

The Group Policy object contains the policy settings needed to trigger Windows Hello for Business provisioning and to ensure Windows Hello for Business authentication certificates are automatically renewed.

Sign-in a domain controller or management workstations with _Domain Admin_ equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**.
4. Type *Enable Windows Hello for Business* in the name box and click **OK**.
5. In the content pane, right-click the **Enable Windows Hello for Business** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **User Configuration**.
7. Expand **Administrative Templates > Windows Component**, and select **Windows Hello for Business**.
8. In the content pane, double-click **Use Windows Hello for Business**. Click **Enable** and click **OK**.
9. Double-click **Use certificate for on-premises authentication**. Click **Enable** and click **OK**.  Close the **Group Policy Management Editor**.

#### Configure Automatic Certificate Enrollment

1. Start the **Group Policy Management Console** (gpmc.msc).
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click the **Enable Windows Hello for Business** Group Policy object and click **Edit**.
4. In the navigation pane, expand **Policies** under **User Configuration**.
5. Expand **Windows Settings > Security Settings**, and click **Public Key Policies**.
6. In the details pane, right-click **Certificate Services Client - Auto-Enrollment** and select **Properties**.
7. Select **Enabled** from the **Configuration Model** list.
8. Select the **Renew expired certificates**, **update pending certificates**, and **remove revoked certificates** check box.
9. Select the **Update certificates that use certificate templates** check box.
10.	Click **OK**. Close the **Group Policy Management Editor**.

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

Another policy setting becomes available when you enable the **Use a hardware security device** Group Policy setting that enables you to prevent Windows Hello for Business enrollment from using version 1.2 Trusted Platform Modules (TPM). Version 1.2 TPMs typically perform cryptographic operations slower than version 2.0 TPMs and are more unforgiving during anti-hammering and PIN lockout activities. Therefore, some organization may want not want slow sign-in performance and management overhead associated with version 1.2 TPMs. To prevent Windows Hello for Business from using version 1.2 TPMs, simply select the TPM 1.2 check box after you enable the Use a hardware security device Group Policy object.

#### Use biometrics

Windows Hello for Business provides a great user experience when combined with the use of biometrics.  Rather than providing a PIN to sign-in, a user can use a fingerprint or facial recognition to sign-in to Windows, without sacrificing security.  

The default Windows Hello for Business enables users to enroll and use biometrics. However, some organization may want more time before using biometrics and want to disable their use until they are ready. To not allow users to use biometrics, configure the **Use biometrics** Group Policy setting to disabled and apply it to your computers.  The policy setting disabled all biometrics. Currently, Windows does not provide granular policy setting that enable you to disable specific modalities of biometrics such as allow facial recognition, but disallow fingerprint.

### PIN Complexity

PIN complexity is not specific to Windows Hello for Business. Windows 10 enables users to use PINs outside of Windows Hello for Business. PIN Complexity Group Policy settings apply to all uses of PINs, even when Windows Hello for Business is not deployed. 

Windows 10 provides eight PIN Complexity Group Policy settings that give you granular control over PIN creation and management. You can deploy these policy settings to computers, where they affect all users creating PINs on that computer; or, you can deploy these settings to users, where they affect those users creating PINs regardless of the computer they use.  If you deploy both computer and user PIN complexity Group Policy settings, the user policy settings have precedence over computer policy settings. Also, this conflict resolution is based on the last applied policy. Windows does not merge the policy settings automatically; however, you can deploy Group Policy to provide to accomplish a variety of configurations.  The policy settings included are:
* Require digits
* Require lowercase letters
* Maximum PIN length
* Minimum PIN length
* Expiration
* History
* Require special characters
* Require uppercase letters

Starting with Windows 10, version 1703, the PIN complexity Group Policy settings have moved to remove misunderstanding that PIN complexity policy settings were exclusive to Windows Hello for Business. The new location of these Group Policy settings is under **Computer Configuration\Administrative Templates\System\PIN Complexity**  of the Group Policy editor.

## Add users to the Windows Hello for Business Users group

Users must receive the Windows Hello for Business group policy settings and have the proper permission to enroll for the Windows Hello for Business Authentication certificate. You can provide users with these settings and permissions by adding the group used synchronize users to the Windows Hello for Business Users group.   Users and groups who are not members of this group will not attempt to enroll for Windows Hello for Business.

### Section Review
> [!div class="checklist"]
> * Configure domain controllers for automatic certificate enrollment.
> * Create Windows Hello for Business Group Policy object.
> * Enable the Use Windows Hello for Business policy setting.
> * Enable the Use certificate for on-premises authentication policy setting.
> * Enable user automatic certificate enrollment.
> * Add users or groups to the Windows Hello for Business group
> 
> 
> [!div class="nextstepaction"]
> [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business policy settings (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
