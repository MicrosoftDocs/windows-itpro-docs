---
title: Policy CSP - ADMX_ControlPanelDisplay
description: Learn about the Policy CSP - ADMX_ControlPanelDisplay.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/05/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_ControlPanelDisplay

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_ControlPanelDisplay policies

<dl>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-display-disable">ADMX_ControlPanelDisplay/CPL_Display_Disable</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-display-hidesettings">ADMX_ControlPanelDisplay/CPL_Display_HideSettings</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-disablecolorschemechoice">ADMX_ControlPanelDisplay/CPL_Personalization_DisableColorSchemeChoice</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-disablethemechange">ADMX_ControlPanelDisplay/CPL_Personalization_DisableThemeChange</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-disablevisualstyle">ADMX_ControlPanelDisplay/CPL_Personalization_DisableVisualStyle</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-enablescreensaver">ADMX_ControlPanelDisplay/CPL_Personalization_EnableScreenSaver</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-forcedefaultlockscreen">ADMX_ControlPanelDisplay/CPL_Personalization_ForceDefaultLockScreen</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-lockfontsize">ADMX_ControlPanelDisplay/CPL_Personalization_LockFontSize</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nochanginglockscreen">ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingLockScreen</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nochangingstartmenubackground">ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingStartMenuBackground</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nocolorappearanceui">ADMX_ControlPanelDisplay/CPL_Personalization_NoColorAppearanceUI</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nodesktopbackgroundui">ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopBackgroundUI</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nodesktopiconsui">ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopIconsUI</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nolockscreen">ADMX_ControlPanelDisplay/CPL_Personalization_NoLockScreen</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nomousepointersui">ADMX_ControlPanelDisplay/CPL_Personalization_NoMousePointersUI</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-noscreensaverui">ADMX_ControlPanelDisplay/CPL_Personalization_NoScreenSaverUI</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-nosoundschemeui">ADMX_ControlPanelDisplay/CPL_Personalization_NoSoundSchemeUI</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-personalcolors">ADMX_ControlPanelDisplay/CPL_Personalization_PersonalColors</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-screensaverissecure">ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverIsSecure</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-screensavertimeout">ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverTimeOut</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-setscreensaver">ADMX_ControlPanelDisplay/CPL_Personalization_SetScreenSaver</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-settheme">ADMX_ControlPanelDisplay/CPL_Personalization_SetTheme</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-setvisualstyle">ADMX_ControlPanelDisplay/CPL_Personalization_SetVisualStyle</a>
  </dd>
  <dd>
    <a href="#admx-controlpaneldisplay-cpl-personalization-startbackground">ADMX_ControlPanelDisplay/CPL_Personalization_StartBackground</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-display-disable"></a>**ADMX_ControlPanelDisplay/CPL_Display_Disable**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting disables the Display Control Panel.

If you enable this setting, the Display Control Panel doesn't run. When users try to start Display, a message appears explaining that a setting prevents the action.

Also, see the "Prohibit access to the Control Panel" (User Configuration\Administrative Templates\Control Panel) and "Remove programs on Settings menu" (User Configuration\Administrative Templates\Start Menu & Taskbar) settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disable the Display Control Panel*
-   GP name: *CPL_Display_Disable*
-   GP path: *Control Panel\Display*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-display-hidesettings"></a>**ADMX_ControlPanelDisplay/CPL_Display_HideSettings**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting removes the Settings tab from Display in Control Panel.

This setting prevents users from using Control Panel to add, configure, or change the display settings on the computer.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide Settings tab*
-   GP name: *CPL_Display_HideSettings*
-   GP path: *Control Panel\Display*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-disablecolorschemechoice"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_DisableColorSchemeChoice**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting forces the theme color scheme to be the default color scheme.

If you enable this setting, a user can't change the color scheme of the current desktop theme.

If you disable or don't configure this setting, a user may change the color scheme of the current desktop theme.

For Windows 7 and later, use the "Prevent changing color and appearance" setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing color scheme*
-   GP name: *CPL_Personalization_DisableColorSchemeChoice*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-disablethemechange"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_DisableThemeChange**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting disables the theme gallery in the Personalization Control Panel.

If you enable this setting, users can't change or save a theme. Elements of a theme such as the desktop background, color, sounds, and screen saver can still be changed (unless policies are set to turn them off).

If you disable or don't configure this setting, there's no effect.

> [!NOTE]
> If you enable this setting but don't specify a theme using the "load a specific theme" setting, the theme defaults to whatever the user previously set or the system default.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing theme*
-   GP name: *CPL_Personalization_DisableThemeChange*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-disablevisualstyle"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_DisableVisualStyle**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users or applications from changing the visual style of the windows and buttons displayed on their screens.

When enabled on Windows XP, this setting disables the "Windows and buttons" drop-down list on the Appearance tab in Display Properties.

When enabled on Windows XP and later systems, this setting prevents users and applications from changing the visual style through the command line.  Also, a user may not apply a different visual style when changing themes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing visual style for windows and buttons*
-   GP name: *CPL_Personalization_DisableVisualStyle*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-enablescreensaver"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_EnableScreenSaver**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting enables desktop screen savers.

If you disable this setting, screen savers don't run. Also, this setting disables the Screen Saver section of the Screen Saver dialog in the Personalization or Display Control Panel. As a result, users can't change the screen saver options.

If you don't configure it, this setting has no effect on the system.

If you enable it, a screen saver runs, provided the following two conditions hold: First, a valid screen saver on the client is specified through the "Screen Saver executable name" setting or through Control Panel on the client computer. Second, the screen saver timeout is set to a nonzero value through the setting or Control Panel.

Also, see the "Prevent changing Screen Saver" setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable screen saver*
-   GP name: *CPL_Personalization_EnableScreenSaver*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-forcedefaultlockscreen"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_ForceDefaultLockScreen**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting allows you to force a specific default lock screen and sign-in image by entering the path (location) of the image file. The same image will be used for both the lock and sign-in screens.

This setting lets you specify the default lock screen and sign-in image shown when no user is signed in, and also sets the specified image as the default for all users (it replaces the inbox default image).

To use this setting, type the fully qualified path and name of the file that stores the default lock screen and sign-in image. You can type a local path, such as C:\Windows\Web\Screen\img104.jpg or a UNC path, such as `\\Server\Share\Corp.jpg`.

This setting can be used in conjunction with the "Prevent changing lock screen and logon image" setting to always force the specified lock screen and sign-in image to be shown.

>[!NOTE]
> This setting only applies to Enterprise, Education, and Server SKUs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Force a specific default lock screen and logon image*
-   GP name: *CPL_Personalization_ForceDefaultLockScreen*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-lockfontsize"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_LockFontSize**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting prevents users from changing the size of the font in the windows and buttons displayed on their screens.

If this setting is enabled, the "Font size" drop-down list on the Appearance tab in Display Properties is disabled.

If you disable or don't configure this setting, a user may change the font size using the "Font size" drop-down list on the Appearance tab.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit selection of visual style font size*
-   GP name: *CPL_Personalization_LockFontSize*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nochanginglockscreen"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingLockScreen**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from changing the background image shown when the machine is locked or when on the sign-in screen.

By default, users can change the background image shown when the machine is locked or displaying the sign-in screen.

If you enable this setting, the user won't be able to change their lock screen and sign-in image, and they'll instead see the default image.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing lock screen and logon image*
-   GP name: *CPL_Personalization_NoChangingLockScreen*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nochangingstartmenubackground"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingStartMenuBackground**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting prevents users from changing the look of their start menu background, such as its color or accent.

By default, users can change the look of their start menu background, such as its color or accent.

If you enable this setting, the user will be assigned the default start menu background and colors and won't be allowed to change them.

If the "Force a specific background and accent color" policy is also set on a supported version of Windows, then those colors take precedence over this policy.

If the "Force a specific Start background" policy is also set on a supported version of Windows, then that background takes precedence over this policy.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing start menu background*
-   GP name: *CPL_Personalization_NoChangingStartMenuBackground*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nocolorappearanceui"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoColorAppearanceUI**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting disables the Color (or Window Color) page in the Personalization Control Panel, or the Color Scheme dialog in the Display Control Panel on systems where the Personalization feature isn't available.

This setting also prevents users from using Control Panel to change the window border and taskbar color (on Windows 8), glass color (on Windows Vista and Windows 7), system colors, or color scheme of the desktop and windows.

If this setting is disabled or not configured, the Color (or Window Color) page or Color Scheme dialog is available in the Personalization or Display Control Panel.

For systems prior to Windows Vista, this setting hides the Appearance and Themes tabs in the Display in Control Panel.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing color and appearance*
-   GP name: *CPL_Personalization_NoColorAppearanceUI*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nodesktopbackgroundui"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopBackgroundUI**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting prevents users from adding or changing the background design of the desktop.

By default, users can use the Desktop Background page in the Personalization or Display Control Panel to add a background design (wallpaper) to their desktop.

If you enable this setting, none of the Desktop Background settings can be changed by the user.

To specify wallpaper for a group, use the "Desktop Wallpaper" setting.

>[!NOTE]
>You must also enable the "Desktop Wallpaper" setting to prevent users from changing the desktop wallpaper. Refer to KB article: Q327998 for more information.

Also, see the "Allow only bitmapped wallpaper" setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing desktop background*
-   GP name: *CPL_Personalization_NoDesktopBackgroundUI*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nodesktopiconsui"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopIconsUI**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting prevents users from changing the desktop icons.

By default, users can use the Desktop Icon Settings dialog in the Personalization or Display Control Panel to show, hide, or change the desktop icons.

If you enable this setting, none of the desktop icons can be changed by the user.

For systems prior to Windows Vista, this setting also hides the Desktop tab in the Display Control Panel.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing desktop icons*
-   GP name: *CPL_Personalization_NoDesktopIconsUI*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nolockscreen"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoLockScreen**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether the lock screen appears for users.

If you enable this policy setting, users that aren't required to press CTRL + ALT + DEL before signing in will see their selected tile after locking their PC.

If you disable or don't configure this policy setting, users that aren't required to press CTRL + ALT + DEL before signing in will see a lock screen after locking their PC. They must dismiss the lock screen using touch, the keyboard, or by dragging it with the mouse.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not display the lock screen*
-   GP name: *CPL_Personalization_NoLockScreen*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nomousepointersui"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoMousePointersUI**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This setting prevents users from changing the mouse pointers.

By default, users can use the Pointers tab in the Mouse Control Panel to add, remove, or change the mouse pointers.

If you enable this setting, none of the mouse pointer scheme settings can be changed by the user.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing mouse pointers*
-   GP name: *CPL_Personalization_NoMousePointersUI*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-noscreensaverui"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoScreenSaverUI**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting prevents the Screen Saver dialog from opening in the Personalization or Display Control Panel.

This setting also prevents users from using Control Panel to add, configure, or change the screen saver on the computer. It doesn't prevent a screen saver from running.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing screen saver*
-   GP name: *CPL_Personalization_NoScreenSaverUI*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-nosoundschemeui"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_NoSoundSchemeUI**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting prevents users from changing the sound scheme.

By default, users can use the Sounds tab in the Sound Control Panel to add, remove, or change the system Sound Scheme.

If you enable this setting, none of the Sound Scheme settings can be changed by the user.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changing sounds*
-   GP name: *CPL_Personalization_NoSoundSchemeUI*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-personalcolors"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_PersonalColors**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting forces Windows to use the specified colors for the background and accent. The color values are specified in hex as #RGB.

By default, users can change the background and accent colors.

If this setting is enabled, the background and accent colors of Windows will be set to the specified colors and users can't change those colors. This setting won't be applied if the specified colors don't meet a contrast ratio of 2:1 with white text.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Force a specific background and accent color*
-   GP name: *CPL_Personalization_PersonalColors*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-screensaverissecure"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverIsSecure**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting determines whether screen savers used on the computer are password protected.

If you enable this setting, all screen savers are password protected. If you disable this setting, password protection can't be set on any screen saver.

This setting also disables the "Password protected" checkbox on the Screen Saver dialog in the Personalization or Display Control Panel, preventing users from changing the password protection setting.

If you don't configure this setting, users can choose whether or not to set password protection on each screen saver.

To ensure that a computer will be password protected, enable the "Enable Screen Saver" setting and specify a timeout via the "Screen Saver timeout" setting.

> [!NOTE]
> To remove the Screen Saver dialog, use the "Prevent changing Screen Saver" setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Password protect the screen saver*
-   GP name: *CPL_Personalization_ScreenSaverIsSecure*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-screensavertimeout"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverTimeOut**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies how much user idle time must elapse before the screen saver is launched.

When configured, this idle time can be set from a minimum of 1 second to a maximum of 86,400 seconds, or 24 hours. If set to zero, the screen saver won't be started.

This setting has no effect under any of the following circumstances:

- The setting is disabled or not configured.
- The wait time is set to zero.
- The "Enable Screen Saver" setting is disabled.

- The "Screen saver executable name" setting and the Screen Saver dialog of the client computer's Personalization or Display Control Panel don't specify a valid existing screen saver program on the client.

When not configured, whatever wait time is set on the client through the Screen Saver dialog in the Personalization or Display Control Panel is used. The default is 15 minutes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Screen saver timeout*
-   GP name: *CPL_Personalization_ScreenSaverTimeOut*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-setscreensaver"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_SetScreenSaver**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting specifies the screen saver for the user's desktop.

If you enable this setting, the system displays the specified screen saver on the user's desktop. Also, this setting disables the drop-down list of screen savers in the Screen Saver dialog in the Personalization or Display Control Panel, which prevents users from changing the screen saver.

If you disable this setting or don't configure it, users can select any screen saver.

If you enable this setting, type the name of the file that contains the screen saver, including the .scr file name extension. If the screen saver file isn't in the %Systemroot%\System32 directory, type the fully qualified path to the file.

If the specified screen saver isn't installed on a computer to which this setting applies, the setting is ignored.

> [!NOTE]
> This setting can be superseded by the "Enable Screen Saver" setting.  If the "Enable Screen Saver" setting is disabled, this setting is ignored, and screen savers don't run.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Force specific screen saver*
-   GP name: *CPL_Personalization_SetScreenSaver*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-settheme"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_SetTheme**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. Specifies which theme file is applied to the computer the first time a user logs on.

If you enable this setting, the theme that you specify will be applied when a new user signs in for the first time.  This policy doesn't prevent the user from changing the theme or any of the theme elements such as the desktop background, color, sounds, or screen saver after the first sign in.

If you disable or don't configure this setting, the default theme will be applied at the first sign in.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Load a specific theme*
-   GP name: *CPL_Personalization_SetTheme*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-setvisualstyle"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_SetVisualStyle**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting allows you to force a specific visual style file by entering the path (location) of the visual style file.

This file can be a local computer visual style (aero.msstyles) one, or a file located on a remote server using a UNC path (\\Server\Share\aero.msstyles).

If you enable this setting, the visual style file that you specify will be used. Also, a user may not apply a different visual style when changing themes.

If you disable or don't configure this setting, the users can select the visual style that they want to use by changing themes (if the Personalization Control Panel is available).

> [!NOTE]
> If this setting is enabled and the file isn't available at user logon, the default visual style is loaded.
>
> When running Windows XP, you can select the Luna visual style by typing %windir%\resources\Themes\Luna\Luna.msstyles.
>
> To select the Windows Classic visual style, leave the box blank beside "Path to Visual Style:" and enable this setting. When running Windows 8 or Windows RT, you can't apply the Windows Classic visual style.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Force a specific visual style file or force Windows Classic*
-   GP name: *CPL_Personalization_SetVisualStyle*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-controlpaneldisplay-cpl-personalization-startbackground"></a>**ADMX_ControlPanelDisplay/CPL_Personalization_StartBackground**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Forces the Start screen to use one of the available backgrounds, 1 through 20, and prevents the user from changing it.

If this setting is set to zero or not configured, then Start uses the default background, and users can change it.

If this setting is set to a nonzero value, then Start uses the specified background, and users can't change it. If the specified background isn't supported, the default background is used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Force a specific Start background*
-   GP name: *CPL_Personalization_StartBackground*
-   GP path: *Control Panel\Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
