---
title: Windows spotlight policy settings
description: Learn about the policy settings to configure Windows Spotlight.
ms.topic: reference
ms.date: 04/23/2024
appliesto:
zone_pivot_groups: windows-versions-11-10
---

This reference article outlines the policy settings available for customizing Windows Spotlight, using Configuration Service Provider (CSP) or group policy (GPO).

Select one of the tabs to see the list of available settings:

::: zone pivot="windows-11"
|Policy name| CSP | GPO |
|-|-|-|
|[AllowSpotlightCollection](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowspotlightcollection)|✅|❌|
|[AllowThirdPartySuggestionsInWindowsSpotlight](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowthirdpartysuggestionsinwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlight](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlightOnActionCenter](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonactioncenter)|✅|✅|
|[AllowWindowsSpotlightOnSettings](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonsettings)|✅|✅|
|[AllowWindowsSpotlightWindowsWelcomeExperience](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightwindowswelcomeexperience)|✅|✅|
|[ConfigureWindowsSpotlightOnLockScreen](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#configurewindowsspotlightonlockscreen)|✅|✅|

::: zone-end

::: zone pivot="windows-10"

|Policy name| CSP | GPO |
|-|-|-|
|[AllowThirdPartySuggestionsInWindowsSpotlight](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowthirdpartysuggestionsinwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlight](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlightOnActionCenter](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonactioncenter)|✅|✅|
|[AllowWindowsSpotlightOnSettings](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonsettings)|✅|✅|
|[AllowWindowsSpotlightWindowsWelcomeExperience](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightwindowswelcomeexperience)|✅|✅|
|[ConfigureWindowsSpotlightOnLockScreen](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#configurewindowsspotlightonlockscreen)|✅|✅|

::: zone-end



This policy setting lets you configure Windows spotlight on the lock screen.

If you enable this policy setting, "Windows spotlight" will be set as the lock screen provider and users will not be able to modify their lock screen. "Windows spotlight" will display daily images from Microsoft on the lock screen.

Additionally, if you check the "Include content from Enterprise spotlight" checkbox and your organization has setup an Enterprise spotlight content service in Azure, the lock screen will display internal messages and communications configured in that service, when available. If your organization does not have an Enterprise spotlight content service, the checkbox will have no effect.

If you disable this policy setting, Windows spotlight will be turned off and users will no longer be able to select it as their lock screen. Users will see the default lock screen image and will be able to select another image, unless you have enabled the "Prevent changing lock screen image" policy.

If you do not configure this policy, Windows spotlight will be available on the lock screen and will be selected by default, unless you have configured another default lock screen image using the "Force a specific default lock screen image" policy.

Note: This policy is only available for Enterprise SKUs