---
title: Windows kiosks and restricted user experiences
description: Learn about the options available in Windows to configure kiosks and restricted user experiences.
ms.topic: overview
ms.date: 03/04/2024
---

# Windows kiosks and restricted user experiences

Organizations are constantly seeking ways to streamline operations, improve customer service, and enhance productivity. One effective solution is the deployment of kiosk devices. These specialized devices offer a range of benefits that can significantly impact an organization's efficiency and success. For example:

- Cost-effective customer service: kiosks allow organizations to provide essential services without the need for dedicated staff. Whether it's checking in at a hotel, ordering food at a restaurant, or printing boarding passes at an airport, kiosks reduce labor costs while maintaining service quality. Customers appreciate the convenience of self-service options, leading to higher satisfaction levels
- Reduced wait times: long queues and wait times frustrate customers and staff members. Kiosks expedite processes by allowing users to complete tasks independently. Whether it's paying bills, renewing memberships, or accessing information, kiosks empower users to get things done swiftly
- Consistent brand experience: kiosks ensure a uniform brand experience across different locations. Whether in retail stores, schools, airports, or healthcare facilities, the interface remains consistent. Brand consistency builds trust and reinforces the organization's image
- Customization and flexibility: kiosks can be tailored to specific needs. From touchscreens to barcode scanners, organizations choose features that align with their goals. Whether it's self-checkout, wayfinding, or interactive product catalogs, kiosks adapt to diverse requirements

Windows offers two different options for public or specialized use:

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience
    :::column-end:::
:::row-end:::

This option runs a single application in full screen, and people using the device can only use that app. When the designated kiosk account signs in, the kiosk app launches automatically. This option is sometimes referred to as *single-app kiosk*.

Windows offers two different features to configure a kiosk experience:

- **Assigned Access**: used to execute a single Universal Windows Platform (UWP) app or Microsoft Edge in full screen above the lock screen. When the kiosk account signs in, the kiosk app launches automatically. If the UWP app is closed, it automatically restarts
- **Shell Launcher**: used to configure a device to execute a Windows desktop application as the user interface. The application that you specify replaces the default Windows shell (`Explorer.exe`) that usually runs when a user signs in. This type of single-app kiosk doesn't run above the lock screen

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

This option loads the Windows desktop, but it only allows to run a defined set of applications. When the designated user signs in, the user can only run the apps that are allowed. The Start menu is customized to show only the apps that are allowed to execute. With this approach, you can configure a locked-down experience for different account types. This option is sometimes referred to as *multi-app kiosk*.

To configure a restricted user experience, you use the **Assigned Access** feature.

## Choose the right experience

When you're considering a kiosk or restricted user experience, you need to choose the right experience for your needs. A good approach is to ask yourself the following set of questions:

| | Question |
|--|--|
| **🔲** | *How many apps?* <br>The number of apps determines the experience to build: **kiosk** or **restricted user experience**.|
| **🔲** | *Desktop experience or custom?* <br>If your users require access to the desktop with a custom Start menu, then you can build a **restricted user experience** with **Assigned Access**. If your users require access to multiple applications but with a custom user interface, then you should use **Shell Launcher**.|
| **🔲** | *In single-app scenario, which type of app will your kiosk run?* <br>If the kiosk requires a Universal Windows Platform (UWP) app or Microsoft Edge, you can build a **kiosk experience** with **Assigned Access**. If the kiosk requires a desktop app, you can build a **kiosk experience** with **Shell Launcher**.|
| **🔲** | *Which edition of Windows client will the kiosk run?"* <br>**Assigned Access** is supported on Windows Pro and Enterprise/Education. **Shell Launcher** is only supported on Windows Enterprise and Education editions.|

## Next steps

In the next sections, you can learn more about the options available to configure kiosks and restricted user experiences:

- [Assigned Access](overview.md)
- [Shell Launcher](shell-launcher/index.md)

### :::image type="icon" source="../images/icons/rocket.svg" border="false"::: Quickstarts

If you're ready to try out the options available to configure kiosks and restricted user experiences, check out the following quickstarts:

- [Quickstart: Configure a kiosk with Assigned Access](quickstart-kiosk.md)
- [Quickstart: configure a kiosk experience with Shell Launcher](shell-launcher/quickstart-kiosk.md)
- [Quickstart: Configure a restricted user experience with Assigned Access](quickstart-restricted-user-experience.md)