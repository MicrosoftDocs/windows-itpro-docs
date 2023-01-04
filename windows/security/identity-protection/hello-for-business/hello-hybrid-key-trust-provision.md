---
title: Windows Hello for Business hybrid key trust clients configuration and enrollment
description: Learn how to configure devices and enroll them in Windows Hello for Business in a hybrid key trust scenario.
ms.date: 01/03/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
ms.topic: tutorial
---

# Configure and provision Windows Hello for Business - hybrid key trust

[!INCLUDE [hello-hybrid-key-trust](./includes/hello-hybrid-key-trust.md)]

After the prerequisites are met and the PKI configuration is validated, Windows Hello for business must be enabled on the Windows devices. Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).

### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune**](#tab/intune)

For Azure AD joined devices and hybrid Azure AD joined devices enrolled in Intune, you can use Intune policies to manage Windows Hello for Business.

There are different ways to enable and configure Windows Hello for Business in Intune:

- Using a policy applied at the tenant level. Note that this policy:
  - Is only applied at enrollment time, and any changes to its configuration won't apply to devices already enrolled in Intune
  - It applies to *all devices* getting enrolled in Intune. For this reason, the policy is usually kept disabled and Windows Hello for Business is enabled using a policy targeted to a security group
- A device configuration policy that is applied *after* device enrollment. Any changes to the policy will be applied to the devices during regular policy refresh intervals. There are different policy types to chose from:
  - [Settings catalog](/mem/intune/configuration/settings-catalog)
  - [Security baselines](/mem/intune/protect/security-baselines)
  - [Custom policy](/mem/intune/configuration/custom-settings-configure), via the [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp)
  - [Account protection policy](/mem/intune/protect/endpoint-security-account-protection-policy)
  - [Identity protection policy template](/mem/intune/protect/identity-protection-configure)

### Verify the tenant-wide policy

To check the Windows Hello for Business policy applied at enrollment time:

1. Sign in to the <a href="https://endpoint.microsoft.com/" target="_blank"><b>Microsoft Endpoint Manager admin center</b></a>
1. Select **Devices** > **Windows** > **Windows Enrollment**
1. Select **Windows Hello for Business**
1. Verify the status of **Configure Windows Hello for Business** and any settings that may be configured

:::image type="content" source="images/whfb-intune-disable.png" alt-text="Disablement of Windows Hello for Business from Microsoft Endpoint Manager admin center." border="true" lightbox="images/whfb-intune-disable.png":::

If the tenant-wide policy is enabled and configured to your needs, you can skip to [Provision Windows Hello for Business](#provision-windows-hello-for-business). Otherwise, follow the instructions below to create a policy using an *account protection* policy.

### Enable and configure Windows Hello for Business

To configure Windows Hello for Business using an *account protection* policy:

1. Go to the <a href="https://go.microsoft.com/fwlink/?linkid=2109431" target="_blank"><b>Microsoft Endpoint Manager admin center</b></a>
1. Select **Endpoint security** > **Account protection**
1. Select **+ Create Policy**
1. For *Platform**, select **Windows 10 and later** and for *Profile* select **Account protection**
1. Select **Create**
1. Specify a **Name** and, optionally, a **Description** > **Next**
1. Under *Block Windows Hello for Business*, select **Disabled** and multiple policies become available
    - These policies are optional to configure, but it's recommended to configure *Enable to use a Trusted Platform Module (TPM)* to **Yes**
    - For more information about these policies, see [TBD](tbd)
1. Select **Next**
1. Optionally, add *scope tags* > **Next**
1. Assign the policy to a security group that contains as members the devices or users that you want to configure > **Next**
1. Review the policy configuration and select **Create**

:::image type="content" source="images/whfb-intune-account-protection-enable.png" alt-text="Enablement of Windows Hello for Business from Microsoft Endpoint Manager admin center using an account protection policy." border="true" lightbox="images/whfb-intune-account-protection-enable.png":::

### [:::image type="icon" source="../../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

For hybrid Azure AD joined devices, you can use group policies to configure Windows Hello for Business.
It is suggested to create a security group (for example, *Windows Hello for Business Users*) to make it easy to deploy Windows Hello for Business in phases. You assign Group Policy permissions to this group to simplify the deployment by adding the users to the group.

### Windows Hello for Business Group Policy

The Windows Hello for Business Group Policy object delivers the correct Group Policy settings to the user, which enables them to enroll and use Windows Hello for Business to authenticate to Azure and Active Directory

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more details about policy conflicts, see [Policy conflicts from multiple policy sources](./hello-manage-in-organization.md#policy-conflicts-from-multiple-policy-sources)

The *Enable Windows Hello for Business* group policy setting is the configuration needed for Windows to determine if a user should attempt to enroll for Windows Hello for Business. A user will only attempt enrollment if this policy setting is configured to enabled.\
You can configure the *Enable Windows Hello for Business* setting for computer or users:

- Deploying this policy setting to computers (or group of computers) results in all users that sign-in that computer to attempt a Windows Hello for Business enrollment
- Deploying this policy setting to a user (or group of users), results in only that user attempting a Windows Hello for Business enrollment

If both user and computer policy settings are deployed, the user policy setting has precedence.

### Enable and configure Windows Hello for Business

Sign-in a domain controller or management workstations with *Domain Admin* equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Right-click **Group Policy object** and select **New**
1. Type *Enable Windows Hello for Business* in the name box and select **OK**
1. In the content pane, right-click the **Enable Windows Hello for Business** group policy object and select **Edit**
1. In the navigation pane, expand **Policies** under **User Configuration**
1. Expand **Administrative Templates > Windows Component**, and select **Windows Hello for Business**
1. In the content pane, open **Use Windows Hello for Business**. Select **Enable > OK**
1. Close the **Group Policy Management Editor**

### Configure security for GPO

The best way to deploy the Windows Hello for Business GPO is to use security group filtering. Only members of the targeted security group will provision Windows Hello for Business, enabling a phased rollout.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Open the **Enable Windows Hello for Business** GPO
1. In the **Security Filtering** section of the content pane, select **Add**.  Type the name of the security group you previously created (for example, *Windows Hello for Business Users*) and select **OK**
1. Select the **Delegation** tab. Select **Authenticated Users > Advanced**
1. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Select **OK**

### Deploy the Windows Hello for Business Group Policy object

The application of the Windows Hello for Business Group Policy object uses security group filtering. This enables you to link the Group Policy object at the domain, ensuring the Group Policy object is within scope to all users. However, the security group filtering ensures only the members of the *Windows Hello for Business Users* global group receive and apply the Group Policy object, which results in the provisioning of Windows Hello for Business.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and select **Link an existing GPO**
1. In the **Select GPO** dialog box, select *Enable Windows Hello for Business* or the name of the Windows Hello for Business Group Policy object you previously created and select **OK**

### Add members to the targeted group

Users (or devices) must receive the Windows Hello for Business group policy settings and have the proper permission to provision  Windows Hello for Business. You can provide users with these settings and permissions by adding members to the *Windows Hello for Business Users* group. Users and groups who are not members of this group will not attempt to enroll for Windows Hello for Business.

---

## Provision Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after the user profile is loaded and before the user receives their desktop. For the provisioning process to begin, all prerequisite checks must pass.

You can determine the status of the prerequisite checks by viewing the **User Device Registration** admin log under **Applications and Services Logs > Microsoft > Windows**.\
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
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler


<!---


#### Other Related Group Policy settings

#### Windows Hello for Business

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
--->