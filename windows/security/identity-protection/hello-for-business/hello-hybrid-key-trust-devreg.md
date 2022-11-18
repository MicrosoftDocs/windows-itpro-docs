---
title: Configure Device Registration for Hybrid Azure AD joined key trust Windows Hello for Business
description: Azure Device Registration for Hybrid Certificate Key Deployment (Windows Hello for Business)
ms.date: 05/04/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
ms.topic: article
---
# Configure Device Registration for Hybrid Azure AD joined key trust Windows Hello for Business

[!INCLUDE [hello-hybrid-key-trust](../../includes/hello-hybrid-key-trust.md)]

You're ready to configure device registration for your hybrid environment. Hybrid Windows Hello for Business deployment needs device registration to enable proper device authentication.

> [!NOTE]
> Before proceeding, you should familiarize yourself with device registration concepts such as:
> * Azure AD registered devices
> * Azure AD-joined devices
> * Hybrid Azure AD-joined devices
>
> You can learn about this and more by reading [What is a device identity](/azure/active-directory/devices/overview)

## Configure Hybrid Azure AD join

Begin configuring device registration to support Hybrid Windows Hello for Business by configuring device registration capabilities in Azure AD.

Follow the guidance on the [How to configure hybrid Azure Active Directory-joined devices](/azure/active-directory/devices/hybrid-azuread-join-plan) page. In the **Select your scenario based on your identity infrastructure** section, identify your configuration (either **Managed environment** or **Federated environment**) and perform only the steps applicable to your environment.

If the user principal name (UPN) in your on-premises Active Directory is different from the UPN in Azure AD, you also need to complete the following steps:

- Configure Azure AD Connect to sync the user's on-premises UPN to the onPremisesUserPrincipalName attribute in Azure AD.
- Add the domain name of the on-premises UPN as a [verified domain](/azure/active-directory/fundamentals/add-custom-domain) in Azure AD.

You can learn more about this scenario by reading [Review on-premises UPN support for Hybrid Azure Ad join](/azure/active-directory/devices/hybrid-azuread-join-plan#review-on-premises-ad-users-upn-support-for-hybrid-azure-ad-join).

> [!NOTE]
> Windows Hello for Business Hybrid key trust is not supported if your users' on-premises domain cannot be added as a verified domain in Azure AD.

## Follow the Windows Hello for Business hybrid key trust deployment guide

1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New installation baseline](hello-hybrid-key-new-install.md)
4. [Configure directory synchronization](hello-hybrid-key-trust-dirsync.md)
5. Configure Azure Device Registration (*you're here*)
6. [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
7. [Sign-in and provision](hello-hybrid-key-whfb-provision.md)
