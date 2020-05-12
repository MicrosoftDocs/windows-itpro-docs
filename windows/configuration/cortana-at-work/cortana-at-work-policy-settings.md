---
title: Configure Cortana with Group Policy and MDM settings (Windows 10)
description: The list of Group Policy and mobile device management (MDM) policy settings that apply to Cortana at work.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.date: 10/05/2017
ms.reviewer: 
manager: dansimp
---

# Use Group Policy and mobile device management (MDM) settings to configure Cortana in your organization
**Applies to:**

-   Windows 10
-   Windows 10 Mobile

>[!NOTE]
>For specific info about how to set, manage, and use each of these MDM policies to configure Cortana in your enterprise, see the [Policy CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-configuration-service-provider) topic, located in the configuration service provider reference topics.

New Table
| **Group policy** | **MDM policy** | **Description** |
| --- | --- | --- |
| Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana | Experience/AllowCortana | Specifies whether employees can use Cortana. **Important**
Cortana won&#39;t work if this setting is turned off (disabled). However, on Windows 10, version 1809 and below, employees can still perform local searches even with Cortana turned off. |
| Computer Configuration\Administrative Templates\Windows Components\Search\AllowCortanaAboveLock | AboveLock/AllowCortanaAboveLock | Specifies whether an employee can interact with Cortana using voice commands when the system is locked. **Note**
Cortana in Windows 10, versions 2004 and later do not currently support Above Lock. |
| Computer Configuration\Administrative Templates\Windows Components\App Privacy\LetAppsActivateWithVoice | [Privacy/LetAppsActivateWithVoice](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-privacy#privacy-letappsactivatewithvoice) | Specifies whether apps (such as Cortana or other voice assistants) can activate using a wake word (e.g. &quot;Hey Cortana&quot;).
**Note** :
This setting only applies to Windows 10 versions 2004 and later. To disable wake word activation on Windows 10 versions 1909 and earlier, you will need to disable voice commands using Privacy/AllowInputPersonalization. |
| Computer Configuration\Administrative Templates\Windows Components\App Privacy\LetAppsAccessMicrophone | [Privacy/LetAppsAccessMicrophone\_ForceDenyTheseApps](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-privacy#privacy-letappsaccessmicrophone-forcedenytheseapps) | Use this to disable Cortana&#39;s access to the microphone. To do so, specify Cortana&#39;s Package Family Name: Microsoft.549981C3F5F10\_8wekyb3d8bbwe
Users will still be able to type queries to Cortana. |
| Computer Configuration\Administrative Templates\Control Panel\Regional and Language Options\Allow users to enable online speech recognition services | Privacy/AllowInputPersonalization 
| Specifies whether an employee can use voice commands with Cortana in your organization. **In Windows 10, version 1511**
Cortana won&#39;t work if this setting is turned off (disabled). **In Windows 10, version 1607 and later**
Non-speech aspects of Cortana will still work if this setting is turned off (disabled). **In Windows 10, version 2004 and later** Cortana will work, but voice input will be disabled. |
| None | System/AllowLocation | Specifies whether to allow app access to the Location service. **In Windows 10, version 1511**
Cortana won&#39;t work if this setting is turned off (disabled). **In Windows 10, version 1607 and later**
Cortana still works if this setting is turned off (disabled). **In Windows 10, version 2004 and later** Cortana still works if this setting is turned off (disabled). Cortana in Windows 10, versions 2004 and later do not currently use the Location service. |
| None | Accounts/AllowMicrosoftAccountConnection | Specifies whether to allow employees to sign in using a Microsoft account (MSA) from Windows apps.Disable this setting if you only want to allow users to sign in with their Azure AD account. |
| Computer Configuration\Administrative Templates\Windows Components\Search\Allow search and Cortana to use location | Search/AllowSearchToUseLocation | Specifies whether Cortana can use your current location during searches and for location reminders. **In Windows 10, version 2004 and later** Cortana still works if this setting is turned off (disabled). Cortana in Windows 10, versions 2004 and later, do not currently use the Location service. |
| Computer Configuration\Administrative Templates\Windows Components\Search\Don&#39;t search the web or display web results | Search/DoNotUseWebResults | Specifies whether search can perform queries on the web and if the web results are displayed in search. **In Windows 10 Pro edition**
This setting can&#39;t be managed. **In Windows 10 Enterprise edition**
Cortana won&#39;t work if this setting is turned off (disabled). **In Windows 10, version 2004 and later** This setting no longer affects Cortana. |
| Computer Configuration\Administrative Templates\Windows Components\Search\Set the SafeSearch setting for Search | Search/SafeSearchPermissions | Specifies what level of safe search (filtering adult content) is required. **Note**
This setting only applies to Windows 10 Mobile. Other versions of Windows should use Don&#39;t search the web or display web results. |

Old Table
|Group policy |MDM policy |Description |
|-------------|-----------|------------|
|Computer Configuration\Administrative Templates\Windows Components\Search\AllowCortanaAboveLock|AboveLock/AllowCortanaAboveLock|Specifies whether an employee can interact with Cortana using voice commands when the system is locked.<p>**Note**<br>This setting only applies to Windows 10 for desktop devices. |
|Computer Configuration\Administrative Templates\Control Panel\Regional and Language Options\Allow users to enable online speech recognition services|Privacy/AllowInputPersonalization|Specifies whether an employee can use voice commands with Cortana in your organization.<p>**In Windows 10, version 1511**<br>Cortana won’t work if this setting is turned off (disabled).<p>**In Windows 10, version 1607 and later**<br>Cortana still works if this setting is turned off (disabled).|
|None|System/AllowLocation|Specifies whether to allow app access to the Location service.<p>**In Windows 10, version 1511**<br>Cortana won’t work if this setting is turned off (disabled).<p>**In Windows 10, version 1607 and later**<br>Cortana still works if this setting is turned off (disabled).|
|None|Accounts/AllowMicrosoftAccountConnection|Specifies whether to allow employees to sign in using a Microsoft account (MSA) from Windows apps.<p>Use this setting if you only want to support Azure AD in your organization.|
|Computer Configuration\Administrative Templates\Windows Components\Search\Allow search and Cortana to use location|Search/AllowSearchToUseLocation|Specifies whether Cortana can use your current location during searches and for location reminders.|
|Computer Configuration\Administrative Templates\Windows Components\Search\Set the SafeSearch setting for Search|Search/SafeSearchPermissions|Specifies what level of safe search (filtering adult content) is required.<p>**Note**<br>This setting only applies to Windows 10 Mobile. Other versions of Windows should use Don't search the web or display web results. |
|User Configuration\Administrative Templates\Windows Components\File Explorer\Turn off display of recent search entries in the File Explorer search box|None|Specifies whether the search box can suggest recent queries and prevent entries from being stored in the registry for future reference.|
|Computer Configuration\Administrative Templates\Windows Components\Search\Don't search the web or display web results|None|Specifies whether search can perform queries on the web and if the web results are displayed in search.<p>**In Windows 10 Pro edition**<br>This setting can’t be managed.<p>**In Windows 10 Enterprise edition**<br>Cortana won't work if this setting is turned off (disabled).|
|Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana|Experience/AllowCortana|Specifies whether employees can use Cortana.<p>**Important**<br>Cortana won’t work if this setting is turned off (disabled). However, employees can still perform local searches even with Cortana turned off.|