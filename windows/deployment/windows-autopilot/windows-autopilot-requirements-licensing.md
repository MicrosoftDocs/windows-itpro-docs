---
title: Windows Autopilot licensing requirements
description: This topic goes over Windows Autopilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
---

# Windows Autopilot licensing requirements

**Applies to: Windows 10**

Windows Autopilot depends on specific capabilities available in Windows 10 and Azure Active Directory; it also requires an MDM service such as Microsoft Intune. These capabilities can be obtained through various editions and subscription programs:

-   Windows 10 version 1703 or higher must be used. Supported editions are the following:
    -   Pro
    -   Pro Education
    -   Pro for Workstations
    -   Enterprise
    -   Education
-   One of the following, to provide needed Azure Active Directory (automatic MDM enrollment and company branding features) and MDM functionality:
    -   [Microsoft 365 Business subscriptions](https://www.microsoft.com/en-us/microsoft-365/business)
    -   [Microsoft 365 F1 subscriptions](https://www.microsoft.com/en-us/microsoft-365/enterprise/firstline)
    -   [Microsoft 365 Academic A1, A3, or A5 subscriptions](https://www.microsoft.com/en-us/education/buy-license/microsoft365/default.aspx)
    -   [Microsoft 365 Enterprise E3 or E5 subscriptions](https://www.microsoft.com/en-us/microsoft-365/enterprise), which include all Windows 10, Office 365, and EM+S features (Azure AD and Intune)
    -   [Enterprise Mobility + Security E3 or E5 subscriptions](https://www.microsoft.com/en-us/cloud-platform/enterprise-mobility-security), which include all needed Azure AD and Intune features
    -   [Azure Active Directory Premium P1 or P2](https://azure.microsoft.com/en-us/services/active-directory/) and [Microsoft Intune subscriptions](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune) (or an alternative MDM service)

Additionally, the following are also recommended but not required:
-   [Office 365 ProPlus](https://www.microsoft.com/en-us/p/office-365-proplus/CFQ7TTC0K8R0), which can be deployed easily via Intune (or other MDM services)
-   [Windows Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation), to automatically step up devices from Windows 10 Pro to Windows 10 Enterprise
