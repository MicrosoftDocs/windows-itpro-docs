---
title: Policy CSP - ADMX_WindowsMediaPlayer
description: Policy CSP - ADMX_WindowsMediaPlayer
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 10/09/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_WindowsMediaPlayer
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_WindowsMediaPlayer policies

<dl>
  <dd>
    <a href="#admx-windowsmediaplayer-configurehttpproxysettings">ADMX_WindowsMediaPlayer/ConfigureHTTPProxySettings</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-configuremmsproxysettings">ADMX_WindowsMediaPlayer/ConfigureMMSProxySettings</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-configurertspproxysettings">ADMX_WindowsMediaPlayer/ConfigureRTSPProxySettings</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-disableautoupdate">ADMX_WindowsMediaPlayer/DisableAutoUpdate</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-disablenetworksettings">ADMX_WindowsMediaPlayer/DisableNetworkSettings</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-disablesetupfirstuseconfiguration">ADMX_WindowsMediaPlayer/DisableSetupFirstUseConfiguration</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-donotshowanchor">ADMX_WindowsMediaPlayer/DoNotShowAnchor</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-dontuseframeinterpolation">ADMX_WindowsMediaPlayer/DontUseFrameInterpolation</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-enablescreensaver">ADMX_WindowsMediaPlayer/EnableScreenSaver</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-hideprivacytab">ADMX_WindowsMediaPlayer/HidePrivacyTab</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-hidesecuritytab">ADMX_WindowsMediaPlayer/HideSecurityTab</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-networkbuffering">ADMX_WindowsMediaPlayer/NetworkBuffering</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-policycodecupdate">ADMX_WindowsMediaPlayer/PolicyCodecUpdate</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-preventcddvdmetadataretrieval">ADMX_WindowsMediaPlayer/PreventCDDVDMetadataRetrieval</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-preventlibrarysharing">ADMX_WindowsMediaPlayer/PreventLibrarySharing</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-preventmusicfilemetadataretrieval">ADMX_WindowsMediaPlayer/PreventMusicFileMetadataRetrieval</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-preventquicklaunchshortcut">ADMX_WindowsMediaPlayer/PreventQuickLaunchShortcut</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-preventradiopresetsretrieval">ADMX_WindowsMediaPlayer/PreventRadioPresetsRetrieval</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-preventwmpdesktopshortcut">ADMX_WindowsMediaPlayer/PreventWMPDeskTopShortcut</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-skinlockdown">ADMX_WindowsMediaPlayer/SkinLockDown</a>
  </dd>
  <dd>
    <a href="#admx-windowsmediaplayer-windowsstreamingmediaprotocols">ADMX_WindowsMediaPlayer/WindowsStreamingMediaProtocols</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-configurehttpproxysettings"></a>**ADMX_WindowsMediaPlayer/ConfigureHTTPProxySettings**

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
This policy setting allows you to specify the HTTP proxy settings for Windows Media Player.

If you enable this policy setting, select one of the following proxy types:

- Autodetect: the proxy settings are automatically detected.
- Custom: unique proxy settings are used.
- Use browser proxy settings: browser's proxy settings are used.

If the Custom proxy type is selected, the rest of the options on the Setting tab must be specified because no default settings are used for the proxy. The options are ignored if Autodetect or Browser is selected.

The Configure button on the Network tab in the Player isn't available for the HTTP protocol and the proxy can't be configured. If the "Hide network tab" policy setting is also enabled, the entire Network tab is hidden.

This policy is ignored if the "Streaming media protocols" policy setting is enabled and HTTP isn't selected.

If you disable this policy setting, the HTTP proxy server can't be used and the user can't configure the HTTP proxy.

If you don't configure this policy setting, users can configure the HTTP proxy settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure HTTP Proxy*
-   GP name: *ConfigureHTTPProxySettings*
-   GP path: *Windows Components\Windows Media Player\Networking*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-configuremmsproxysettings"></a>**ADMX_WindowsMediaPlayer/ConfigureMMSProxySettings**

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
This policy setting allows you to specify the MMS proxy settings for Windows Media Player.

If you enable this policy setting, select one of the following proxy types:

- Autodetect: the proxy settings are automatically detected.
- Custom: unique proxy settings are used.

If the Custom proxy type is selected, the rest of the options on the Setting tab must be specified; otherwise, the default settings are used. The options are ignored if Autodetect is selected.

The Configure button on the Network tab in the Player isn't available and the protocol can't be configured. If the "Hide network tab" policy setting is also enabled, the entire Network tab is hidden.

This policy setting is ignored if the "Streaming media protocols" policy setting is enabled and Multicast isn't selected.

If you disable this policy setting, the MMS proxy server can't be used and users can't configure the MMS proxy settings.

If you don't configure this policy setting, users can configure the MMS proxy settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure MMS Proxy*
-   GP name: *ConfigureMMSProxySettings*
-   GP path: *Windows Components\Windows Media Player\Networking*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-configurertspproxysettings"></a>**ADMX_WindowsMediaPlayer/ConfigureRTSPProxySettings**

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
This policy setting allows you to specify the RTSP proxy settings for Windows Media Player.

If you enable this policy setting, select one of the following proxy types:

- Autodetect: the proxy settings are automatically detected.
- Custom: unique proxy settings are used.

If the Custom proxy type is selected, the rest of the options on the Setting tab must be specified; otherwise, the default settings are used. The options are ignored if Autodetect is selected.

The Configure button on the Network tab in the Player isn't available and the protocol can't be configured. If the "Hide network tab" policy setting is also enabled, the entire Network tab is hidden.

If you disable this policy setting, the RTSP proxy server can't be used and users can't change the RTSP proxy settings.

If you don't configure this policy setting, users can configure the RTSP proxy settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure RTSP Proxy*
-   GP name: *ConfigureRTSPProxySettings*
-   GP path: *Windows Components\Windows Media Player\Networking*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-disableautoupdate"></a>**ADMX_WindowsMediaPlayer/DisableAutoUpdate**

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
This policy setting allows you to turn off do not show first use dialog boxes.

If you enable this policy setting, the Privacy Options and Installation Options dialog boxes are prevented from being displayed the first time a user starts Windows Media Player.

This policy setting prevents the dialog boxes that allow users to select privacy, file types, and other desktop options from being displayed when the Player is first started. Some of the options can be configured by using other Windows Media Player group policies.


If you disable or don't configure this policy setting, the dialog boxes are displayed when the user starts the Player for the first time.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Automatic Updates*
-   GP name: *DisableAutoUpdate*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-disablenetworksettings"></a>**ADMX_WindowsMediaPlayer/DisableNetworkSettings**

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
This policy setting allows you to hide the Network tab.

If you enable this policy setting, the Network tab in Windows Media Player is hidden. The default network settings are used unless the user has previously defined network settings for the Player.

If you disable or don't configure this policy setting, the Network tab appears and users can use it to configure network settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide Network Tab*
-   GP name: *DisableNetworkSettings*
-   GP path: *Windows Components\Windows Media Player\Networking*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-disablesetupfirstuseconfiguration"></a>**ADMX_WindowsMediaPlayer/DisableSetupFirstUseConfiguration**

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
This policy setting allows you to prevent the anchor window from being displayed when Windows Media Player is in skin mode.

If you enable this policy setting, the anchor window is hidden when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays isn't available.

If you disable or don't configure this policy setting, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.

If you don't configure this policy setting, and the "Set and lock skin" policy setting is enabled, some options in the anchor window aren't available.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do Not Show First Use Dialog Boxes*
-   GP name: *DisableSetupFirstUseConfiguration*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-donotshowanchor"></a>**ADMX_WindowsMediaPlayer/DoNotShowAnchor**

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
This policy setting prevents the anchor window from being displayed when Windows Media Player is in skin mode.

This policy hides the anchor window when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays isn't available.

When this policy isn't configured or disabled, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.

When this policy isn't configured and the Set and Lock Skin policy is enabled, some options in the anchor window aren't available.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do Not Show Anchor*
-   GP name: *DoNotShowAnchor*
-   GP path: *Windows Components\Windows Media Player\User Interface*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-dontuseframeinterpolation"></a>**ADMX_WindowsMediaPlayer/DontUseFrameInterpolation**

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
This policy setting allows you to prevent video smoothing from occurring.

If you enable this policy setting, video smoothing is prevented, which can improve video playback on computers with limited resources. In addition, the Use Video Smoothing check box in the Video Acceleration Settings dialog box in the Player is cleared and isn't available.

If you disable this policy setting, video smoothing occurs if necessary, and the Use Video Smoothing check box is selected and isn't available.

If you don't configure this policy setting, video smoothing occurs if necessary. Users can change the setting for the Use Video Smoothing check box.

Video smoothing is available only on the Windows XP Home Edition and Windows XP Professional operating systems.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Video Smoothing*
-   GP name: *DontUseFrameInterpolation*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-enablescreensaver"></a>**ADMX_WindowsMediaPlayer/EnableScreenSaver**

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
This policy setting allows a screen saver to interrupt playback.

If you enable this policy setting, a screen saver is displayed during playback of digital media according to the options selected on the Screen Saver tab in the Display Properties dialog box in Control Panel. The Allow screen saver during playback check box on the Player tab in the Player is selected and isn't available.

If you disable this policy setting, a screen saver doesn't interrupt playback even if users have selected a screen saver. The Allow screen saver during playback check box is cleared and isn't available.

If you don't configure this policy setting, users can change the setting for the Allow screen saver during playback check box.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow Screen Saver*
-   GP name: *EnableScreenSaver*
-   GP path: *Windows Components\Windows Media Player\Playback*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-hideprivacytab"></a>**ADMX_WindowsMediaPlayer/HidePrivacyTab**

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
This policy setting allows you to hide the Privacy tab in Windows Media Player.

If you enable this policy setting, the "Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet" check box on the Media Library tab is available, even though the Privacy tab is hidden, unless the "Prevent music file media information retrieval" policy setting is enabled.

The default privacy settings are used for the options on the Privacy tab unless the user changed the settings previously.

If you disable or don't configure this policy setting, the Privacy tab isn't hidden, and users can configure any privacy settings not configured by other policies.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Automatic Updates*
-   GP name: *HidePrivacyTab*
-   GP path: *Windows Components\Windows Media Player\User Interface*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-hidesecuritytab"></a>**ADMX_WindowsMediaPlayer/HideSecurityTab**

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
This policy setting allows you to hide the Security tab in Windows Media Player.

If you enable this policy setting, the default security settings for the options on the Security tab are used unless the user changed the settings previously. Users can still change security and zone settings by using Internet Explorer unless these settings have been hidden or disabled by Internet Explorer policies.

If you disable or don't configure this policy setting, users can configure the security settings on the Security tab.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide Security Tab*
-   GP name: *HideSecurityTab*
-   GP path: *Windows Components\Windows Media Player\User Interface*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-networkbuffering"></a>**ADMX_WindowsMediaPlayer/NetworkBuffering**

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
This policy setting allows you to specify whether network buffering uses the default or a specified number of seconds.

If you enable this policy setting, select one of the following options to specify the number of seconds streaming media is buffered before it's played.

- Custom: the number of seconds, up to 60, that streaming media is buffered.
- Default: default network buffering is used and the number of seconds that is specified is ignored.

The "Use default buffering" and "Buffer" options on the Performance tab in the Player aren't available.

If you disable or don't configure this policy setting, users can change the buffering options on the Performance tab.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Network Buffering*
-   GP name: *NetworkBuffering*
-   GP path: *Windows Components\Windows Media Player\Networking*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-policycodecupdate"></a>**ADMX_WindowsMediaPlayer/PolicyCodecUpdate**

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
This policy setting allows you to prevent Windows Media Player from downloading codecs.

If you enable this policy setting, the Player is prevented from automatically downloading codecs to your computer. In addition, the Download codecs automatically check box on the Player tab in the Player isn't available.

If you disable this policy setting, codecs are automatically downloaded and the Download codecs automatically check box isn't available.

If you don't configure this policy setting, users can change the setting for the Download codecs automatically check box.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Codec Download*
-   GP name: *PolicyCodecUpdate*
-   GP path: *Windows Components\Windows Media Player\Playback*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-preventcddvdmetadataretrieval"></a>**ADMX_WindowsMediaPlayer/PreventCDDVDMetadataRetrieval**

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
This policy setting allows you to prevent media information for CDs and DVDs from being retrieved from the Internet.

If you enable this policy setting, the Player is prevented from automatically obtaining media information from the Internet for CDs and DVDs played by users. In addition, the Retrieve media information for CDs and DVDs from the Internet check box on the Privacy Options tab in the first use dialog box and on the Privacy tab in the Player aren't selected and aren't available.

If you disable or don't configure this policy setting, users can change the setting of the Retrieve media information for CDs and DVDs from the Internet check box.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent CD and DVD Media Information Retrieval*
-   GP name: *PreventCDDVDMetadataRetrieval*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-preventlibrarysharing"></a>**ADMX_WindowsMediaPlayer/PreventLibrarySharing**

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
This policy setting allows you to prevent media sharing from Windows Media Player.

If you enable this policy setting, any user on this computer is prevented from sharing digital media content from Windows Media Player with other computers and devices that are on the same network. Media sharing is disabled from Windows Media Player or from programs that depend on the Player's media sharing feature.

If you disable or don't configure this policy setting, anyone using Windows Media Player can turn media sharing on or off.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Media Sharing*
-   GP name: *PreventLibrarySharing*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-preventmusicfilemetadataretrieval"></a>**ADMX_WindowsMediaPlayer/PreventMusicFileMetadataRetrieval**

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
This policy setting allows you to prevent media information for music files from being retrieved from the Internet.

If you enable this policy setting, the Player is prevented from automatically obtaining media information for music files such as Windows Media Audio (WMA) and MP3 files from the Internet. In addition, the Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet check box in the first use dialog box and on the Privacy and Media Library tabs in the Player aren't selected and aren't available.

If you disable or don't configure this policy setting, users can change the setting of the Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet check box.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Music File Media Information Retrieval*
-   GP name: *PreventMusicFileMetadataRetrieval*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-preventquicklaunchshortcut"></a>**ADMX_WindowsMediaPlayer/PreventQuickLaunchShortcut**

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
This policy setting allows you to prevent a shortcut for the Player from being added to the Quick Launch bar.

If you enable this policy setting, the user can't add the shortcut for the Player to the Quick Launch bar.

If you disable or don't configure this policy setting, the user can choose whether to add the shortcut for the Player to the Quick Launch bar.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Quick Launch Toolbar Shortcut Creation*
-   GP name: *PreventQuickLaunchShortcut*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-preventradiopresetsretrieval"></a>**ADMX_WindowsMediaPlayer/PreventRadioPresetsRetrieval**

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
This policy setting allows you to prevent radio station presets from being retrieved from the Internet.

If you enable this policy setting, the Player is prevented from automatically retrieving radio station presets from the Internet and displaying them in Media Library. In addition, presets that exist before the policy is configured aren't updated, and the presets that a user adds aren't displayed.

If you disable or don't configure this policy setting, the Player automatically retrieves radio station presets from the Internet.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *PPrevent Radio Station Preset Retrieval*
-   GP name: *PreventRadioPresetsRetrieval*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-preventwmpdesktopshortcut"></a>**ADMX_WindowsMediaPlayer/PreventWMPDeskTopShortcut**

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
This policy setting allows you to prevent a shortcut icon for the Player from being added to the user's desktop.

If you enable this policy setting, users can't add the Player shortcut icon to their desktops.

If you disable or don't configure this policy setting, users can choose whether to add the Player shortcut icon to their desktops.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Desktop Shortcut Creation*
-   GP name: *PreventWMPDeskTopShortcut*
-   GP path: *Windows Components\Windows Media Player*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-skinlockdown"></a>**ADMX_WindowsMediaPlayer/SkinLockDown**

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
This policy setting allows you to set and lock Windows Media Player in skin mode, using a specified skin.

If you enable this policy setting, the Player displays only in skin mode using the skin specified in the Skin box on the Setting tab.

You must use the complete file name for the skin (for example, skin_name.wmz), and the skin must be installed in the %programfiles%\Windows Media Player\Skins Folder on a user's computer. If the skin isn't installed on a user's computer, or if the Skin box is blank, the Player opens by using the Corporate skin. The only way to specify the Corporate skin is to leave the Skin box blank.

A user has access only to the Player features that are available with the specified skin. Users can't switch the Player to full mode and can't choose a different skin.

If you disable or don't configure this policy setting, users can display the Player in full or skin mode and have access to all available features of the Player.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set and Lock Skin*
-   GP name: *SkinLockDown*
-   GP path: *Windows Components\Windows Media Player\User Interface*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediaplayer-windowsstreamingmediaprotocols"></a>**ADMX_WindowsMediaPlayer/WindowsStreamingMediaProtocols**

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
This policy setting allows you to specify that Windows Media Player can attempt to use selected protocols when receiving streaming media from a server running Windows Media Services.

If you enable this policy setting, the protocols that are selected on the Network tab of the Player are used to receive a stream initiated through an MMS or RTSP URL from a Windows Media server. If the RSTP/UDP check box is selected, a user can specify UDP ports in the Use ports check box. If the user doesn't specify UDP ports, the Player uses default ports when using the UDP protocol. This policy setting also specifies that multicast streams can be received if the "Allow the Player to receive multicast streams" check box on the Network tab is selected.

If you enable this policy setting, the administrator must also specify the protocols that are available to users on the Network tab. If the administrator doesn't specify any protocols, the Player can't access an MMS or RTSP URL from a Windows Media server. If the "Hide network tab" policy setting is enabled, the entire Network tab is hidden.

If you don't configure this policy setting, users can select the protocols to use on the Network tab.

If you disable this policy setting, the Protocols for MMS URLs and Multicast streams areas of the Network tab aren't available and the Player can't receive an MMS or RTSP stream from a Windows Media server.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Streaming Media Protocols*
-   GP name: *WindowsStreamingMediaProtocols*
-   GP path: *Windows Components\Windows Media Player\Networking*
-   GP ADMX file name: *WindowsMediaPlayer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

