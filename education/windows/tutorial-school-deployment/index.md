---
title: Introduction to the tutorial deploy and manage Windows devices in a school
description: Introduction to deployment and management of Windows devices in education environments.
ms.date: 08/31/2022
ms.topic: conceptual
---

# Tutorial: deploy and manage Windows devices in a school

This guide introduces the tools and services available from Microsoft to deploy, configure and manage Windows devices in an education environment.

## Audience and user requirements

This tutorial is intended for education professionals responsible for deploying and managing Windows devices, including:  

- School leaders
- IT administrators
- Teachers
- Microsoft partners

This content provides a comprehensive path for schools to deploy and manage new Windows devices with Microsoft Intune. It includes step-by-step information how to manage devices throughout their lifecycle, and specific guidance for **Windows 11 SE** and **Surface devices**.

> [!NOTE]
> Depending on your school setup scenario, you may not need to implement all steps.

## Device lifecycle management

Historically, school IT administrators and educators have struggled to find an easy-to-use, flexible, and secure way to manage the lifecycle of the devices in their schools. In response, Microsoft has developed integrated suites of products for streamlined, cost-effective device lifecycle management.

Microsoft 365 Education provides tools and services that enable simplified management of all devices through Microsoft Intune services. With Microsoft's solutions, IT administrators have the flexibility to support diverse scenarios, including school-owned devices and bring-your-own devices.
Microsoft Intune services include:

- [Microsoft Intune][MEM-1]
- [Microsoft Intune for Education][INT-1]
- [Configuration Manager][MEM-2]
- [Desktop Analytics][MEM-3]
- [Windows Autopilot][MEM-4]
- [Surface Management Portal][MEM-5]

These services are part of the Microsoft 365 stack to help secure access, protect data, and manage risk.

## Why Intune for Education?

Windows devices can be managed with Intune for Education, enabling simplified management of multiple devices from a single point.
From enrollment, through configuration and protection, to resetting, Intune for Education helps school IT administrators manage and optimize the devices throughout their lifecycle:

:::image type="content" source="./images/device-lifecycle.png" alt-text="The device lifecycle for Intune-managed devices" border="false":::

- **Enroll:** to enable remote device management, devices must be enrolled in Intune with an account in your Azure AD tenant. Some enrollment methods require an IT administrator to initiate enrollment, while others require students to complete the initial device setup process. This document discusses the facets of various device enrollment methodologies
- **Configure:** once the devices are enrolled in Intune, applications and settings will be applied, as defined by the IT administrator
- **Protect and manage:** in addition to its configuration capabilities, Intune for Education helps protect devices from unauthorized access or malicious attacks. For example, adding an extra layer of authentication with Windows Hello can make devices more secure. Policies are available that let you control settings for Windows Firewall, Endpoint Protection, and software updates
- **Retire:** when it's time to repurpose a device, Intune for Education offers several options, including resetting the device, removing it from management, or wiping school data. In this document, we cover different device return and exchange scenarios

## Four pillars of modern device management

In the remainder of this document, we'll discuss the key concepts and benefits of modern device management with Microsoft 365 solutions for education. The guidance is organized around the four main pillars of modern device management:

- **Identity management:** setting up and configuring the identity system, with Microsoft 365 Education and Azure Active Directory, as the foundation for user identity and authentication
- **Initial setup:** setting up the Intune for Education environment for managing devices, including configuring settings, deploying applications, and defining updates cadence  
- **Device enrollment:** Setting up Windows devices for deployment and enrolling them in Intune for Education
- **Device reset:** Resetting managed devices with Intune for Education

________________________________________________________
## Next steps

Let's begin with the creation and configuration of your Azure AD tenant and Intune environment.

> [!div class="nextstepaction"]
> [Next: Set up Azure Active Directory >](set-up-azure-ad.md)

<!-- Reference links in article -->

[MEM-1]: /mem/intune/fundamentals/what-is-intune
[MEM-2]: /mem/configmgr/core/understand/introduction
[MEM-3]: /mem/configmgr/desktop-analytics/overview
[MEM-4]: /mem/autopilot/windows-autopilot
[MEM-5]: /mem/autopilot/dfci-management

[INT-1]: /intune-education/what-is-intune-for-education