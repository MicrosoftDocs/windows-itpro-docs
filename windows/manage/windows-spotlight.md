---
title: Configure Windows Spotlight on the lock screen (Windows 10)
description: Windows Spotlight is an option for the lock screen background that displays different background images on the lock screen.
ms.assetid: 1AEA51FA-A647-4665-AD78-2F3FB27AD46A
keywords: ["lockscreen"]
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Configure Windows Spotlight on the lock screen


**Applies to**

-   Windows 10


Windows Spotlight is an option for the lock screen background that displays different background images and occasionally offers suggestions on the lock screen. Windows Spotlight is available in all desktop editions of Windows 10. 

For managed devices running Windows 10 Enterprise and Windows 10 Education, enterprise administrators can configure a mobile device management (MDM) or Group Policy setting to prevent users from using the Windows Spotlight background. For managed devices running Windows 10 Pro, version 1607, administrators can disable suggestions for third party apps.

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

| Group Policy | MDM | Description | Applies to |
| --- | --- | --- | --- |
| **User Configuration\Administrative Templates\Windows Components\Cloud Content\Do not suggest third-party content in Windows spotlight** | **Experience/**</br>**AllowThirdPartySuggestionsInWindowsSpotlight** | Enables enterprises to restrict suggestions to Microsoft apps and services | Windows 10 Pro, Enterprise, and Education, version 1607 and later |
| **User Configuration\Administrative Templates\Windows Components\Cloud Content\Turn off all Windows Spotlight features** | **Experience/**</br>**AllowWindowsSpotlight** | Enables enterprises to completely disable all Windows Spotlight features in a single setting | Windows 10 Enterprise and Education, version 1607 and later |
| **User Configuration\Administrative Templates\Windows Components\Cloud Content\Configure Spotlight on lock screen** | **Experience/**</br>**ConfigureWindowsSpotlightOnLockScreen** | Specifically controls the use of the dynamic Windows Spotlight image on the lock screen, and can be enabled or disabled | Windows 10 Enterprise and Education, version 1607 and later | 
| **Administrative Templates \ Windows Components \ Cloud Content \ Turn off the Windows Spotlight on Action Center** | **Experience/**</br>**AllowWindowsSpotlightOnActionCenter** |  Turn off Suggestions from Microsoft that show after each clean install, upgrade, or on an on-going basis to introduce users to what is new or changed | Windows 10, version 1703 |
| **User Configuration \ Administrative Templates \ Windows Components \ Cloud Content \ Do not use diagnostic data for tailored experiences** | **Experience/**</br>**AllowTailoredExperiencesWithDiagnosticData** | Prevent Windows from using diagnostic data to provide tailored experiences to the user | Windows 10, version 1703 |
| **User Configuration \ Administrative Templates \ Windows Components \ Cloud Content \ Turn off the Windows Welcome Experience** | **Experience/**</br>**AllowWindowsSpotlightWindowsWelcomeExperience** | Turn off the Windows Spotlight Windows Welcome experience which helps introduce users to Windows, such as launching Microsoft Edge with a web page highlighting new features | Windows 10, version 1703 |


 In addition to the specific policy settings for Windows Spotlight, administrators can replace Windows Spotlight with a selected image using the Group Policy setting **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Force a specific default lock screen image**.

>[!WARNING]
> In Windows 10, version 1607, the **Force a specific default lock screen image** policy setting will prevent users from changing the lock screen image. This behavior will be corrected in a future release.

![lockscreen policy details](images/lockscreenpolicy.png)

Pay attention to the checkbox in **Options**. In addition to providing the path to the lock screen image, administrators can choose to allow or **Turn off fun facts, tips, tricks, and more on lock screen**. If the checkbox is not selected, users will see the lock screen image that is defined in the policy setting, and will also see occasional messages, such as the example in the following image.



## Related topics


[Manage Windows 10 Start layout options](../manage/windows-10-start-layout-options-and-policies.md)

 

 





