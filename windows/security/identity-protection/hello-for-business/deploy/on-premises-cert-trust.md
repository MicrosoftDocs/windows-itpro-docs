---
title: Deployment guide for the on-premises certificate trust model
description: Learn how to deploy Windows Hello for Business in an on-premises, certificate trust model.
ms.date: 12/15/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: tutorial
---

# Deployment guide for the on-premises certificate trust model

[!INCLUDE [hello-on-premises-cert-trust](includes/hello-on-premises-cert-trust.md)]

Windows Hello for Business replaces username and password authentication to Windows with an asymmetric key pair. This deployment guide provides the information to deploy Windows Hello for Business in an on-premises environment.

There are four steps to deploying Windows Hello for Business in an on-premises certificate trust model:

1. [Validate and configure a PKI](on-premises-cert-trust-validate-pki.md)
1. [Prepare and deploy AD FS](on-premises-cert-trust-adfs.md)
1. [Validate and deploy multi-factor authentication (MFA)](on-premises-cert-trust-validate-deploy-mfa.md)
1. [Configure Windows Hello for Business Policy settings](on-premises-cert-trust-policy-settings.md)

## Create the Windows Hello for Business Users security group

While this is not a required step, it is recommended to create a security group to simplify the deployment.

The *Windows Hello for Business Users* group is used to make it easy to deploy Windows Hello for Business in phases. You assign certificate templates and group policy permissions to this group to simplify the deployment by adding the users to the group. This provides users with the proper permissions to provision Windows Hello for Business.

Sign-in to a domain controller or to a management workstation with a *Domain Administrator* equivalent credentials.

1. Open **Active Directory Users and Computers**
1. Select **View > Advanced Features**
1. Expand the domain node from the navigation pane
1. Right-click the **Users** container. Select **New > Group**
1. Type *Windows Hello for Business Users* in the **Group Name**
1. Select **OK**

> [!div class="nextstepaction"]
> [Next: validate and configure a PKI >](on-premises-cert-trust-validate-pki.md)