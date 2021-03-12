---
title: Servicing stack updates (Windows 10)
description: In this article, learn how servicing stack updates improve the code that installs the other updates.
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.collection: M365-modern-desktop
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Servicing stack updates


**Applies to**

- Windows 10, Windows 8.1, Windows 8, Windows 7

## What is a servicing stack update?
Servicing stack updates provide fixes to the servicing stack, the component that installs Windows updates. Additionally, it contains the "component-based servicing stack" (CBS), which is a key underlying component for several elements of Windows deployment, such as DISM, SFC, changing Windows features or roles, and repairing components. The CBS is a small component that typically does not have updates released every month.

## Why should servicing stack updates be installed and kept up to date?
  
Servicing stack updates improve the reliability of the update process to mitigate potential issues while installing the latest quality updates and feature updates. If you don't install the latest servicing stack update, there's a risk that your device can't be updated with the latest Microsoft security fixes.

## When are they released?

Servicing stack update are released depending on new issues or vulnerabilities. In rare occasions a servicing stack update may need to be released on demand to address an issue impacting systems installing the monthly security update. Starting in November 2018 new servicing stack updates will be classified as "Security" with a severity rating of "Critical."

>[!NOTE]
>You can find a list of servicing stack updates at [Latest servicing stack updates](https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/ADV990001).

## What's the difference between a servicing stack update and a cumulative update?

Both Windows 10 and Windows Server use the cumulative update mechanism, in which many fixes to improve the quality and security of Windows are packaged into a single update. Each cumulative update includes the changes and fixes from all previous updates.

Servicing stack updates must ship separately from the cumulative updates because they modify the component that installs Windows updates. The servicing stack is released separately because the servicing stack itself requires an update. For example, the cumulative update [KB4284880](https://support.microsoft.com/help/4284880/windows-10-update-kb4284880) requires the [May 17, 2018 servicing stack update](https://support.microsoft.com/help/4132216), which includes updates to Windows Update.

## Is there any special guidance?

Microsoft recommends you install the latest servicing stack updates for your operating system before installing the latest cumulative update.

Typically, the improvements are reliability and performance improvements that do not require any specific special guidance. If there is any significant impact, it will be present in the release notes.

## Installation notes

* Servicing stack updates contain the full servicing stack; as a result, typically administrators only need to install the latest servicing stack update for the operating system.
* Installing servicing stack update does not require restarting the device, so installation should not be disruptive. 
* Servicing stack update releases are specific to the operating system version (build number), much like quality updates.
* Search to install latest available [Servicing stack update for Windows 10](https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/ADV990001).
* Once a servicing stack update is installed, it cannot be removed or uninstalled from the machine.

## Simplifying on-premises deployment of servicing stack updates

With the Windows Update experience, servicing stack updates and cumulative updates are deployed together to the device. The update stack automatically orchestrates the installation, so both are applied correctly. Starting in February 2021, the cumulative update will include the latest servicing stack updates, to provide a single cumulative update payload to both Windows Server Update Services (WSUS) and Microsoft Catalog. If you use an endpoint management tool backed by WSUS, such as Configuration Manager, you will only have to select and deploy the monthly cumulative update. The latest servicing stack updates will automatically be applied correctly. Release notes and file information for cumulative updates, including those related to the servicing stack, will be in a single KB article. The combined monthly cumulative update will be available on Windows 10, version 2004 and later starting with the 2021 2C release, KB4601382.
