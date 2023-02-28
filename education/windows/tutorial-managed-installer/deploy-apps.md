---
title: Applications deployment considerations
description: Learn how to deploy different types of applications to Windows 11 SE and some considerations before deploying them.
ms.date: 02/27/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Applications deployment considerations

:::image type="content" source="./images/deploy-app.svg" alt-text="Diagram showing the three tutorial steps, highlighting the app deployment step." border="false":::

The process to deploy applications to Windows SE devices via Microsoft Intune, is the same used for non-SE devices.\
However, on Windows SE devices, apps may successfully install, but they need validation to be certain that they are functional.

The following table details the applications types that can be deployed to Windows devices via Intune, and considerations about the installation on Windows SE:

|**Installer/App type**|**Installer extensions**|**Available installation methods via Intune**|**Considerations for Windows 11 SE**|
|-|-|-|-|
|Win32|`.exe`<br>`.msi`|<li>Microsoft Store integration (Windows Package Manager)</li><li>[Intune Management Extension (IME)](mem/intune/apps/apps-win32-app-management)</li>|✅ Deploy using IME.<br>There are known limitations that might prevent a specific app from being installed. For more information, see [validate applications](validate-applications#known-limitations).|
| Progressive Web Apps (PWAs) |`.msix`|<li>Microsoft Store integration (Windows Package Manager)</li><li>[Force-installed web Apps](/deployedge/microsoft-edge-policies#configure-list-of-force-installed-web-apps) via [settings catalog policies](/mem/intune/configuration/settings-catalog)</li>|✅ use settings catalog policies as PWAs deployed from the Store are not supported.|
| Web links | n/a | [Web apps](/mem/intune/apps/web-app)|✅||[Universal Windows Platform (UWP)](/windows/uwp/get-started/universal-application-platform-guide) LOB apps - private, internal line-of-business apps|`.appx`<br>`.appxbundle`<br>`.msix`<br>|[Deploy as line-of-business apps][MEM-4]|✅|
|[Universal Windows Platform (UWP)](/windows/uwp/get-started/universal-application-platform-guide) public apps - apps publicly available from an independent software vendor|`.appx`<br>`.appxbundle`<br>`.msix`<br>|Integration with Microsoft Store (Windows Package Manager)|⛔ currently unsupported|

> [!IMPORTANT]
> Although you'll be able to install apps on Windows 11 SE devices via Intune, some apps may not perform well on these devices due those apps' minimum spec requirements.
>
> Before deploying apps, first check which apps will be targeting your Windows 11 SE devices, and ensure that they meet the requirements. Ensure that apps which were previously blocked from installing or running are no longer unintentionally being provisioned once the managed installer policies are introduced.

## Win32 apps

Win32 apps are installed from Intune via an *.intunewin* package created by the IntuneWinAppUtil command line tool.\
Once the package is created, it can be uploaded to Intune and deployed to devices.

For more information, see:
- [Windows app deployment by using Microsoft Intune][MEM-1]
- [Prepare a Win32 app to be uploaded to Microsoft Intune][MEM-2]
- [Add and assign Win32 apps to Microsoft Intune][MEM-3]

There are known limitations that might prevent a specific app from being installed. For more information, see [validate applications](validate-applications#known-limitations)


Win32 apps can be deployed through the Microsoft Store.

## PWA apps

PWA apps can be deployed via Intune using the [Microsoft Store integration (Windows Package Manager)][M365-1] or via [Microsoft Edge policies][EDGE-1].
Currently, Windows 11 SE supports the deployment via Microsoft Edge policies only.

## UWP apps

### Line of business apps

You have an msix, appx, etc. file for installing the app (LOB app). Follow the instructions here to [add and deploy a Windows line-of-business app via Microsoft Intune][MEM-4]

### Microsoft Store apps

UWP apps deployed through Intune via Apps > Microsoft Store (new) are currently unsupported for Windows 11 SE.

[EDGE-1]: https://learn.microsoft.com/deployedge/microsoft-edge-policies

[M365-1]: https://learn.microsoft.com/microsoft-365/education/deploy/microsoft-store-for-education

[MEM-1]: https://learn.microsoft.com/mem/intune/apps/apps-windows-10-app-deploy
[MEM-2]: https://learn.microsoft.com/mem/intune/apps/apps-win32-prepare
[MEM-3]: https://learn.microsoft.com/mem/intune/apps/apps-win32-add
[MEM-4]: https://learn.microsoft.com/mem/intune/apps/lob-apps-windows



<!--
| **Application type** | **Installer extensions** | **Example** | **Installable via Intune** |
|---|---|---|---|
| Win32 | <li>.exe</li><li>.msi</li>|<li>Kite Student Portal</li><li>JAWS</li><li>Zoom</li>| Installable* |
| UWP Line of business apps | <li>.msix</li><li>.msixbundle</li><li>.appx</li><li>.appxbundle</li> | These are usually custom developed apps |<li>Not installable via IME initially</li><li>Requires writing additional WDAC supplemental policy</li> |
| Progressive Web Apps (PWAs) |<li>.msix</li>|<li>Outlook</li><li>Wikipedia</li>| <li>PWAs in an MSIX is not installable via IME</li><li>PWAs can be deployed through [Microsoft Edge policies in Intune][EDGE-1]</li>|
| Store For Education | N/A | <li>QuickAssist</li><li>Kortext</li> | <li>Not installable via IME initially</li><li>Requires writing additional WDAC supplemental policy</li> |
| Microsoft Store app (legacy) option in Intune | N/A | Kortext | Apps provisioned via this option in Intune are not compatible with Windows 11 SE. If you need to install Store apps, use the Store for Education instead. |
| Microsoft Store app (new) option in Intune | N/A | <li>Adobe Reader DC</li><li>(Win32) Kortext (UWP)</li> | UWP Store apps provisioned via this option in Intune are not compatible with Windows 11 SE. If you need to install UWP Store apps, use the Store for Education instead. Win32 Store apps provisioned via this option in Intune are installable*. |
| Web links | N/A | https://outlook.com | Installable; link to web page shows up in the Start Menu |
-->