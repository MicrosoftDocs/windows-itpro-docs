---
title: "Prepare your environment for Surface Hub 2S"
description: "Learn what you need to do to prepare your environment for Surface Hub 2S."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---

# Prepare your environment for Surface Hub 2S

## Office 365 readiness

You may use Exchange and Skype for Business on-premises with Surface Hub 2S. However, if you use Exchange Online, Skype for Business Online, Microsoft Teams or Microsoft Whiteboard, and intend to manage Surface Hub 2S with Intune, first review the [Office 365 requirements for endpoints](https://docs.microsoft.com/en-us/office365/enterprise/office-365-endpoints).

Office 365 endpoints help optimize your network by sending all trusted Office 365 network requests directly through your firewall, bypassing all additional packet level inspection or processing. This feature reduces latency and your perimeter capacity requirements.

Microsoft regularly updates the Office 365 service with new features and functionality, which may alter required ports, URLs, and IP addresses. To evaluate, configure, and stay up-to-date with changes, subscribe to the [Office 365 IP Address and URL Web service](https://docs.microsoft.com/en-us/office365/enterprise/office-365-ip-web-service.

## Device affiliation

Use Device affiliation to manage user access to the Settings app on Surface Hub 2S.
With the Windows 10 Team Edition operating system  —  that runs on Surface Hub 2S —  only authorized users can  adjust settings via the settings app. Since choosing the affiliation can impact feature availability, plan appropriately to ensure that users can access features as intended.

> [!NOTE]
> You can only set Device affiliation during the initial out-of-box experience (OOBE) setup. If you need to reset Device affiliation, you’ll have to repeat OOBE setup.

##3 No affiliation

No affiliation is like having Surface Hub 2S in a workgroup with a different local Administrator account on each Surface Hub 2S. If you choose No affiliation, you must locally save the [Bitlocker Key to a USB thumb drive](https://docs.microsoft.com/en-us/windows/security/information-protection/bitlocker/bitlocker-key-management-faq). You can still enroll the device with Intune, however only the local admin can access the Settings app using the account credentials configured during OOBE. You can change the Administrator account password from the Settings app.

### Active Directory Domain Services

If you affiliate Surface Hub 2S with on-premises Active Directory Domain Services, you need to manage access to the Settings app via a security group on your domain, ensuring that all SG members have permissions to change settings on Surface Hub 2S. Note also the following:

- When Surface Hub 2S affiliates with your on-premises Active Directory Domain Services, the Bitlocker key is saved in the AD Schema.
- Your organization’s Trusted Root CAs are pushed to the same container in Surface Hub 2S, which means you don’t need to import them using a provisioning package.
- You can still enroll the device with Intune to centrally manage settings on your Surface Hub 2S.

## Azure Active Directory

When choosing to affiliate your Surface Hub 2S with Azure AD, any user in the Global Admins Security Group can sign in to the Settings app on Surface Hub 2S. Currently, no other group can be delegated to sign in to the Settings app on Surface Hub 2S.

If you enabled Intune Automatic Enrollment for your organization, Surface Hub 2S will automatically enroll itself with Intune. The device’s Bitlocker key is automatically saved in Azure AD. When affiliating Surface Hub 2S with Azure AD, single sign-on and Easy Authentication will not work.
