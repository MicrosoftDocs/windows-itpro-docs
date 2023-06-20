---
title: Temporary enterprise feature control in Windows 11
description: Learn about the Windows 11 features behind temporary enterprise feature control.
ms.prod: windows-client
ms.technology: itpro-fundamentals
ms.author: mstewart
author: mestew
manager: aaroncz
ms.localizationpriority: medium
ms.topic: reference
ms.date: 05/19/2023
ms.collection:
  - highpri
  - tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 22H2 and later</a>
---

# Temporary enterprise feature control in Windows 11
<!--7790977-->
New features and enhancements are introduced through the monthly cumulative update to provide continuous innovation for Windows 11. To give organizations time to plan and prepare, some of these new features are temporarily turned off by default. Features that are turned off by default are listed in the KB article for the monthly cumulative update. Typically, a feature is selected to be off by default because it either impacts the user experience or IT administrators significantly.

Features behind temporary enterprise control are automatically disabled for devices that have their Windows updates managed by policies.

## Windows 11 features behind temporary enterprise feature control

The following features are behind temporary enterprise control in Windows 11:

| Feature | KB article where the feature was introduced | Feature update that ends temporary control |
|---|---|---|
| Touch-optimized taskbar for 2-in-1 devices | [February 28, 2023 - KB5022913](https://support.microsoft.com/topic/february-28-2023-kb5022913-os-build-22621-1344-preview-3e38c0d9-924d-4f3f-b0b6-3bd49b2657b9) | 2023 annual feature update |

## Enable features behind temporary enterprise feature control

Features that are behind temporary enterprise control will be enabled when one of the following conditions is met:

- The device installs the annual feature update that enables the new features by default
- The device receives a policy that enables features behind temporary enterprise control
  - When the policy is enabled, all features on the device behind temporary control are turned on when the device next restarts.

## Policy settings for temporary enterprise feature control

You can use a policy to enable features that are behind temporary enterprise feature control. When this policy is enabled, all features that were disabled behind temporary enterprise feature control are turned on when the device next reboots. The following polices apply to Windows 11, version 22H2 with [KB5022845](https://support.microsoft.com/en-us/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later:

- **Group Policy:** Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience\\**Enable features introduced via servicing that are off by default**

- **CSP**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowTemporaryEnterpriseFeatureControl](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowtemporaryenterprisefeaturecontrol)
   - In the Intune [settings catalog](/mem/intune/configuration/settings-catalog), this setting is named **Allow Temporary Enterprise Feature Control** under the **Windows Update for Business** category.
