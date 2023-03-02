---
title: Applications deployment considerations
description: Learn how to deploy different types of applications to Windows 11 SE and some considerations before deploying them.
ms.date: 03/01/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Applications deployment considerations

:::image type="content" source="./images/deploy-app.svg" alt-text="Diagram showing the three tutorial steps, highlighting the app deployment step." border="false":::

The process to deploy applications to Windows SE devices via Microsoft Intune, is the same used for non-SE devices.\
However, on Windows SE devices, apps may successfully install, but they need validation to be certain that they are functional.

The following table provides an overview of the applications types that can be deployed to Windows devices via Intune, and Windows SE installation considerations:

|**Installer/App type**|**Installer extensions**|**Available installation methods via Intune**|**Considerations for Windows 11 SE**|
|-|-|-|-|
|[Win32][WIN-1]|`.exe`<br>`.msi`|- Intune Management Extension (IME)<br> - Microsoft Store integration|⚠️ There are known limitations that might prevent a specific app from being installed.|
|[Universal Windows Platform (UWP)][UWP-1]|`.appx`<br>`.appxbundle`<br>`.msix`<br>|- For private apps: line-of-business apps<br>- For public apps: Microsoft Store integration|⚠️ LOB apps require a supplemental policy.<br><br>⛔ It's currently unsupported to use the Microsoft Store to deploy UWP apps on Windows SE.|
|[Progressive Web Apps (PWAs)][EDGE-2] |`.msix`|- Settings catalog policies<br>- Microsoft Store integration|✅ Use settings catalog policies.<br><br>⛔ It's currently unsupported to use the Microsoft Store to deploy PWAs.|
|Web links| n/a |- Web apps|✅ Web links are supported.|

> [!IMPORTANT]
> Although you'll be able to install apps on Windows 11 SE devices via Intune, some apps may not perform well on these devices due those apps' minimum spec requirements.
>
> Before deploying apps, first check which apps will be targeting your Windows 11 SE devices, and ensure that they meet the requirements. Ensure that apps which were previously blocked from installing or running are no longer unintentionally being provisioned once the managed installer policies are introduced.

## Win32 apps


The addition of Win32 applications to Intune should be carried out by repackaging the apps, and defining the commands to silently install them. The process is described in the article [Add, assign, and monitor a Win32 app in Microsoft Intune][MEM-1].

> [!IMPORTANT]
> There are known limitations that might prevent a specific app from being installed. For more information, see the next section [validate applications](validate-applications#known-limitations).

> [!NOTE]
> While Win32 apps can be deployed through the Microsoft Store integration with Intune (Windows Package Manager), it's currently an unsupported deployment method for Windows 11 SE.

## UWP apps

### Line of business apps

For private, line-of-business (LOB) apps, [deploy as line-of-business apps][MEM-4]
You have an msix, appx, etc. file for installing the app (LOB app). Follow the instructions here to [add and deploy a Windows line-of-business app via Microsoft Intune][MEM-4]

### Microsoft Store apps

UWP apps deployed through Intune via Apps > Microsoft Store (new) are currently unsupported for Windows 11 SE.
For more information,  see [validate applications](validate-apps#known-limitations)

## PWA apps

PWA apps can be deployed using the [Force-installed web Apps](/deployedge/microsoft-edge-policies#configure-list-of-force-installed-web-apps) option via [settings catalog policies](/mem/intune/configuration/settings-catalog).

While PWAs can be deployed through the Microsoft Store integration with Intune, it's currently an unsupported deployment method for Windows 11 SE.

[Microsoft Store integration (Windows Package Manager)][M365-1] or via [Microsoft Edge policies][EDGE-1].
Currently, Windows 11 SE supports the deployment via Microsoft Edge policies only.

## Web links

Web link can be deployed via Intune using [web apps][MEM-5], and will be available in the Start menu of the targeted devices.

## Next steps

Advance to the next article to learn how to validate the applications deployed to Windows 11 SE devices.

> [!div class="nextstepaction"]
> [Next: validate apps >](validate-apps.md)

[EDGE-1]: /deployedge/microsoft-edge-policies
[EDGE-2]: /microsoft-edge/progressive-web-apps-chromium

[MEM-0]: /mem/intune/apps/apps-win32-add
[MEM-1]: /mem/intune/apps/apps-windows-10-app-deploy
[MEM-2]: /mem/intune/apps/apps-win32-prepare
[MEM-3]: /mem/intune/apps/apps-win32-add
[MEM-4]: /mem/intune/apps/lob-apps-windows
[MEM-5]: /mem/intune/apps/web-app

[UWP-1]: /windows/uwp/get-started/universal-application-platform-guide
[WIN-1]: /windows/win32