---
title: Configuring Windows Hello for Business - Active Directory (Windows Hello for Business)
description: Configuring Windows Hello for Business - Active Directory
keywords: identity, PIN, biometric, Hello, passport, WHFB
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: DaniHalfin
ms.author: mstephen
localizationpriority: high
---
# Configuring Windows Hello for Business: Active Directory

**Applies to**
-   Windows 10

> This guide only applies to Windows 10, version 1703 or higher.

>[!div class="step-by-step"]
[< Configure Windows Hello for Business](hello-hybrid-cert-whfb-settings.md)
[ Configure Windows Hello for Business: PKI >](hello-hybrid-cert-whfb-settings-pki.md)

The key synchronizaqtion process for the hybrid deployment of Windows Hello for Business needs the Windows Server 2016 Active Directory schema. 

>[!IMPORTANT]
>If you already have a Windows Server 2016 domain controller in your forest, you can skip **Upgrading Active Directory to the Windows Server 2016 Schema**.

## Upgrading Active Directory to the Windows Server 2016 Schema

Manually updating Active Directory uses the command-line utility **adprep.exe** located at **\<drive>:\support\adprep** on the Windows Server 2016 DVD or ISO.  Before running adprep.exe, you must identify the domain controller hosting the schema master role.

### Identify the schema role domain controller

To locate the schema master role holder, open and command prompt and type:

```Netdom query fsmo | findstr -i schema```

![Netdom example output](images\hello-cmd-netdom.png)

The command should return the name of the domain controller where you need to adprep.exe.  Update the schema locally on the domain controller hosting the Schema master role.

### Updating the Schema

Windows Hello for Business uses asymmetric keys as user credentials (rather than passwords).  During enrollment, the public key is registered in an attribute on the user object in Active Directory.  The schema update adds this new attribute to Active Directory.  

Sign-in to the domain controller hosting the schema master operational role using Enterprise Admin equivalent credentials.

1.	Open an elevated command prompt.
2.	Type ```cd /d x:\support\adprep``` where *x* is the drive letter of the DVD or mounted ISO.
3.	To update the schema, type ```adprep /forestprep```.
4.	Read the Adprep Warning.  Type the letter **C*** and press **Enter** to update the schema.
5.	Close the Command Prompt and sign-out.

### Creating Security Groups

Windows Hello for Business uses several security groups to simplify the deployment and managment.

> [!Important]
> If your environment has one or more Windows Server 2016 domain controllers in the domain to which you are deploying Windows Hello for Business, then skip the **Create the KeyCrednetials Admins Security Group**.

#### Create the KeyCredential Admins Security Group

Azure Active Directory Connect synchronizes the public key on the user object created during provisioning.  You assign write and read permission to this group to the Active Directory attribute to ensure the Azure AD Connect service can add and remove keys as part of its normal workflow.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1.	Open **Active Directory Users and Computers**.
2.	Click **View** and click **Advance Features**.
3.	Expand the domain node from the navigation pane.
4.	Right-click the **Users** container. Click **New**. Click **Group**.
5.	Type **KeyCredential Admins** in the **Group Name** text box.
6.	Click **OK**.

#### Create the Windows Hello for Business Users Security Group

The Windows Hello for Business Users group is used to make it easy to deploy Windows Hello for Business in phases.  You assign Group Policy and Certificate template permissions to this group to simplify the deployment by simply adding the users to the group.  This provides them the proper permissions to provision Windows Hello for Business and to enroll in the Windows Hello for Business authentication certificate.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1.	Open **Active Directory Users and Computers**.
2.	Click **View** and click **Advanced Features**.
3.	Expand the domain node from the navigation pane.
4.	Right-click the **Users** container. Click **New**. Click **Group**.
5.	Type **Windows Hello for Business Users** in the **Group Name** text box.
6.	Click **OK**.

### Section Review

> [!div class="checklist"]
> * Identify the schema role domain controller 
> * Update the Active Directory Schema to Windows Server 2016
> * Create the KeyCredential Admins Security group, (optional)
> * Create the Windows Hello for Business Users group


>[!div class="step-by-step"]
[< Configure Windows Hello for Business](hello-hybrid-cert-whfb-settings.md)
[ Configure Windows Hello for Business: PKI >](hello-hybrid-cert-whfb-settings-pki.md)

<br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequistes](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. Configure Windows Hello for Business settings: Active Directory (*You are here*)
5. Sign-in and Provision