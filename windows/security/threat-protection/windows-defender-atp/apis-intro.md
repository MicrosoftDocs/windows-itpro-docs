---
title: Windows Defender Advanced Threat Protection API overview  
description: Learn how you can use APIs to automate workflows and innovate based on Windows Defender ATP capabilities
keywords: apis, graph api, supported apis, actor, alerts, machine, user, domain, ip, file, advanced hunting, query
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 09/03/2018
---

# Windows Defender ATP API overview

**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)


>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Prerelease information](prerelease.md)]

Windows Defender ATP exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Windows Defender ATP capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you’ll need to take the following steps to use the APIs:
- Create an app
- Get an access token
- Use the token to access Windows Defender ATP API


As a developer, you decide which permissions for Windows Defender ATP your app requests. When a user signs in to your app they (or, in some cases, an administrator) are given a chance to give consent to these permissions. If the user provides consent, your app is given access to the resources and APIs that it has requested. For apps that don't take a signed-in user, permissions can be pre-approved to by an administrator when the app is installed or during sign-up.

## Delegated permissions, application permissions, and effective permissions

Windows Defender ATP has two types of permissions: delegated permissions and application permissions.

- **Delegated permissions** <br> 
    Used by apps that have a signed-in user present. For these apps either the user or an administrator provides consent to the permissions that the app requests and the app is delegated permission to act as the signed-in user when making calls to Windows Defender ATP. Some delegated permissions can be consented to by non-administrative users, but some higher-privileged permissions require administrator consent.
- **Application permissions** <br>
    Used by apps that run without a signed-in user present; for example, apps that run as background services or daemons. Application permissions can only be consented by an administrator.

Effective permissions are permissions that your app will have when making requests to Windows Defender ATP. It is important to understand the difference between the delegated and application permissions that your app is granted and its effective permissions when making calls to Windows Defender ATP.

- For delegated permissions, the effective permissions of your app will be the least privileged intersection of the delegated permissions the app has been granted (via consent) and the privileges of the currently signed-in user. Your app can never have more privileges than the signed-in user. Within organizations, the privileges of the signed-in user may be determined by policy or by membership in one or more administrator roles. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles).

	For example, assume your app has been granted the `Machine.CollectForensics` delegated permission. This permission nominally grants your app permission to collect investigation package from a machine. If the signed-in user has 'Alerts Investigation' permission, your app will be able to collect investigation package from a machine, if the machine belongs to a group the user is exposed to. However, if the signed-in user doesn't have 'Alerts Investigation' permission, your app won't be able to collect investigation package from any machine.

- For application permissions, the effective permissions of your app will be the full level of privileges implied by the permission. For example, an app that has the `Machine.CollectForensics` application permission can collect investigation package from any machine in the organization.


## Related topics
- [Supported Windows Defender ATP APIs](exposed-apis-list.md)
- [Access Windows Defender ATP without a user](exposed-apis-create-app-webapp.md)
- [Access Windows Defender ATP on behalf of a user](exposed-apis-create-app-nativeapp.md)