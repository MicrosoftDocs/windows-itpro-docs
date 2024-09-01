---
title: Microsoft Edge
description: This article explains how Microsoft Edge updates are managed in Windows Autopatch
ms.date: 09/15/2023
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Microsoft Edge

Windows Autopatch uses the [Stable Channel](/deployedge/microsoft-edge-channels#stable-channel) of Microsoft Edge.

## Device eligibility

For a device to be eligible for Microsoft Edge updates as a part of Windows Autopatch, they must meet the following criteria:

- The device must be powered on and have an internet connection.
- There are no policy conflicts between Windows Autopatch policies and customer policies.
- The device must be able to access the required network endpoints to reach the Microsoft Edge update service.
- If Microsoft Edge is open, it must restart for the update process to complete.

## Update release schedule

Microsoft Edge checks for updates every 10 hours. Quality updates occur weekly by default. Feature updates occur automatically every four weeks and are rolled out [progressively](/deployedge/microsoft-edge-update-progressive-rollout) by the Microsoft Edge product group to ensure the best experience for customers. The update is available within a few days of the initial release.

Browser updates with critical security fixes have a faster rollout cadence than updates that don't have critical security fixes to ensure fast protection from vulnerabilities.

Devices in the Test device group receive feature updates from the [Beta Channel](/deployedge/microsoft-edge-channels#beta-channel). This channel is fully supported and automatically updated with new features approximately every four weeks.

## Pausing and resuming updates

Currently, Windows Autopatch can't pause or resume Microsoft Edge updates.

## Incidents and outages

If you're experiencing issues related to Microsoft Edge updates, [submit a support request](../operate/windows-autopatch-support-request.md).
