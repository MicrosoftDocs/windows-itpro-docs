---
title: Workplace (Windows 10)
description: This section describes the Workplace settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# Workplace (reference)


Use Workplace settings to configure bulk user enrollment to a mobile device management (MDM) service. For more information, see [Bulk enrollment step-by-step](https://docs.microsoft.com/windows/client-management/mdm/bulk-enrollment-using-windows-provisioning-tool).

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [Enrollments](#enrollments) | X | X | X |  | X  |

## Enrollments

Select **Enrollments**, enter a UPN, and then click **Add** to configure the settings for the enrollment. The UPN is a unique identifier for enrollment. For bulk enrollment, this must a service account that is allowed to enroll multiple users. Example, "generic-device@contoso.com"

| Settings | Value | Description |
| --- | --- | --- |
| AuthPolicy | - OnPremise</br>- Certificate  | The authentication policy used by the MDM service  |
| DiscoveryServiceFullUrl | URL | The full URL for the discovery service |
| EnrollmentServiceFullUrl | URL | The full URL for the enrollment service |
| PolicyServiceFullUrl | URL | The full URL for the policy service |
| Secret | - Password string for on-premises authentication enrollment</br>- Federated security token for federated enrollment</br>- Certificate thumb print for certificate-based enrollment | Enter the appropriate value for the selected AuthPolicy  |

## Related topics

- [Provisioning configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/provisioning-csp)
