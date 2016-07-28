---
title: Apps in Windows Store for Business (Windows 10)
description: Windows Store for Business has thousands of apps from many different categories.
ms.assetid: CC5641DA-3CEA-4950-AD81-1AF1AE876926
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
localizationpriority: high
---

# Apps in Windows Store for Business


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Windows Store for Business has thousands of apps from many different categories.

## <a href="" id="apps"></a>


These app types are supported in Store for Business:

-   Universal Windows apps for Windows 10

-   Universal Windows apps, by device: phone, Surface Hub, IoT, HoloLens

Apps in your inventory will have at least one of these supported platforms listed for the app:

-   Windows 10 desktops

-   Windows 10 phones

-   Windows 10 xbox

-   Windows 10 IOT devices

-   Windows 10 servers

-   Windows 10 \*all devices\*

-   Windows 10 Surface Hub

-   Windows 10 HoloLens

Apps that you acquire from the Store for Business only work on Windows 10-based devices. Even though an app might list Windows 8 as its supported platform, that tells you what platform the app was originally written for. Apps developed for Windows 8, or Windows phone 8 will work on Windows 10.

Some apps are free, and some apps charge a price. Currently, you can pay for apps with a credit card. We'll be adding more payment options over time.

Some apps which are available to consumers in the Windows Store might not be available to organizations in the Windows Store for Business. App developers can opt-out their apps, and they also need to meet eligibility requirements for Windows Store for Business. For more information, read this info on [Organizational licensing options](https://msdn.microsoft.com/windows/uwp/publish/organizational-licensing). 

**Note**<br>
We are still setting up the catalog of apps for Windows Store for Business. If you are searching for an app and it isn’t available, please check again in a couple of days.

Line-of-business (LOB) apps are also supported using the Store for Business. Admins can invite IT devs and ISVs to be LOB publishers. Apps developed by your LOB publishers that are submitted to the Store are only available to your organization. Once an administrator accepts an app submitted by one of their LOB publishers, the app can be distributed just like any other app from Store for Business. For more information, see Working with Line-of-Business apps.

## <a href="" id="iap"></a>In-app purchases


Some apps offer you the option to make in-app purchases. In-app purchases are not currently supported for apps that are acquired through Store for Business and distributed to employees.

If an employee makes an in-app purchase, they'll make it with their personal Microsoft account and pay for it with a personal payment method. The employee will own the item purchased, and it cannot be transferred to your organization’s inventory.

## <a href="" id="licensing-model"></a>Licensing model: online and offline licenses


Store for Business supports two options to license apps: online and offline.

**Online** licensing is the default licensing model and is similar to the Windows Store. Online licensed apps require users and devices to connect to the Store for Business service to acquire an app and its license. Licensing management is enforced based on the user’s Azure AD identity and maintained by the store as well as the management tool. By default app updates are handled by Windows Update.

Distribution options for online-licensed apps include the ability to:

-   Assign an app to employees.

-   Add an app to your private store, allowing employees to download the app.

-   Distribute through a management tool.

**Offline** licensing is a new licensing option for Windows 10. With offline licenses, organizations can cache apps and their licenses to deploy within their network. ISVs or devs can opt-in their apps for offline licensing when they submit them to the developer center. Only apps that are opted in to offline licensing will show that they are available for offline licensing in Store for Business. This model means organizations can deploy apps when users or devices do not have connectivity to the Store.

You have the following distribution options for offline-licensed apps:

-   Include the app in a provisioning package, and then use it as part of imaging a device.

-   Distribute the app through a management tool.

For more information, see [Distribute apps to your employees from the Store for Business](distribute-apps-to-your-employees-windows-store-for-business.md).

 

 





