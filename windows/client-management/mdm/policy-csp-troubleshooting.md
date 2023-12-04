---
title: Troubleshooting Policy CSP
description: Learn more about the Troubleshooting Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 11/06/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Troubleshooting-Begin -->
# Policy CSP - Troubleshooting

<!-- Troubleshooting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Troubleshooting-Editable-End -->

<!-- AllowRecommendations-Begin -->
## AllowRecommendations

<!-- AllowRecommendations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowRecommendations-Applicability-End -->

<!-- AllowRecommendations-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Troubleshooting/AllowRecommendations
```
<!-- AllowRecommendations-OmaUri-End -->

<!-- AllowRecommendations-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures how troubleshooting for known problems can be applied on the device and lets administrators configure how it's applied to their domains/IT environments.

Not configuring this policy setting will allow the user to configure how troubleshooting is applied.

Enabling this policy allows you to configure how troubleshooting is applied on the user's device. You can select from one of the following values:

0 = Don't allow users, system features, or Microsoft to apply troubleshooting.

1 = Only automatically apply troubleshooting for critical problems by system features and Microsoft.

2 = Automatically apply troubleshooting for critical problems by system features and Microsoft. Notify users when troubleshooting for other problems is available and allow users to choose to apply or ignore.

3 = Automatically apply troubleshooting for critical and other problems by system features and Microsoft. Notify users when troubleshooting has solved a problem.

4 = Automatically apply troubleshooting for critical and other problems by system features and Microsoft. Don't notify users when troubleshooting has solved a problem.

5 = Allow the user to choose their own troubleshooting settings.

After setting this policy, you can use the following instructions to check devices in your domain for available troubleshooting from Microsoft:

1. Create a bat script with the following contents:

rem The following batch script triggers Recommended Troubleshooting schtasks /run /TN "\Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner".

1. To create a new immediate task, navigate to the Group Policy Management Editor > Computer Configuration > Preferences and select Control Panel Settings.

1. Under Control Panel settings, right-click on Scheduled Tasks and select New. Select Immediate Task (At least Windows 7).

1. Provide name and description as appropriate, then under Security Options set the user account to System and select the Run with highest privileges checkbox.

1. In the Actions tab, create a new action, select Start a Program as its type, then enter the file created in step 1.

1. Configure the task to deploy to your domain.
<!-- AllowRecommendations-Description-End -->

<!-- AllowRecommendations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowRecommendations-Editable-End -->

<!-- AllowRecommendations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowRecommendations-DFProperties-End -->

<!-- AllowRecommendations-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Off - Don't allow users, system features, or Microsoft to apply troubleshooting. |
| 1 (Default) | Critical - Automatically apply troubleshooting for critical problems detected by system features and Microsoft. Don't notify users when troubleshooting has solved a problem. |
| 2 | Prompt - Automatically apply troubleshooting for critical problems detected by system features and Microsoft. Prompt users when troubleshooting for other problems is available and allow the user to choose to apply or ignore. |
| 3 | Notify - Automatically apply troubleshooting for critical and other problems detected by system features and Microsoft. Notify users when troubleshooting has solved a problem. |
| 4 | Silent - Automatically apply troubleshooting for critical and other problems detected by system features and Microsoft. Don't notify users when troubleshooting has solved a problem. |
| 5 | Configurable - Allow the user to choose their own troubleshooting settings. |
<!-- AllowRecommendations-AllowedValues-End -->

<!-- AllowRecommendations-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | TroubleshootingAllowRecommendations |
| Friendly Name | Troubleshooting: Allow users to access recommended troubleshooting for known problems |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Microsoft Support Diagnostic Tool |
| Registry Key Name | Software\Policies\Microsoft\Windows\Troubleshooting\AllowRecommendations |
| Registry Value Name | TroubleshootingAllowRecommendations |
| ADMX File Name | MSDT.admx |
<!-- AllowRecommendations-GpMapping-End -->

<!-- AllowRecommendations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowRecommendations-Examples-End -->

<!-- AllowRecommendations-End -->

<!-- Troubleshooting-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Troubleshooting-CspMoreInfo-End -->

<!-- Troubleshooting-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
