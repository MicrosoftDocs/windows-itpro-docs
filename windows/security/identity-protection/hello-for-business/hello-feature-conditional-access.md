---
title: Conditional Access
description: Conditional Access
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust, device, registration, unlock, conditional access
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
ms.date: 09/09/2019
ms.reviewer: 
---

## Conditional access

**Requirements:**

* Azure Active Directory
* Hybrid Windows Hello for Business deployment

In a mobile-first, cloud-first world, Azure Active Directory enables single sign-on to devices, applications, and services from anywhere. With the proliferation of devices (including BYOD), work off corporate networks, and 3rd party SaaS applications, IT professionals are faced with two opposing goals:

* Empower the end users to be productive wherever and whenever
* Protect the corporate assets at any time

To improve productivity, Azure Active Directory provides your users with a broad range of options to access your corporate assets. With application access management, Azure Active Directory enables you to ensure that only the right people can access your applications. What if you want to have more control over how the right people are accessing your resources under certain conditions? What if you even have conditions under which you want to block access to certain applications even for the right people? For example, it might be OK for you if the right people are accessing certain applications from a trusted network; however, you might not want them to access these applications from a network you don't trust. You can address these questions using conditional access.

Read [Conditional access in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access-azure-portal) to learn more about Conditional Access.  Afterwards, read [Getting started with conditional access in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-conditional-access-azure-portal-get-started) to start deploying Conditional access.

## Related topics

* [Windows Hello for Business](hello-identity-verification.md)
* [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
* [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
* [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
* [Windows Hello and password changes](hello-and-password-changes.md)
* [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
* [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
* [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
