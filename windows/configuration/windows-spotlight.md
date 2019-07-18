---
title: Configure Windows Spotlight on the lock screen (Windows 10)
description: Windows Spotlight is an option for the lock screen background that displays different background images on the lock screen.
ms.assetid: 1AEA51FA-A647-4665-AD78-2F3FB27AD46A
ms.reviewer: 
manager: dansimp
keywords: ["lockscreen"]
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/30/2018
---

# Configure Windows Spotlight on the lock screen


**Applies to**

-   Windows 10


Windows Spotlight is an option for the lock screen background that displays different background images and occasionally offers suggestions on the lock screen. Windows Spotlight is available in all desktop editions of Windows 10. 

For managed devices running Windows 10 Enterprise and Windows 10 Education, enterprise administrators can configure a mobile device management (MDM) or Group Policy setting to prevent users from using the Windows Spotlight background. For managed devices running Windows 10 Pro, version 1607, administrators can disable suggestions for third party apps.


>[!NOTE]
>In Windows 10, version 1607, the lock screen background does not display if you disable the **Animate windows when minimizing and maximizing** setting in **This PC** > **Properties** > **Advanced system settings** > **Performance settings** > **Visual Effects**, or if you enable the Group Policy setting **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Desktop Windows Manager** > **Do not allow windows animations**.
>
>In Windows 10, version 1703, you can use the [Personalization CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/personalization-csp) settings to set lock screen and desktop background images.

## What does Windows Spotlight include?


-   **Background image**

    The Windows Spotlight displays a new image on the lock screen each day. The initial background image is included during installation. Additional images are downloaded on ongoing basis.

    ![lock screen image](images/lockscreen.png)

-   **Feature suggestions, fun facts, tips**

    The lock screen background will occasionally suggest Windows 10 features that the user hasn't tried yet, such as **Snap assist**.
    
    ![fun facts](images/funfacts.png)

## How do you turn off Windows Spotlight locally?


To turn off Windows Spotlight locally, go to **Settings** &gt; **Personalization** &gt; **Lock screen** &gt; **Background** &gt; **Windows spotlight** &gt; select a different lock screen background

![personalization background](images/spotlight.png)

## How do you disable Windows Spotlight for managed devices?


Windows Spotlight is enabled by default. Windows 10 provides Group Policy and mobile device management (MDM) settings to help you manage Windows Spotlight on enterprise computers.

>[!NOTE]
>These policies are in the **User Configuration \Policies\Administrative Templates\Windows Components\Cloud Content** path in the Group Policy Management Console, and in the **User Configuration \Administrative Templates\Windows Components\Cloud Content** path in the Local Group Policy Editor.

| Group Policy | MDM | Description | Applies to |
| --- | --- | --- | --- |
| **Do not suggest third-party content in Windows spotlight** | **Experience/Allow ThirdParty Suggestions In Windows Spotlight** | Enables enterprises to restrict suggestions to Microsoft apps and services | Windows 10 Pro, Enterprise, and Education, version 1607 and later |
| **Turn off all Windows Spotlight features** | **Experience/Allow Windows Spotlight** | Enables enterprises to completely disable all Windows Spotlight features in a single setting | Windows 10 Enterprise and Education, version 1607 and later |
| **Configure Spotlight on lock screen** | **Experience/Configure Windows Spotlight On Lock Screen** | Specifically controls the use of the dynamic Windows Spotlight image on the lock screen, and can be enabled or disabled | Windows 10 Enterprise and Education, version 1607 and later | 
| **Turn off the Windows Spotlight on Action Center** | **Experience/Allow Windows Spotlight On Action Center** |  Turn off Suggestions from Microsoft that show after each clean install, upgrade, or on an on-going basis to introduce users to what is new or changed | Windows 10 Enterprise and Education, version 1703 |
| **Do not use diagnostic data for tailored experiences** | **Experience/Allow Tailored Experiences With Diagnostic Data** | Prevent Windows from using diagnostic data to provide tailored experiences to the user | Windows 10 Pro, Enterprise, and Education, version 1703 |
| **Turn off the Windows Welcome Experience** | **Experience/Allow Windows Spotlight Windows Welcome Experience** | Turn off the Windows Spotlight Windows Welcome experience which helps introduce users to Windows, such as launching Microsoft Edge with a web page highlighting new features | Windows 10 Enterprise and Education, version 1703 |
**Turn off the Windows Spotlight on Settings** | **Experience/Allow Windows Spotlight on Settings** | Turn off the Windows Spotlight in the Settings app. | Windows 10 Enterprise and Education, version 1803 |



 In addition to the specific policy settings for Windows Spotlight, administrators can replace Windows Spotlight with a selected image using the Group Policy setting **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Force a specific default lock screen image** (Windows 10 Enterprise and Education).

 >[!TIP]
 >If you want to use a custom lock screen image that contains text, see [Resolution for custom lock screen image](#resolution-for-custom-lock-screen-image).


![lockscreen policy details](images/lockscreenpolicy.png)

Pay attention to the checkbox in **Options**. In addition to providing the path to the lock screen image, administrators can choose to allow or **Turn off fun facts, tips, tricks, and more on lock screen**. If the checkbox is not selected, users will see the lock screen image that is defined in the policy setting, and will also see occasional messages.

## Resolution for custom lock screen image

A concern with custom lock screen images is how they will appear on different screen sizes and resolutions.

A custom lock screen image created in 16:9 aspect ratio (1600x900) will scale properly on devices using a 16:9 resolution, such as 1280x720 or 1920x1080. On devices using other aspect ratios, such as 4:3 (1024x768) or 16:10 (1280x800), height scales correctly and width is cropped to a size equal to the aspect ratio. The image will remain centered on the screen

Lock screen images created at other aspect ratios may scale and center unpredictably on your device when changing aspect ratios.

The recommendation for custom lock screen images that include text (such as a legal statement) is to create the lock screen image in 16:9 resolution with text contained in the 4:3 region, allowing the text to remain visible at any aspect ratio. 

## Related topics


[Manage Windows 10 Start layout options](windows-10-start-layout-options-and-policies.md)


 





