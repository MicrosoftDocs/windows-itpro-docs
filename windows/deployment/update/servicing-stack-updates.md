---
title: Servicing stack updates (Windows 10)
description: Servicing stack updates improve the code that installs the other updates.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: Jaimeo
ms.localizationpriority: high
ms.author: jaimeo
ms.date: 05/25/2018
---

# Servicing stack updates


**Applies to**

- Windows 10

## What is a servicing stack update?
The "servicing stack" is the code that installs other operating system updates. Additionally, it contains the "component-based servicing stack" (CBS), which is a key underlying component for several elements of Windows deployment, such as DISM, SFC, changing Windows features or roles, and repairing components. The CBS is a small component that typically does not have updates released every month.

## Why should servicing stack updates be installed and kept up to date?
  
Having the latest servicing stack update is a prerequisite to reliably installing the latest quality updates and feature updates.  

## When are they released?

Currently, the servicing stack update releases are aligned with the monthly quality update release date, though sometimes they are released on a separate date if required.

## Is there any special guidance?

Typically, the improvements are reliability, security, and performance improvements that do not require any specific special guidance. If there is any significant impact, it will be present in the release notes.

## Installation notes

•	Servicing stack updates contain the full servicing stack; as a result, typically administrators only need to install the latest servicing stack update for the operating system.
•	Installing servicing stack update does not require restarting the device, so installation should not be disruptive.  
•	Servicing stack update releases are specific to the operating system version (build number), much like quality updates.
