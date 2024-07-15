---
title: Manage Windows devices in your organization - transitioning to modern management
description: This article offers strategies for deploying and managing Windows devices, including deploying Windows in a mixed environment.
ms.localizationpriority: medium
ms.date: 07/08/2024
ms.topic: conceptual
---

# Manage Windows devices in your organization - transitioning to modern management

Use of personal devices for work, and users working outside the office, may be changing how your organization manages devices. Certain parts of your organization might require deep, granular control over devices, while other parts might seek lighter, scenario-based management that empowers the modern workforce. Windows offers the flexibility to respond to these changing requirements, and can easily be deployed in a mixed environment. You can shift the percentage of Windows devices gradually, following the normal upgrade schedules used in your organization.

Your organization can support various operating systems across a wide range of device types, and manage them through a common set of tools such as Microsoft Configuration Manager, Microsoft Intune, or other third-party products. This "managed diversity" enables you to empower your users to benefit from the productivity enhancements available on their new Windows devices (including rich touch and ink support), while still maintaining your standards for security and manageability. It can help you and your organization benefit from Windows faster.

This article offers guidance on strategies for deploying and managing Windows devices, including deploying Windows in a mixed environment. It covers [management options](#reviewing-the-management-options-for-windows) plus the four stages of the device lifecycle:

- [Deployment and Provisioning](#deployment-and-provisioning)
- [Identity and Authentication](#identity-and-authentication)
- [Configuration](#settings-and-configuration)
- [Updating and Servicing](#updating-and-servicing)

## Reviewing the management options for Windows

Windows offers a range of management options, as shown in the following diagram:

:::image type="content" source="images/windows-10-management-range-of-options.png" alt-text="Diagram of the path to modern IT." lightbox="images/windows-10-management-range-of-options.png":::

As indicated in the diagram, Microsoft continues to provide support for deep manageability and security through technologies like group Policy, Active Directory, and Configuration Manager. It also delivers a "mobile-first, cloud-first" approach of simplified, modern management using cloud-based device management solutions such as Microsoft Enterprise Mobility + Security (EMS). Future Windows innovations, delivered through Windows as a Service, are complemented by cloud services like Microsoft Intune, Microsoft Entra ID, Azure Information Protection, and Microsoft 365.

## Deployment and provisioning

With Windows, you can continue to use traditional OS deployment, but you can also "manage out of the box". To transform new devices into fully configured, fully managed devices, you can:

- Avoid reimaging by using dynamic provisioning, enabled by a cloud-based device management service such as [Windows Autopilot](/mem/autopilot/windows-autopilot) or [Microsoft Intune](/mem/intune/fundamentals/).

- Create self-contained provisioning packages built with the Windows Configuration Designer. For more information, see [Provisioning packages for Windows](/windows/configuration/provisioning-packages/provisioning-packages).

- Use traditional imaging techniques such as deploying custom images using [Configuration Manager](/mem/configmgr/core/understand/introduction).

You have multiple options for [upgrading to Windows 10 and Windows 11](/windows/deployment/windows-10-deployment-scenarios). For existing devices running Windows 10, you can use the robust in-place upgrade process for a fast, reliable move to Windows 11 while automatically preserving all the existing apps, data, and settings. This process usage can mean lower deployment costs, and improved productivity as end users can be immediately productive - everything is right where they left it. You can also use a traditional wipe-and-load approach if you prefer, using the same tools that you use today.

## Identity and authentication

You can use Windows and services like [Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-whatis) in new ways for cloud-based identity, authentication, and management. You can offer your users the ability to **"bring your own device" (BYOD)** or to **"choose your own device" (CYOD)** from a selection you make available. At the same time, you might be managing PCs and tablets that must be domain-joined because of specific applications or resources that are used on them.

You can envision user and device management as falling into these two categories:

- **Corporate (CYOD) or personal (BYOD) devices used by mobile users for SaaS apps such as Office 365.** With Windows, your users can self-provision their devices:

  - For corporate devices, they can set up corporate access with [Microsoft Entra join](/azure/active-directory/devices/overview). When you offer them Microsoft Entra join with automatic Intune MDM enrollment, they can bring devices into a corporate-managed state in [*one step*](https://techcommunity.microsoft.com/t5/azure-active-directory-identity/windows-10-azure-ad-and-microsoft-intune-automatic-mdm/ba-p/244067), all from the cloud.

    Microsoft Entra join is also a great solution for temporary staff, partners, or other part-time users. These accounts can be kept separate from the on-premises AD domain but still access needed corporate resources.

  - Likewise, for personal devices, users can use a new, simplified [BYOD experience](/azure/active-directory/devices/overview) to add their work account to Windows, then access work resources on the device.

- **Domain joined PCs and tablets used for traditional applications and access to important resources.** These applications and resources may be traditional ones that require authentication or accessing highly sensitive or classified resources on-premises.

  With Windows, if you have an on-premises [Active Directory](/windows-server/identity/whats-new-active-directory-domain-services) domain that's [integrated with Microsoft Entra ID](/azure/active-directory/devices/hybrid-azuread-join-plan), when employee devices are joined, they automatically register with Microsoft Entra ID. This registration provides:

  - Single sign-on to cloud and on-premises resources from everywhere
  - [Enterprise roaming of settings](/azure/active-directory/devices/enterprise-state-roaming-enable)
  - [Conditional access](/azure/active-directory/conditional-access/overview) to corporate resources based on the health or configuration of the device
  - [Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-identity-verification)
  - Windows Hello

  Domain joined PCs and tablets can continue to be managed with [Configuration Manager](/mem/configmgr/core/understand/introduction) client or group policy.

As you review the roles in your organization, you can use the following generalized decision tree to begin to identify users or devices that require domain join. Consider switching the remaining users to Microsoft Entra ID.

:::image type="content" source="images/windows-10-management-cyod-byod-flow.png" alt-text="Diagram of decision tree for device authentication options." lightbox="images/windows-10-management-cyod-byod-flow.png":::

## Settings and configuration

Your configuration requirements are defined by multiple factors, including the level of management needed, the devices and data managed, and your industry requirements. Meanwhile, users are frequently concerned about IT applying strict policies to their personal devices, but they still want access to corporate email and documents. You can create a consistent set of configurations across PCs, tablets, and phones through the common MDM layer.

- **MDM**: MDM gives you a way to configure settings that achieve your administrative intent without exposing every possible setting. (In contrast, group policy exposes fine-grained settings that you control individually.) One benefit of MDM is that it enables you to apply broader privacy, security, and application management settings through lighter and more efficient tools. MDM also allows you to target Internet-connected devices to manage policies without using group policy that requires on-premises domain-joined devices. This provision makes MDM the best choice for devices that are constantly on the go.

- **Group policy** and **Configuration Manager**: Your organization might still need to manage domain joined computers at a granular level using group policy settings. If so, group policy and Configuration Manager continue to be excellent management choices:

  - **Group policy** is the best way to granularly configure domain joined Windows PCs and tablets connected to the corporate network using Windows-based tools. Microsoft continues to add group policy settings with each new version of Windows.

  - **Configuration Manager** remains the recommended solution for granular configuration with robust software deployment, Windows updates, and OS deployment.

## Updating and servicing

With Windows as a Service, your IT department no longer needs to perform complex imaging (wipe-and-load) processes with each new Windows release. Whether on General Availability Channel or Long-Term Servicing Channel, devices receive the latest feature and quality updates through simple - often automatic - patching processes. For more information, see [Windows deployment scenarios](/windows/deployment/windows-10-deployment-scenarios).

MDM with Intune provide tools for applying Windows updates to client computers in your organization. Configuration Manager allows rich management and tracking capabilities of these updates, including maintenance windows and automatic deployment rules.

## Next steps

There are various steps you can take to begin the process of modernizing device management in your organization:

**Assess current management practices, and look for investments you might make today.** Which of your current practices need to stay the same, and which can you change? Specifically, what elements of traditional management do you need to retain and where can you modernize? Whether you take steps to minimize custom imaging, reevaluate settings management, or reassesses authentication and compliance, the benefits can be immediate. You can use [Group policy analytics in Microsoft Intune](/mem/intune/configuration/group-policy-analytics) to help determine which group policies supported by cloud-based MDM providers, including Microsoft Intune.

**Assess the different use cases and management needs in your environment.** Are there groups of devices that could benefit from lighter, simplified management? BYOD devices, for example, are natural candidates for cloud-based management. Users or devices handling more highly regulated data might require an on-premises Active Directory domain for authentication. Configuration Manager and EMS provide you with the flexibility to stage implementation of modern management scenarios while targeting different devices the way that best suits your business needs.

**Review the decision trees in this article.** With the different options in Windows, plus Configuration Manager and Enterprise Mobility + Security, you have the flexibility to handle imaging, authentication, settings, and management tools for any scenario.

**Take incremental steps.** Moving towards modern device management doesn't have to be an overnight transformation. New operating systems and devices can be brought in while older ones remain. With this "managed diversity," users can benefit from productivity enhancements on modern Windows devices, while you continue to maintain older devices according to your standards for security and manageability. The CSP policy [MDMWinsOverGP](./mdm/policy-csp-controlpolicyconflict.md#mdmwinsovergp) allows MDM policies to take precedence over group policy when both group policy and its equivalent MDM policies are set on the device. You can start implementing MDM policies while keeping your group policy environment. For more information, including the list of MDM policies with equivalent group policies, see [Policies supported by group policy](./mdm/policies-in-policy-csp-supported-by-group-policy.md).

**Optimize your existing investments**. On the road from traditional on-premises management to modern cloud-based management, take advantage of the flexible, hybrid architecture of Configuration Manager and Intune. Co-management enables you to concurrently manage Windows devices by using both Configuration Manager and Intune. For more information, see the following articles:

- [Co-management for Windows devices](/mem/configmgr/comanage/overview)
- [Prepare Windows devices for co-management](/mem/configmgr/comanage/how-to-prepare-Win10)
- [Switch Configuration Manager workloads to Intune](/mem/configmgr/comanage/how-to-switch-workloads)
- [Co-management dashboard in Configuration Manager](/mem/configmgr/comanage/how-to-monitor)

## Related articles

- [What is Intune?](/mem/intune/fundamentals/what-is-intune)
- [Policy CSP](./mdm/policy-configuration-service-provider.md)
- [Configuration service providers reference](./mdm/index.yml)
