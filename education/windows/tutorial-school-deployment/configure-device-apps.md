---
title: Configure applications with Microsoft Intune
description: Learn how to configure applications with Microsoft Intune in preparation for device deployment.
ms.date: 03/08/2023
ms.topic: tutorial
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

Windows 11 SE prevents the installation and execution of third party applications with a technology called **Windows Defender Application Control** (WDAC).
WDAC applies an *allowlist* policy, which ensures that unwanted apps don't run or get installed. However, it also prevents IT admins from deploying apps to Windows 11 SE devices, unless they're included in the E Mode policy.

To learn more about which apps are supported in Windows 11 SE, and how to deploy them, see the tutorial [Deploy applications to Windows 11 SE with Intune][EDU-1].

## Next steps

With the applications configured, you can now deploy students' and teachers' devices.

> [!div class="nextstepaction"]
> [Next: Deploy devices >](enroll-overview.md)

<!-- Reference links in article -->

[EDU-1]: ../tutorial-deploy-apps-winse/index.md

[MEM-1]: /mem/intune/apps/apps-win32-add

[INT-1]: /intune-education/express-configuration-intune-edu
[INT-2]: /intune-education/add-web-apps-edu