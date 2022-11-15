---
title: Configure Windows Hello for Business Policy settings - key trust
description: Configure Windows Hello for Business Policy settings for Windows Hello for Business
ms.prod: windows-client
author: paolomatarazzo
ms.author: paoloma
manager: aaroncz
ms.reviewer: prsriva
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>On-premises deployment</b>
  - ✅ <b>Key trust</b>
ms.technology: itpro-security
---
# Configure Windows Hello for Business Policy settings - Key Trust

You need at least a Windows 10, version 1703 workstation to run the Group Policy Management Console, which provides the latest Windows Hello for Business and PIN Complexity Group Policy settings.  To run the Group Policy Management Console, you need to install the Remote Server Administration Tools for Windows. You can download these tools from [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=45520).
Install the Remote Server Administration Tools for Windows on a computer running Windows 10, version 1703 or later.

Alternatively, you can create a copy of the .ADMX and .ADML files from a Windows 10, version 1703 installation setup template folder to their respective language folder on a Windows Server, or you can create a Group Policy Central Store and copy them their respective language folder. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) for more information.

On-premises certificate-based deployments of Windows Hello for Business needs one Group Policy setting:  Enable Windows Hello for Business

## Enable Windows Hello for Business Group Policy

The Group Policy setting determines whether users are allowed, and prompted, to enroll for Windows Hello for Business. It can be configured for computers or users. 

If you configure the Group Policy for computers, all users that sign-in to those computers will be allowed and prompted to enroll for Windows Hello for Business. If you configure the Group Policy for users, only those users will be allowed and prompted to enroll for Windows Hello for Business. For these settings to be configured using GPO, you need to download and install the latest Administrative Templates (.admx) for Windows.


## Create the Windows Hello for Business Group Policy object

The Group Policy object contains the policy settings needed to trigger Windows Hello for Business provisioning and to ensure Windows Hello for Business authentication certificates are automatically renewed.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**.
4. Type *Enable Windows Hello for Business* in the name box and click **OK**.
5. In the content pane, right-click the **Enable Windows Hello for Business** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **User Configuration**.
7. Expand **Administrative Templates > Windows Component**, and select **Windows Hello for Business**.
8. In the content pane, double-click **Use Windows Hello for Business**. Click **Enable** and click **OK**.
9. Close the **Group Policy Management Editor**.

## Configure Security in the Windows Hello for Business Group Policy object

The best way to deploy the Windows Hello for Business Group Policy object is to use security group filtering. The enables you to easily manage the users that should receive Windows Hello for Business by simply adding them to a group. This enables you to deploy Windows Hello for Business in phases.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Double-click the **Enable Windows Hello for Business** Group Policy object.
4. In the **Security Filtering** section of the content pane, click **Add**.  Type *Windows Hello for Business Users* or the name of the security group you previously created and click **OK**.
5. Click the **Delegation** tab. Select **Authenticated Users** and click **Advanced**.
6. In the **Group or User names** list, select **Authenticated Users**.  In the **Permissions for Authenticated Users** list, clear the **Allow** check box for the **Apply Group Policy** permission. Click **OK**.

## Deploy the Windows Hello for Business Group Policy object

The application of the Windows Hello for Business Group Policy object uses security group filtering.  This enables you to link the Group Policy object at the domain, ensuring the Group Policy object is within scope to all users. However, the security group filtering ensures only the users included in the *Windows Hello for Business Users* global group receive and apply the Group Policy object, which results in the provisioning of Windows Hello for Business.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. In the navigation pane, expand the domain and right-click the node that has your Active Directory domain name and click **Link an existing GPO…**
3. In the **Select GPO** dialog box, select **Enable Windows Hello for Business** or the name of the Windows Hello for Business Group Policy object you previously created and click **OK**.

Just to reassure, linking the **Windows Hello for Business** Group Policy object to the domain ensures the Group Policy object is in scope for all domain users. However, not all users will have the policy settings applied to them. Only users who are members of the Windows Hello for Business group receive the policy settings. All others users ignore the Group Policy object. 

## Other Related Group Policy settings

### Windows Hello for Business

There are other Windows Hello for Business policy settings you can configure to manage your Windows Hello for Business deployment.  These policy settings are computer-based policy setting; so they are applicable to any user that sign-in from a computer with these policy settings. 

### Use a hardware security device

The default configuration for Windows Hello for Business is to prefer hardware protected credentials; however, not all computers are able to create hardware protected credentials.  When Windows Hello for Business enrollment encounters a computer that cannot create a hardware protected credential, it will create a software-based credential.

You can enable and deploy the **Use a hardware security device** Group Policy Setting to force Windows Hello for Business to only create hardware protected credentials.  Users that sign-in from a computer incapable of creating a hardware protected credential do not enroll for Windows Hello for Business.

Another policy setting becomes available when you enable the **Use a hardware security device** Group Policy setting that enables you to prevent Windows Hello for Business enrollment from using version 1.2 Trusted Platform Modules (TPM). Version 1.2 TPMs typically perform cryptographic operations slower than version 2.0 TPMs and are more unforgiving during anti-hammering and PIN lockout activities. Some organizations may not want slow sign-in performance and management overhead associated with version 1.2 TPMs. To prevent Windows Hello for Business from using version 1.2 TPMs, select the TPM 1.2 check box after you enable the Use a hardware security device Group Policy object.

### Use biometrics

Windows Hello for Business provides a great user experience when combined with the use of biometrics.  Rather than providing a PIN to sign-in, a user can use a fingerprint or facial recognition to sign-in to Windows, without sacrificing security.  

The default Windows Hello for Business enables users to enroll and use biometrics. However, some organization may want more time before using biometrics and want to disable their use until they are ready. To not allow users to use biometrics, configure the **Use biometrics** Group Policy setting to disabled and apply it to your computers.  The policy setting disabled all biometrics.  Currently, Windows does not provide the ability to set granular policies that enable you to disable specific modalities of biometrics, such as allowing facial recognition, but disallowing fingerprint recognition.

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

In the Windows 10, version 1703, the PIN complexity Group Policy settings have moved to remove misunderstanding that PIN complexity policy settings were exclusive to Windows Hello for Business. The new location of these Group Policy settings is under Administrative Templates\System\PIN Complexity under both the Computer and User Configuration nodes of the Group Policy editor.

## Review

Before you continue with the deployment, validate your deployment progress by reviewing the following items:
* Confirm you authored Group Policy settings using the latest ADMX/ADML files (from the Windows 10 Creators Editions)
* Confirm you configured the Enable Windows Hello for Business to the scope that matches your deployment (Computer vs. User)
* Confirm you configure the Use Certificate enrollment for on-premises authentication policy setting.
* Confirm you configure automatic certificate enrollment to the scope that matches your deployment (Computer vs. User)
* Confirm you configured the proper security settings for the Group Policy object   
    * Removed the allow permission for Apply Group Policy for Domain Users (Domain Users must always have the read permissions)
    * Add the Windows Hello for Business Users group to the Group Policy object and gave the group the allow permission for Apply Group Policy

* Linked the Group Policy object to the correct locations within Active Directory
* Deploy any additional Windows Hello for Business Group Policy setting is a policy separate from the one that enables it for users


## Add users to the Windows Hello for Business Users group

Users must receive the Windows Hello for Business group policy settings and have the proper permission to enroll for the Windows Hello for Business Authentication certificate. You can provide users with these settings and permissions by adding the group used synchronize users to the Windows Hello for Business Users group.   Users and groups that are not members of this group will not attempt to enroll for Windows Hello for Business.


## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. [Validate Active Directory prerequisites](hello-cert-trust-validate-ad-prereq.md)
2. [Validate and Configure Public Key Infrastructure](hello-cert-trust-validate-pki.md)
3. [Prepare and Deploy Windows Server 2016 Active Directory Federation Services](hello-cert-trust-adfs.md)
4. [Validate and Deploy Multifactor Authentication Services (MFA)](hello-cert-trust-validate-deploy-mfa.md)
5. Configure Windows Hello for Business Policy settings (*You are here*)
