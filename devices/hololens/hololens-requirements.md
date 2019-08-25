---
title: Set up HoloLens in a commercial environment
description: Learn more about deploying and managing HoloLens in enterprise environments.
ms.prod: hololens
ms.sitesec: library
ms.assetid: 88bf50aa-0bac-4142-afa4-20b37c013001
author: scooley
ms.author: scooley
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/15/2019
---

# Deploy HoloLens in a commercial environment

TODO - [Commercial features](https://docs.microsoft.com/en-us/windows/mixed-reality/commercial-features)

Deploy and configure HoloLens at scale in a commercial setting.  

This article includes:

- infrastructure requirements and recommendations for HoloLens management
- tools for provisioning HoloLens
- instructions for remote device management
- options for application deployment

This guide assumes basic familiarity with HoloLens. Follow the [get started guide](./hololens-setup.md) to set up HoloLens for the first time.

## Infrastructure for managing HoloLens

HoloLens are, at their core, a Windows mobile device integrated with Azure.  They work best in commercial environments with wireless network availability (wi-fi) and access to Microsoft services.

Critical cloud services include:

- Azure active directory (AAD)
- Windows Update (WU)

Commercial customers will need enterprise mobility management (EMM) or mobile device management (MDM) infrastructure in order to manage HoloLens devices at scale.  This guide uses [Microsoft Intune](https://www.microsoft.com/enterprise-mobility-security/microsoft-intune) as an example though any provider with full support for Microsoft Policy can support HoloLens.  Ask your mobile device management provider if they support HoloLens 2.

HoloLens does support a limited set of cloud disconnected experiences.

## Initial set up at scale

The HoloLens out of box experience is great for setting up one or two devices or for experiencing HoloLens for the first time.  If you're provisioning many HoloLens devices, however, picking your language and settings manually for each device gets tedious and limits scale.

This section:

1. introduces Windows provisioning using provisioning packages
1. walks through applying a provisioning package during first setup

### Create and apply a provisioning package

The best way to configure many new HoloLens devices is with Windows provisioning.  Using Windows provisioning, you can specify desired configuration and settings required to enroll the devices into management and then apply that configuration to target devices in minutes.

A [provisioning package](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-packages)  (.ppkg) is a collection of configuration settings. With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device.

### Upgrade to Windows Holographic for Business

- HoloLens Enterprise license XML file

Some of the HoloLens configurations that you can apply in a provisioning package:

- Apply certificates to the device
- Set up a Wi-Fi connection
- Pre-configure out of box questions like language and locale.
- (HoloLens 2) bulk enroll in mobile device management
- (HoloLens v1) Apply key to enable Windows Holographic for Business

Follow [this guide](https://docs.microsoft.com/hololens/hololens-provisioning) to create and apply a provisioning package to HoloLens.

### Set up user identity and enroll in device management

The last step setting up HoloLens for management at scale is to enroll devices with mobile device management infrastructure.  There are several ways to enroll:

1. Bulk enrollment with a security token in a provisioning package.  
  Pros: this is the most automated approach  
  Cons: takes initial server-side setup  
1. Auto-enroll on user sign in
  Pros: easiest approach  
  Cons: users will need to complete set up after the provisioning package has been applied  
1. _not recommended_ - Manually enroll post-setup  
  Pros: possible to enroll after set up  
  Cons: most manual approach and devices aren't centrally manageable until they're manually enrolled.

Learn more about MDM enrollment [here](hololens-enroll-mdm.md).

## Ongoing device management

Ongoing device management will depend on your mobile device management infrastructure.  Most have the same general functionality but the user interface may vary widely.

This article outlines [policies and capabilities HoloLens supports](https://docs.microsoft.com/windows/client-management/mdm/configuration-service-provider-reference#hololens).

[This article](https://docs.microsoft.com/intune/windows-holographic-for-business) talks about Intune's management tools for HoloLens.

### Push compliance policy via Intune

[Compliance policies](https://docs.microsoft.com/intune/device-compliance-get-started) are rules and settings that devices must meet to be compliant in your corporate infrastructure. Use these policies with Conditional Access to block access to company resources for devices that are not-compliant.

For example, you can create a policy that requires Bitlocker be enabled.

[Create compliance policies with Intune](https://docs.microsoft.com/intune/compliance-policy-create-windows).

### Manage updates

Intune includes a feature called update rings for Windows 10 devices, including HoloLens 2 and HoloLens v1 (with Holographic for Business). Update rings include a group of settings that determine how and when updates are installed.

For example, you can create a maintenance window to install updates, or choose to restart after updates are installed.  You can also choose to pause updates indefinitely until you're ready to update.

Read more about [configuring update rings with Intune](https://docs.microsoft.com/en-us/intune/windows-update-for-business-configure).

## Application management

Manage holoLens applications through:

1. Microsoft Store  
  The Microsoft Store is the best way to distribute and consume application on HoloLens.  There is a great set of core HoloLens applications already available in the store or you can [publish your own](https://docs.microsoft.com/en-us/windows/uwp/publish/).  
  All applications in the store are available publicly to everyone, if that isn't acceptable, checkout the Microsoft Store for Business.  

1. [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/)  
  Microsoft Store for Business and Education is a custom store for your corporate environment.  It lets you use the Microsoft Store built into Windows 10 and HoloLens to find, acquire, distribute, and manage apps for your organization.  It lets you deploy apps that are specific to your commercial environment but not to the world.

1. Application deployment and management via Intune or another mobile device management solution  
  Most mobile device management solutions, including Intune, provide a way to deploy line of business applications directly to a set of enrolled devices.  See this article for [Intune app install](https://docs.microsoft.com/intune/apps-deploy).

1. _not recommended_ Device Portal  
  Applications can also be installed on HoloLens directly using the Windows Device Portal.  This isn't recommended since Developer Mode has to be enabled to use device portal.

Read more about [installing apps on HoloLens](https://docs.microsoft.com/hololens/hololens-install-apps).

## Get support

Get support through the Microsoft support site.

[File a support request](https://support.microsoft.com/en-us/supportforbusiness/productselection?sapid=e9391227-fa6d-927b-0fff-f96288631b8f).

## Technical Reference

### Wireless network EAP support

- PEAP-MS-CHAPv2
- PEAP-TLS
- TLS
- TTLS-CHAP
- TTLS-CHAPv2
- TTLS-MS-CHAPv2
- TTLS-PAP
- TTLS-TLS
