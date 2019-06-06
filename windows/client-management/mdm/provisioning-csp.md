---
title: Provisioning CSP
description: The Provisioning configuration service provider is used for bulk user enrollment to an MDM service.
ms.assetid: 5D6C17BE-727A-4AFA-9F30-B34C1EA1D2AE
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# Provisioning CSP


The Provisioning configuration service provider is used for bulk user enrollment to an MDM service.

> **Note**  Bulk enrollment does not work when two factor authentication is enabled.

 

For bulk enrollment step-by-step guide, see [Bulk enrollment](bulk-enrollment-using-windows-provisioning-tool.md).

The following diagram shows the Provisioning configuration service provider in tree format.

![provisioning csp diagram](images/provisioning-csp-provisioning.png)

<a href="" id="--vendor-msft"></a>**./Vendor/MSFT**  
Root node for Provisioning CSP.

<a href="" id="provisioning-enrollments"></a>**Provisioning/Enrollments**  
Node for defining bulk enrollment of users into an MDM service.

<a href="" id="provisioning-enrollments-upn"></a>**Provisioning/Enrollments/****_UPN_**  
Unique identifier for the enrollment. For bulk enrollment, this must a service account that is allowed to enroll multiple users. Example, "generic-device@contoso.com"

<a href="" id="provisioning-enrollments-upn-discoveryservicefullurl"></a>**Provisioning/Enrollments/*UPN*/DiscoveryServiceFullURL**  
The full URL for the discovery service.

<a href="" id="provisioning-enrollments-upn-secret"></a>**Provisioning/Enrollments/*UPN*/Secret**  
This information is dependent on the AuthPolicy being used. Possible values:

-   Password string for on-premises authentication enrollment
-   Federated security token for federated enrollment
-   Certificate thumb print for certificated based enrollment

<a href="" id="provisioning-enrollments-upn-authpolicy"></a>**Provisioning/Enrollments/*UPN*/AuthPolicy**  
Specifies the authentication policy used by the MDM service. Valid values:

-   OnPremise
-   Certificate

<a href="" id="provisioning-enrollments-upn-policyservicefullurl"></a>**Provisioning/Enrollments/*UPN*/PolicyServiceFullURL**  
Specifies the policy service URL.

<a href="" id="provisioning-enrollments-upn-enrollmentservicefullurl"></a>**Provisioning/Enrollments/*UPN*/EnrollmentServiceFullURL**  
Specifies the enrollment service URL.

 

 






