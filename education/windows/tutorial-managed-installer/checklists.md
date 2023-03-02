---
title: Checklists for managed installer
description: Differnet checklists for managed installer
ms.date: 03/02/2023
ms.topic: checklist
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Checklists for managed installer

This article contains a list of checklists related to the tasks in the Managed installer tutorial.
These checklists help to ensure that your Windows 11 SE devices are set up with a managed installer and that app deployment completed correctly.

## Deploy an application via Intune

> [!div class="checklist"]
> - intunewin package created (for Win32 apps)
> - Package uploaded via Intune (for Win32 apps)
> - Assign the package to the correct groups

## Validate application deployment

> [!div class="checklist"]
> - No Intune installation errors
> - No errors when opening the app from the device
> - *CI Policy* in the Event Viewer logs don't show app's executables being blocked

## Create additional policies for incompatible apps
### WDAC supplemental policy

> [!div class="checklist"]
> - Signed .cip .p7b file with Device Guard
> - Targets Base policy: `82443e1e-8a39-4b4a-96a8-f40ddc00b9f3`
> - Policy created in Intune and assigned to the correct groups
> - Policy applied in Event Viewer

### AppLocker

> [!div class="checklist"]
> - Only applied to an updater or installer
> - Merge option used
> - Policy created in Intune and assigned to the correct groups
