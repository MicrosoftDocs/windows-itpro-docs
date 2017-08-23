---
title: Configuring Hybrid Windows Hello for Business - Directory Synchronization
description: Discussing Directory Synchronization in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB, dirsync, connect
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
localizationpriority: high
author: mikestephens-MS
ms.author: mstephen
---
# Configure Hybrid Windows Hello for Business: Directory Synchronization

**Applies to**
-   Windows 10

## Directory Syncrhonization

>[!IMPORTANT]
>This guide only applies to Hybrid deployments for Windows 10, version 1703 or higher.

In hybrid deployments, users register the public portion of their Windows Hello for Business crednetial with Azure.  Azure AD Connect syncrhonizes the Windows Hello for Business public key to Active Directory.  

The key-trust model needs Windows Server 2016 domain controllers, which configures the key registration permissions automatically; however, the certificate-trust model does not and requires you to add the permissions manually.

> [!IMPORTANT]
> If you already have a Windows Server 2016 domain controller in your forest, you can skip **Configure Permissions for Key Synchronization**.

### Configure Permissions for Key Syncrhonization

Sign-in a domain controller or management workstations with *Domain Admin* equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Right-click your domain name from the navigation pane and click **Properties**.
3. Click **Security** (if the Security tab is missing, turn on Advanced Features from the View menu).
4. Click **Advanced**. Click **Add**. Click **Select a principal**.
5. The **Select User, Computer, Service Account, or Group** dialog box appears. In the **Enter the object name to select** text box, type **KeyCredential Admins**.  Click **OK**.
6. In the **Applies to** list box, select **Descendant User objects**.
7. Using the scroll bar, scroll to the bottom of the page and click **Clear all**.
8. In the **Properties** section, select **Read msDS-KeyCredentialLink** and **Write msDS-KeyCrendentialLink**.
9. Click **OK** three times to complete the task. 

### Section Review

> [!div class="checklist"]
> * Configure Permissions for Key Synchronization

