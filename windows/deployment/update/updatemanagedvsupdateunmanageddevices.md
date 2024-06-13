---
# Required metadata
# For more information, see https://review.learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata?branch=main
# For valid values of ms.service, ms.prod, and ms.topic, see https://review.learn.microsoft.com/en-us/help/platform/metadata-taxonomies?branch=main

title:       # Add a title for the browser tab
description: # Add a meaningful description for search results
author:      mikolding # GitHub alias
ms.author:   v-mikolding # Microsoft alias
ms.service:  # Add the ms.service or ms.prod value
# ms.prod:   # To use ms.prod, uncomment it and delete ms.service
ms.topic:    # Add the ms.topic value
ms.date:     06/12/2024
---

# Update-managed vs Update-unmanaged devices

---
title: "Managing Windows Updates: IT Managed vs. Unmanaged Devices"
---

**Request title**: Defining Windows Update managed and Windows Update unmanaged devices

**Generated text**:

------------------------------------------------------------------------

---  
title: "Defining Windows Update managed and Windows Update unmanaged devices"  
description:  
author:  
ms.author: v-mikolding  
manager:  
ms.date: 06/05/2024  
ms.topic:  
ms.service: windows-client  
ms.subservice:  
ms.localizationpriority:  
ms.collection:  
ms.custom: QuickDraft  
ms.reviewer: thtrombl;arcarley;royork;sumitav;kerick;maferr;v-fvalentyna  
search.appverid: MET150  
f1.keywords:  
audience:  
ai-usage:  
- ai-assisted  
---  

\`\`\`html

# Managing Windows Updates: IT Managed vs. Unmanaged Devices

For IT administrators, understanding the differences between managed and unmanaged devices is crucial for effective Windows update management. This article provides clarity on the terminology and practices involved in managing Windows updates for both types of devices.

## What are Update-Managed Windows Devices?

Update-managed devices are those where an IT administrator or organization controls Windows updates through a management tool (such as Microsoft Intune) or by directly setting policies (for example, Group Policy (GPO), Configuration Service Provider (CSP) policy, or Graph).

**Note:** This is true even if you directly set registry keys, although this is not recommended as registry keys can be easily overwritten.

Managed devices can include desktops, laptops, tablets, servers, and manufacturing equipment. These devices are secured and configured according to your organization's standards and policies.

### IT-Managed: Windows Update Offering

Devices are considered Windows update-managed if you manage the update offering in the following ways:

- Configuring policies to manage which updates are offered to the specific device.
- Setting when your organization should receive feature, quality, and driver updates, among others.
- Using Group Policy (GP), Cloud Solution Provider (CSP), or Graph to configure these offerings.

### IT-Managed: Windows Update Experience

Devices are considered Windows update-managed if you use policies (GP, CSP, or Graph) to manage device behavior when taking Windows updates.

Examples of controllable device behavior include active hours, update grace periods and deadlines, update notifications, update scheduling, and more. Consult the complete list at [Update Policy CSP - Windows Client Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update).

## Examples of Update-Managed Windows Devices

Here are a few examples of update-managed devices:

- **Company-owned devices:** Devices provisioned by your IT department with corporate credentials, configurations, and policies.
- **Employee-owned devices in BYOD programs:** Personally owned devices enrolled in the company's device management system to securely access corporate resources.
- **Devices managed through Windows Autopilot:** Devices set up and preconfigured to be business-ready right out of the box.
- **Mandated security settings:** Devices with health requirements such as device encryption, PIN or strong password, specific inactivity timeout periods, and up-to-date operating systems.
- **Intune-enrolled devices:** Devices enrolled in Microsoft Intune for network access and enforced security policies.
- **Third-party managed devices:** Devices enrolled in third-party management tools with configured Windows update policies via GPO, CSP, or registry key.

## What are Update-Unmanaged Windows Devices?

Unlike update-managed devices, unmanaged devices are not controlled through policies, management tools, or software. These devices aren't enrolled in tools like Microsoft Intune or Configuration Manager. If you only configure the Settings page to control overall device behavior when taking updates, it is considered an unmanaged device.

**Note:** The term "Microsoft managed devices" used to refer to what we now call "update unmanaged Windows devices." Based on feedback, we have updated our terminology for clarity.

## Examples of Update-Unmanaged Windows Devices

Examples of update-unmanaged devices include:

- **Personal devices:** Devices owned by individuals at your organization that are not enrolled in any corporate management system.
- **BYOD devices not enrolled in management programs:** Devices used for work but not part of an organizational BYOD program.
- **Peripheral devices:** Devices like printers, IP phones, and uninterruptible power supplies (UPS) that cannot accept centrally managed administrative credentials.

For more information on managed and unmanaged devices, check out [Secure managed and unmanaged devices](https://docs.microsoft.com/mem/intune/protect/protect-devices).

## Recommendations

| SEO Keywords                                                                                              | Suggested Additions                                                                  | Links to Update                                                                                                                                                                                                                    | Issues/Concerns                                                    |
|-----------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| Windows update management, IT managed devices, unmanaged devices, Windows updates, Intune managed devices | Add detailed steps for configuring GPO, CSP, and Graph policies for managing updates | [Update Policy CSP - Windows Client Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-update), [Secure managed and unmanaged devices](https://docs.microsoft.com/mem/intune/protect/protect-devices) | Ensure all links are up to date and point to the correct resources |

\`\`\`
\*\*Customer Intent for this Article:\*\* Understand the differences between IT-managed and unmanaged Windows devices to better manage Windows updates.

------------------------------------------------------------------------

**Acrolinx score**: **82**

**Acrolinx correctness score**: 89

**Acrolinx scorecard** (Acrolinx account required): https://microsoft-ce-csi-qa.acrolinx.cloud/api/v1/checking/scorecards/d9ad0ab8-ffa3-4af1-a7c7-00cbb71a4d52

------------------------------------------------------------------------

**Reviewers**: thtrombl;arcarley;royork;sumitav;kerick;maferr;v-fvalentyna

**Key dates**:

------------------------------------------------------------------------

**Audience**: Admin

**Product**: Windows 10/11

**Article should cover the following**: Windows Update IT Managed = there are policies (GP, CSP, or Graph) configured on the device to manage update offering and/or experience. \nWindows Update Offering IT Managed = there are policies configured (GP, CSP, or Graph) to manage when/which feature, quality, driver, etc. updates are offered to the device. \nWindows Update Experience IT Managed = there are policies configured (GP, CSP, or Graph) to manage device behavior when taking Windows updates. \nWindows Update Non-IT Managed (Unmanaged) = no policies configured to control which updates are offered or the device behavior when taking updates outside of configuring the Settings page.

**How this article will help customers**: It’s all about managing Windows updates. Get clarity on terminology for managed and unmanaged Windows devices.

**Submitted by**: v-mikolding@microsoft.com

**Spec**: Update managed Windows devices \n\n \n\nAll organizational devices fall into two categories: they are either considered managed or unmanaged. The distinction is especially important when it comes to Windows features, updates, and rollouts. \n\n  \n\nFirst, let’s define managed and unmanaged devices in terms of Windows update management. A few examples of these device categories will help you identify your scenarios. These will serve as the basis for future communications as we update existing content in the coming weeks. \n\n \n\nNote: Windows updates are those that affect the Windows operating system and its components: Windows quality updates, Windows feature updates, and .NET updates. See Windows monthly updates explained. Office and other applications have different management mechanisms. \n\n \n\nWhat are update-managed Windows devices? \n\nWe define an update managed device based on Windows Update management. Windows devices are update managed if an IT administrator or an organization controls the updates for Windows via a management tool (such as Microsoft Intune) or by directly setting policies (for example, Group Policy (GPO), Configuration Service Provider (CSP) policy, or Graph). \n\n \n\nNote: This is true even if you directly set registry keys. However, this is not recommended given that registry keys can be easily overwritten. \n\n \n\n \n\nManaged devices can range from desktops, laptops, and tablets, to servers and manufacturing equipment. You secure and configure them according to your organization’s standards and policies. \n\n \n\nFurther, there are two categories of Windows update managed devices, based on whether you manage the offering or the experience of Windows updates. \n\n  \n\nIT-managed: Windows update offering \n\nYour devices are Windows update-managed if you manage update offering in all the following ways: \n\nYou configure policies to manage which updates are offered to the specific device. \n\nYou set when your organization should receive feature, quality, and driver updates, among others. \n\nYou use Group Policy (GP), Cloud Solution Provider (CSP), or Graph to configure these offerings. \n\n \n\nIT-managed: Windows update experience \n\nYour devices are Windows update-managed if you use policies (GP, CSP, or Graph) to manage device behavior when taking Windows updates.  \n\n \n\nExamples of controllable device behavior include active hours, update grace periods and deadlines, update notifications, update scheduling, and more. Consult the complete list at Update Policy CSP - Windows Client Management. \n\n \n\nInserting image... \n\n  \n\nExamples of update managed Windows devices \n\nHere are a few examples of an update managed device: \n\n  \n\nCompany-owned devices: If your IT department provisions devices, they are typically managed devices. You’d often provision these with specific corporate credentials, configurations, and policies for security and manageability. \n\nEmployee-owned devices enrolled in Bring-Your-Own-Device (BYOD) programs: Do you enroll any personally owned devices in the company’s device management system? You’d do this to help these employees access corporate resources securely. The device must adhere to Terms of Use for corporate and personally owned devices connecting to corporate resources. In that scenario, these devices are considered managed. \n\nDevices managed through Windows Autopilot: This tool allows you to set up and preconfigure new devices, making them business-ready right out of the box. If you use Autopilot for any devices, they’re managed. \n\nMandated security settings: Managed devices might include health requirements, such as device encryption, a PIN or strong password, a specific inactivity timeout period, and up-to-date operating systems with enabled auto-updates. \n\nIntune enrolled devices: Devices enrolled in Microsoft Intune are considered managed. Intune allows them to access the company network and enforces device encryption, PIN/password requirements, and specific inactivity timeout periods. \n\nThird-party managed devices: Devices enrolled into third-party management tooling are considered managed if you configure Windows update policies via GPO, CSP, or registry key. Specifically, you configure these devices to point them to a local Windows Server Update Services (WSUS), disable access to Windows Update (WU), or manage which Windows updates are offered. \n\nWhat are update-unmanaged Windows devices? \n\nUnlike update-managed devices, you don’t control unmanaged Windows devices through policies, management tools, or software. \n\nThese devices aren’t enrolled in tools like Microsoft Intune or Configuration Manager. \n\nYou don’t configure policies to control Windows update offerings or experience for these devices. \n\nIf all you do is configure the Settings page to control overall device behavior when taking updates, it’s an unmanaged device. \n\n \n\nNote: If you’ve seen the term “Microsoft managed devices,” it used to refer to what we now call “update unmanaged Windows devices.” Based on your feedback, we’ll update existing content with these more informative definitions to drive clarity. \n\nExamples of Windows update unmanaged devices \n\nExamples of update unmanaged devices include: \n\n  \n\nPersonal devices: If some individuals at your organization own a device that is not enrolled in any corporate management system, it’s an unmanaged device. It wouldn’t have any security configurations and policies that you typically apply for your organization. \n\nBYOD devices not enrolled in management programs: BYOD programs are characterized by management policies. So, if there are devices that aren’t part of an organizational BYOD program, they remain unmanaged even if used for work. \n\nPeripheral devices: Printers, IP phones, and uninterruptible power supplies (UPS) often don’t accept centrally managed administrative credentials. Therefore, they cannot have management agents installed on them, leaving them unmanaged. \n\n \n\nThank you for your feedback in helping us drive clarity into content and definitions. We’ll be updating existing content across Microsoft pages to reflect these definitions. For more information on managed and unmanaged devices, check out Secure managed and unmanaged devices.

**Run ID**: 3557dc16-a3ef-4007-8f20-8d929b2c29f1

**Session ID**: e46f3c4d-8c88-4605-9d63-4f325db41925
