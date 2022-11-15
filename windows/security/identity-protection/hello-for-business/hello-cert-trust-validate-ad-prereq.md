---
title: Update Active Directory schema for cert-trust deployment (Windows Hello for Business)
description: How to Validate Active Directory prerequisites for Windows Hello for Business when deploying with the certificate trust model.
ms.prod: windows-client
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
author: paolomatarazzo
ms.author: paoloma
ms.reviewer: prsriva
manager: aaroncz
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>On-premises deployments</b>
  - ✅ <b>Certificate trust</b>
ms.technology: itpro-security
---
# Validate Active Directory prerequisites for cert-trust deployment

The key registration process for the on-premises deployment of Windows Hello for Business needs the Windows Server 2016 Active Directory or later schema. The key-trust model receives the schema extension when the first Windows Server 2016 or later domain controller is added to the forest. The certificate trust model requires manually updating the current schema to the Windows Server 2016 or later schema. 

> [!NOTE]
> If you already have a Windows Server 2016 or later domain controller in your forest, you can skip the "Updating the Schema" and "Create the KeyCredential Admins Security Global Group" steps that follow.

Manually updating Active Directory uses the command-line utility **adprep.exe** located at **\<drive>:\support\adprep** on the Windows Server 2016 or later DVD or ISO.  Before running adprep.exe, you must identify the domain controller hosting the schema master role.

## Discovering schema role

To locate the schema master role holder, open and command prompt and type:

```Netdom query fsmo | findstr -i “schema”```

![Netdom example output.](images/hello-cmd-netdom.png)

The command should return the name of the domain controller where you need to adprep.exe.  Update the schema locally on the domain controller hosting the Schema master role.

## Updating the Schema

Windows Hello for Business uses asymmetric keys as user credentials (rather than passwords).  During enrollment, the public key is registered in an attribute on the user object in Active Directory.  The schema update adds this new attribute to Active Directory.  

Sign-in to the domain controller hosting the schema master operational role using enterprise administrator equivalent credentials.

1. Mount the ISO file (or insert the DVD) containing the Windows Server 2016 or later installation media.
2. Open an elevated command prompt.
3. Type ```cd /d x:\support\adprep``` where *x* is the drive letter of the DVD or mounted ISO.
4. To update the schema, type ```adprep /forestprep```.
5. Read the Adprep Warning.  Type the letter **C** and press **Enter** to update the schema.
6. Close the Command Prompt and sign-out.

## Create the KeyCredential Admins Security Global Group

The Windows Server 2016 Active Directory Federation Services (AD FS) role registers the public key on the user object during provisioning.  You assign write and read permission to this group to the Active Directory attribute to ensure the AD FS service can add and remove keys are part of its normal workflow.

Sign-in a domain controller or management workstation with domain administrator equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click **View** and click **Advance Features**.
3. Expand the domain node from the navigation pane.
4. Right-click the **Users** container. Click **New**. Click **Group**.
5. Type **KeyCredential Admins** in the **Group Name** text box.
6. Click **OK**.

## Create the Windows Hello for Business Users Security Global Group

The Windows Hello for Business Users group is used to make it easy to deploy Windows Hello for Business in phases.  You assign Group Policy and Certificate template permissions to this group to simplify the deployment by simply adding the users to the group.  This provides them the proper permissions to provision Windows Hello for Business and to enroll in the Windows Hello for Business authentication certificate.

Sign into a domain controller or management workstation with domain administrator equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click **View** and click **Advanced Features**.
3. Expand the domain node from the navigation pane.
4. Right-click the **Users** container. Click **New**. Click **Group**.
5. Type **Windows Hello for Business Users** in the **Group Name** text box.
6. Click **OK**.


## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. Validate Active Directory prerequisites (*You are here*)
2. [Validate and Configure Public Key Infrastructure](hello-cert-trust-validate-pki.md)
3. [Prepare and Deploy Windows Server 2016 Active Directory Federation Services](hello-cert-trust-adfs.md)
4. [Validate and Deploy Multifactor Authentication Services (MFA)](hello-cert-trust-validate-deploy-mfa.md)
5. [Configure Windows Hello for Business Policy settings](hello-cert-trust-policy-settings.md)
