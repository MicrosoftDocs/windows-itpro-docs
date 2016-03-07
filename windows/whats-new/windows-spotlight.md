---
title: Windows spotlight on the lock screen (Windows 10)
description: Windows spotlight is an option for the lock screen background that displays different background images and occasionally offers suggestions on the lock screen.
ms.assetid: 1AEA51FA-A647-4665-AD78-2F3FB27AD46A
keywords: ["lockscreen"]
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: TrudyHa
---

# Windows spotlight on the lock screen


**Applies to**

-   Windows 10

**In this article**

-   [What does Windows spotlight include?](#what_does_windows_spotlight_include_)
-   [How do you turn off Windows spotlight?](#how_do_you_turn_off_windows_spotlight_)
-   [How do you disable Windows spotlight for managed devices?](#how_do_you_disable_windows_spotlight_for_managed_devices_)
-   [Related topics](#related_topics)

Windows spotlight is an option for the lock screen background that displays different background images and occasionally offers suggestions on the lock screen. Windows spotlight is now available in Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education. For managed devices running Windows 10 Enterprise and Windows 10 Education, enterprise administrators can configure a mobile device management (MDM) or Group Policy setting to prevent users from using the Windows spotlight background.

## What does Windows spotlight include?


-   **Background image**

    The Windows spotlight displays a new image on the lock screen each day. The initial background image is included during installation. Additional images are downloaded on ongoing basis.

    ![lock screen image](images/lockscreen.png)

-   **Feature suggestions, fun facts, tips**

    The lock screen background will occasionally suggest Windows 10 features that the user hasn't tried yet, such as **Snap assist**.

## How do you turn off Windows spotlight?


Go to **Settings** &gt; **Personalization** &gt; **Lock screen** &gt; **Background** &gt; **Windows spotlight** &gt; select a different lock screen background

![personalization background](images/spotlight.png)

## How do you disable Windows spotlight for managed devices?


Windows spotlight is enabled by default. Administrators can replace Windows spotlight with a selected image using the Group Policy setting **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Force a specific default lock screen image**.

![lockscreen policy details](images/lockscreenpolicy.png)

Pay attention to the checkbox in **Options**. In addition to providing the path to the lock screen image, administrators can choose to allow or **Turn off fun facts, tips, tricks, and more on lock screen**. If the checkbox is not selected, users will see the lock screen image that is defined in the policy setting, and will also see occasional messages, such as the example in the following image.

![fun facts](images/funfacts.png)

## Related topics


[Manage Windows 10 Start layout options](../manage/windows-10-start-layout-options-and-policies.md)

 

 





