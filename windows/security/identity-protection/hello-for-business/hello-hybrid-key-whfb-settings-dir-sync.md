---
title: Hybrid Azure AD joined Windows Hello for Business - Directory Synchronization
description: How to configure Hybrid key trust Windows Hello for Business - Directory Synchronization
ms.date: 4/30/2021
appliesto: 
- ✅ <a href=https: //learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
ms.topic: article
---
# Configure Hybrid Azure AD joined Windows Hello for Business: Directory Synchronization

[!INCLUDE [hello-hybrid-key-trust](../../includes/hello-hybrid-key-trust.md)]

## Directory Synchronization

In hybrid deployments, users register the public portion of their Windows Hello for Business credential with Azure AD. Azure AD Connect synchronizes the Windows Hello for Business public key to Active Directory.  

### Group Memberships for the Azure AD Connect Service Account
>[!IMPORTANT]
> If you already have a Windows Server 2016 domain controller in your domain, you can skip **Configure Permissions for Key Synchronization**. For more detail see [Configure Hybrid Windows Hello for Business: Directory Synchronization](./hello-hybrid-cert-whfb-settings-dir-sync.md).

The KeyAdmins global group provides the Azure AD Connect service with the permissions needed to read and write the public key to Active Directory.  

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click the **Users** container in the navigation pane.
3. Right-click **Key Admins** in the details pane and click **Properties**.
4. Click the **Members** tab and click **Add**
5. In the **Enter the object names to select** text box, type the name of the service account used as an AD DS Connector account and click **OK**.
6. Click **OK** to return to **Active Directory Users and Computers**.

> [!NOTE]
> If your Active Directory forest has multiple domains, your ADConnect accounts need to be members of the **Enterprise Key Admins** group. This membership is needed to write the keys to other domain users.

### Section Review

> [!div class="checklist"]
> * Configure group membership for Azure AD Connect

> [!div class="step-by-step"]
> [< Configure Active Directory](hello-hybrid-key-whfb-settings-ad.md)
> [Configure PKI >](hello-hybrid-key-whfb-settings-pki.md)  

<hr>

## Follow the Windows Hello for Business hybrid key trust deployment guide

1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-key-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-key-new-install.md)
4. [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
5. [Configure Azure Device Registration](hello-hybrid-key-trust-devreg.md)
6. Configure Windows Hello for Business settings: Directory Synchronization (*You are here*)
7. [Sign-in and Provision](hello-hybrid-key-whfb-provision.md)
