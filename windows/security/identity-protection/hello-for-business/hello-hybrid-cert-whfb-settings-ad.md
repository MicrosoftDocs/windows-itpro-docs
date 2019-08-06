---
title: Configuring Hybrid Windows Hello for Business - Active Directory (AD)
description: Discussing the configuration of Active Directory (AD) in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB, ad
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
ms.reviewer: 
---
# Configuring Windows Hello for Business: Active Directory

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid deployment
-   Certificate trust


The key synchronization process for the hybrid deployment of Windows Hello for Business needs the Windows Server 2016 Active Directory schema. 

### Creating Security Groups

Windows Hello for Business uses several security groups to simplify the deployment and management.

> [!Important]
> If your environment has one or more Windows Server 2016 domain controllers in the domain to which you are deploying Windows Hello for Business, then skip the **Create the KeyCredentials Admins Security Group**.  Domains that include Windows Server 2016 domain controllers use the KeyAdmins group, which is created during the installation of the first Windows Server 2016 domain controller.

#### Create the KeyCredential Admins Security Group

Azure Active Directory Connect synchronizes the public key on the user object created during provisioning.  You assign write and read permission to this group to the Active Directory attribute to ensure the Azure AD Connect service can add and remove keys as part of its normal workflow.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click **View** and click **Advance Features**.
3. Expand the domain node from the navigation pane.
4. Right-click the **Users** container. Click **New**. Click **Group**.
5. Type **KeyCredential Admins** in the **Group Name** text box.
6. Click **OK**.

#### Create the Windows Hello for Business Users Security Group

The Windows Hello for Business Users group is used to make it easy to deploy Windows Hello for Business in phases.  You assign Group Policy and Certificate template permissions to this group to simplify the deployment by simply adding the users to the group.  This provides users with the proper permissions to provision Windows Hello for Business and to enroll in the Windows Hello for Business authentication certificate.

Sign-in a domain controller or management workstation with *Domain Admin* equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click **View** and click **Advanced Features**.
3. Expand the domain node from the navigation pane.
4. Right-click the **Users** container. Click **New**. Click **Group**.
5. Type **Windows Hello for Business Users** in the **Group Name** text box.
6. Click **OK**.

### Section Review

> [!div class="checklist"]
> * Create the KeyCredential Admins Security group (optional)
> * Create the Windows Hello for Business Users group
> 
> [!div class="step-by-step"]
> [< Configure Windows Hello for Business](hello-hybrid-cert-whfb-settings.md)
> [Configure Azure AD Connect >](hello-hybrid-cert-whfb-settings-dir-sync.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business settings: Active Directory (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
