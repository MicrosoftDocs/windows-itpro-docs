---
title: Policy CSP - TextInput
description: Policy CSP - TextInput
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 08/09/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - TextInput

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


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

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803.  Placeholder only. Do not use in production environment.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowimelogging"></a>**TextInput/AllowIMELogging**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


Allows the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input.

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
<a href="" id="textinput-allowimenetworkaccess"></a>**TextInput/AllowIMENetworkAccess**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

Added in Windows 10, version 1703. Specifies whether text prediction is enabled or disabled for the on-screen keyboard, touch keyboard, and handwriting recognition tool. When this policy is set to disabled, text prediction is disabled. 

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

<!--Description-->
This policy has been deprecated.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-allowlanguagefeaturesuninstall"></a>**TextInput/AllowLanguageFeaturesUninstall**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


Allows the uninstall of language features, such as spell checkers, on a device.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Uninstallation of Language Features*
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->

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
-   GP English name: *Improve inking and typing recognition*
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
<a href="" id="textinput-enabletouchkeyboardautoinvokeindesktopmode"></a>**TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy allows the IT admin to enable the touch keyboard to automatically show up when the device is in the desktop mode. 

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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies the touch keyboard is always docked. When this policy is set to enabled, the touch keyboard is always docked.

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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies whether the dictation input button is enabled or disabled for the touch keyboard. When this policy is set to disabled, the dictation input button on touch keyboard is disabled.

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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies whether the emoji button is enabled or disabled for the touch keyboard. When this policy is set to disabled, the emoji button on touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines when it's most appropriate to be available.
-   1 - Emoji button on keyboard is always available.
-   2 - Emoji button on keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardfullmodeavailability"></a>**TextInput/TouchKeyboardFullModeAvailability**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies whether the full keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the full keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines when it's most appropriate to be available.
-   1 - Full keyboard is always available.
-   2 - Full keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardhandwritingmodeavailability"></a>**TextInput/TouchKeyboardHandwritingModeAvailability**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies whether the handwriting input panel is enabled or disabled. When this policy is set to disabled, the handwriting input panel is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines when it's most appropriate to be available.
-   1 - Handwriting input panel is always available.
-   2 - Handwriting input panel is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardnarrowmodeavailability"></a>**TextInput/TouchKeyboardNarrowModeAvailability**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies whether the narrow keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the narrow keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines when it's most appropriate to be available.
-   1 - Narrow keyboard is always available.
-   2 - Narrow keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardsplitmodeavailability"></a>**TextInput/TouchKeyboardSplitModeAvailability**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies whether the split keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the split keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines when it's most appropriate to be available.
-   1 - Split keyboard is always available.
-   2 - Split keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="textinput-touchkeyboardwidemodeavailability"></a>**TextInput/TouchKeyboardWideModeAvailability**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies whether the wide keyboard mode is enabled or disabled for the touch keyboard. When this policy is set to disabled, the wide keyboard mode for touch keyboard is disabled.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The OS determines when it's most appropriate to be available.
-   1 - Wide keyboard is always available.
-   2 - Wide keyboard is always disabled.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in the next major release of Windows 10.

<!--/Policies-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>TextInput policies supported by Microsoft Surface Hub  

-   [TextInput/AllowIMELogging](#textinput-allowimelogging)  
-   [TextInput/AllowIMENetworkAccess](#textinput-allowimenetworkaccess)  
-   [TextInput/AllowInputPanel](#textinput-allowinputpanel)  
-   [TextInput/AllowJapaneseIMESurrogatePairCharacters](#textinput-allowjapaneseimesurrogatepaircharacters)  
-   [TextInput/AllowJapaneseIVSCharacters](#textinput-allowjapaneseivscharacters)  
-   [TextInput/AllowJapaneseNonPublishingStandardGlyph](#textinput-allowjapanesenonpublishingstandardglyph)  
-   [TextInput/AllowJapaneseUserDictionary](#textinput-allowjapaneseuserdictionary)  
-   [TextInput/AllowLanguageFeaturesUninstall](#textinput-allowlanguagefeaturesuninstall)  
-   [TextInput/ExcludeJapaneseIMEExceptJIS0208](#textinput-excludejapaneseimeexceptjis0208)  
-   [TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC](#textinput-excludejapaneseimeexceptjis0208andeudc)  
-   [TextInput/ExcludeJapaneseIMEExceptShiftJIS](#textinput-excludejapaneseimeexceptshiftjis)  
<!--EndSurfaceHub-->

