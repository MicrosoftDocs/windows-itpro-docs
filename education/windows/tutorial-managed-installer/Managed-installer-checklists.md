---
title: Consideration before deploying apps with Managed Installer
description: Learn how to Consideration before deploying apps with Managed Installer
ms.date: 02/24/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

Follow these checklists to ensure that your Windows 11 SE devices are set up with a managed installer and that app deployment completed correctly.

## Device setup (TAP only)

These checks must be done once per device.

- [ ] AppLocker policy deployed
  - [ ] Policy shows as applied in Event Viewer
  - [ ] Detection script was successful

- [ ] WDAC supplemental policy deployed
  - [ ] Use `citool -lp` to dump policies
  - [ ] Event viewer shows policy being applied

## Deploy an application via Intune

- [ ] .intunewin package created (for Win32 apps)
- [ ] Package uploaded via Intune (for Win32 apps)
- [ ] Assign the package to the correct groups

## Validate application deployment

- [ ] No Intune installation errors
- [ ] No errors when opening the app from the device
- [ ] *CI Policy* in the Event Viewer logs don't show app's executables being blocked

## Create additional policies for incompatible apps
### WDAC supplemental policy

- [ ] Signed .cip .p7b file with Device Guard
- [ ] Targets Base policy: `82443e1e-8a39-4b4a-96a8-f40ddc00b9f3`
- [ ] Policy created in Intune and assigned to the correct groups
- [ ] Policy applied in Event Viewer

### AppLocker

- [ ] Only applied to an updater or installer
- [ ] Merge option used
- [ ] Policy created in Intune and assigned to the correct groups
