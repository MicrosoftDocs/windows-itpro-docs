---
title: Distribute offline apps (Windows 10)
description: Offline licensing is a new licensing option for Windows 10.
ms.assetid: 6B9F6876-AA66-4EE4-A448-1371511AC95E
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
ms.author: TrudyHa
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 10/17/2017
---

# Distribute offline apps


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Offline licensing is a new licensing option for Windows 10 with Microsoft Store for Business and Microsoft Store for Education. With offline licenses, organizations can download apps and their licenses to deploy within their network, or on devices that are not connected to the Internet. ISVs or devs can opt-in their apps for offline licensing when they submit them to the Windows Dev Center. Only apps that are opted in to offline licensing will show that they are available for offline licensing in Microsoft Store for Business and Microsoft Store for Education. This model allows organizations to deploy apps when users or devices do not have connectivity to the Store.

## Why offline-licensed apps?

Offline-licensed apps offer an alternative to online apps, and provide additional deployment options. Some reasons to use offline-licensed apps:

-   **You don't have access to Microsoft Store services** - If your employees don't have access to the internet and Microsoft Store services, downloading offline-licensed apps and deploying them with imaging is an alternative to online-licensed apps.

-   **You use imaging to manage devices in your organization** - Offline-licensed apps can be added to images and deployed with Deployment Image Servicing and Management (DISM), or Windows Imaging and Configuration Designer (ICD).

-   **Your employees do not have Azure Active Directory (AD) accounts** - Azure AD accounts are required for employees that install apps assigned to them from Microsoft Store or that claim apps from a private store.

## Distribution options for offline-licensed apps

You can't distribute offline-licensed apps directly from Microsoft Store. Once you download the items for the offline-licensed app, you have options for distributing the apps:

-   **Deployment Image Servicing and Management**. DISM is a command-line tool that is used to mount and service Microsoft Windows images before deployment. You can also use DISM to install, uninstall, configure, and update Windows features, packages, drivers, and international settings in a .wim file or VHD using the DISM servicing commands. DISM commands are used on offline images. For more information, see [Deployment Image Servicing and Management](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows).

-   **Create provisioning package**. You can use Windows Imaging and Configuration Designer (ICD) to create a provisioning package for your offline app. Once you have the package, there are options to [apply the provisioning package](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-apply-package). For more information, see [Provisioning Packages for Windows 10](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-packages).

-   **Mobile device management provider or management server.** You can use a mobile device management (MDM) provider or management server to distribute offline apps. For more information, see these topics:
    - [Manage apps from Microsoft Store for Business with System Center Configuration Manager](https://docs.microsoft.com/sccm/apps/deploy-use/manage-apps-from-the-windows-store-for-business)
    - [Manage apps from Microsoft Store for Business with Microsoft Intune](https://docs.microsoft.com/intune/deploy-use/manage-apps-you-purchased-from-the-windows-store-for-business-with-microsoft-intune)<br>

For third-party MDM providers or management servers, check your product documentation.

## Download an offline-licensed app

There are several items to download or create for offline-licensed apps. The app package and app license are required; app metadata and app frameworks are optional. This section includes more info on each item, and tells you how to download an offline-licensed app.

-   **App metadata** - App metadata is optional. The metadata includes app details, links to icons, product id, localized product ids, and other items. Devs who plan to use an app as part of another app or tool, might want the app metadata.

-   **App package** - App packages are required for distributing offline apps. There are app packages for different combinations of app platform and device architecture. You'll need to know what device architectures you have in your organization to know if there are app packages to support your devices.

-   **App license** - App licenses are required for distributing offline apps. Use encoded licenses when you distribute offline-licensed apps using a management tool or ICD. Use unencoded licenses when you distribute offline-licensed apps using DISM.

-   **App frameworks** - App frameworks are optional. If you already have the required framework, you don't need to download another copy. The Store for Business will select the app framework needed for the app platform and architecture that you selected.

<a href="" id="download-offline-licensed-app"></a>
**To download an offline-licensed app**

1.  Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com/) or [Microsoft Store for Education](https://educationstore.microsoft.com).
2.  Click **Manage**.
3.  Under **Shopping Experience**, set **Show offline apps** to **On**.
4.  Click **Shop for my group**. Search for the required inbox-app, select it, change the License type to **Offline**, and click  **Get the app**, which will add the app to your inventory.
5.  Click **Manage**. You now have access to download the appx bundle package metadata and license file.
6.  Go to **Products & services**, and select **Apps & software**. (The list may be empty, but it will auto-populate after some time.)

    - **To download app metadata**: Choose the language for the app metadata, and then click **Download**. Save the downloaded app metadata. This is optional.
    - **To download app package**: Click to expand the package details information, choose the Platform and Architecture combination that you need for your organization, and then click **Download**. Save the downloaded app package. This is required.
    - **To download an app license**: Choose either **Encoded**, or **Unencoded**, and then click **Generate license**. Save the downloaded license. This is required.
    - **To download an app framework**: Find the framework you need to support your app package, and click **Download**. This is optional.

> [!NOTE]
> You need the framework to support your app package, but if you already have a copy, you don't need to download it again. Frameworks are backward compatible.



     

 

 





