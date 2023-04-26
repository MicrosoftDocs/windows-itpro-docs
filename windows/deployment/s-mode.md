---
title: Windows Pro in S mode
description: Overview of Windows Pro and Enterprise in S mode.
ms.localizationpriority: high
ms.prod: windows-client
manager: aaroncz
author: frankroj
ms.author: frankroj
ms.topic: conceptual
ms.date: 04/26/2023
ms.technology: itpro-deploy
---

# Windows Pro in S mode

S mode is a configuration that's available on all Windows Editions, and it's enabled at the time of manufacturing. Windows can be switched out of S mode at any time, as shown in the  picture below. However, the switch is a one-time operation, and can only be undone by a wipe and reload of the operating system.

:::image type="content" source="images/smodeconfig.png" alt-text="Table listing the capabilities of S mode across the different Windows editions.":::

## S mode key features

### Microsoft-verified security

With Windows in S mode, you'll find your favorite applications in the Microsoft Store, where they're Microsoft-verified for security. You can also feel secure when you're online. Microsoft Edge, your default browser, gives you protection against phishing and socially-engineered malware.

### Performance that lasts

Start-ups are quick, and S mode is built to keep them that way. With Microsoft Edge as your browser, your online experience is fast and secure. You'll enjoy a smooth, responsive experience, whether you're streaming videos, opening apps, or being productive on the go.

### Choice and flexibility

Save your files to your favorite cloud, like OneDrive or Dropbox, and access them from any device you choose. Browse the Microsoft Store for thousands of apps, and if you don't find exactly what you want, you can easily [switch out of S mode](./windows-10-pro-in-s-mode.md) to Windows Home, Pro, or Enterprise editions at any time and search the web for more choices, as shown below.

:::image type="content" source="images/s-mode-flow-chart.png" alt-text="Switching out of S mode flow chart.":::

## Deployment

Windows in S mode is built for [modern management](/windows/client-management/manage-windows-10-in-your-organization-modern-management), which means using [Windows Autopilot](/mem/autopilot/windows-autopilot) for deployment, and a Mobile Device Management (MDM) solution for management, like Microsoft Intune.

Windows Autopilot lets you deploy the device directly to a user without IT having to touch the physical device. Instead of manually deploying a custom image, Windows Autopilot will start with a generic device that can only be used to join the company Azure AD tenant or Active Directory domain. Policies are then deployed automatically through MDM, to customize the device to the user and the desired environment.

For the devices that are shipped in S mode, you can either keep them in S mode, use Windows Autopilot to switch them out of S mode during the first run process, or later using MDM, if desired.

## Keep line of business apps functioning with Desktop Bridge

[Desktop Bridge](/windows/uwp/porting/desktop-to-uwp-root) enables you to convert your line of business apps to a packaged app with UWP manifest. After testing and validating the apps, you can distribute them through an MDM solution like Microsoft Intune.

## Repackage Win32 apps into the MSIX format

The [MSIX Packaging Tool](/windows/application-management/msix-app-packaging-tool), available from the Microsoft Store, enables you to repackage existing Win32 applications to the MSIX format. You can run your desktop installers through the MSIX Packaging Tool interactively, and obtain an MSIX package that you can deploy through and MDM solution like Microsoft Intune. The MSIX Packaging Tool is another way to get your apps ready to run on Windows in S mode.

## Related links

- [Consumer applications for S mode](https://www.microsoft.com/windows/s-mode)
- [S mode devices](https://www.microsoft.com/windows/view-all-devices)
- [Windows Defender Application Control deployment guide](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide)
- [Microsoft Defender for Endpoint documentation](/microsoft-365/security/defender-endpoint/)
