---
title: Windows Hello for Business hybrid certificate trust clients configuration and enrollment
description: Learn how to configure devices and enroll them in Windows Hello for Business in a hybrid certificate trust scenario.
ms.date: 01/03/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
ms.topic: tutorial
---

# Configure and provision Windows Hello for Business - hybrid certificate trust

[!INCLUDE [hello-hybrid-certificate-trust](./includes/hello-hybrid-cert-trust.md)]

## Policy Configuration

After the prerequisites are met and the PKI and AD FS configurations are validated, Windows Hello for business must be enabled on the Windows devices. Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).


### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune**](#tab/intune)

For Azure AD joined devices and hybrid Azure AD joined devices enrolled in Intune, you can use Intune policies to manage Windows Hello for Business.

There are different ways to enable Windows Hello for Business via Intune:

- Using a policy applied at the tenant level. Note that this policy:
  - is only applied at enrollment time, and any changes to its configuration won't apply to devices already enrolled in Intune
  - it applies to *all devices* getting enrolled in Intune. For this reason, the policy is usually kept disabled and Windows Hello for Business is enabled using a policy targeted to a security group
- A device configuration policy that is applied *after* device enrollment. Any changes to the policy will be applied to the devices during regular policy refresh. There are different policy types to chose from:
  - settings catalog
  - [security baselines](/mem/intune/protect/security-baselines)
  - custom policy, via the PassportForWork CSP
  - [account protection policy](/mem/intune/protect/endpoint-security-account-protection-policy)
  - identity protection policy template

### Verify the tenant-wide policy

To check the Windows Hello for Business policy applied at enrollment time:

1. Sign in to the <a href="https://endpoint.microsoft.com/" target="_blank"><b>Microsoft Endpoint Manager admin center</b></a>
1. Select **Devices** > **Windows** > **Windows Enrollment**
1. Select **Windows Hello for Business**
1. Verify the status of **Configure Windows Hello for Business** and any settings that may be configured

:::image type="content" source="images/whfb-intune-disable.png" alt-text="Disablement of Windows Hello for Business from Microsoft Endpoint Manager admin center." border="true" lightbox="images/whfb-intune-disable.png":::

If the tenant-wide policy is enabled, you can skip to [Provision Windows Hello for Business](#provision-windows-hello-for-business). Otherwise, follow the instructions below to create a policy.

### Enable Windows Hello for Business with a settings catalog policy

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** > **Windows** > **Configuration Profiles** > **Create profile**.
1. For Platform, select **Windows 10 and later**.
1. For Profile Type, select **Templates** and select the **Identity Protection** Template.
1. Name the profile with a familiar name. For example, "Windows Hello for Business".
1. In **Configurations settings**, set the **Configure Windows Hello for Business** option to **Enable**.
1. After setting Configure Windows Hello for Business to Enable, multiple policy options become available. These policies are optional to configure. More information on these policies is available in our documentation on managing [Windows Hello for Business in your organization](hello-manage-in-organization.md#mdm-policy-settings-for-windows-hello-for-business). We recommend setting **Use a Trusted Platform Module (TPM)** to **Enable**.

    [![Intune custom device configuration policy creation](./images/hello-intune-enable.png)](./images/hello-intune-enable-large.png#lightbox)

Assign the policy to a security group that contains as members the devices or users that you want to configure.

Windows Hello for Business settings are also available in the settings catalog. For more information, see [Use the settings catalog to configure settings on Windows devices](/mem/intune/configuration/settings-catalog).

### [:::image type="icon" source="../../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

For hybrid Azure AD joined devices, you can use group policies to configure Windows Hello for Business.
It is suggested to create a security group (for example, *Windows Hello for Business Users*) to make it easy to deploy Windows Hello for Business in phases. You assign the **Group Policy** and **Certificate template** permissions to this group to simplify the deployment by adding the users to the group. This provides users with the proper permissions to provision Windows Hello for Business and to enroll in the Windows Hello for Business authentication certificate.

#### Create the Windows Hello for Business Users Security Group


Domain controllers of Windows Hello for Business deployments need one Group Policy setting, which enables automatic certificate enrollment for the newly create domain controller authentication certificate. This policy setting ensures domain controllers (new and existing) automatically request and renew the correct domain controller certificate.  

Domain joined clients of hybrid certificate-based deployments of Windows Hello for Business needs three Group Policy settings:

- Enable Windows Hello for Business
- Use certificate for on-premises authentication
- Enable automatic enrollment of certificates

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
10. Click **OK**. Close the **Group Policy Management Editor**.

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

Another policy setting becomes available when you enable the **Use a hardware security device** Group Policy setting that enables you to prevent Windows Hello for Business enrollment from using version 1.2 Trusted Platform Modules (TPM). Version 1.2 TPMs typically perform cryptographic operations slower than version 2.0 TPMs and are more unforgiving during anti-hammering and PIN lockout activities. Therefore, some organization may not want slow sign-in performance and management overhead associated with version 1.2 TPMs. To prevent Windows Hello for Business from using version 1.2 TPMs, simply select the TPM 1.2 check box after you enable the Use a hardware security device Group Policy object.

#### Use biometrics

Windows Hello for Business provides a great user experience when combined with the use of biometrics.  Rather than providing a PIN to sign-in, a user can use a fingerprint or facial recognition to sign-in to Windows, without sacrificing security.  

The default Windows Hello for Business enables users to enroll and use biometrics. However, some organization may want more time before using biometrics and want to disable their use until they are ready. To not allow users to use biometrics, configure the **Use biometrics** Group Policy setting to disabled and apply it to your computers.  The policy setting disabled all biometrics. Currently, Windows does not provide granular policy setting that enable you to disable specific modalities of biometrics such as allow facial recognition, but disallow fingerprint.

### PIN Complexity

PIN complexity is not specific to Windows Hello for Business. Windows enables users to use PINs outside of Windows Hello for Business. PIN Complexity Group Policy settings apply to all uses of PINs, even when Windows Hello for Business is not deployed. 

Windows provides eight PIN Complexity Group Policy settings that give you granular control over PIN creation and management. You can deploy these policy settings to computers, where they affect all users creating PINs on that computer; or, you can deploy these settings to users, where they affect those users creating PINs regardless of the computer they use.  If you deploy both computer and user PIN complexity Group Policy settings, the user policy settings have precedence over computer policy settings. Also, this conflict resolution is based on the last applied policy. Windows does not merge the policy settings automatically; however, you can deploy Group Policy to provide to accomplish a variety of configurations.  The policy settings included are:
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

---


## Provision Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after the user profile is loaded and before the user receives their desktop. For the provisioning process to begin, all prerequisite checks must pass.

You can determine the status of the prerequisite checks by viewing the **User Device Registration** admin log under **Applications and Services Logs > Microsoft > **Windows**.\
This information is also available using the `dsregcmd /status` command from a console. For more information, see [dsregcmd][AZ-4].

:::image type="content" source="images/Event358.png" alt-text="Details about event ID 358 showing that the device is ready to enroll in in Windows Hello for Business." border="false" lightbox="images/Event358.png"::::::

### PIN Setup

This is the process that occurs after a user signs in, to enroll in Windows Hello for Business:

1. The user is prompted with a full screen page to use Windows Hello with the organization account. The user selects **OK**
1. The provisioning flow proceeds to the multi-factor authentication portion of the enrollment. Provisioning informs the user that it's actively attempting to contact the user through their configured form of MFA. The provisioning process doesn't proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry
1. After a successful MFA, the provisioning flow asks the user to create and validate a PIN. This PIN must observe any PIN complexity policies configured on the device
1. The remainder of the provisioning includes Windows Hello for Business requesting an asymmetric key pair for the user, preferably from the TPM (or required if explicitly set through policy). Once the key pair is acquired, Windows communicates with Azure Active Directory to register the public key. When key registration completes, Windows Hello for Business provisioning informs the user they can use their PIN to sign-in. The user may close the provisioning application and see their desktop. While the user has completed provisioning, Azure AD Connect synchronizes the user's key to Active Directory

:::image type="content" source="images/haadj-whfb-pin-provisioning.gif" alt-text="Animation showing a user logging on to an HAADJ device with a password, and being prompted to enroll in Windows Hello for Business.":::

> [!IMPORTANT]
> The following is the enrollment behavior prior to Windows Server 2016 update [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889).
> 
> The minimum time needed to synchronize the user's public key from Azure Active Directory to the on-premises Active Directory is 30 minutes. The Azure AD Connect scheduler controls the synchronization interval. 
> **This synchronization latency delays the user's ability to authenticate and use on-premises resources until the user's public key has synchronized to Active Directory.** Once synchronized, the user can authenticate and use on-premises resources.
> Read [Azure AD Connect sync: Scheduler](/azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler) to view and adjust the **synchronization cycle** for your organization.
>
> [!NOTE]
> Windows Server 2016 update [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889) provides synchronous certificate enrollment during hybrid certificate trust provisioning.  With this update, users no longer need to wait for Azure AD Connect to sync their  public key on-premises.  Users enroll their certificate during provisioning and can use the certificate for sign-in immediately after completing the provisioning. The update needs to be installed on the federation servers.

After a successful key registration, Windows creates a certificate request using the same key pair to request a certificate.  Windows send the certificate request to the AD FS server for certificate enrollment.

The AD FS registration authority verifies the key used in the certificate request matches the key that was previously registered. On a successful match, the AD FS registration authority signs the certificate request using its enrollment agent certificate and sends it to the certificate authority.

> [!NOTE]
> In order for AD FS to verify the key used in the certificate request, it needs to be able to access the ```https://enterpriseregistration.windows.net``` endpoint.

The certificate authority validates the certificate was signed by the registration authority. On successful validation of the signature, it issues a certificate based on the request and returns the certificate to the AD FS registration authority.  The registration authority returns the certificate to Windows where it then installs the certificate in the current user's certificate store.  Once this process completes, the Windows Hello for Business provisioning workflow informs the user that they can use their PIN to sign-in through the Windows Action Center.
