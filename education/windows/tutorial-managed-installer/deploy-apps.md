---
title: Consideration before deploying apps with Managed Installer
description: Learn how to Consideration before deploying apps with Managed Installer
ms.date: 02/27/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

![](./images/deploy-app.svg)

The process to deploy applications to Windows SE devices via Microsoft Intune, is the same used for non-SE devices.\
However, on Windows SE devices, apps may successfully install, but they need validation to be certain that they are functional.

The following table details the applications types that can be deployed via Intune, and considerations about the installation on Windows SE:

|**Installer/App type**|**Installer extensions**|**Install methods via Intune**|**Notes**|
|-|-|-|-|
|[Universal Windows Platform (UWP)](/windows/uwp/get-started/universal-application-platform-guide)|`.appx`<br>`.appxbundle`<br>`.msix`<br>|<ul><li>For public apps (apps publicly available from an independent software vendor) use the integration with Microsoft Store (Windows Package Manager)</li><li>Private apps (internal line-of-business apps) are currently unsupported</li></ul>|You must write WDAC supplemental policies.|
|Win32|`.exe`<br>`.msi`|<ul><li>Microsoft Store integration (Windows Package Manager)</li><li>[Intune Management Extension (IME)](mem/intune/apps/apps-win32-app-management)</li></ul>|There are known limitations that might prevent a specific app from being installed. For more information, see [validate applications](Validate-applications#known-limitations).|
| Progressive Web Apps (PWAs) |`.msix`|<ul><li>Microsoft Store integration (Windows Package Manager)</li><li>[Force-installed web Apps](/deployedge/microsoft-edge-policies#configure-list-of-force-installed-web-apps) via [settings catalog policies](/mem/intune/configuration/settings-catalog)</li></ul>||
| Web links | n/a | [Web apps](/mem/intune/apps/web-app)||

>**Important**
>
> Although you'll be able to install apps on Windows 11 SE devices via Intune, some apps may not perform well on these devices due those apps' minimum spec requirements.
>
> Before deploying apps, first check which apps will be targeting your Windows 11 SE devices and ensure that they will have their minimum requirements met, and ensure that apps which were previously blocked from installing or running are no longer unintentionally being provisioned once the managed installer policies are introduced.
>

## Win32 apps

Win32 apps are installed from Intune via an .intunewin package created by the IntuneWinAppUtil command line tool.\
Once the package is created, it can be uploaded to Intune and deployed to devices.

For more information, see:
- [Windows app deployment by using Microsoft Intune][MEM-1]
- [Prepare a Win32 app to be uploaded to Microsoft Intune][MEM-2]
- [Add and assign Win32 apps to Microsoft Intune][MEM-3]

## UWP apps

UWP apps use two primary flows for installation:

- The app is in the Microsoft Store
   - See the section [below](#store-apps) on Store apps
- You have an msix, appx, etc. file for installing the app (LOB app)
   - Follow the instructions here to [add and deploy a Windows line-of-business app via Microsoft Intune][MEM-4]

## PWA apps

If you are trying to install a PWA via Intune, you can do so with the [WebAppInstallForceList Microsoft Edge policy][EDGE-1]. This does not require writing an additional supplemental policy for the app to be installed.

## Store apps

<!--
### Store for Education
[Microsoft Store for Education - M365 Education | Microsoft Learn][M365-1]

Microsoft Store apps use the Microsoft Store for Education to be deployed. For Windows 11 SE, this is currently the only supported path to deploy packaged apps found in the Microsoft Store. For unpackaged Win32 apps, you can follow the instructions for the Win32 apps in this guide.
The instructions in this documentation are not new; other Windows SKUs have also used the Microsoft Store for Education to deploy Store apps. However, these instructions consolidate various features and concepts surrounding Store apps so that you know precisely how to install a Store app for Windows 11 SE.

#### Getting set up
In order to start deploying Microsoft Store apps, you'll need to get the Microsoft Store for Education set up with Intune.
To set this up, you'll need to configure both Intune and the Microsoft Store for Education. You'll only need to do these configurations once.
##### Set Intune as the Management tool
Setting Intune as the management tool will be useful for assigning, monitoring, and managing Store apps that you purchase in the [Microsoft Store for Education](https://educationstore.microsoft.com/).
1. Ensure that you sign into the Microsoft Store for Education using the same tenant account you use to sign into Intune. This should be a Global Administrator account.
2. In the Business Store, choose the Manage tab, select Settings, and choose the Distribute tab.
3. Choose Add management tool to add Microsoft Intune if it's not there already. If you don't have Microsoft Intune activated as your mobile device management tool, click Activate next to Microsoft Intune. Note that you should activate Microsoft Intune rather than Microsoft Intune Enrollment.

##### Configure synchronization
Synchronization will ensure that apps purchased in the Microsoft Store for Education show up in your Intune admin center.
1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) (i.e. Intune).
2. Select Tenant administration > Connectors and tokens > Microsoft Store for Business.
(Note that the Microsoft Store for Education name is not used in Intune, but it refers to syncing with the Microsoft Store for Education and can be used interchangeably.)
3. Click Enable.
4. If you haven't already done so, click the link to sign up for the Microsoft Store for Education and associate your account as detailed previously.
5. From the Language drop-down list, choose the language in which apps from the Microsoft Store for Education are displayed in the portal. Regardless of the language in which they are displayed, they are installed in the end user's language when available.
6. Click Sync to get the apps you've purchased from the Microsoft Store for Education into Intune.

##### Installing apps
To install apps, you'll first get the app from the [Microsoft Store for Education](https://educationstore.microsoft.com/), and then manage that app through Intune.
1. Visit the Microsoft Store for Education.
2. Search the Store for an app, and click on the app.
3. From the app's page, click the "Get the app" button.
4.Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) (i.e. Intune).
5. Select Tenant administration > Connectors and tokens > Microsoft Store for Business.
(Note that the Microsoft Store for Education name is not used in Intune, but it refers to syncing with the Microsoft Store for Education.)
6. Click Sync to get the apps you've purchased from the Microsoft Store for Education into Intune.
7. Your app should now be visible in the Apps > All apps list in Intune:
8. From the list, you can click on the app and assign it just like any other app.
9. On the app's page, go to Manage > Properties.
10. Next to Assignments, click Edit.
11. On the following page, set the groups and devices you'd like to install the app to under the Required section.
12. Click the Review + Save button to review the assignments, then click the Save button.

-->
### Store app (new)

UWP apps deployed through Intune via Apps > Microsoft Store (new) are currently not supported.

Win32 apps can be deployed through this flow, but are subject to the [known limitations of managed installers](Validate-applications#known-limitations).

![](./images/store-app-new.png)

---

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