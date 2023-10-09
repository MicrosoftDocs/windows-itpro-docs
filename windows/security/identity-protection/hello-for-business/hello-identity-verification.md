---
ms.date: 10/09/2023
title: Windows Hello for Business Deployment Prerequisite Overview
description: Overview of all the different infrastructure requirements for Windows Hello for Business deployment models
ms.topic: overview
ms.collection:
- tier1
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
---

# Windows Hello for Business Deployment Prerequisite Overview

This article lists the infrastructure requirements for the different deployment models for Windows Hello for Business.

## Azure AD Cloud Only Deployment

- Azure Active Directory
- Azure AD Multifactor Authentication
- Device management solution (Intune or supported third-party MDM), *optional*
- Azure AD Premium subscription - *optional*, needed for automatic MDM enrollment when the device joins Azure Active Directory

## Hybrid Deployments

The table shows the minimum requirements for each deployment. For key trust in a multi-domain/multi-forest deployment, the following requirements are applicable for each domain/forest that hosts Windows Hello for business components or is involved in the Kerberos referral process.

| Requirement | Cloud Kerberos trust<br/>Group Policy or Modern managed | Key trust<br/>Group Policy or Modern managed | Certificate Trust<br/>Mixed managed | Certificate Trust<br/>Modern managed | 
| --- | --- | --- | --- | --- |
| **Windows Version** | Any supported Windows client versions| Any supported Windows client versions | Any supported Windows client versions |
| **Schema Version** | No specific Schema requirement | Windows Server 2016 or later schema | Windows Server 2016 or later schema | Windows Server 2016 or later schema |
| **Domain and Forest Functional Level** | Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level |Windows Server 2008 R2 Domain/Forest functional level |
| **Domain Controller Version** | Any supported Windows Server versions | Any supported Windows Server versions | Any supported Windows Server versions | Any supported Windows Server versions  |
| **Certificate Authority**| Not required |Any supported Windows Server versions | Any supported Windows Server versions | Any supported Windows Server versions |
| **AD FS Version** | Not required | Not required | Any supported Windows Server versions | Any supported Windows Server versions |
| **MFA Requirement** | Azure MFA, or<br/>AD FS w/Azure MFA adapter, or<br/>AD FS w/Azure MFA Server adapter, or<br/>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or<br/>AD FS w/Azure MFA adapter, or<br/>AD FS w/Azure MFA Server adapter, or<br/>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or<br/>AD FS w/Azure MFA adapter, or<br/>AD FS w/Azure MFA Server adapter, or<br/>AD FS w/3rd Party MFA Adapter | Azure MFA tenant, or<br/>AD FS w/Azure MFA adapter, or<br/>AD FS w/Azure MFA Server adapter, or<br/>AD FS w/3rd Party MFA Adapter |
| **Azure AD Connect** | Not required. It's recommended to use [Microsoft Entra Connect cloud sync](/azure/active-directory/hybrid/cloud-sync/what-is-cloud-sync) | Required | Required | Required |
| **Azure AD License** | Azure AD Premium, optional | Azure AD Premium, optional | Azure AD Premium, needed for device write-back | Azure AD Premium, optional. Intune license required |

## On-premises Deployments

The table shows the minimum requirements for each deployment.

| Key trust <br/> Group Policy managed | Certificate trust <br/> Group Policy managed|
| --- | --- |
|Any supported Windows client versions|Any supported Windows client versions|
| Windows Server 2016 Schema | Windows Server 2016 Schema|
| Windows Server 2008 R2 Domain/Forest functional level | Windows Server 2008 R2 Domain/Forest functional level |
| Any supported Windows Server versions  | Any supported Windows Server versions |
| Any supported Windows Server versions  | Any supported Windows Server versions  |
| Any supported Windows Server versions  | Any supported Windows Server versions  |
| AD FS with 3rd Party MFA Adapter | AD FS with 3rd Party MFA Adapter |