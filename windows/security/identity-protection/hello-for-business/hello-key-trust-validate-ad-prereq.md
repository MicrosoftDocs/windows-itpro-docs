---
title: Validate Active Directory prerequisites in an on-premises key trust
description: Validate Active Directory prerequisites when deploying Windows Hello for Business in a key trust model.
ms.date: 12/12/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: tutorial
---
# Validate Active Directory prerequisites - on-premises key trust

[!INCLUDE [hello-on-premises-key-trust](./includes/hello-on-premises-key-trust.md)]

Key trust deployments need an adequate number of domain controllers to ensure successful user authentication with Windows Hello for Business. To learn more about domain controller planning for key trust deployments, read the [Windows Hello for Business planning guide](hello-planning-guide.md) and the [Planning an adequate number of Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) section.

The key registration process for the on-premises deployment of Windows Hello for Business requires the Windows Server 2016 Active Directory or later schema.

## Create the Windows Hello for Business Users security group

The *Windows Hello for Business Users* group is used to make it easy to deploy Windows Hello for Business in phases. You assign Group Policy permissions to this group to simplify the deployment by adding the users to the group. This provides users with the proper permissions to provision Windows Hello for Business.

Sign-in to a domain controller or to a management workstation with a *Domain Administrator* equivalent credentials.

1. Open **Active Directory Users and Computers**
1. Select **View > Advanced Features**
1. Expand the domain node from the navigation pane
1. Right-click the **Users** container. Select **New > Group**
1. Type *Windows Hello for Business Users* in the **Group Name**
1. Select **OK**

> [!div class="nextstepaction"]
> [Next: validate and configure PKI >](hello-key-trust-validate-pki.md)