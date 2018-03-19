---
title: Enable conditional access in Windows Defedener ATP
description: Enable conditional access to prevent applications from running if a device is considered at risk and an application is determined to be non-compliant.
keywords: conditional access, block applications, security level, intune,
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 03/05/2018
---

# Enable conditional access in Windows Defender ATP 

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Conditional access is a capability that helps you better protect your users and enterprise information by making sure that only secure devices have access to applications.

With conditional access, you can control access to enterprise information based on the risk level of a device. This helps ensure that devices are always trusted.

You can define security conditions under which devices and applications can run and access information from your network by enforcing policies to stop applications from running until a device returns to a compliant state. 

The implementation of conditional access in Windows Defender ATP is based on Microsoft Intune (Intune) device compliance policies and Azure Active Directory (Azure AD) conditional access policies. 

The compliance policy is used with conditional access to allow only devices that fulfill one or more device compliance policy rules to access applications. 

## Understand conditional access
When a device is found to be at high risk, the signal is communicated to Intune. In Intune, a device compliance policy is used in conjunction with Azure AD conditional access to block access to applications. In parallel,  an automated investigation and remediation process is launched.

A device returns to a compliant state when there is low or no risk seen on it. A user can still use the device while the automated investigation and remediation is taking place, but access to enterprise data is blocked until the threat is fully remediated. When this happens, the same flow is followed but this time around the user will be able to access the application.

The following image shows the conditional access flow in action:

1. A user accesses a compromised site and Windows Defender ATP flags the device as high risk.
2. The high risk assessment is passed along to Intune. In parallel, an automated investigation is initiated to remediate the identified threat.
3. Based on the policy created in Intune, the device is marked as not compliant and access to applications are blocked.
4. The automated investigation and remediation is completed and the threat is removed. Windows Defender ATP sees the device as low risk and Intune assesses the device to be in a compliant state. 
5. Users can now access applications.



 ## Configure conditional access
> [!NOTE] 
> You'll need a valid Intune license to enable conditional access.(we need to add Intune link for trail or something like that, we need to ask them)

You'll need to take the following steps to enable conditional access:

1. Turn on the Microsoft Intune connection. For more information, see [Turn on advanced features](advanced-features-windows-defender-advanced-threat-protection.md). 
2. Turn on the Windows Defender ATP integration in Intune. For more information, see LINK TO THE CONTENT INTUNE WRITER IS MAKING.
    - Ensure that machines are enrolled. For more information see, [Set up enrollment for Windows devices](https://docs.microsoft.com/en-us/intune/windows-enroll).

3. Create a device compliance policy in Intune. For more information, see [Create a compliance policy in the Azure portal](https://docs.microsoft.com/en-us/intune/compliance-policy-create-windows#create-a-compliance-policy-in-the-azure-portal).
3. Define a conditional access policy in AAD. For more information, see [Get started with conditional access in Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-conditional-access-azure-portal-get-started).




