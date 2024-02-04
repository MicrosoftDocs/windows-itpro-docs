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

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-custom-settings-1](../../../includes/configure/intune-custom-settings-1.md)]

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
Content-Type: application/json

{ "id": "00-0000-0000-0000-000000000000", "displayName": "_MSLearn_Example", "description": "Collection of settings for Assigned Access", "roleScopeTagIds": [ "0" ], "@odata.type": "#microsoft.graph.windows10CustomConfiguration", "omaSettings": [ { "@odata.type": "#microsoft.graph.omaSettingString", "displayName": "AssignedAccess_Configuration", "description": null, "omaUri": "./Vendor/MSFT/AssignedAccess/Configuration", "secretReferenceValueId": null, "isEncrypted": true, "value": "< ?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<AssignedAccessConfiguration xmlns=\"http://schemas.microsoft.com/AssignedAccess/2017/config\"\n    xmlns:rs5=\"http://schemas.microsoft.com/AssignedAccess/201810/config\"\n    xmlns:v2=\"http://schemas.microsoft.com/AssignedAccess/201810/config\"\n    xmlns:v3=\"http://schemas.microsoft.com/AssignedAccess/2020/config\"\n    xmlns:v5=\"http://schemas.microsoft.com/AssignedAccess/2022/config\"\n    xmlns:win11=\"http://schemas.microsoft.com/AssignedAccess/2022/config\"\n    >\n    <Profiles>\n        <Profile Id=\"{9A2A490F-10F6-4764-974A-43B19E722C23}\">\n            <AllAppsList>\n                <AllowedApps>\n                    <App AppUserModelId=\"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App\" />\n                    <App AppUserModelId=\"Microsoft.Windows.Photos_8wekyb3d8bbwe!App\" />\n                    <App AppUserModelId=\"Microsoft.BingWeather_8wekyb3d8bbwe!App\" />\n                    <App DesktopAppPath=\"C:\\Windows\\system32\\cmd.exe\" />\n                    <App DesktopAppPath=\"%windir%\\System32\\WindowsPowerShell\\v1.0\\Powershell.exe\" />\n                    <App DesktopAppPath=\"%windir%\\explorer.exe\" />\n                    <App AppUserModelId=\"windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel\" />\n                    <App AppUserModelId=\"%ProgramFiles(x86)%\\Microsoft\\Edge\\Application\\msedge.exe\" />\n                </AllowedApps>\n            </AllAppsList>\n            <rs5:FileExplorerNamespaceRestrictions>\n                <rs5:AllowedNamespace Name=\"Downloads\"/>\n                <v3:AllowRemovableDrives/>\n            </rs5:FileExplorerNamespaceRestrictions>\n            <win11:StartPins>\n                <![CDATA[{\n                    \"pinnedList\":[\n                        {\"packagedAppId\":\"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App\"},\n                        {\"packagedAppId\":\"Microsoft.Windows.Photos_8wekyb3d8bbwe!App\"},\n                        {\"packagedAppId\":\"Microsoft.BingWeather_8wekyb3d8bbwe!App\"},\n                        {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\System Tools\\\\Command Prompt.lnk\"},\n                        {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\Windows PowerShell\\\\Windows PowerShell.lnk\"},\n                        {\"desktopAppLink\":\"%APPDATA%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\File Explorer.lnk\"},\n                        {\"packagedAppId\": \"windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel\"},\n                        {\"desktopAppLink\": \"%ALLUSERSPROFILE%\\\\Microsoft\\\\Windows\\\\Start Menu\\\\Programs\\\\Microsoft Edge.lnk\"}\n                    ]\n                }]]>\n            </win11:StartPins>\n            <Taskbar ShowTaskbar=\"true\"/>\n        </Profile>\n    </Profiles>\n    <Configs>\n        <Config>\n            <AutoLogonAccount rs5:DisplayName=\"Library Kiosk\"/>\n            <DefaultProfile Id=\"{9A2A490F-10F6-4764-974A-43B19E722C23}\"/>\n        </Config>\n    </Configs>\n</AssignedAccessConfiguration>" }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "EnableTouchKeyboardAutoInvokeInDesktopMode", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode", "secretReferenceValueId": null, "isEncrypted": false, "value": 2, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "HideRecommendedSection", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Start/HideRecommendedSection", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "DisableSearch", "description": null, "omaUri": "./Device/Vendor/MSFT/Policy/Config/Search/DisableSearch", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false }, { "@odata.type": "#microsoft.graph.omaSettingInteger", "displayName": "TurnOffWindowsCopilot", "description": null, "omaUri": "./User/Vendor/MSFT/Policy/Config/WindowsAI/TurnOffWindowsCopilot", "secretReferenceValueId": null, "isEncrypted": false, "value": 1, "isReadOnly": false } ] }
```

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

Follow the steps in [Apply a provisioning package][WIN-2] to apply the package that you created.

Configure your devices using PowerShell scripts via the [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal). For more information, see [Using PowerShell scripting with the WMI Bridge Provider](/windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider).

> [!IMPORTANT]
> For all device settings, the WMI Bridge client must be executed as SYSTEM (LocalSystem) account.
>
> To test a PowerShell script, you can:
>
> 1. [Download the psexec tool](/sysinternals/downloads/psexec)
> 1. Open an elevated command prompt and run: `psexec.exe -i -s powershell.exe`
> 1. Run the script in the PowerShell session

Edit the following sample PowerShell script to:

- Customize the assessment URL with **$testURL**
- Change the kiosk user tile name displayed in the sign-in screen with **$userTileName**

```powershell
```

---

## Next steps

> [!div class="nextstepaction"]
> [Next sequential article title](link.md)

<!--links-->

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
