---
title: Configure Cortana with Group Policy and MDM settings (Windows)
description: The list of Group Policy and mobile device management (MDM) policy settings that apply to Cortana at work.
ms.prod: windows-client
ms.collection: tier3
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
ms.reviewer: 
manager: aaroncz
ms.technology: itpro-configure
ms.date: 12/31/2017
ms.topic: article
---

# Use Group Policy and mobile device management (MDM) settings to configure Cortana in your organization
<!--Using include for Cortana in Windows deprecation -->
[!INCLUDE [Deprecation of Cortana in Windows](./includes/cortana-deprecation.md)]

For specific info about how to set, manage, and use each of these MDM policies to configure Cortana in your enterprise, see the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider).

- **Allow Cortana**
  - **Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana`
  - **MDM policy CSP**: [Experience/AllowCortana](/windows/client-management/mdm/policy-csp-experience#experience-allowcortana)
  - **Description**: Specifies if users can use Cortana.

    Cortana won’t work if this setting is turned off (disabled). On Windows 10, version 1809 and below, users can still do local searches, even with Cortana turned off.

- **AllowCortanaAboveLock**
  - **Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Search\AllowCortanaAboveLock`
  - **MDM policy CSP**: [AboveLock/AllowCortanaAboveLock](/windows/client-management/mdm/policy-csp-abovelock#abovelock-allowcortanaabovelock)
  - **Description**: Specifies whether users can interact with Cortana using voice commands when the system is locked.

    This setting:

    - Doesn't apply to Windows 10, versions 2004 and later
    - Doesn't apply to Windows 11

- **LetAppsActivateWithVoice**
  - **Group policy**: `Computer Configuration\Administrative Templates\Windows Components\App Privacy\LetAppsActivateWithVoice`
  - **MDM policy CSP**: [Privacy/LetAppsActivateWithVoice](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsactivatewithvoice)
  - **Description**: Specifies if apps, like Cortana or other voice assistants, can activate using a wake word, like “Hey Cortana”.

    This setting applies to:

    - Windows 10 versions 2004 and later
    - Windows 11

    To disable wake word activation on Windows 10 versions 1909 and earlier, disable voice commands using the [Privacy/AllowInputPersonalization CSP](/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization).

- **LetAppsAccessMicrophone**
  - **Group policy**: `Computer Configuration\Administrative Templates\Windows Components\App Privacy\LetAppsAccessMicrophone`
  - **MDM policy CSP**: [Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps](/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessmicrophone-forcedenytheseapps)
  - **Description**: Disables Cortana’s access to the microphone. To use this setting, enter Cortana’s Package Family Name: `Microsoft.549981C3F5F10_8wekyb3d8bbwe`. Users can still type queries to Cortana.

- **Allow users to enable online speech recognition services**
  - **Group policy**: `Computer Configuration\Administrative Templates\Control Panel\Regional and Language Options\Allow users to enable online speech recognition services`
  - **MDM policy CSP**: [Privacy/AllowInputPersonalization](/windows/client-management/mdm/policy-csp-privacy#privacy-allowinputpersonalization)
  - **Description**: Specifies whether users can use voice commands with Cortana in your organization.
    - **Windows 10, version 1511**: Cortana won’t work if this setting is turned off (disabled).
    - **Windows 10, version 1607 and later**: Non-speech aspects of Cortana will still work if this setting is turned off (disabled).
    - **Windows 10, version 2004 and later**: Cortana will work, but voice input will be disabled.

- **AllowLocation**
  - **Group policy**: None
  - **MDM policy CSP**: [System/AllowLocation](/windows/client-management/mdm/policy-csp-system#system-allowlocation)
  - **Description**: Specifies whether to allow app access to the Location service.
    - **Windows 10, version 1511**: Cortana won’t work if this setting is turned off (disabled).
    - **Windows 10, version 1607 and later**: Cortana still works if this setting is turned off (disabled).
    - **Windows 10, version 2004 and later**: Cortana still works if this setting is turned off (disabled). Cortana in Windows 10, versions 2004 and later, or Windows 11 don't use the Location service.

- **AllowMicrosoftAccountConnection**
  - **Group policy**: None
  - **MDM policy CSP**: [Accounts/AllowMicrosoftAccountConnection](/windows/client-management/mdm/policy-csp-accounts#accounts-allowmicrosoftaccountconnection)
  - **Description**: Specifies whether to allow users to sign in using a Microsoft account (MSA) from Windows apps. If you only want to allow users to sign in with their Microsoft Entra account, then disable this setting.

- **Allow search and Cortana to use location**
  - **Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Search\Allow search and Cortana to use location`
  - **MDM policy CSP**: [Search/AllowSearchToUseLocation](/windows/client-management/mdm/policy-csp-search#search-allowsearchtouselocation)
  - **Description**: Specifies whether Cortana can use your current location during searches and for location reminders. In **Windows 10, version 2004 and later**, Cortana still works if this setting is turned off (disabled). Cortana in Windows 10, versions 2004 and later, or Windows 11, don't use the Location service.

- **Don't search the web or display web results**
  - **Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Search\Don't search the web or display web results`
  - **MDM policy CSP**: [Search/DoNotUseWebResults](/windows/client-management/mdm/policy-csp-search#search-donotusewebresults)
  - **Description**: Specifies if search can do queries on the web, and if the web results are shown in search.
    - **Windows 10 Pro edition**: This setting can’t be managed.
    - **Windows 10 Enterprise edition**: Cortana won't work if this setting is turned off (disabled).
    - **Windows 10, version 2004 and later**: This setting no longer impacts Cortana.
