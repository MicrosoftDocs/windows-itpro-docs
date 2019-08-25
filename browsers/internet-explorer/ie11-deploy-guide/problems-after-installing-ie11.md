---
ms.localizationpriority: medium
ms.mktglfcycl: support
description: Possible solutions to the problems you might encounter after installing IE11, such as crashing or seeming slow, getting into an unusable state, or problems with adaptive streaming and DRM playback.
author: lomayor
ms.prod: ie11
ms.assetid: c4b75ad3-9c4a-4dd2-9fed-69f776f542e6
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Problems after installing Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 10/16/2017
---


# Problems after installing Internet Explorer 11
After you install Internet Explorer 11 in your organization, you might run into the following issues. By following these suggestions, you should be able to fix them.

## Internet Explorer is in an unusable state
If IE11 gets into an unusable state on an employee's computer, you can use the **Reset Internet Explorer Settings (RIES)** feature to restore the default settings for many of the browser features, including:

-   Search scopes

-   Appearance settings

-   Toolbars

-   ActiveX® controls (resets to the opt-in state, unless they're pre-approved)

-   Branding settings created with IEAK 11

RIES does not:

-   Clear the Favorites list, RSS feeds, or Web slices.

-   Reset connection or proxy settings.

-   Affect the applied Administrative Template Group Policy settings.

RIES turns off all custom toolbars, browser extensions, and customizations installed with IE11. If you change your mind, you can turn each of the customizations back on through the **Manage Add-ons** dialog box. For more information about resetting IE settings, see [How to Reset Internet Explorer Settings](https://go.microsoft.com/fwlink/p/?LinkId=214528).

## IE is crashing or seems slow
If you notice that CPU usage is running higher than normal, or that IE is frequently crashing or slowing down, you should check your browser add-ons and video card. By default, IE11 uses graphics processing unit (GPU) rendering mode. However, some outdated video cards and video drivers don't support GPU hardware acceleration. If IE11 determines that your current video card or video driver doesn't support GPU hardware acceleration, it'll use Software Rendering mode.

 **To check your browser add-ons**

1. Start IE11 in **No Add-ons mode** by running the **Run** command from the **Start** menu, and then typing `iexplore.exe -extoff` into the box.

2. Check if IE still crashes.<p>
   If the browser doesn't crash, open Internet Explorer for the desktop, click the **Tools** menu, and click **Manage Add-ons**.

3. Click **Toolbars and Extensions**, click each toolbar or extension, clicking **Disable** to turn off all of the browser extensions and toolbars.

4. Restart IE11. Go back to the **Manage Add-Ons** window and turn on each item, one-by-one.<p>
   After you turn each item back on, see if IE crashes or slows down. Doing it this way will help you identify the add-on that's causing IE to crash. After you've figured out which add-on was causing the problem, turn it off until you have an update from the manufacturer.

   **To check for Software Rendering mode**

5. Open Internet Explorer for the desktop, click the **Tools** menu, and then click **Internet Options**.

6. On the **Advanced** tab, go to the **Accelerated graphics** section, and then turn on Software Rendering mode by choosing the **Use software rendering instead of GPU rendering** box.<p>
   If the **Use software rendering instead of GPU rendering** option is greyed out, it means that your current video card or video driver doesn't support GPU hardware acceleration. For more information, see [Windows 10 Support](https://go.microsoft.com/fwlink/?LinkId=746588).

## Adaptive streaming and DRM playback don’t work with Windows Server 2012 R2
IE11 in Windows Server 2012 R2 doesn’t include media features like adaptive streaming or Digital Rights Management (DRM) playback. To add these features, you’ll need to download and install the Media Feature Pack from the [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=320789), as well as an app that uses PlayReady DRM from the Microsoft Store, such as the Xbox Music app or Xbox Video app. The app must be installed to specifically turn on DRM features, while all other media features are installed with the Media Feature Pack.

 

 



