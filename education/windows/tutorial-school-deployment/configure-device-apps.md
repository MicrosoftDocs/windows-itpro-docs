---
title: Configure applications with Microsoft Intune
description: Learn how to configure applications with Microsoft Intune in preparation for device deployment.
ms.date: 08/31/2022
ms.topic: tutorial
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Configure applications with Microsoft Intune

With Intune for Education, school IT administrators have access to diverse applications to help students unlock their learning potential. This section discusses tools and resources for adding apps to Intune for Education.

Applications can be assigned to groups:

- If you target apps to a **group of users**, the apps will be installed on any managed devices that the users sign into
- If you target apps to a **group of devices**, the apps will be installed on those devices and available to any user who signs in

In this section you will:
> [!div class="checklist"]
> * Add apps to Intune for Education
> * Assign apps to groups
> * Review some considerations for Windows 11 SE devices

## Add apps to Intune for Education

Intune for Education supports the deployment of two types of Windows applications: **web apps** and **desktop apps**.

:::image type="content" source="./images/intune-education-apps.png" alt-text="Intune for Education - Apps" lightbox="./images/intune-education-apps.png" border="true":::

### Desktop apps

The addition of desktop applications to Intune should be carried out by repackaging the apps, and defining the commands to silently install them. The process is described in the article [Add, assign, and monitor a Win32 app in Microsoft Intune][MEM-1].

### Web apps

To create web applications in Intune for Education:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Apps**
1. Select **New app** > **New web app**
1. Provide a URL for the web app, a name and, optionally, an icon and description
1. Select **Save**

For more information, see [Add web apps][INT-2].

## Assign apps to groups

To assign applications to a group of users or devices:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Groups** > Pick a group to manage
1. Select **Apps**
1. Select either **Web apps** or **Windows apps**
1. Select the apps you want to assign to the group > Save

## Considerations for Windows 11 SE

Windows 11 SE supports all web applications and a *curated list* of desktop applications.
You can prepare and add a desktop app to Microsoft Intune as a Win32 app from the [approved app list][EDU-1].

The process to add Win32 applications to Intune is described in the article [Add, assign, and monitor a Win32 app in Microsoft Intune][MEM-1].

> [!NOTE]
> If the applications you need aren't included in the list, anyone in your school district can submit an application request at <a href="https://edusupport.microsoft.com/support?product_id=win11se" target="_blank"><u>Microsoft Education Support</u></a>.

> [!CAUTION]
> If you assign an app to a device running **Windows 11 SE** and receive the **0x87D300D9** error code with a **Failed** state:
> - Be sure the app is on the [<u>approved app list</u>][EDU-1]
> - If you submitted a request to add your own app and it was approved, check that the app meets package requirements
> - If the app is not approved, it will not run on Windows 11 SE. In this case, you will have to verify if the app can run in a web browser, such as a web app or PWA

________________________________________________________

## Next steps

With the applications configured, you can now deploy students' and teachers' devices.

> [!div class="nextstepaction"]
> [Next: Deploy devices >](enroll-overview.md)

<!-- Reference links in article -->

[EDU-1]: /education/windows/windows-11-se-overview

[MEM-1]: /mem/intune/apps/apps-win32-add

[INT-1]: /intune-education/express-configuration-intune-edu
[INT-2]: /intune-education/add-web-apps-edu