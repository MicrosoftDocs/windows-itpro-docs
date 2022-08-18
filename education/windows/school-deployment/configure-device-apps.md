---
title: Configure applications with Microsoft Intune
description: Configure applications with Microsoft Intune in preparation to device deployment
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Configure applications with Microsoft Intune

With Intune for Education, school IT administrators have access to diverse applications to help students unlock their learning potential. This section discusses tools and resources for adding apps to Intune for Education, and assigning them to groups.

Intune for Education supports the deployment of two types of Windows applications: web apps and desktop apps.

:::image type="content" source="./images/intune-education-apps.png" alt-text="Intune for Education - Apps" border="true":::

Applications can be deployed to groups:

- If you target apps to a **group of users**, the apps will be installed on any managed devices that the users sign into
- If you target apps to a **group of devices**, the apps will be installed on those devices and available to any user who signs in

## Add apps to Intune for Education

Multiple apps can be added to Intune for Education. Devices running Windows 11 SE are preinstalled with Office apps. During [Express Configuration][INT-1], all Office desktop apps are available in a single app called Microsoft 365.

### Desktop apps

Intune for Education makes it easy to assign desktop apps to your devices. After you have added your desktop apps to Intune, you can assign them using the same process as other applications.

The addition of desktop applications to Intune should be carried out by repackaging the apps, and defining the commands to silently install them. The process is described in the article [Add, assign, and monitor a Win32 app in Microsoft Intune](/mem/intune/apps/apps-win32-add).

### Web apps

Using Intune for Education, you can add websites to your app inventory.

For more information:

- [Add web apps][INT-2]

## Assign apps to groups

**With Intune for Education, you can make certain apps only available to select groups. For more information, see Assign apps to install them on school devices.**

## Considerations for Windows 11 SE

Windows 11 SE supports all web applications and a set of native applications.
You can prepare and add an app to Microsoft Intune as a Win32 app from the [approved app list][EDU-1].

> [!NOTE]
> If the applications you need aren't included in the list, anyone in your school district can submit an application request at <a href="https://edusupport.microsoft.com/support?product_id=win11se" target="_blank"><b>Microsoft Education Support</b></a>.

If you assign an app to a device running Windows 11 SE and receive the **0x87D300D9** error code with a **Failed** state:

- Be sure the app is on the [approved app list][EDU-1]
- If you submitted a request to add your own app and it was approved, check that the app meets package requirements
- If the app is not approved, it will not run on Windows 11 SE. In this case, you will have to verify if the app can run in a web browser, such as a web app or PWA
## Next steps

With the applications configured, you can now deploy students' and teachers' devices.

> [!div class="nextstepaction"]
> [Next: Deploy devices >](enroll-overview.md)

<!-- Reference links in article -->

[EDU-1]: /education/windows/windows-11-se-overview

[INT-1]: /intune-education/express-configuration-intune-edu
[INT-2]: /intune-education/add-web-apps-edu