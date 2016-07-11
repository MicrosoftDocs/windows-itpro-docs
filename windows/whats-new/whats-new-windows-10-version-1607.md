---
title: What's new in Windows 10, version 1607 (Windows 10)
description: This topic lists new and updated topics in the What's new in Windows 10 documentation for Windows 10 and Windows 10 Mobile.
ms.assetid: 75F285B0-09BE-4821-9B42-37B9BE54CEC6
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: TrudyHa
---

# What's new in Windows 10, version 1607

Below is a list of some of the new and updated features in Windows 10, version 1607.

 
## Deployment

### Windows Imaging and Configuration Designer (ICD)

In previous versions of the Windows 10 ADK, you had to install additional features for Windows ICD to run. Starting in version 1607, you can install Windows ICD without other ADK features. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

Windows ICD now includes simplified workflows for creating provisioning packages:

- [Simple provisioning to set up common settings for Active Directory-joined devices](~/deploy/provision-pcs-for-initial-deployment.md)
- [Advanced provisioning to deploy certificates and apps](~/deploy/provision-pcs-with-apps-and-certificates.md)
- [School provisioning to set up classroom devices for Active Directory](https://technet.microsoft.com/en-us/edu/windows/set-up-students-pcs-to-join-domain)

[Learn more about using provisioning packages in Windows 10.](../deploy/provisioning-packages.md)

## Security

### Windows Hello for Business

When Windows 10 first shipped, it included Microsoft Passport and Windows Hello, which worked together to provide multi-factor authentication. To simplify deployment and improve supportability, Microsoft has combined these technologies into a single solution under the Windows Hello name in Windows 10, version 1607. Customers who have already deployed these technologies will not experience any change in functionality. Customers who have yet to evaluate Windows Hello will find it easier to deploy due to simplified policies, documentation, and semantics. 

Additional changes for Windows Hello in Windows 10, version 1607:

- Personal (Microsoft account) and corporate (Active Directory or Azure AD) accounts use a single container for keys. 
- Group Policy for managing Windows Hello for Business are now available for both **User Configuration** and **Computer Configuration**. 
- Users can use Windows Phone with Windows Hello to sign in to a PC, connect to VPN, and sign in to Office 365 in a browser.

[Learn more about Windows Hello for Business.](../keep-secure/manage-identity-verification-using-microsoft-passport.md)
 
## Management

### Taskbar configuration

Enterprise administrators can add and remove pinned apps from the taskbar. Users can pin apps, unpin apps, and change the order of pinned apps on the taskbar after the enterprise configuration is applied. [Learn how to configure the taskbar.](../manage/windows-10-start-layout-options-and-policies.md)

### Mobile device management and configuration service providers (CSPs)

Numerous settings have been added to the Windows 10 CSPs to expand MDM capabilities for managing devices. To learn more about the specific changes in MDM policies for Windows 10, version 1607, see [What's new in MDM enrollment and management](https://msdn.microsoft.com/en-us/library/windows/hardware/mt299056%28v=vs.85%29.aspx#whatsnew_1607).


