---
title: "Quickstart: Configure a restricted user experience"
description: Learn how to configure a restricted user experience using Windows Configuration Designer, Microsoft Intune, PowerShell or GPO.
ms.topic: quickstart
ms.date: 01/29/2024
---

# Quickstart: Configure a restricted user experience

This quickstart provides practical examples of how to configure a restricted user experience on Windows.

A restricted user experience allows you to control which applications are allowed to be executed in a locked down Windows desktop.

The examples describe the steps using Windows Configuration Designer, Microsoft Intune, PowerShell, and group policy.

## Prerequisites

<!-- Required: Prerequisites - H2

"Prerequisites" must be the first H2 in the article.

List any items that are needed for the quickstart,
such as permissions or software.

If the user needs to sign in to a portal to do
the quickstart, provide instructions and a link.

If there aren't any prerequisites, in a new paragraph
under the "Prerequisites" H2, enter "None" in plain text
(not as a bulleted list item).

-->

## Open [Cloud Shell, Azure CLI, or PowerShell]

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
Content-Type: application/json

{ "id": "00-0000-0000-0000-000000000000", "displayName": "_MSLearn_Example", "description": "Collection of settings for Assigned Access", "roleScopeTagIds": [ "0" ], "@odata.type": "#microsoft.graph.windows10CustomConfiguration", "omaSettings": [ { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideTaskViewButton", "description": "Hide the task View Button", "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideTaskViewButton", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideSwitchAccount", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideSwitchAccount", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideSignOut", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideSignOut", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideShutDown", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideShutDown", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideRestart", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideRestart", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideRecommendedSection", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideRecommendedSection", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "AllowPinnedFolderSettings", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/AllowPinnedFolderSettings", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "ConfigureSearchOnTaskbarMode", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Search/ConfigureSearchOnTaskbarMode", "secretReferenceValueId": null, "isEncrypted": false, "value": 0, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "DisableSearch", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Search/DisableSearch", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideUserTile", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideUserTile", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingString", "displayName": "AssignedAccess_Configuration", "description": null, "omaUri": "./Vendor/MSFT/AssignedAccess/Configuration", "secretReferenceValueId": null, "isEncrypted": true, "value": "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<AssignedAccessConfiguration  \n  xmlns=\"http://schemas.microsoft.com/AssignedAccess/2017/config\"\n  xmlns:rs5=\"http://schemas.microsoft.com/AssignedAccess/201810/config\"\n  xmlns:win11=\"http://schemas.microsoft.com/AssignedAccess/2022/config\">\n  <Profiles>\n    <Profile Id=\"{9A2A490F-10F6-4764-974A-43B19E722C23}\">       \n      <AllAppsList>\n        <AllowedApps> \n          <App AppUserModelId=\"Microsoft.Windows.Photos_8wekyb3d8bbwe!App\" /> \n          <App AppUserModelId=\"Microsoft.BingWeather_8wekyb3d8bbwe!App\" /> \n          <App AppUserModelId=\"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App\" />\n          <App AppUserModelId=\"windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel\" />\n          <App DesktopAppPath=\"C:\\Windows\\system32\\cmd.exe\" />\n          <App DesktopAppPath=\"%windir%\\System32\\WindowsPowerShell\\v1.0\\Powershell.exe\" />\n          <App DesktopAppPath=\"%windir%\\explorer.exe\" /> \n        </AllowedApps> \n      </AllAppsList> \n      <win11:StartPins>\n        <![CDATA[  \n          { \"pinnedList\":[\n            {\"packagedAppId\":\"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App\"},\n            {\"packagedAppId\":\"Microsoft.Windows.Photos_8wekyb3d8bbwe!App\"},\n            {\"packagedAppId\":\"Microsoft.BingWeather_8wekyb3d8bbwe!App\"},\n            {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\System Tools\\\\Command Prompt.lnk\"},\n            {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\Windows PowerShell\\\\Windows PowerShell.lnk\"},\n            {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\File Explorer.lnk\"},\n            {\"packagedAppId\": \"windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel\"}\n          ] }\n        ]]>\n      </win11:StartPins>\n      <Taskbar ShowTaskbar=\"true\"/>\n    </Profile> \n  </Profiles>\n  <Configs>\n    <Config>\n      <AutoLogonAccount rs5:DisplayName=\"Library Kiosk\"/>\n      <DefaultProfile Id=\"{9A2A490F-10F6-4764-974A-43B19E722C23}\"/>\n    </Config>\n  </Configs>\n</AssignedAccessConfiguration>" }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "EnableTouchKeyboardAutoInvokeInDesktopMode", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode", "secretReferenceValueId": null, "isEncrypted": false, "value": 2, "isReadOnly": false } ] }
```

<!-- Optional: Open a demo environment - H2

If you want to refer to using Azure Cloud Shell,
the Azure CLI, or Azure PowerShell, place the
instructions after the "Prerequisites" section.

Include Cloud Shell only if all commands can
run in Cloud Shell.

Use include files if they are available.

--->

## [verb] * [noun]

[Introduce a task and its role in completing the process.]

<!-- Required: Tasks to complete in the process - H2

In one or more numbered H2 sections, describe tasks that
the user completes in the process the quickstart describes.

-->

1. Procedure step
1. Procedure step
1. Procedure step

## Next steps

> [!div class="nextstepaction"]
> [Next sequential article title](link.md)
