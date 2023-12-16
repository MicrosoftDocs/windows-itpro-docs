---
title: Windows Hello for Business deployment guide for the on-premises key trust model
description: Learn how to deploy Windows Hello for Business in an on-premises, key trust model.
ms.date: 12/12/2022
ms.topic: tutorial
---

# Deployment guide overview - on-premises key trust

[!INCLUDE [apply-to-on-premises-key-trust](includes/apply-to-on-premises-key-trust.md)]

Windows Hello for Business replaces username and password authentication to Windows with an asymmetric key pair. This deployment guide provides the information to deploy Windows Hello for Business in an on-premises environment:

1. [Validate and configure a PKI](on-premises-key-trust-pki.md)
1. [Prepare and deploy AD FS](on-premises-key-trust-adfs.md)
1. [Validate and deploy multifactor authentication (MFA)](on-premises-key-trust-mfa.md)
1. [Configure Windows Hello for Business Policy settings](on-premises-key-trust-enroll.md)

## Create the Windows Hello for Business Users security group

While this isn't a required step, it's recommended to create a security group to simplify the deployment.

The *Windows Hello for Business Users* group is used to make it easy to deploy Windows Hello for Business in phases. You assign Group Policy permissions to this group to simplify the deployment by adding the users to the group. This provides users with the proper permissions to provision Windows Hello for Business.

Sign-in to a domain controller or to a management workstation with a *Domain Administrator* equivalent credentials.

1. Open **Active Directory Users and Computers**
1. Select **View > Advanced Features**
1. Expand the domain node from the navigation pane
1. Right-click the **Users** container. Select **New > Group**
1. Type *Windows Hello for Business Users* in the **Group Name**
1. Select **OK**

> [!div class="nextstepaction"]
> [Next: validate and configure PKI >](on-premises-key-trust-pki.md)