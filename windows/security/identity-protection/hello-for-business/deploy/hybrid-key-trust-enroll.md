---
title: Windows Hello for Business hybrid key trust clients configuration and enrollment
description: Learn how to configure devices and enroll them in Windows Hello for Business in a hybrid key trust scenario.
ms.date: 01/03/2023
ms.topic: tutorial
---

# Configure and enroll in Windows Hello for Business - hybrid key trust

[!INCLUDE [apply-to-hybrid-key-trust](includes/apply-to-hybrid-key-trust.md)]

After the prerequisites are met and the PKI configuration is validated, Windows Hello for business must be enabled on the Windows devices. Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).

# [:::image type="icon" source="images/intune.svg"::: **Intune**](#tab/intune)

Review the article [Configure Windows Hello for Business using Microsoft Intune](../configure.md#configure-windows-hello-for-business-using-microsoft-intune) to learn about the different options offered by Microsoft Intune to configure Windows Hello for Business.

If the Intune tenant-wide policy is enabled and configured to your needs, you can skip to [Configure cloud Kerberos trust policy](#configure-the-cloud-kerberos-trust-policy). Otherwise, follow the instructions below to enable Windows Hello for Business a policy using an *account protection* policy.

## Enable Windows Hello for Business

To configure Windows Hello for Business using an account protection policy:

1. Sign in to the <a href="https://intune.microsoft.com" target="_blank"><b>Microsoft Intune admin center</b></a>
1. Select **Endpoint security** > **Account protection**
1. Select **+ Create Policy**
1. For **Platform**, select **Windows 10 and later** and for **Profile** select **Account protection**
1. Select **Create**
1. Specify a **Name** and, optionally, a **Description** > **Next**
1. Under **Block Windows Hello for Business**, select **Disabled** and multiple policies become available
    - These policies are optional to configure, but it's recommended to configure **Enable to use a Trusted Platform Module (TPM)** to **Yes**
    - For more information about these policies, see [Windows Hello for Business policy settings](../policy-settings)
1. Under **Enable to certificate for on-premises resources**, select **Not configured**
1. Select **Next**
1. Optionally, add **scope tags** and select **Next**
1. Assign the policy to a security group that contains as members the devices or users that you want to configure > **Next**
1. Review the policy configuration and select **Create**

> [!TIP]
> If you want to enforce the use of digits for your Windows Hello for Business PIN, use the settings catalog and choose **Digits** or **Digits (User)** instead of using the Account protection template.

:::image type="content" source="images/whfb-intune-account-protection-enable.png" alt-text="Screenshot of the enablement of Windows Hello for Business from Microsoft Intune admin center using an account protection policy." lightbox="images/whfb-intune-account-protection-enable.png":::

Assign the policy to a security group that contains as members the devices or users that you want to configure.

# [:::image type="icon" source="images/group-policy.svg"::: **GPO**](#tab/gpo)

For Microsoft Entra hybrid joined devices, you can use group policies to configure Windows Hello for Business.
It's suggested to create a security group (for example, *Windows Hello for Business Users*) to make it easy to deploy Windows Hello for Business in phases. You assign **Group Policy permissions** to this group to simplify the deployment by adding the users to the group.

The Windows Hello for Business Group Policy object delivers the correct Group Policy settings to the user, which enables them to enroll and use Windows Hello for Business to authenticate to Azure and Active Directory

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more information about policy conflicts, see [Policy conflicts from multiple policy sources](../configure.md#policy-conflicts-from-multiple-policy-sources)

### Enable Windows Hello for Business group policy setting

The *Enable Windows Hello for Business* group policy setting is the configuration needed for Windows to determine if a user should attempt to enroll for Windows Hello for Business. A user will only attempt enrollment if this policy setting is configured to **enabled**.\
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

> [!NOTE]
> Windows Hello for Business can be configured using different policies. These policies are optional to configure, but it's recommended to enable *Use a hardware security device*.
>
> For more information about these policies, see [Configure Windows Hello for Business](../configure.md).

### Configure security for GPO

The best way to deploy the Windows Hello for Business GPO is to use security group filtering. Only members of the targeted security group will provision Windows Hello for Business, enabling a phased rollout.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Open the **Enable Windows Hello for Business** GPO
1. In the **Security Filtering** section of the content pane, select **Add**.  Type the name of the security group you previously created (for example, *Windows Hello for Business Users*) and select **OK**
1. Select the **Delegation** tab. Select **Authenticated Users > Advanced**
1. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Select **OK**

### Deploy the Windows Hello for Business Group Policy object

The application of Group Policy object uses security group filtering. This solution allows linking the GPO to the domain, ensuring the GPO is scoped to all users. The security group filtering ensures that only the members of the *Windows Hello for Business Users* global group receive and apply the GPO, which results in the provisioning of Windows Hello for Business.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and select **Link an existing GPO**
1. In the **Select GPO** dialog box, select *Enable Windows Hello for Business* or the name of the Windows Hello for Business Group Policy object you previously created and select **OK**

### Add members to the targeted group

Users (or devices) must receive the Windows Hello for Business group policy settings and have the proper permission to provision  Windows Hello for Business. You can provide users with these settings and permissions by adding members to the *Windows Hello for Business Users* group. Users and groups who aren't members of this group won't attempt to enroll for Windows Hello for Business.

---

## Enroll in Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after the user profile is loaded and before the user receives their desktop. For the provisioning process to begin, all prerequisite checks must pass.

You can determine the status of the prerequisite checks by viewing the **User Device Registration** admin log under **Applications and Services Logs > Microsoft > Windows**.\
This information is also available using the `dsregcmd /status` command from a console. For more information, see [dsregcmd][AZ-4].

:::image type="content" source="images/Event358.png" alt-text="Details about event ID 358 showing that the device is ready to enroll in Windows Hello for Business." border="false" lightbox="images/Event358.png":::

### User experience

After a user signs in, the Windows Hello for Business enrollment process begins:

1. If the device supports biometric authentication, the user is prompted to set up a biometric gesture. This gesture can be used to unlock the device and authenticate to resources that require Windows Hello for Business. The user can skip this step if they don't want to set up a biometric gesture
1. The user is prompted to use Windows Hello with the organization account. The user selects **OK**
1. The provisioning flow proceeds to the multi-factor authentication portion of the enrollment. Provisioning informs the user that it's actively attempting to contact the user through their configured form of MFA. The provisioning process doesn't proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry
1. After a successful MFA, the provisioning flow asks the user to create and validate a PIN. This PIN must observe any PIN complexity policies configured on the device
1. The remainder of the provisioning includes Windows Hello for Business requesting an asymmetric key pair for the user, preferably from the TPM (or required if explicitly set through policy). Once the key pair is acquired, Windows communicates with Microsoft Entra ID to register the public key. When key registration completes, Windows Hello for Business provisioning informs the user they can use their PIN to sign-in. The user may close the provisioning application and access their desktop

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7 alt-text="Video showing the Windows Hello for Business enrollment steps after signing in with a password."]

While the user has completed provisioning, Microsoft Entra Connect synchronizes the user's key from Microsoft Entra ID to Active Directory.

> [!IMPORTANT]
> The minimum time needed to synchronize the user's public key from Microsoft Entra ID to the on-premises Active Directory is 30 minutes. The Microsoft Entra Connect scheduler controls the synchronization interval.
> **This synchronization latency delays the user's ability to authenticate and use on-premises resources until the user's public key has synchronized to Active Directory.** Once synchronized, the user can authenticate and access on-premises resources.
> Read [Microsoft Entra Connect Sync: Scheduler][AZ-5] to view and adjust the **synchronization cycle** for your organization.

<!--links-->
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler
