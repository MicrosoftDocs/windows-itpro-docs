---
title: Configure Windows Hello for Business Policy settings in an on-premises certificate trust
description: Configure Windows Hello for Business Policy settings for Windows Hello for Business in an on-premises certificate trust scenario
ms.date: 12/15/2023
ms.topic: tutorial
---
# Configure Windows Hello for Business group policy settings - on-premises certificate Trust

[!INCLUDE [hello-on-premises-cert-trust](./includes/hello-on-premises-cert-trust.md)]

On-premises certificate-based deployments of Windows Hello for Business need three Group Policy settings:

- Enable Windows Hello for Business
- Use certificate for on-premises authentication
- Enable automatic enrollment of certificates

## Enable Windows Hello for Business group policy setting

The group policy setting determines whether users are allowed, and prompted, to enroll for Windows Hello for Business. It can be configured for computers or users.

If you configure the group policy for computers, all users that sign-in to those computers will be allowed and prompted to enroll for Windows Hello for Business. If you configure the group policy for users, only those users will be allowed and prompted to enroll for Windows Hello for Business.

## Use certificate for on-premises authentication group policy setting

The group policy setting determines if the on-premises deployment uses the key-trust or certificate trust on-premises authentication model. You must configure this group policy setting to configure Windows to enroll for a Windows Hello for Business authentication certificate. If you do not configure this policy setting, Windows considers the deployment to use key-trust on-premises authentication.

You can configure this setting for computer or users. Deploying this setting to computers results in *all* users requesting a Windows Hello for Business authentication certificate. Deploying this policy setting to a user results in only that user requesting a Windows Hello for Business authentication certificate. Additionally, you can deploy the policy setting to a group of users so only those users request a Windows Hello for Business authentication certificate. If both user and computer policy settings are deployed, the user policy setting has precedence.

## Enable automatic enrollment of certificates group policy setting

Windows Hello for Business provisioning performs the initial enrollment of the Windows Hello for Business authentication certificate. This certificate expires based on the duration configured in the Windows Hello for Business authentication certificate template. The process requires no user interaction provided the user signs-in using Windows Hello for Business. The certificate is renewed in the background before it expires.

## Create the GPO

Sign in to a domain controller or management workstations with *Domain Administrator* equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Right-click **Group Policy object** and select **New**
1. Type *Enable Windows Hello for Business* in the name box and select **OK**
1. In the content pane, right-click the **Enable Windows Hello for Business** Group Policy object and select **Edit**
1. In the navigation pane, select **User Configuration > Policies > Administrative Templates > Windows Component > Windows Hello for Business**
1. In the content pane, double-click **Use Windows Hello for Business**. Select **Enable** and **OK**
1. Select **Use certificate for on-premises authentication > Enable > OK**
1. In the navigation pane, expand **Policies > User Configuration**
1. Expand **Windows Settings > Security Settings > Public Key Policies**
1. In the details pane, right-click **Certificate Services Client - Auto-Enrollment** and select **Properties**
1. Select **Enabled** from the **Configuration Model** list
1. Select the **Renew expired certificates**, **update pending certificates**, and **remove revoked certificates** check box
1. Select the **Update certificates that use certificate templates** check box
1. Select **OK** and close the **Group Policy Management Editor**.

## Configure security in the Windows Hello for Business GPO

The best way to deploy the Windows Hello for Business Group Policy object is to use security group filtering. The enables you to easily manage the users that should receive Windows Hello for Business by simply adding them to a group. This enables you to deploy Windows Hello for Business in phases.

Sign in to a domain controller or management workstations with *Domain Administrator* equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane
1. Double-click the **Enable Windows Hello for Business** Group Policy object
1. In the **Security Filtering** section of the content pane, select **Add**.  Type *Windows Hello for Business Users* or the name of the security group you previously created and select **OK**
1. Select the **Delegation** tab. Select **Authenticated Users** and **Advanced**
1. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Select **OK**

## Deploy the Windows Hello for Business Group Policy object

The application of the Windows Hello for Business Group Policy object uses security group filtering. This solution enables you to link the Group Policy object at the domain level, ensuring the GPO is within scope to all users. However, the security group filtering ensures that only the users included in the *Windows Hello for Business Users* global group receive and apply the Group Policy object, which results in the provisioning of Windows Hello for Business.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and select **Link an existing GPO…**
1. In the **Select GPO** dialog box, select **Enable Windows Hello for Business** or the name of the Windows Hello for Business Group Policy object you previously created and select **OK**

## Other Related Group Policy settings

There are other Windows Hello for Business policy settings you can configure to manage your Windows Hello for Business deployment.  These policy settings are computer-based policy setting; so they are applicable to any user that sign-in from a computer with these policy settings. 

### Use a hardware security device

The default configuration for Windows Hello for Business is to prefer hardware protected credentials; however, not all computers are able to create hardware protected credentials. When Windows Hello for Business enrollment encounters a computer that cannot create a hardware protected credential, it will create a software-based credential.

You can enable and deploy the **Use a hardware security device** Group Policy Setting to force Windows Hello for Business to only create hardware protected credentials. Users that sign-in from a computer incapable of creating a hardware protected credential do not enroll for Windows Hello for Business.

Another policy setting becomes available when you enable the **Use a hardware security device** Group Policy setting that enables you to prevent Windows Hello for Business enrollment from using version 1.2 Trusted Platform Modules (TPM). Version 1.2 TPMs typically perform cryptographic operations slower than version 2.0 TPMs and are more unforgiving during anti-hammering and PIN lockout activities. Some organizations may not want slow sign-in performance and management overhead associated with version 1.2 TPMs. To prevent Windows Hello for Business from using version 1.2 TPMs, select the TPM 1.2 check box after you enable the Use a hardware security device Group Policy object.

### Use biometrics

Windows Hello for Business provides a great user experience when combined with the use of biometrics.  Rather than providing a PIN to sign-in, a user can use a fingerprint or facial recognition to sign-in to Windows, without sacrificing security.  

The default Windows Hello for Business enables users to enroll and use biometrics. However, some organization may want more time before using biometrics and want to disable their use until they are ready. To not allow users to use biometrics, configure the **Use biometrics** Group Policy setting to disabled and apply it to your computers. The policy setting disables all biometrics. Currently, Windows does not provide the ability to set granular policies that enable you to disable specific modalities of biometrics, such as allowing facial recognition, but disallowing fingerprint recognition.

### PIN Complexity

PIN complexity is not specific to Windows Hello for Business. Windows enables users to use PINs outside of Windows Hello for Business. PIN Complexity Group Policy settings apply to all uses of PINs, even when Windows Hello for Business is not deployed.

Windows provides eight PIN Complexity Group Policy settings that give you granular control over PIN creation and management. You can deploy these policy settings to computers, where they affect all users creating PINs on that computer; or, you can deploy these settings to users, where they affect those users creating PINs regardless of the computer they use. If you deploy both computer and user PIN complexity Group Policy settings, the user policy settings have precedence over computer policy settings. Also, this conflict resolution is based on the last applied policy. Windows does not merge the policy settings automatically. The policy settings included are:

- Require digits
- Require lowercase letters
- Maximum PIN length
- Minimum PIN length
- Expiration
- History
- Require special characters
- Require uppercase letters

The settings can be found in *Administrative Templates\System\PIN Complexity*, under both the Computer and User Configuration nodes of the Group Policy editor.

## Review to validate the configuration

Before you continue with the deployment, validate your deployment progress by reviewing the following items:

> [!div class="checklist"]
> - Confirm you configured the Enable Windows Hello for Business to the scope that matches your deployment (Computer vs. User)
> - Confirm you configure the Use Certificate enrollment for on-premises authentication policy setting
> - Confirm you configured the proper security settings for the Group Policy object
> - Confirm you removed the allow permission for Apply Group Policy for Domain Users (Domain Users must always have the read permissions)
> - Confirm you added the Windows Hello for Business Users group to the Group Policy object, and gave the group the allow permission to Apply Group Policy
> - Linked the Group Policy object to the correct locations within Active Directory
> - Deployed any additional Windows Hello for Business Group Policy settings

## Add users to the Windows Hello for Business Users group

Users must receive the Windows Hello for Business group policy settings and have the proper permission to enroll for the Windows Hello for Business Authentication certificate. You can provide users with these settings and permissions by adding the group used synchronize users to the *Windows Hello for Business Users* group. Users and groups that are not members of this group will not attempt to enroll for Windows Hello for Business.