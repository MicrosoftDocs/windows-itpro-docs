---
title: Deploy Microsoft Edge kiosk mode
description: Microsoft Edge kiosk mode works with assigned access to allow IT admins to create a tailored browsing experience designed for kiosk devices. To use Microsoft Edge kiosk mode, you must configure Microsoft Edge as an application in assigned access.
ms.assetid: 
ms.reviewer: 
manager: dansimp
author: eavena
ms.author: eravena
ms.prod: edge
ms.sitesec: library
ms.topic: get-started-article
ms.localizationpriority: medium
ms.date: 10/29/2018 
---

# Deploy Microsoft Edge kiosk mode

>Applies to: Microsoft Edge on Windows 10, version 1809  
>Professional, Enterprise, and Education 

In the Windows 10 October 2018 Update, we added the capability to use Microsoft Edge as a kiosk using assigned access. With assigned access, you create a tailored browsing experience locking down a Windows 10 device to only run as a single-app or multi-app kiosk.  Assigned access restricts a local standard user account so that it only has access to one or more Windows app, such as Microsoft Edge in kiosk mode.

In this topic, you learn how to configure the behavior of Microsoft Edge when it's running in kiosk mode with assigned access.  You also learn how to set up your kiosk device using either Windows Setting or Microsoft Intune or other MDM service. 

At the end of this topic, you can find a list of [supported policies](#supported-policies-for-kiosk-mode) for kiosk mode and a [feature comparison](#feature-comparison-of-kiosk-mode-and-kiosk-browser-app) of the kiosk mode policy and kiosk browser app.  You also find instructions on how to provide us feedback or get support. 


## Kiosk mode configuration types

>**Policy** = Configure kiosk mode (ConfigureKioskMode)

Microsoft Edge kiosk mode supports four configurations types that depend on how Microsoft Edge is set up with assigned access, either as a single-app or multi-app kiosk. These configuration types help you determine what is best suited for your kiosk device or scenario.  

- Learn about [creating a kiosk experience](https://docs.microsoft.com/windows-hardware/customize/enterprise/create-a-kiosk-image)

   - [Set up a kiosk or digital signage on Windows 10 Pro, Enterprise, or Education](https://docs.microsoft.com/windows/configuration/setup-kiosk-digital-signage)

   - [Create a Windows 10 kiosk that runs multiple apps](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps).

- Learn about configuring a more secure kiosk experience: [Other settings to lock down](https://docs.microsoft.com/windows/configuration/setup-kiosk-digital-signage#other-settings-to-lock-down).


### Important things to remember before getting started

-  The public browsing kiosk types run Microsoft Edge InPrivate mode to protect user data with a browsing experience designed for public kiosks. 

-  Microsoft Edge kiosk mode has a built-in timer to help keep data safe in public browsing sessions. When the idle time (no user activity) meets the time limit, a confirmation message prompts the user to continue, and if no user activity Microsoft Edge resets the session to the default URL. By default, the idle timer is 5 minutes, but you can choose a value of your own.

-  Optionally, you can define a single URL for the Home button, Start page, and New Tab page. See [Supported policies for kiosk mode](#supported-policies-for-kiosk-mode) to learn more.

-  No matter which configuration type you choose, you must set up Microsoft Edge in assigned access; otherwise, Microsoft Edge ignores the settings in this policy (Configure kiosk mode/ConfigureKioskMode).<p>Learn more about assigned access:

   - [Configure kiosk and shared devices running Windows desktop editions](https://aka.ms/E489vw).

   - [Kiosk apps for assigned access best practices](https://aka.ms/H1s8y4).

   - [Guidelines for choosing an app for assigned access (kiosk mode)](https://aka.ms/Ul7dw3).


### Supported configuration types 

[!INCLUDE [configure-kiosk-mode-supported-values-include](includes/configure-kiosk-mode-supported-values-include.md)]

## Set up Microsoft Edge kiosk mode

Now that you're familiar with the different kiosk mode configurations and have the one you want to use in mind, you can use one of the following methods to set up Microsoft Edge kiosk mode:

-   **Windows Settings.** Use only to set up a couple of single-app devices because you perform these steps physically on each device.  For a multi-app kiosk device, use Microsoft Intune or other MDM service. 

-   **Microsoft Intune or other MDM service.** Use to set up several single-app or multi-app kiosk devices. Microsoft Intune and other MDM service providers offer more options for customizing the Microsoft Edge kiosk mode experience using any of the [Supported policies for kiosk mode](#supported-policies-for-kiosk-mode).  


### Prerequisites

- Microsoft Edge on Windows 10, version 1809 (Professional, Enterprise, and Education).

- URL to load when the kiosk launches. The URL that you provide sets the Home button, Start page, and New Tab page.

- _**For Microsoft Intune or other MDM service**_, you must have the AppUserModelID (AUMID) to set up Microsoft Edge:
 
  ```
  Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge
  ```


### Use Windows Settings

Windows Settings is the simplest and the only way to set up one or a couple of single-app devices.  


1.  On the kiosk device, open Windows Settings, and in the search field type **kiosk** and then select **Set up a kiosk (assigned access)**.

2.  On the **Set up a kiosk** page, click **Get started**.

3.  Type a name to create a new kiosk account, or choose an existing account from the populated list and click **Next**.

4.  On the **Choose a kiosk app** page, select **Microsoft Edge** and then click **Next**.

5.  Select how Microsoft Edge displays when running in kiosk mode:

    -   **As a digital sign or interactive display** - Displays a specific site in full-screen mode, running Microsoft Edge InPrivate protecting user data.   

    -   **As a public browser** - Runs a limited multi-tab version of Microsoft Edge, protecting user data.   

6.  Select **Next**.

7.  Type the URL to load when the kiosk launches.

8.  Accept the default value of **5 minutes** for the idle time or provide a value of your own.

9.  Click **Next**.

10. Close the **Settings** window to save and apply your choices.

11. Restart the kiosk device and sign in with the local kiosk account to validate the configuration.

**_Congratulations!_** <p>You’ve just finished setting up a single-app kiosk device using Windows Settings. 

**_What's next?_** 

- User your new kiosk device. <p>
   OR<p>
- Make changes to your kiosk device. In Windows Settings, on the **Set up a kiosk** page, make your changes to **Choose a kiosk mode** and **Set up Microsoft Edge**.

---  


### Use Microsoft Intune or other MDM service

With this method, you can use Microsoft Intune or other MDM services to configure Microsoft Edge kiosk mode in assigned access and how it behaves on a kiosk device. To learn about a few app fundamentals and requirements before adding them to Intune, see [Add apps to Microsoft Intune](https://docs.microsoft.com/intune/apps-add).

>[!IMPORTANT]
>If you are using a local account as a kiosk account in Microsoft Intune, make sure to sign into this account and then sign out before configuring the kiosk device.

1. In Microsoft Intune or other MDM service, configure [AssignedAccess](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp) to prevent users from accessing the file system, running executables, or other apps.

2. Configure the following MDM settings to setup Microsoft Edge kiosk mode on the kiosk device and then restart the device.

   |   |   |
   |---|---|
   | **[ConfigureKioskMode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode)**<p>![](images/icon-thin-line-computer.png) | Configure the display mode for Microsoft Edge as a kiosk app.<p><p>**URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureKioskMode<p>**Data type:**  Integer<p>**Allowed values:**<ul><li>**Single-app kiosk experience**<ul><li>**0** - Digital signage and interactive display</li><li>**1** - InPrivate Public browsing</li></ul></li><li>**Multi-app kiosk experience**<ul><li>**0** - Normal Microsoft Edge running in assigned access</li><li>**1** - InPrivate public browsing with other apps</li></ul></li></ul> |
   | **[ConfigureKioskResetAfterIdleTimeout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskresetafteridletimeout)**<p>![](images/icon-thin-line-computer.png) | Change the time in minutes from the last user activity before Microsoft Edge kiosk mode resets the user's session.<p><p>**URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureKioskResetAfterIdleTimeout<p>**Data type:** Integer<p>**Allowed values:**<ul><li>**0** - No idle timer</li><li>**1-1440 (5 minutes is the default)** - Set reset on idle timer</li></ul>  |
   | **[HomePages](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-homepages)**<p>![](images/icon-thin-line-computer.png)  | Set one or more start pages, URLs, to load when Microsoft Edge launches.<p><p>**URI full path:** ./Vendor/MSFT/Policy/Config/Browser/HomePages<p>**Data type:** String<p>**Allowed values:**<p>Enter one or more URLs, for example,<br>&nbsp;&nbsp;&nbsp;\<https://www.msn.com\>\<https:/www.bing.com\>  |
   | **[ConfigureHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton)**<p>![](images/icon-thin-line-computer.png)  | Configure how the Home Button behaves.<p><p>**URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureHomeButton<p>**Data type:** Integer<p> **Allowed values:**<ul><li>**0 (default)** - Not configured. Show home button, and load the default Start page.</li><li>**1** - Enabled. Show home button and load New Tab page</li><li>**2** - Enabled. Show home button & set a specific page.</li><li>**3** - Enabled. Hide the home button.</li></ul>   |
   | **[SetHomeButtonURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl)**<p>![](images/icon-thin-line-computer.png)   | If you set ConfigureHomeButton to 2, configure the home button URL.<p><p>**URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetHomeButtonURL <p>**Data type:** String<p>**Allowed values:** Enter a URL, for example, https://www.bing.com   |
   | **[SetNewTabPageURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-setnewtabpageurl)**<p>![](images/icon-thin-line-computer.png)   | Set a custom URL for the New Tab page.<p><p>**URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetNewTabPageURL <p>**Data type:** String<p>**Allowed values:** Enter a URL, for example, https://www.msn.com    |
    

**_Congratulations!_** <p>You’ve just finished setting up a kiosk or digital signage with policies for Microsoft Edge kiosk mode using Microsoft Intune or other MDM service.

**_What's next?_** <p>Now it's time to use your new kiosk device. Sign into the device with the kiosk account selected to run Microsoft Edge kiosk mode.

---


## Supported policies for kiosk mode

Use any of the Microsoft Edge policies listed below to enhance the kiosk experience depending on the Microsoft Edge kiosk mode type you configure. To learn more about these policies, see [Policy CSP - Browser](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser). 

Make sure to check with your provider for instructions.

| **MDM Setting**  | **Digital /<br>Interactive signage** | **Public browsing<br>single-app** | **Public browsing<br>multi-app**   | **Normal<br>mode**   |
|------------------|:---------:|:---------:|:---------:|:---------:|
| [AllowAddressBarDropdown](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowaddressbardropdown)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowAutofill](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowautofill)                                                       | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowBrowser](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowbrowser)                                                        | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png) |
| [AllowConfigurationUpdateForBooksLibrary](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowconfigurationupdateforbookslibrary)                             | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowCookies](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowcookies)                                                         | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowDeveloperTools](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowdevelopertools)                                                  | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowDoNotTrack](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowdonottrack)                                                      | ![Supported](images/148767.png) | ![Supported](images/148767.png) | ![Supported](images/148767.png)  | ![Supported](images/148767.png)   |
| [AllowExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowextensions)                                                      | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowFlash](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowflash)                                                           | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowFlashClickToRun](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowflashclicktorun)                                                 | ![Supported](images/148767.png)<sup>2</sup>   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowFullscreen](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowfullscreenmode)\*                                                 | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowInPrivate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowinprivate)                                                       | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowMicrosoftCompatibilityList](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowmicrosoftcompatibilitylist)                                      | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)<sup>1</sup> | ![Supported](images/148767.png)   |
| [AllowPasswordManager](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowpasswordmanager)                                                 | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowPopups](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowpopups)                                                          | ![Not supported](images/148766.png) | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowPrelaunch](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowprelaunch)\*                                                    | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowPrinting](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowprinting)\*                                                      | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowSavingHistory](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowsavinghistory)\*                                                 | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowSearchEngineCustomization](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowsearchenginecustomization)                                       | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowSearchSuggestionsinAddressBar](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowsearchenginecustomization)                                   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowSideloadingExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowsideloadingofextensions)\*                                       | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowSmartScreen](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowsmartscreen)                                                     | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [AllowSyncMySettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowsyncmysettings)                                                  | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowTabPreloading](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowtabpreloading)\*                                                 | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AllowWebContentOnNewTabPage](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowwebcontentonnewtabpage)\*                                        | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [AlwaysEnabledBooksLibrary](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-alwaysenablebookslibrary)                                            | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [ClearBrowsingDataOnExit](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-clearbrowsingdataonexit)                                              | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [ConfigureAdditionalSearchEngines](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configureadditionalsearchengines)                                     | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [ConfigureFavoritesBar](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar)\*                                              | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [ConfigureHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton)\*                                                | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
|  [ConfigureKioskMode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode)\*                                                | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
|  [ConfigureKioskResetAfterIdleTimeout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurekioskresetafteridletimeout)\*                               | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png) |
| [ConfigureOpenEdgeWith](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configureopenmicrosoftedgewith)\*                                     | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [ConfigureTelemetryForMicrosoft365Analytics](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configuretelemetryformicrosoft365analytics)\*                         | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [DisableLockdownOfStartPages](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-disablelockdownofstartpages)                                          | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [Experience/DoNotSyncBrowserSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-donotsyncbrowsersetting)\* and [Experience/PreventTurningOffRequiredExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventturningoffrequiredextensions)\* | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [EnableExtendedBooksTelemetry](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-enableextendedbookstelemetry)                                         | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [EnterpriseModeSiteList](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-enterprisemodesitelist)                                               | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)<sup>1</sup> | ![Supported](images/148767.png)   |
| [FirstRunURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-firstrunurl)                                                          | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png) |
| [HomePages](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-homepages)                                                            | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [LockdownFavorites](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-lockdownfavorites)                                                    | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [PreventAccessToAboutFlagsInMicrosoftEdge](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventaccesstoaboutflagsinmicrosoftedge)                             | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [PreventCertErrorOverrides](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventcerterroroverrides)\*                                          | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [PreventFirstRunPage](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventfirstrunpage)                                                  | ![Supported](images/148767.png) | ![Supported](images/148767.png)| ![Supported](images/148767.png)  | ![Supported](images/148767.png)   |
| [PreventLiveTileDataCollection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventlivetiledatacollection)                                        | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [PreventSmartScreenPromptOverride](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverride)                                     | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [PreventSmartScreenPromptOverrideForFiles](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverrideforfiles)                             | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [PreventTurningOffRequiredExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventturningoffrequiredextensions)\*                                | ![Supported](images/148767.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [PreventUsingLocalHostIPAddressForWebRTC](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventusinglocalhostipaddressforwebrtc)                             | ![Supported](images/148767.png)                                          | ![Supported](images/148767.png)                                          | ![Supported](images/148767.png)                                           | ![Supported](images/148767.png)   |
| [ProvisionFavorites](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-provisionfavorites)                                                   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [SendIntranetTraffictoInternetExplorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-sendintranettraffictointernetexplorer)                                | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)<sup>1</sup>       | ![Supported](images/148767.png)   |
| [SetDefaultSearchEngine](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-setdefaultsearchengine)                                               | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [SetHomeButtonURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl)\*                                                   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [SetNewTabPageURL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-setnewtabpageurl)\*                                                   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)    | ![Supported](images/148767.png)   |
| [ShowMessageWhenOpeningInteretExplorerSites](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-showmessagewhenopeningsitesininternetexplorer)                           | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   | ![Supported](images/148767.png)<sup>1</sup> | ![Supported](images/148767.png)   |
| [SyncFavoritesBetweenIEAndMicrosoftEdge](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-syncfavoritesbetweenieandmicrosoftedge)                               | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)<sup>1</sup>  | ![Supported](images/148767.png)   |
| [UnlockHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton)\*                                                   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |
| [UseSharedFolderForBooks](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-usesharedfolderforbooks)                                             | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Not supported](images/148766.png)   | ![Supported](images/148767.png)   |


*\* New policy as of Windows 10, version 1809.*<p>
*1) For multi-app assigned access, you must configure Internet Explorer 11.*<br>
*2) For digital/interactive signage to enable Flash, set [AllowFlashClickToRun](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowflashclicktorun) to 0.*

**Legend:**<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ![Not supported](images/148766.png) = Not applicable or not supported <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ![Supported](images/148767.png) = Supported

---  

## Feature comparison of kiosk mode and kiosk browser app
In the following table, we show you the features available in both Microsoft Edge kiosk mode and Kiosk Browser app available in Microsoft Store. Both kiosk mode and kiosk browser app work in assigned access.


|                        **Feature**                        |                                                                  **Microsoft Edge kiosk mode**                                                                  |                                                             **Microsoft Kiosk browser app**                                                             |
|-----------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------:|
|                       Print support                       |                                                                 ![Supported](images/148767.png)                                                                 |                                                           ![Not supported](images/148766.png)                                                           |
|                     Multi-tab support                     |                                                                 ![Supported](images/148767.png)                                                                 |                                                           ![Not supported](images/148766.png)                                                           |
|                  Allow/Block URL support                  | ![Supported](images/148767.png) <p>*\*For Microsoft Edge kiosk mode use* Windows Defender Firewall<em>. Microsoft kiosk browser has custom policy support.</em> |                                                             ![Supported](images/148767.png)                                                             |
|                   Configure Home Button                   |                                                                 ![Supported](images/148767.png)                                                                 |                                                             ![Supported](images/148767.png)                                                             |
|                   Set Start page(s) URL                   |                                                                 ![Supported](images/148767.png)                                                                 |                                              ![Supported](images/148767.png) <p>*Same as Home button URL*                                               |
|                   Set New Tab page URL                    |                                                                 ![Supported](images/148767.png)                                                                 |                                                           ![Not supported](images/148766.png)                                                           |
|                   Favorites management                    |                                                                 ![Supported](images/148767.png)                                                                 |                                                           ![Not supported](images/148766.png)                                                           |
|                    End session button                     |                                                                 ![Supported](images/148767.png)                                                                 | ![Supported](images/148767.png)<p>*In Microsoft Intune, you must create a custom URI to enable. Dedicated UI configuration introduced in version 1808.* |
|                    Reset on inactivity                    |                                                                 ![Supported](images/148767.png)                                                                 |                                                             ![Supported](images/148767.png)                                                             |
| Internet Explorer integration (Enterprise Mode site list) |                                                     ![Supported](images/148767.png)<p>*Multi-app mode only*                                                     |                                                           ![Not supported](images/148766.png)                                                           |
|               Available in Microsoft Store                |                                                               ![Not supported](images/148766.png)                                                               |                                                             ![Supported](images/148767.png)                                                             |
|                     SKU availability                      |                                            Windows 10 October 2018 Update<br>Professional, Enterprise, and Education                                            |                                         Windows 10 April 2018 Update<br>Professional, Enterprise, and Education                                         |

**\*Windows Defender Firewall**<p>
To prevent access to unwanted websites on your kiosk device, use Windows Defender Firewall to configure a list of allowed websites, blocked websites or both.  For more details, see [Windows Defender Firewall with Advanced Security Deployment](https://docs.microsoft.com/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security-deployment-guide).

---

## Provide feedback or get support

To provide feedback on Microsoft Edge kiosk mode in Feedback Hub, select **Microsoft Edge** as the  **Category**, and **All other issues** as the subcategory. 

**_For multi-app kiosk only._** If you have set up the Feedback Hub in assigned access, you can you submit the feedback from the device running Microsoft Edge in kiosk mode in which you can include diagnostic logs. In the Feedback Hub, select **Microsoft Edge** as the **Category**, and **All other issues** as the subcategory.



