---
title: Configuration service providers for IT pros
description: Describes how IT pros and system administrators can use configuration service providers (CSPs) to configure devices.
ms.topic: how-to
ms.date: 07/09/2024
---

# Configuration service providers for IT pros

This article explains how IT pros and system administrators can take advantage of many settings available through configuration service providers (CSPs) to configure devices running Windows client in their organizations. CSPs expose device configuration settings in Windows client. The CSPs are used by mobile device management (MDM) service providers and are documented in the [Configuration Service Provider reference](/windows/client-management/mdm/configuration-service-provider-reference).

## What is a CSP?

In the client operating system, a CSP is the interface between configuration settings that are specified in a provisioning document and configuration settings that are on the device. CSPs are similar to Group Policy client-side extensions in that they provide an interface to read, set, modify, or delete configuration settings for a given feature. Typically, these settings map to registry keys, files, or permissions. Some of these settings are configurable, and some are read-only.

On the Windows client platform, the management approach for desktop uses CSPs to configure and manage all devices running Windows client.

Each CSP provides access to specific settings. For example, the [Wi-Fi CSP](/windows/client-management/mdm/wifi-csp) contains the settings to create a Wi-Fi profile. CSPs are behind many of the management tasks and policies for Windows client, both in Microsoft Intune and in non-Microsoft MDM service providers.

CSPs receive configuration policies in the XML-based Synchronization Markup Language (SyncML) format, pushed from an MDM-compliant management server, such as Microsoft Intune. Traditional enterprise management systems, such as Microsoft Configuration Manager, can also target CSPs, by using a client-side Windows Management Instrumentation (WMI)-to-CSP Bridge.

## Synchronization Markup Language (SyncML)

The Open Mobile Alliance Device Management (OMA-DM) protocol uses the XML-based SyncML for data exchange between compliant servers and clients. SyncML offers an open standard to use as an alternative to vendor-specific management solutions (such as WMI). The value for enterprises adopting industry standard management protocols is that it allows the management of a broader set of vendor devices using a single platform (such as Microsoft Intune). Device policies, including VPN connection profiles, are delivered to client devices formatted as in SyncML. The target CSP reads this information and applies the necessary configurations.

## The WMI-to-CSP Bridge

The WMI-to-CSP Bridge is a component allowing configuration of Windows client CSPs using scripts and traditional enterprise management software, such as Configuration Manager using WMI. The bridge is responsible for reading WMI commands and through a component called the common device configurator pass them to a CSP for application on the device.

[Learn how to use the WMI Bridge Provider with PowerShell.](/windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider)

## Why should you learn about CSPs?

Generally, enterprises rely on Group Policy or MDM to configure and manage devices. For devices running Windows, MDM services use CSPs to configure your devices.

In addition, you may have unmanaged devices, or a large number of devices that you want to configure before enrolling them in management. You may also want to apply custom settings that aren't available through your MDM service. The [CSP documentation](/windows/client-management/mdm/configuration-service-provider-reference) can help you understand the settings that can be configured or queried. You can also learn about all of the available configuration settings.

## CSPs in Windows Configuration Designer

You can use Windows Configuration Designer to create [provisioning packages](provisioning-packages.md) to apply settings to devices during the out-of-box-experience (OOBE), and after the devices are set up. You can also use provisioning packages to configure a device's connectivity and enroll the device in MDM. Many of the runtime settings in Windows Configuration Designer are based on CSPs.

Many settings in Windows Configuration Designer display documentation for that setting in the center pane, and include a reference to the CSP if the setting uses one.

:::image type="content" source="images/cspinicd.png" alt-text="In Windows Configuration Designer, how help content appears in ICD.":::

[Provisioning packages in Windows client](provisioning-packages.md) explains how to use the Windows Configuration Designer tool to create a runtime provisioning package.

## CSPs in MDM

Most, if not all, CSPs are surfaced through your MDM service. If you see a CSP that provides a capability that you want to make use of and can't find that capability in your MDM service, contact your MDM provider for assistance. It might be named differently than you expected. You can see the CSPs supported by MDM in the [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference).

When a CSP is available but isn't explicitly included in your MDM solution, you may be able to make use of the CSP by using OMA-URI settings. In Intune, for example, you can use [custom policy settings](/mem/intune/configuration/custom-settings-configure) to deploy settings. Intune documents [a partial list of settings](/mem/intune/configuration/custom-settings-windows-10) that you can enter in the **OMA-URI Settings** section of a custom policy, if your MDM service provides that extension. You'll notice that the list doesn't explain the meanings of the allowed and default values, so use the [CSP reference documentation](/windows/client-management/mdm/configuration-service-provider-reference) to locate that information.
