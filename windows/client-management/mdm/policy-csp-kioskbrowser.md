---
title: Policy CSP - KioskBrowser
description: Use the Policy CSP - KioskBrowser setting to configure URLs kiosk browsers are allowed to navigate to, which are a subset of the blocked URLs.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - KioskBrowser

These policies currently only apply to Kiosk Browser app. Kiosk Browser is a Microsoft Store app, added in Windows 10 version 1803, that provides IT a way to customize the end user's browsing experience to fulfill kiosk, signage, and shared device scenarios. Application developers can also create their own kiosk browser and read these policies using [NamedPolicy.GetPolicyFromPath(String, String) Method](/uwp/api/windows.management.policies.namedpolicy.getpolicyfrompath#Windows_Management_Policies_NamedPolicy_GetPolicyFromPath_System_String_System_String_).


<hr/>

<!--Policies-->
## KioskBrowser policies

<dl>
  <dd>
    <a href="#kioskbrowser-blockedurlexceptions">KioskBrowser/BlockedUrlExceptions</a>
  </dd>
  <dd>
    <a href="#kioskbrowser-blockedurls">KioskBrowser/BlockedUrls</a>
  </dd>
  <dd>
    <a href="#kioskbrowser-defaulturl">KioskBrowser/DefaultURL</a>
  </dd>
  <dd>
    <a href="#kioskbrowser-enableendsessionbutton">KioskBrowser/EnableEndSessionButton</a>
  </dd>
  <dd>
    <a href="#kioskbrowser-enablehomebutton">KioskBrowser/EnableHomeButton</a>
  </dd>
  <dd>
    <a href="#kioskbrowser-enablenavigationbuttons">KioskBrowser/EnableNavigationButtons</a>
  </dd>
  <dd>
    <a href="#kioskbrowser-restartonidletime">KioskBrowser/RestartOnIdleTime</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="kioskbrowser-blockedurlexceptions"></a>**KioskBrowser/BlockedUrlExceptions**

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
List of exceptions to the blocked website URLs (with wildcard support). This policy is used to configure URLs kiosk browsers are allowed to navigate to, which are a subset of the blocked URLs.

> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kioskbrowser-blockedurls"></a>**KioskBrowser/BlockedUrls**

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
List of blocked website URLs (with wildcard support). This policy is used to configure blocked URLs kiosk browsers can't navigate to.

> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kioskbrowser-defaulturl"></a>**KioskBrowser/DefaultURL**

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
Configures the default URL kiosk browsers to navigate on launch and restart.

> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kioskbrowser-enableendsessionbutton"></a>**KioskBrowser/EnableEndSessionButton**

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
Shows the Kiosk Browser's end session button. When the policy is enabled, the Kiosk Browser app shows a button to reset the browser. When the user selects the button, the app will prompt the user for confirmation to end the session. When the user confirms, the Kiosk browser will clear all browsing data (cache, cookies, etc.) and navigate back to the default URL.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kioskbrowser-enablehomebutton"></a>**KioskBrowser/EnableHomeButton**

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
Enable/disable kiosk browser's home button.

> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kioskbrowser-enablenavigationbuttons"></a>**KioskBrowser/EnableNavigationButtons**

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
Enable/disable kiosk browser's navigation buttons (forward/back).

> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kioskbrowser-restartonidletime"></a>**KioskBrowser/RestartOnIdleTime**

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
Amount of time in minutes, the session is idle until the kiosk browser restarts in a fresh state.

The value is an int 1-1440 that specifies the number of minutes the session is idle until the kiosk browser restarts in a fresh state. The default value is empty, which means there's no idle timeout within the kiosk browser.

> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.

<!--/Description-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)