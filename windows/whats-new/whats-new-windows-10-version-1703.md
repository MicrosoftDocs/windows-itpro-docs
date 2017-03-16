---
title: What's new in Windows 10, version 1607 (Windows 10)
description: This topic lists new and updated topics in the What's new in Windows 10 documentation for Windows 10 and Windows 10 Mobile.
keywords: ["What's new in Windows 10", "Windows 10", "creators update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: TrudyHa
localizationpriority: high
---

# What's new in Windows 10, version 1703

Below is a list of some of the new and updated features in Windows 10, version 1703 (also known as the Creators Update).

>[!NOTE]
>For release dates and servicing options for each version, see [Windows 10 release information](https://technet.microsoft.com/en-us/windows/release-info).
 
## Configuration

### Windows Configuration Designer

Previously known as *Windows Imaging and Configuration Designer (ICD)*, the tool for creating provisioning packages is renamed **Windows Configuration Designer**. The new Windows Configuration Designer is available in Windows Store as an app. To run Windows Configuration Designer on earlier versions of Windows, you can still install Windows Configuration Designer from the Windows Assessment and Deployment Kit (ADK).

Windows Configuration Designer in Windows 10, version 1703, includes several new wizards to make it easier to create provisioning packages.

![wizards for desktop, mobile, kiosk, HoloLens, Surface Hub](images/wcd-options.png)

[Learn more about Windows Configuration Designer.](../configure/provisioning-packages.md)

### Lockdown Designer app

The Lockdown Designer app helps you configure and create your lockdown XML file, and includes a remote simulation to help you determine the layout for tiles on the Start screen. Using Lockdown Designer is easier than [manually creating a lockdown XML file](../configure/lockdown-xml.md).

![Lockdown Designer app in Store](images/ldstore.png)

[Learn more about the Lockdown Designer app.](../configure/mobile-lockdown-designer.md)

### Windows Spotlight

The following new Group Policy and mobile device management (MDM) settings are added to help you configure Windows Spotlight user experiences:

- **Turn off the Windows Spotlight on Action Center**
- **Do not use diagnostic data for tailored experiences**
- **Turn off the Windows Welcome Experience**

[Learn more about Windows Spotlight.](../configure/windows-spotlight.md)

### Kiosk mode for Windows 10 Mobile

In Windows 10 Mobile, version 1703, [Apps Corner](https://support.microsoft.com/instantanswers/7959c547-aa80-5ff1-9097-1784b6894845/set-up-apps-corner) is removed. Enterprises can use [Enterprise Assigned Access to configure kiosk experiences](../configure/set-up-a-kiosk-for-windows-10-for-mobile-edition.md) on devices running Windows 10 Mobile. 

### Start and taskbar layout

Enterprises can apply a customized Start and tasbkar layout to devices running Windows 10 Pro, version 1703. 

Additional MDM policy settings are available for Start and taskbar layout. For details, see [Manage Windows 10 Start and taskbar layout](../configure/windows-10-start-layout-options-and-policies.md).

Previously, the customized taskbar could only be deployed using Group Policy or provisioning packages. Windows 10, version 1703, adds support for customized taskbars to [MDM](../configure/customize-windows-10-start-screens-by-using-mobile-device-management.md).

## Learn more

- [Windows 10 release information](https://technet.microsoft.com/en-us/windows/release-info)
