---
title: AppLocker policy use scenarios
description: This article for the IT professional lists the various application control scenarios in which AppLocker policies can be effectively implemented.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# AppLocker policy use scenarios

This article for the IT professional lists the various application control scenarios in which AppLocker policies can be effectively implemented.

AppLocker can help you improve the management of application control and the maintenance of application control policies. Application control scenarios addressed by AppLocker include:

1. **App inventory**

    AppLocker can apply its policy in an audit-only mode where all app access activity is collected in event logs for further analysis. Windows PowerShell cmdlets are also available to help you understand app usage and access.

2. **Protection against unwanted software**

    AppLocker can block apps from running simply by excluding them from the list of allowed apps per business group or user. Any app not allowed by your policy based on its publisher, installation path, or file hash, is blocked.

3. **Licensing conformance**

    With AppLocker's app inventory described earlier, you can identify the software that corresponds to your software licensing agreements and restrict application usage based on licensing agreements.

4. **Software standardization**

    AppLocker policies can allow only supported or approved apps to run on computers within a business group. This configuration permits a more uniform app deployment.

## Use scenarios

The following are examples of scenarios in which AppLocker can be used:

- Your organization implements a policy to standardize the applications used within each business group, so you need to determine the expected usage compared to the actual usage.
- Your security policy for application usage changed, and you need to evaluate where and when those deployed apps are being accessed.
- Your organization's security policy dictates the use of only licensed software, so you need to determine which apps aren't licensed or prevent unauthorized users from running licensed software.
- An app is no longer supported by your organization, so you need to prevent it from being used by everyone.
- Your organization needs to restrict the use of Universal Windows apps to just those apps your organization approves of or develops.
- The potential that unwanted software can be introduced in your environment is high, so you need to reduce this threat.
- The license to an app is revoked or expired in your organization, so you need to prevent it from being used by everyone.
- A new app or a new version of an app is deployed, and you need to allow certain groups to use it.
- Specific software tools aren't allowed within the organization, or only specific users have access to those tools.
- A single user or small group of users needs to use a specific app that is denied for all others.
- Some people who need access to different apps share computers in your organization.
- In addition to other measures, you need to control the access to sensitive data through app usage.

## Related articles

- [AppLocker technical reference](applocker-technical-reference.md)
