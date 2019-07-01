---
title: Enable Conditional Access to better protect users, devices, and data
description: Enable Conditional Access to prevent applications from running if a device is considered at risk and an application is determined to be non-compliant.
keywords: conditional access, block applications, security level, intune,
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Enable Conditional Access to better protect users, devices, and data 

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-conditionalaccess-abovefoldlink)

Conditional Access is a capability that helps you better protect your users and enterprise information by making sure that only secure devices have access to applications.

With Conditional Access, you can control access to enterprise information based on the risk level of a device. This helps keep trusted users on trusted devices using trusted applications.

You can define security conditions under which devices and applications can run and access information from your network by enforcing policies to stop applications from running until a device returns to a compliant state. 

The implementation of Conditional Access in Microsoft Defender ATP is based on Microsoft Intune (Intune) device compliance policies and Azure Active Directory (Azure AD) conditional access policies. 

The compliance policy is used with Conditional Access to allow only devices that fulfill one or more device compliance policy rules to access applications. 

## Understand the Conditional Access flow
Conditional Access is put in place so that when a threat is seen on a device, access to sensitive content is blocked until the threat is remediated. 

The flow begins with machines being seen to have a low, medium, or high risk. These risk determinations are then sent to Intune. 

Depending on how you configure policies in Intune, Conditional Access can be set up so that when certain conditions are met, the policy is applied.

For example, you can configure Intune to apply Conditional Access on devices that have a high risk.

In Intune, a device compliance policy is used in conjunction with Azure AD Conditional Access to block access to applications. In parallel, an automated investigation and remediation process is launched.

 A user can still use the device while the automated investigation and remediation is taking place, but access to enterprise data is blocked until the threat is fully remediated. 

To resolve the risk found on a device, you'll need to return the device to a compliant state. A device returns to a compliant state when there is no risk seen on it. 

There are three ways to address a risk:
1. Use Manual or automated remediation.
2. Resolve active alerts on the machine. This will remove the risk from the machine.
3. You can remove the machine from the active policies and consequently, Conditional Access will not be applied on the machine. 

Manual remediation requires a secops admin to investigate an alert and address the risk seen on the device. The automated remediation is configured through configuration settings provided in the following section, [Configure Conditional Access](configure-conditional-access.md).

When the risk is removed either through manual or automated remediation, the device returns to a compliant state and access to applications is granted.

The following example sequence of events explains Conditional Access in action:

1. A user opens a malicious file and Microsoft Defender ATP flags the device as high risk.
2. The high risk assessment is passed along to Intune. In parallel, an automated investigation is initiated to remediate the identified threat. A manual remediation can also be done to remediate the identified threat.
3. Based on the policy created in Intune, the device is marked as not compliant. The assessment is then communicated to Azure AD by the Intune Conditional Access policy. In Azure AD, the corresponding policy is applied to block access to applications.
4. The manual or automated investigation and remediation is completed and the threat is removed. Microsoft Defender ATP sees that there is no risk on the device and Intune assesses the device to be in a compliant state. Azure AD applies the policy which allows access to applications.
5. Users can now access applications.

 
## Related topic
- [Configure Conditional Access in Microsoft Defender ATP](configure-conditional-access.md)



