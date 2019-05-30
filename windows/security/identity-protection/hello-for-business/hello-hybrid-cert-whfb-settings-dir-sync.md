---
title: Configuring Hybrid Windows Hello for Business - Directory Synchronization
description: Discussing Directory Synchronization in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB, dirsync, connect
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
ms.date: 10/23/2017
---
# Configure Hybrid Windows Hello for Business: Directory Synchronization

**Applies to**
-   Windows 10, version 1703 or later
-   Hybrid deployment
-   Certificate trust


## Directory Synchronization

In hybrid deployments, users register the public portion of their Windows Hello for Business credential with Azure.  Azure AD Connect synchronizes the Windows Hello for Business public key to Active Directory.  

The key-trust model needs Windows Server 2016 domain controllers, which configures the key registration permissions automatically; however, the certificate-trust model does not and requires you to add the permissions manually.

> [!IMPORTANT]
> If you already have a Windows Server 2016 domain controller in your domain, you can skip **Configure Permissions for Key Synchronization**.

### Configure Permissions for Key Synchronization

Sign-in a domain controller or management workstations with *Domain Admin* equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Right-click your domain name from the navigation pane and click **Properties**.
3. Click **Security** (if the Security tab is missing, turn on Advanced Features from the View menu).
4. Click **Advanced**. Click **Add**. Click **Select a principal**.
5. The **Select User, Computer, Service Account, or Group** dialog box appears. In the **Enter the object name to select** text box, type **KeyCredential Admins**.  Click **OK**.
6. In the **Applies to** list box, select **Descendant User objects**.
7. Using the scroll bar, scroll to the bottom of the page and click **Clear all**.
8. In the **Properties** section, select **Read msDS-KeyCredentialLink** and **Write msDS-KeyCredentialLink**.
9. Click **OK** three times to complete the task. 


### Group Memberships for the Azure AD Connect Service Account

The KeyAdmins or KeyCredential Admins global group provides the Azure AD Connect service with the permissions needed to read and write the public key to Active Directory.  

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click the **Users** container in the navigation pane.
>[!IMPORTANT]
> If you already have a Windows Server 2016 domain controller in your domain, use the Keyadmins group in the next step, otherwise use the KeyCredential admins group you previously created.

3. Right-click either the **KeyAdmins** or **KeyCredential Admins** in the details pane and click **Properties**.
4. Click the **Members** tab and click **Add**
5. In the **Enter the object names to select** text box, type the name of the Azure AD Connect service account.  Click **OK**.
6. Click **OK** to return to **Active Directory Users and Computers**.

### Section Review

> [!div class="checklist"]
> * Configure Permissions for Key Synchronization
> * Configure group membership for Azure AD Connect

>[!div class="step-by-step"]
[< Configure Active Directory](hello-hybrid-cert-whfb-settings-ad.md)
[Configure PKI >](hello-hybrid-cert-whfb-settings-pki.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business settings: Directory Synchronization (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)
