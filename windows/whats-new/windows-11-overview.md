---
title: Windows 11 overview for administrators
description: Learn more about Windows 11. Read about the features IT professionals and administrators should know about Windows 11, including security, apps, the new desktop, and deploying and servicing PCs.
manager: aaroncz
author: mestew
ms.author: mstewart
ms.prod: windows-client
ms.date: 01/31/2024
ms.technology: itpro-fundamentals
ms.localizationpriority: medium
ms.topic: overview
ms.collection:
  - highpri
  - tier1
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Windows 11 overview

Windows 11 is a client operating system and includes features that organizations should know about. Windows 11 is built on the same foundation as Windows 10. If you use Windows 10, then Windows 11 is a natural transition. It's an update to what you know, and what you're familiar with.

Windows 11 offers innovations focused on enhancing end-user productivity, and is designed to support today's hybrid work environment.

Your investments in updates and device management are carried forward. For example, many of the same apps and tools can be used in Windows 11. Many of the same security settings and policies can be applied to Windows 11 devices, including PCs. You can use Windows Autopilot with a zero touch deployment to enroll your Windows devices in Microsoft Intune. You can also use newer features, such as Azure Virtual Desktop and Windows 365 on your Windows 11 devices.

This article lists what's new, and some of the features & improvements. For more information on what's new for OEMs, see [What's new in manufacturing, customization, and design](/windows-hardware/get-started/what-s-new-in-windows).

## Security and scanning

The security and privacy features in Windows 11 are similar to Windows 10. Security for your devices starts with the hardware, and includes OS security, application security, and user & identity security. There are features available in the Windows OS to help in these areas. This section describes some of these features. For a more comprehensive view, including zero trust, see [Windows security](/windows/security/).

- The **Windows Security** app is built into the OS. This app is an easy-to-use interface, and combines commonly used security features. For example, your get access to virus & threat protection, firewall & network protection, account protection, and more.
  
  For more information, see [the Windows Security app](/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center).

- **Security baselines** includes security settings that already configured, and ready to be deployed to your devices. If you don't know where to start, or it's too time consuming to go through all the settings, then you should look at Security Baselines.
  
  For more information, see [Windows security baselines](/windows/security/threat-protection/windows-security-configuration-framework/windows-security-baselines).

- **Microsoft Defender Antivirus** is built into Windows, and helps protect devices using next-generation security. When used with Microsoft Defender for Endpoint, your organization gets strong endpoint protection, and advanced endpoint protection & response. If you use Intune to manage devices, then you can create policies based on threat levels in Microsoft Defender for Endpoint.

  For more information, see:

  - [Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows)
  - [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)
  - [Enforce compliance for Microsoft Defender for Endpoint](/mem/intune/protect/advanced-threat-protection)

- The application security features help prevent unwanted or malicious code from running, isolate untrusted websites & untrusted Office files, protect against phishing or malware websites, and more.
  
  For more information, see  [Windows application security](/windows/security/apps).

- **Windows Hello for Business** helps protect users and identities. It replaces passwords, and uses a PIN or biometric that stays locally on the device. Device manufacturers are including more secure hardware features, such as IR cameras and TPM chips. These features are used with Windows Hello for Business to help protect user identities on your organization devices.

  As an admin, going passwordless help secures user identities. The Windows OS, Microsoft Entra ID, and Intune work together to remove passwords, create more secure policies, and help enforce compliance.

  For more information, see:

  - [Windows Hello for Business Overview](/windows/security/identity-protection/hello-for-business/hello-overview)
  - [Trusted Platform Module Technology Overview](/windows/security/information-protection/tpm/trusted-platform-module-overview)
  - [Integrate Windows Hello for Business with Intune](/mem/intune/protect/windows-hello)

For more information on the security features you can configure, manage, and enforce using Intune, see [Protect data and devices with Microsoft Intune](/mem/intune/protect/device-protect).

## Easier access to new services, and services you already use

- **Windows 365** is a desktop operating system that's also a cloud service. From another internet-connected device, including Android and macOS devices, you can run Windows 365, just like a virtual machine.

  For more information, see [What is Windows 365 Enterprise?](/windows-365/overview).

- **Microsoft 365 Apps** can be installed on Windows 11 clients using the device management tools you're already familiar with:

  - [What is Intune?](/mem/intune/fundamentals/what-is-intune)
  - [Add Microsoft 365 apps to Windows 10 devices with Microsoft Intune](/mem/intune/apps/apps-add-office365)
  - [What is Microsoft Configuration Manager?](/mem/configmgr/core/understand/introduction)
  - [Deploy Microsoft 365 Apps with Microsoft Configuration Manager](/deployoffice/deploy-microsoft-365-apps-configuration-manager)

- **Power Automate for desktop** allows your users to create flows in a low-code app to help them with everyday tasks. For example, users can create flows that save a message to OneNote, notify a team when there's a new Forms response, get notified when a file is added to SharePoint, and more.

  For more information, see [Getting started with Power Automate in Windows 11](/power-automate/desktop-flows/getting-started-windows-11).

## Customize the desktop experience

- **Snap Layouts, Snap Groups**: When you open an app, hover your mouse over the minimize or maximize option. When you do, you can select a different layout for the app:

  :::image type="content" source="./images/windows-11-whats-new/windows-11-snap-layouts.png" alt-text="In Windows 11, use the minimize or maximize button on an app to see the available snap layouts.":::

  This feature allows users to customize the sizes of apps on their desktop. And, when you add other apps to the layout, the snapped layout stays in place.

  When you add your apps in a Snap Layout, that layout is saved in a Snap Group. In the taskbar, when you hover over an app in an existing snap layout, it shows all the apps in that layout. This feature is the Snap Group. You can select the group, and the apps are opened in the same layout. As you add more Snap Groups, you can switch between them just by selecting the Snap Group.

  Users can manage some snap features using the **Settings** app > **System** > **Multitasking**. For more information on the end-user experience, see [Snap your windows](https://support.microsoft.com/windows/snap-your-windows-885a9b1e-a983-a3b1-16cd-c531795e6241).

  You can also add Snap Layouts to apps your organization creates. For more information, see [Support snap layouts for desktop apps on Windows 11](/windows/apps/desktop/modernize/apply-snap-layout-menu). 

  Starting in Windows 11, version 22H2, you can also activate snap layouts by dragging a window to the top of the screen. The feature is available for both mouse and touch.<!-- MAX 6294246, OS 32513582 -->

  :::image type="content" source="images/windows-11-whats-new/windows-11-22h2-snap-layouts.png" alt-text="In Windows 11, version 22H2, activate snap layouts by dragging a window to the top of the screen.":::

  For more information on the end-user experience, see [Snap your windows](https://support.microsoft.com/windows/snap-your-windows-885a9b1e-a983-a3b1-16cd-c531795e6241).

- **Start menu**: The Start menu includes some apps that are pinned by default. You can customize the Start menu layout by pinning (and unpinning) the apps you want. For example, you can pin commonly used apps in your organization, such as Outlook, Microsoft Teams, apps your organization creates, and more.

  Using policy, you can deploy your customized Start menu layout to devices in your organization. For more information, see [Customize the Start menu layout on Windows 11](/windows/configuration/customize-start-menu-layout-windows-11).

  Users can manage some Start menu features using the **Settings** app > **Personalization**. For more information on the end-user experience, see [See what's on the Start menu](https://support.microsoft.com/windows/see-what-s-on-the-start-menu-a8ccb400-ad49-962b-d2b1-93f453785a13).

- **Taskbar**: You can also pin (and unpin) apps on the Taskbar. For example, you can pin commonly used apps in your organization, such as Outlook, Microsoft Teams, apps your organization creates, and more.

  Using policy, you can deploy your customized Taskbar to devices in your organization. For more information, see [Customize the Taskbar on Windows 11](/windows/configuration/customize-taskbar-windows-11).

  Users can manage some Taskbar features using the **Settings** app > **Personalization**. For more information on the end-user experience, see:

  - [Customize the taskbar notification area](https://support.microsoft.com/windows/customize-the-taskbar-notification-area-e159e8d2-9ac5-b2bd-61c5-bb63c1d437c3)
  - [Pin apps and folders to the desktop or taskbar](https://support.microsoft.com/windows/pin-apps-and-folders-to-the-desktop-or-taskbar-f3c749fb-e298-4cf1-adda-7fd635df6bb0)

- **Widgets**: Widgets are available on the Taskbar. It includes a personalized feed that could be weather, calendar, stock prices, news, and more:

  :::image type="content" source="./images/windows-11-whats-new/windows-11-taskbar-widgets.png" alt-text="On the Windows 11 taskbar, select the widgets icon to open and see the available widgets.":::

  You can enable or disable this feature using the following policy:
    - **Group Policy**: Computer Configuration\Administrative Templates\Windows Components\widgets
     - **MDM**: ./Device/Vendor/MSFT/Policy/Config/NewsAndInterests/[AllowNewsAndInterests](/windows/client-management/mdm/policy-csp-newsandinterests)

  For information on the end-user experience, see [Stay up to date with widgets](https://support.microsoft.com/windows/stay-up-to-date-with-widgets-7ba79aaa-dac6-4687-b460-ad16a06be6e4).

- **Virtual desktops**: On the Taskbar, you can select the Desktops icon to create a new desktop:

  :::image type="content" source="./images/windows-11-whats-new/windows-11-taskbar-virtual-desktops.png" alt-text="On the Windows 11 taskbar, select the desktop icon to create many virtual desktops.":::

  Use the desktop to open different apps depending on what you're doing. For example, you can create a Travel desktop that includes web sites and apps that are focused on travel.

  Using policy, you can deploy a customized Taskbar to devices in your organization. For more information, see [Customize the Taskbar on Windows 11](/windows/configuration/customize-taskbar-windows-11).

  Users can manage some desktop features using **Settings** app > **System** > **Multitasking**. For more information on the end-user experience, see [Multiple desktops in Windows](https://support.microsoft.com/windows/multiple-desktops-in-windows-11-36f52e38-5b4a-557b-2ff9-e1a60c976434).

## Use your same apps, and new apps, improved

- Starting with Windows 11, users in the [Windows Insider program](https://insider.windows.com/) can download and install **Android™️ apps** from the Microsoft Store. This feature is called the **Windows Subsystem for Android**, and allows users to use Android apps on their Windows devices, similar to other apps installed from the Microsoft Store.

  Users open the Microsoft Store, install the **Amazon Appstore** app, and sign in with their Amazon account. When they sign in, they can search, download, and install Android apps.

  For more information, see:

  - [Windows Subsystem for Android](https://support.microsoft.com/windows/abed2335-81bf-490a-92e5-fe01b66e5c48)
  - [Windows Subsystem for Android developer information](/windows/android/wsa)

- Your Windows 10 apps also work on Windows 11. **[App Assure](https://www.microsoft.com/fasttrack/microsoft-365/app-assure)** is also available if there are some issues.

  You can continue to use **MSIX packages** for your UWP, Win32, WPF, and WinForm desktop application files. Continue to use **Windows Package Manager** to install Windows apps. You can create **Azure virtual desktops** that run Windows 11. Use **Azure Virtual desktop with MSIX app attach** to virtualize desktops and apps. For more information on these features, see [Overview of apps on Windows client devices](/windows/application-management/overview-windows-apps).

  In the **Settings** app > **Apps**, users can manage some of the app settings. For example, they can get apps anywhere, but let the user know if there's a comparable app in the Microsoft Store. They can also choose which apps start when they sign in.

  Using an MDM provider, like Intune, you can create policies that also manage some app settings. For a list of settings, see [App Store in Intune](/mem/intune/configuration/device-restrictions-windows-10#app-store).

- If you manage devices using Intune, then you might be familiar with the **Company Portal app**. Starting with Windows 11, the Company Portal is your private app repository for your organization apps. For more information, see [Private app repository in Windows 11](/windows/application-management/private-app-repository-mdm-company-portal-windows-11).

  For public and retail apps, continue using the Microsoft Store.

- **Windows Terminal app**: This app is included with the OS. On previous Windows versions, it's a separate download in the Microsoft Store. For more information, see [What is Windows Terminal?](/windows/terminal/).

  This app combines Windows PowerShell, a command prompt, and Azure Cloud Shell all within the same terminal window. You don't need to open separate apps to use these command-line applications. It has tabs. When you open a new tab, you can choose your command-line application:

    :::image type="content" source="./images/windows-11-whats-new/windows-terminal-app.png" alt-text="On Windows 11, open the Windows Terminal app to use Windows PowerShell, the command prompt, or Azure Cloud Shell to run commands.":::

  If users or groups in your organization do a lot with Windows PowerShell or the command prompt, then use policy to add the Windows Terminal app to the [Start menu layout](/windows/configuration/customize-start-menu-layout-windows-11) or the [Taskbar](/windows/configuration/customize-taskbar-windows-11).

  Users can also search for the Terminal app, right-select the app, and pin the app to the Start menu and taskbar.  

- The **Microsoft Store** has a new look, and includes more public and retail apps. For more information on the end-user experience, see:

  - [Get updates for apps and games in Microsoft Store](https://support.microsoft.com/account-billing/get-updates-for-apps-and-games-in-microsoft-store-a1fe19c0-532d-ec47-7035-d1c5a1dd464f)
  - [How to open Microsoft Store on Windows](https://support.microsoft.com/account-billing/how-to-open-microsoft-store-on-windows-10-e080b85a-7c9e-46a7-8d8b-3e9a42e32de6)

- The **Microsoft Edge** browser is included with the OS. Internet Explorer (IE) isn't available in Windows 11. In Microsoft Edge, you can use IE Mode if a website needs Internet Explorer. Open Microsoft Edge, and enter `edge://settings/defaultBrowser` in the URL.

  To save system resources, Microsoft Edge uses sleeping tabs. Users can configure these settings, and more, in `edge://settings/system`.

  Using Group Policy or an MDM provider, such as Intune, you can configure some Microsoft Edge settings. For more information, see [Microsoft Edge - Policies](/deployedge/microsoft-edge-policies) and [Configure Microsoft Edge policy settings](/mem/intune/configuration/administrative-templates-configure-edge).

## Deployment and servicing

- **Install Windows 11**: The same methods you use to install Windows 10 can also be used to install Windows 11. For example, you can deploy Windows to your devices using Windows Autopilot, Configuration Manager, and other methods. Windows 11 is delivered as an upgrade to eligible devices running Windows 10.

  For more information on getting started, see [Windows client deployment resources and documentation](/windows/deployment/) and [Plan for Windows 11](windows-11-plan.md).

  For more information on the end-user experience, see [Ways to install Windows 11](https://support.microsoft.com/windows/e0edbbfb-cfc5-4011-868b-2ce77ac7c70e).

- **Windows Autopilot**: If you're purchasing new devices, you can use Windows Autopilot to set up and preconfigure the devices. When users get the device, they sign in with their organization account (`user@contoso.com`). In the background, Autopilot gets them ready for use, and deploys any apps or policies you set. You can also use Windows Autopilot to reset, repurpose, and recover devices. Autopilot offers zero touch deployment for admins.

  If you have a global or remote workforce, then Autopilot might be the right option to install the OS, and get it ready for use. For more information, see [Overview of Windows Autopilot](/mem/autopilot/windows-autopilot).

- **Microsoft Intune** is a mobile application management (MAM) and mobile device management (MDM) provider. It helps manage devices, and manage apps on devices in your organization. You configure policies, and then deploy these policies to users and groups. You can create and deploy policies that install apps, configure device features, enforce PIN requirements, block compromised devices, and more.

  If you use Group Policy to manage your Windows 10 devices, then you can also use Group Policy to manage Windows 11 devices. In Intune, there are [administrative templates](/mem/intune/configuration/administrative-templates-windows) and the [settings catalog](/mem/intune/configuration/settings-catalog) that include many of the same policies. [Group Policy analytics](/mem/intune/configuration/group-policy-analytics) analyze your on-premises group policy objects.

- **Windows Updates and Delivery optimization** helps manage updates, and manage features on your devices. Starting with Windows 11, the OS feature updates are installed annually. For more information on servicing channels, and what they are, see [Servicing channels](/windows/deployment/update/waas-overview#servicing-channels).

  Like Windows 10, Windows 11 receives monthly quality updates.

  You have options to install updates on your Windows devices, including Intune, Group Policy, Windows Server Update Services (WSUS), and more. For more information, see [Assign devices to servicing channels](/windows/deployment/update/waas-servicing-channels-windows-10-updates).

  Some updates are large, and use bandwidth. Delivery optimization helps reduce bandwidth consumption. It shares the work of downloading the update packages with multiple devices in your deployment. Windows 11 updates are smaller, as they only pull down source files that are different. You can create policies that configure delivery optimization settings. For example, set the maximum upload and download bandwidth, set caching sizes, and more.

  For more information, see [Delivery Optimization for Windows updates](/windows/deployment/update/waas-delivery-optimization).

  For more information on the end-user experience, see:

  - [Installation & updates](https://support.microsoft.com/office/installation-updates-2f9c1819-310d-48a7-ac12-25191269903c#PickTab=Windows_11)
  - [Manage updates in Windows](https://support.microsoft.com/windows/manage-updates-in-windows-643e9ea7-3cf6-7da6-a25c-95d4f7f099fe)

## Education and apps

Windows 11 SE is a new edition of Windows designed for education. It runs on low-cost devices, and runs essential apps, including Microsoft 365. For more information, see [Windows 11 SE for Education](/education/windows/windows-11-se-overview).

## Next steps

- [Windows 11 requirements](windows-11-requirements.md)
- [Plan for Windows 11](windows-11-plan.md)
- [Prepare for Windows 11](windows-11-prepare.md)
- [Windows release health](https://aka.ms/windowsreleasehealth)
