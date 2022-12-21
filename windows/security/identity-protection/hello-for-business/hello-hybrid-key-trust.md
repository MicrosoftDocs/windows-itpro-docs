---
title: Windows Hello for Business hybrid key trust deployment
description: Learn how to deploy Windows Hello for Business in a hybrid key trust scenario.
ms.date: 12/20/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: how-to
---
# Hybrid key trust deployment

[!INCLUDE [hello-hybrid-key-trust](../../includes/hello-hybrid-key-trust.md)]

Windows Hello for Business replaces password sign-in with strong authentication, using an asymmetric key pair. This deployment guide provides the information to deploy Windows Hello for Business in a hybrid key trust trust scenario.

Hybrid environments are distributed systems that enable organizations to use on-premises and Azure AD-based identities and resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication and single sign-on to modern resources.

> [!IMPORTANT]
> Windows Hello for Business *cloud Kerberos trust* is the recommended deployment model when compared to the *key trust model*. It is also the preferred deployment model if you do not need to support certificate authentication scenarios. For more information see [cloud Kerberos trust deployment](hello-hybrid-cloud-kerberos-trust.md).

## Prerequisites

Review the following section to ensure that you have the required prerequisites for a hybrid key trust deployment.

### Directories and directory synchronization

Hybrid Windows Hello for Business needs two directories:

- an on-premises Active Directory
- an Azure Active Directory tenant

The two directories must be synchronized. You need [Azure AD Connect Sync][AZ-1] to synchronize user accounts from the on-premises Active Directory to Azure AD.\
During the Window Hello for Business provisioning process, users register the public portion of their Windows Hello for Business credential with Azure AD. *Azure AD Connect Sync* synchronizes the Windows Hello for Business public key to Active Directory.

> [!NOTE]
> Windows Hello for Business Hybrid key trust is not supported if the users' on-premises domain cannot be added as a verified domain in Azure AD.

Ensure that you have [adequate Domain Controllers](/windows/security/identity-protection/hello-for-business/hello-adequate-domain-controllers) in each Active Directory site where users will be authenticating with Windows Hello for Business.

### Authentication to Azure AD

Authentication to Azure AD can be configured with or without federation:

- for non-federated environments, you must deploy [password hash synchronization](/azure/active-directory/hybrid/whatis-phs) or [Azure Active Directory Pass-through-Authentication](/azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication)</li><li>
- for federated environments, you use Active Directory Federation Services (AD FS) or third-party federation services

### Device registration

The Windows client devices where Windows Hello for Business will be provisioned, must be registered in Azure AD. This ensures that only approved computers are used with that Azure AD tenant. You can *Azure AD join* or *hybrid Azure AD join* to register devices to Azure AD. For *hybrid Azure AD join* devices, review the guidance on the [Plan your hybrid Azure Active Directory join implementation](/azure/active-directory/devices/hybrid-azuread-join-plan) page.

### Public Key Infrastructure

An enterprise PKI is required as *trust anchor* for authentication. Domain controllers require a certificate for Windows clients to trust them.

### Multi-factor authentication

The Windows Hello for Business provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but requires a second factor of authentication.\
Hybrid deployments can use:
- [Azure AD Multi-Factor Authentication](/azure/multi-factor-authentication/multi-factor-authentication)
- A multi-factor authentication provided by AD FS, which includes an adapter model that enables third parties to integrate their MFA into AD FS

Review the [Configure Azure AD Multi-Factor Authentication settings](/azure/multi-factor-authentication/multi-factor-authentication-whats-next) section to configure your settings.After you have completed configuring your Azure MFA settings, you want to review [How to require two-step verification for a user](/azure/multi-factor-authentication/multi-factor-authentication-get-started-user-states) to understand user states. User states determine how you enable Azure MFA for your users.Alternatively, you can configure Windows Server 2016 Active Directory Federation Services (AD FS) to provide additional multi-factor authentication. To configure, read the [Configure AD FS 2016 and Azure MFA](/windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa) section.|
| Device management | Devices can be configured with group polices or through mobile device management (MDM) policies|

## Deployment steps

Once the prerequisites listed in the table above are met, deploying Windows Hello for Business with a hybrid key trust model consists of the following steps:

- Validate and configure a PKI
- Configure Windows Hello for Business settings
- Provision Windows Hello for Business



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

## Windows Hello for Business Group Policy

The Windows Hello for Business Group Policy object delivers the correct Group Policy settings to the user, which enables them to enroll and use Windows Hello for Business to authenticate to Azure and Active Directory

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Microsoft Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more details about deploying Windows Hello for Business configuration using Microsoft Intune, see [Windows device settings to enable Windows Hello for Business in Intune](/mem/intune/protect/identity-protection-windows-settings) and [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp). For more details about policy conflicts, see [Policy conflicts from multiple policy sources](./hello-manage-in-organization.md#policy-conflicts-from-multiple-policy-sources)

### Enable Windows Hello for Business

The Enable Windows Hello for Business Group Policy setting is the configuration needed for Windows to determine if a user should attempt to enroll for Windows Hello for Business.  A user will only attempt enrollment if this policy setting is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computer or users. Deploying this policy setting to computers results in ALL users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment.  Additionally, you can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

### Create the Windows Hello for Business Group Policy object

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

### Configure Security in the Windows Hello for Business Group Policy object

The best way to deploy the Windows Hello for Business Group Policy object is to use security group filtering. The enables you to easily manage the users that should receive Windows Hello for Business by simply adding them to a group. This enables you to deploy Windows Hello for Business in phases.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Double-click the **Enable Windows Hello for Business** Group Policy object.
4. In the **Security Filtering** section of the content pane, click **Add**.  Type *Windows Hello for Business Users* or the name of the security group you previously created and click **OK**.
5. Click the **Delegation** tab. Select **Authenticated Users** and click **Advanced**.
6. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Click **OK**.

### Deploy the Windows Hello for Business Group Policy object

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

## Provision Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after the user profile is loaded and before the user receives their desktop. For the provisioning process to begin, all prerequisite checks must pass.

You can determine the status of the prerequisite checks by viewing the **User Device Registration** admin log under **Applications and Services Logs > Microsoft > **Windows**.\
This information is also available using the `dsregcmd /status` command from a console. For more information, see [dsregcmd][AZ-4].

![Event358.](images/Event358-2.png)

### PIN Setup

This is the process that occurs after a user signs in, to enroll in Windows Hello for Business:

1. The user is prompted with a full screen page to use Windows Hello with the organization account. The user selects **OK**
1. The provisioning flow proceeds to the multi-factor authentication portion of the enrollment. Provisioning informs the user that it's actively attempting to contact the user through their configured form of MFA. The provisioning process doesn't proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry
1. After a successful MFA, the provisioning flow asks the user to create and validate a PIN. This PIN must observe any PIN complexity policies configured on the device
1. The remainder of the provisioning includes Windows Hello for Business requesting an asymmetric key pair for the user, preferably from the TPM (or required if explicitly set through policy). Once the key pair is acquired, Windows communicates with Azure Active Directory to register the public key. When key registration completes, Windows Hello for Business provisioning informs the user they can use their PIN to sign-in. The user may close the provisioning application and see their desktop. While the user has completed provisioning, Azure AD Connect synchronizes the user's key to Active Directory

:::image type="content" source="images/haadj-whfb-pin-provisioning.gif" alt-text="Animation showing a user logging on to an HAADJ device with a password, and being prompted to enroll in Windows Hello for Business.":::

> [!IMPORTANT]
> The minimum time needed to synchronize the user's public key from Azure Active Directory to the on-premises Active Directory is 30 minutes. The Azure AD Connect scheduler controls the synchronization interval.
> **This synchronization latency delays the user's ability to authenticate and use on-premises resources until the user's public key has synchronized to Active Directory.** Once synchronized, the user can authenticate and use on-premises resources.
> Read [Azure AD Connect sync: Scheduler][AZ-5] to view and adjust the **synchronization cycle** for your organization.

<!--links-->
[AZ-1]: /azure/active-directory/hybrid/how-to-connect-sync-whatis
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler