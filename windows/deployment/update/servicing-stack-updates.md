---
title: Servicing stack updates (Windows 10)
description: Servicing stack updates improve the code that installs the other updates.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: Jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.date: 11/13/2018
---

# Servicing stack updates


**Applies to**

- Windows 10

## What is a servicing stack update?
The "servicing stack" is the code that installs other operating system updates. Additionally, it contains the "component-based servicing stack" (CBS), which is a key underlying component for several elements of Windows deployment, such as DISM, SFC, changing Windows features or roles, and repairing components. The CBS is a small component that typically does not have updates released every month.

## Why should servicing stack updates be installed and kept up to date?
  
Having the latest servicing stack update is a prerequisite to reliably installing the latest quality updates and feature updates. Servicing stack updates improve the reliability and performance of the update process.

## When are they released?

Currently, the servicing stack update releases are aligned with the monthly quality update release date, though sometimes they are released on a separate date if required.

>[!NOTE]
>You can find a list of servicing stack updates at [Latest servicing stack updates](https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/ADV990001).

## What's the difference between a servicing stack update and a cumulative update?

Both Windows 10 and Windows Server use the cumulative update mechanism, in which many fixes are packaged into a single update. Each cumulative update includes the changes and fixes from all previous updates.

However, there are some operating system fixes that aren’t included in a cumulative update but are still pre-requisites for the cumulative update. That is, the component that performs the actual updates sometimes itself requires an update. Those fixes are available in a servicing stack update. For example, the cumulative update [KB4284880](https://support.microsoft.com/help/4284880/windows-10-update-kb4284880) requires the [May 17, 2018 servicing stack update](https://support.microsoft.com/help/4132216), which includes updates to Windows Update.

If a given cumulative update required a servicing stack update, you'll see that information in the release notes for the update. **If you try to install the cumulative update without installing the servicing stack update, you'll get an error.**

## Is there any special guidance?

Typically, the improvements are reliability, security, and performance improvements that do not require any specific special guidance. If there is any significant impact, it will be present in the release notes.

## Installation notes

* Servicing stack updates contain the full servicing stack; as a result, typically administrators only need to install the latest servicing stack update for the operating system.
* Installing servicing stack update does not require restarting the device, so installation should not be disruptive. 
* Servicing stack update releases are specific to the operating system version (build number), much like quality updates.
* Search to install latest available [Servicing stack update for Windows 10](https://support.microsoft.com/search?query=servicing%20stack%20update%20Windows%2010).

