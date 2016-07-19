---
title: Distribute offline apps (Windows 10)
description: Offline licensing is a new licensing option for Windows 10.
ms.assetid: 6B9F6876-AA66-4EE4-A448-1371511AC95E
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
localizationpriority: high
---

# Distribute offline apps


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Offline licensing is a new licensing option for Windows 10. With offline licenses, organizations can download apps and their licenses to deploy within their network, or on devices that are not connected to the Internet. ISVs or devs can opt-in their apps for offline licensing when they submit them to the Windows Dev Center. Only apps that are opted in to offline licensing will show that they are available for offline licensing in the Windows Store for Business. This model means organizations can deploy apps when users or devices do not have connectivity to the Store.

## Why offline-licensed apps?


Offline-licensed apps offer an alternative to online apps, and provide additional deployment options. Some reasons to use offline-licensed apps include:

-   **You don't have access to Windows Store services** - If your employees don't have access to the internet and Windows Store services, downloading offline-licensed apps and deploying them with imaging is an alternative to online-licensed apps.

-   **You use imaging to manage devices in your organization** - Offline-licensed apps can be added to images and deployed with Deployment Image Servicing and Management (DISM), or Windows Imaging and Configuration Designer (ICD).

-   **Your employees do not have Azure Active Directory (AD) accounts** - Azure AD accounts are required for employees that install apps assigned to them from Store for Business or that claim apps from a private store.

## Distribution options for offline-licensed apps


You can't distribute offline-licensed apps directly from the Store for Business. Once you download the items for the offline-licensed app, you have three options for distributing the apps:

-   **Deployment Image Servicing and Management**. DISM is a command-line tool that is used to mount and service Microsoft WindowsWindows images before deployment. You can also use DISM to install, uninstall, configure, and update Windows features, packages, drivers, and international settings in a .wim file or VHD using the DISM servicing commands. DISM commands are used on offline images. For more information, see [Deployment Image Servicing and Management](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows).

-   **Windows ICD**. ICD is GUI tool that you can use to create Windows provisioning answer files, and add third-party drivers, apps, or other assets to an answer file. For more information, see [Windows Imaging and Configuration Designer](https://msdn.microsoft.com/library/windows/hardware/dn916113.aspx).

-   **Management server.**

## Download an offline-licensed app


There are several items to download or create for offline-licensed apps. You'll need all of these items to distribute offline apps to your employees. This section includes more info on each item, and tells you how to download an offline-licensed app.

-   **App metadata** -- App metadata is required for distributing offline apps. The metadata includes app details, links to icons, product id, localized product ids, and other items.

-   **App package** -- App packages are required for distributing offline apps. There are app packages for different combinations of app platform and device architecture. You'll need to know what device architectures you have in your organization to know if there are app packages to support your devices.

-   **App license** -- App licenses are required for distributing offline apps. Use encoded licenses when you distribute offline-licensed apps using a management tool or ICD. Use unencoded licenses when you distribute offline-licensed apps using DISM.

-   **App frameworks** -- App frameworks are required for distributing offline apps, but you might not need to download one. If you already have the required framework, you don't need to download another copy. The Store for Business will select the app framework needed for the app platform and architecture that you selected.

<a href="" id="download-offline-licensed-app"></a>
**To download an offline-licensed app**

1.  Sign in to the Store for Business

2.  Click **Manage**, and then choose **Inventory**.

3.  Click **Refine**, and then choose **Offline**.

4.  Find the app you want to download, click the ellipses under **Actions**, and then choose **Download for offline use**.

5.  To download app metadata: choose the language for the app metadata, and then click **Download**. Save the downloaded app metadata.

6.  To download app package for offline use: click to expand the package details information, choose the Platform and Architecture combination that you need for your organization, and then click **Download**. Save the downloaded app package.

7.  To download an app license: choose either **Encoded**, or **Unencoded**, and then click **Generate license**. Save the downloaded license.

8.  To download an app framework: find the framework you need to support your app package, and click **Download**.
    **Note**  
    You need the framework to support your app package, but if you already have a copy, you don't need to download it again.

    Frameworks are backward compatible.

     

 

 





