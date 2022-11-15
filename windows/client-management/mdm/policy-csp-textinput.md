---
title: Policy CSP - TextInput
description: The Policy CSP - TextInput setting allows the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 03/03/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - TextInput

<hr/>

<!--Policies-->
## TextInput policies

<dl>
  <dd>
    <a href="#textinput-allowhardwarekeyboardtextsuggestions">TextInput/AllowHardwareKeyboardTextSuggestions</a>
  </dd>
  <dd>
    <a href="#textinput-allowimelogging">TextInput/AllowIMELogging</a>
  </dd>
  <dd>
    <a href="#textinput-allowimenetworkaccess">TextInput/AllowIMENetworkAccess</a>
  </dd>
  <dd>
    <a href="#textinput-allowinputpanel">TextInput/AllowInputPanel</a>
  </dd>
  <dd>
    <a href="#textinput-allowjapaneseimesurrogatepaircharacters">TextInput/AllowJapaneseIMESurrogatePairCharacters</a>
  </dd>
  <dd>
    <a href="#textinput-allowjapaneseivscharacters">TextInput/AllowJapaneseIVSCharacters</a>
  </dd>
  <dd>
    <a href="#textinput-allowjapanesenonpublishingstandardglyph">TextInput/AllowJapaneseNonPublishingStandardGlyph</a>
  </dd>
  <dd>
    <a href="#textinput-allowjapaneseuserdictionary">TextInput/AllowJapaneseUserDictionary</a>
  </dd>
  <dd>
    <a href="#textinput-allowkeyboardtextsuggestions">TextInput/AllowKeyboardTextSuggestions</a>
  </dd>
  <dd>
    <a href="#textinput-allowkoreanextendedhanja">TextInput/AllowKoreanExtendedHanja</a>
  </dd>
  <dd>
    <a href="#textinput-allowlanguagefeaturesuninstall">TextInput/AllowLanguageFeaturesUninstall</a>
  </dd>
  <dd>
    <a href="#textinput-allowlinguisticdatacollection">TextInput/AllowLinguisticDataCollection</a>
  </dd>
  <dd>
    <a href="#textinput-allowtextinputsuggestionupdate">TextInput/AllowTextInputSuggestionUpdate</a>
  </dd>
  <dd>
    <a href="#textinput-configurejapaneseimeversion">TextInput/ConfigureJapaneseIMEVersion</a>
  </dd>
  <dd>
    <a href="#textinput-configuresimplifiedchineseimeversion">TextInput/ConfigureSimplifiedChineseIMEVersion</a>
  </dd>
  <dd>
    <a href="#textinput-configuretraditionalchineseimeversion">TextInput/ConfigureTraditionalChineseIMEVersion</a>
  </dd>
  <dd>
    <a href="#textinput-enabletouchkeyboardautoinvokeindesktopmode">TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode</a>
  </dd>
  <dd>
    <a href="#textinput-excludejapaneseimeexceptjis0208">TextInput/ExcludeJapaneseIMEExceptJIS0208</a>
  </dd>
  <dd>
    <a href="#textinput-excludejapaneseimeexceptjis0208andeudc">TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC</a>
  </dd>
  <dd>
    <a href="#textinput-excludejapaneseimeexceptshiftjis">TextInput/ExcludeJapaneseIMEExceptShiftJIS</a>
  </dd>
  <dd>
    <a href="#textinput-forcetouchkeyboarddockedstate">TextInput/ForceTouchKeyboardDockedState</a>
  </dd>
  <dd>
    <a href="#textinput-touchkeyboarddictationbuttonavailability">TextInput/TouchKeyboardDictationButtonAvailability</a>
  </dd>
  <dd>
    <a href="#textinput-touchkeyboardemojibuttonavailability">TextInput/TouchKeyboardEmojiButtonAvailability</a>
  </dd>
  <dd>
    <a href="#textinput-touchkeyboardfullmodeavailability">TextInput/TouchKeyboardFullModeAvailability</a>
  </dd>
  <dd>
    <a href="#textinput-touchkeyboardhandwritingmodeavailability">TextInput/TouchKeyboardHandwritingModeAvailability</a>
  </dd>
  <dd>
    <a href="#textinput-touchkeyboardnarrowmodeavailability">TextInput/TouchKeyboardNarrowModeAvailability</a>
  </dd>
  <dd>
    <a href="#textinput-touchkeyboardsplitmodeavailability">TextInput/TouchKeyboardSplitModeAvailability</a>
  </dd>
  <dd>
    <a href="#textinput-touchkeyboardwidemodeavailability">TextInput/TouchKeyboardWideModeAvailability</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="textinput-allowhardwarekeyboardtextsuggestions"></a>**TextInput/AllowHardwareKeyboardTextSuggestions**

<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Placeholder only. Do not use in production environment.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowimelogging"></a>**TextInput/AllowIMELogging**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the user to turn on and off the logging for incorrect conversion, and saving auto-tuning result to a file and history-based predictive input.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 – Not allowed.
- 1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowimenetworkaccess"></a>**TextInput/AllowIMENetworkAccess**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Allows the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that do not exist in the device's local dictionary.

Most restricted value is 0.

In Windows 10, version 1803, we introduced new suggestion services in Japanese IME in addition to cloud suggestion. When AllowIMENetworkAccess is set to 1, all suggestion services are available as predictive input.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed. In Windows 10, version 1803, suggestion services are also available in Japanese IME.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowinputpanel"></a>**TextInput/AllowInputPanel**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the IT admin to disable the touch/handwriting keyboard on Windows.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowjapaneseimesurrogatepaircharacters"></a>**TextInput/AllowJapaneseIMESurrogatePairCharacters**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the Japanese IME surrogate pair characters.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowjapaneseivscharacters"></a>**TextInput/AllowJapaneseIVSCharacters**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows Japanese Ideographic Variation Sequence (IVS) characters.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowjapanesenonpublishingstandardglyph"></a>**TextInput/AllowJapaneseNonPublishingStandardGlyph**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the Japanese non-publishing standard glyph.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowjapaneseuserdictionary"></a>**TextInput/AllowJapaneseUserDictionary**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the Japanese user dictionary.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowkeyboardtextsuggestions"></a>**TextInput/AllowKeyboardTextSuggestions**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Specifies whether text prediction is enabled or disabled for the on-screen keyboard, touch keyboard, and handwriting recognition tool. When this policy is set to disabled, text prediction is disabled.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Enabled.

<!--/SupportedValues-->
<!--Validation-->
To validate that text prediction is disabled on Windows 10 for desktop, do the following:

1.  Search for and launch the on-screen keyboard. Verify that text prediction is disabled by typing some text. Text prediction on the keyboard will be disabled even if the “Use Text Prediction” setting is enabled from the options button.
2.  Launch the input panel/touch keyboard by touching a text input field or launching it from the taskbar. Verify that text prediction is disabled by typing some text. Text prediction on the keyboard will be disabled even if the “Show text suggestions as I type” setting is enabled in the Settings app.
3.  Launch the handwriting tool from the touch keyboard. Verify that text prediction is disabled when you write using the tool.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowkoreanextendedhanja"></a>**TextInput/AllowKoreanExtendedHanja**

<hr/>

<!--Description-->
This policy has been deprecated.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowlanguagefeaturesuninstall"></a>**TextInput/AllowLanguageFeaturesUninstall**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the uninstall of language features, such as spell checkers on a device.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Uninstallation of Language Features*
-   GP name: *AllowLanguageFeaturesUninstall*
-   GP path: *Windows Components/Text Input*
-   GP ADMX file name: *TextInput.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowlinguisticdatacollection"></a>**TextInput/AllowLinguisticDataCollection**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting controls the ability to send inking and typing data to Microsoft to improve the language recognition and suggestion capabilities of apps and services running on Windows.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Improve inking and typing recognition*
-   GP name: *AllowLinguisticDataCollection*
-   GP path: *Windows Components/Text Input*
-   GP ADMX file name: *TextInput.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowtextinputsuggestionupdate"></a>**TextInput/AllowTextInputSuggestionUpdate**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Allows the user to turn on or off the automatic downloading of newer versions of the Expressive Input UI.
When downloading is not allowed the Expressive Input panel will always display the initial UI included with the base Windows image.

Most restricted value is 0.

Default: Enabled

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 1 (Enabled) - The newer UX is downloaded from Microsoft service.
- 0 (Disabled) - The UX remains unchanged with what the operating system installs.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-configurejapaneseimeversion"></a>**TextInput/ConfigureJapaneseIMEVersion**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> - The policy is only enforced in Windows 10 for desktop.
> - This policy requires reboot to take effect.

Allows IT admins to configure Microsoft Japanese IME version in the desktop.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Allows you to configure which Microsoft Japanese IME version to use. The new Microsoft Japanese IME version is configured by default.
- 1 - Does not allow you to configure which Microsoft Japanese IME version to use. The previous version of Microsoft Japanese IME is always selected.
- 2 - Does not allow you to configure which Microsoft Japanese IME version to use. The new Microsoft Japanese IME version is always selected.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-configuresimplifiedchineseimeversion"></a>**TextInput/ConfigureSimplifiedChineseIMEVersion**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> - This policy is enforced only in Windows 10 for desktop.
> - This policy requires reboot to take effect.

Allows IT admins to configure Microsoft Simplified Chinese IME version in the desktop.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Allows you to configure which Microsoft Simplified Chinese IME version to use. The new Microsoft Simplified Chinese IME version is configured by default.
- 1 - Does not allow you to configure which Microsoft Simplified Chinese IME version to use. The previous version of Microsoft Simplified Chinese IME is always selected.
- 2 - Does not allow you to configure which Microsoft Simplified Chinese IME version to use. The new Microsoft Simplified Chinese IME version is always selected.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-configuretraditionalchineseimeversion"></a>**TextInput/ConfigureTraditionalChineseIMEVersion**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> - This policy is enforced only in Windows 10 for desktop.
> - This policy requires reboot to take effect.

Allows IT admins to configure Microsoft Traditional Chinese IME version in the desktop.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - Allows you to configure which Microsoft Traditional Chinese IME version to use. The new Microsoft Traditional Chinese IME version is configured by default.
- 1 - Does not allow you to configure which Microsoft Traditional Chinese IME version to use. The previous version of Microsoft Traditional Chinese IME is always selected.
- 2 - Does not allow you to configure which Microsoft Traditional Chinese IME version to use. The new Microsoft Traditional Chinese IME version is always selected.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-enabletouchkeyboardautoinvokeindesktopmode"></a>**TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy allows the IT admin to enable the touch keyboard to automatically show up when the device is in the desktop mode.

The touch keyboard is enabled in both the tablet and desktop mode. In the tablet mode, when you touch a textbox, the touch keyboard automatically shows up.
But in the desktop mode, by default, the touch keyboard does not automatically show up when you touch a textbox. The user must click the system tray to enable the touch keyboard.
When this policy is enabled, the touch keyboard automatically shows up when the device is in the desktop mode.

This policy corresponds to "Show the touch keyboard when not in tablet mode and there's no keyboard attached" in the Settings app.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disabled.
-   1 - Enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-excludejapaneseimeexceptjis0208"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the users to restrict character code range of conversion by setting the character filter.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 are filtered.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-excludejapaneseimeexceptjis0208andeudc"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the users to restrict character code range of conversion by setting the character filter.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 and EUDC are filtered.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-excludejapaneseimeexceptshiftjis"></a>**TextInput/ExcludeJapaneseIMEExceptShiftJIS**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Allows the users to restrict character code range of conversion by setting the character filter.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except ShiftJIS are filtered.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-forcetouchkeyboarddockedstate"></a>**TextInput/ForceTouchKeyboardDockedState**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies the touch keyboard is always docked. When this policy is set to enabled, the touch keyboard is always docked.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - (default) - The OS determines when it's most appropriate to be available.
-   1 - Touch keyboard is always docked.
-   2 - Touch keyboard docking can be changed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboarddictationbuttonavailability"></a>**TextInput/TouchKeyboardDictationButtonAvailability**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies whether the dictation input button is enabled or disabled for the touch keyboard. When this policy is set to disabled, the dictation input button on touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines when it's most appropriate to be available.
-   1 - Dictation button on the keyboard is always available.
-   2 - Dictation button on the keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardemojibuttonavailability"></a>**TextInput/TouchKeyboardEmojiButtonAvailability**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies whether the emoji, GIF (only in Windows 11), and kaomoji (only in Windows 11) buttons are available or unavailable for the touch keyboard. When this policy is set to disabled, the buttons are hidden and unavailable.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - The OS determines when buttons are most appropriate to be available.
- 1 - Emoji, GIF, and Kaomoji buttons on the touch keyboard are always available.
- 2 - Emoji, GIF, and Kaomoji buttons on the touch keyboard are always unavailable.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardfullmodeavailability"></a>**TextInput/TouchKeyboardFullModeAvailability**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies whether the full keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the full keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines, when it's most appropriate to be available.
-   1 - Full keyboard is always available.
-   2 - Full keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardhandwritingmodeavailability"></a>**TextInput/TouchKeyboardHandwritingModeAvailability**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies whether the handwriting input panel is enabled or disabled. When this policy is set to disabled, the handwriting input panel is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines, when it's most appropriate to be available.
-   1 - Handwriting input panel is always available.
-   2 - Handwriting input panel is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardnarrowmodeavailability"></a>**TextInput/TouchKeyboardNarrowModeAvailability**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies whether the narrow keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the narrow keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines, when it's most appropriate to be available.
-   1 - Narrow keyboard is always available.
-   2 - Narrow keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardsplitmodeavailability"></a>**TextInput/TouchKeyboardSplitModeAvailability**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies whether the split keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the split keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines, when it's most appropriate to be available.
-   1 - Split keyboard is always available.
-   2 - Split keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardwidemodeavailability"></a>**TextInput/TouchKeyboardWideModeAvailability**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies whether the wide keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the wide keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines, when it's most appropriate to be available.
-   1 - Wide keyboard is always available.
-   2 - Wide keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)