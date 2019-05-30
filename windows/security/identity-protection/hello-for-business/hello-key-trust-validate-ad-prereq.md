---
title: Validate Active Directory prerequisites (Windows Hello for Business)
description: How to Validate Active Directory prerequisites for Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: DaniHalfin
audience: ITPro
author: mikestephens-MS
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
---
# Validate Active Directory prerequisites

**Applies to**
-   Windows 10, version 1703 or later
-   On-premises deployment
-   Key trust


Key trust deployments need an adequate number of 2016 domain controllers to ensure successful user authentication with Windows Hello for Business.  To learn more about domain controller planning for key trust deployments, read the [Windows Hello for Business planning guide](hello-planning-guide.md), the [Planning an adequate number of Windows Server 2016 Domain Controllers for Windows Hello for Business deployments](hello-adequate-domain-controllers.md) section.

The key registration process for the On-premises deployment of Windows Hello for Business needs the Windows Server 2016 Active Directory schema.  The key-trust model receives the schema extension when the first Windows Server 2016 domain controller is added to the forest.  The minimum required domain functional and forest functional levels for Windows Hello for Business deployment is Windows Server 2008 R2.

## Create the Windows Hello for Business Users Security Global Group

The Windows Hello for Business Users group is used to make it easy to deploy Windows Hello for Business in phases.  You assign Group Policy permissions to this group to simplify the deployment by simply adding the users to the group.  This provides users with the proper permissions to provision Windows Hello for Business.

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1.	Open **Active Directory Users and Computers**.
2.	Click **View** and click **Advanced Features**.
3.	Expand the domain node from the navigation pane.
4.	Right-click the **Users** container. Click **New**. Click **Group**.
5.	Type **Windows Hello for Business Users** in the **Group Name** text box.
6.	Click **OK**.


## Follow the Windows Hello for Business on premises certificate trust deployment guide
1. Validate Active Directory prerequisites (*You are here*)
2. [Validate and Configure Public Key Infrastructure](hello-key-trust-validate-pki.md)
3. [Prepare and Deploy Windows Server 2016 Active Directory Federation Services](hello-key-trust-adfs.md)
4. [Validate and Deploy Multifactor Authentication Services (MFA)](hello-key-trust-validate-deploy-mfa.md)
5. [Configure Windows Hello for Business Policy settings](hello-key-trust-policy-settings.md)
