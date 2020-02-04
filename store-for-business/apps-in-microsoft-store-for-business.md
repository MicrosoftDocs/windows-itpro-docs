---
title: Apps in Microsoft Store for Business and Education (Windows 10)
description: Microsoft Store for Business has thousands of apps from many different categories.
ms.assetid: CC5641DA-3CEA-4950-AD81-1AF1AE876926
ms.reviewer: 
manager: dansimp
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

# Apps in Microsoft Store for Business and Education


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Microsoft Store for Business and Education has thousands of apps from many different categories.

These app types are supported in Microsoft Store for Business and Education:

- Universal Windows apps for Windows 10
- Universal Windows apps, by device: phone, Surface Hub, IoT, HoloLens

Apps in your inventory will have at least one of these supported platforms listed for the app:

- Windows 10 desktops
- Windows 10 phones
- Windows 10 xbox
- Windows 10 IOT devices
- Windows 10 servers
- Windows 10 \*all devices\*
- Windows 10 Surface Hub
- Windows 10 HoloLens

Apps that you acquire from Microsoft Store only work on Windows 10-based devices. Even though an app might list Windows 8 as its supported platform, that tells you what platform the app was originally written for. Apps developed for Windows 8, or Windows Phone 8 will work on Windows 10.

Some apps are free, and some apps charge a price. Currently, you can pay for apps with a credit card. We'll be adding more payment options over time.

Some apps which are available to consumers in Microsoft Store might not be available to organizations in Microsoft Store for Business and Education. App developers can opt-out their apps, and they also need to meet eligibility requirements for Microsoft Store for Business and Education. For more information, see [Organizational licensing options](https://msdn.microsoft.com/windows/uwp/publish/organizational-licensing). 

Line-of-business (LOB) apps are also supported using Microsoft Store. Admins can invite IT devs and ISVs to be LOB publishers. Apps developed by your LOB publishers that are submitted to Microsoft Store are only available to your organization. Once an administrator accepts an app submitted by one of their LOB publishers, the app can be distributed just like any other app. For more information, see [Working with Line-of-Business apps](working-with-line-of-business-apps.md).

## In-app purchases

Some apps offer you the option to make in-app purchases. In-app purchases are not currently supported for apps that are acquired through Microsoft Store and distributed to employees.

If an employee makes an in-app purchase, they'll make it with their personal Microsoft account and pay for it with a personal payment method. The employee will own the item purchased, and it cannot be transferred to your organization’s inventory.

## <a href="" id="licensing-model"></a>Licensing model: online and offline licenses

Microsoft Store supports two options to license apps: online and offline.

### Online licensing
Online licensing is the default licensing model and is similar to the model used by Microsoft Store. Online licensed apps require customers and devices to connect to Microsoft Store service to acquire an app and its license. License management is enforced based on the user’s Azure AD identity and maintained by Microsoft Store as well as the management tool. By default app updates are handled by Windows Update.

Distribution options for online-licensed apps include the ability to:

- Assign an app to employees.
- Add an app to your private store, allowing employees to download the app.
- Distribute through a management tool.

### Offline licensing
Offline licensing is a new licensing option for Windows 10. With offline licenses, organizations can cache apps and their licenses to deploy within their network. ISVs or devs can opt-in their apps for offline licensing when they submit them to the developer center. Only apps that are opted in to offline licensing will show that they are available for offline licensing in Microsoft Store. This model means organizations can deploy apps when users or devices do not have connectivity to Microsoft Store. Admins control whether or not offline apps are available in Microsoft Store with an offline app visibility setting. For more information, see [offline license visibility](https://docs.microsoft.com/microsoft-store/update-microsoft-store-for-business-account-settings#offline-licensing). 

You have the following distribution options for offline-licensed apps:

- Include the app in a provisioning package, and then use it as part of imaging a device.
- Distribute the app through a management tool.

For more information, see [Distribute apps to your employees from Microsoft Store for Business](distribute-apps-to-your-employees-microsoft-store-for-business.md).
