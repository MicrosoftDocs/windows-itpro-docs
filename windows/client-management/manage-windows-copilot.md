---
title: Manage Windows Copilot
description: Learn how to manage Windows Copilot using MDM and group policy.
ms.topic: article
ms.date: 08/14/2023
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Manage Windows Copilot

Windows is the first PC platform to provide centralized AI assistance for customers. Together, with Bing Chat and first and third-party plugins, Windows Copilot helps you bring your ideas to life, complete complex projects and collaborate instead of spending energy finding, launching and working across multiple applications.

This article lists settings available to manage Windows Copilot. To learn more about Windows Copilot, see [Welcome to Copilot in Windows](https://support.microsoft.com/windows/welcome-to-copilot-in-windows-675708af-8c16-4675-afeb-85a5a476ccb0).

## Hide the Copilot button from the taskbar

This policy setting allows you to hide the Copilot button. If you enable this policy setting, the Copilot button is hidden and the Settings toggle is disabled.

|                  | Setting                                                                                                          |
|------------------|------------------------------------------------------------------------------------------------------------------|
| **CSP**          | ./[Device/User]/Vendor/MSFT/Policy/Config/Start/[HideCopilotButton](mdm/policy-csp-start.md#hidecopilotbutton)   |
| **Group policy** | Computer or User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button** |

## Turn off Windows Copilot

This policy setting allows you to turn off Windows Copilot. If you enable this policy setting, users can't use Copilot. The Copilot icon doesn't appear on the taskbar either. If you disable or don't configure this policy setting, users can use Copilot when it's available to them.

|                  | Setting                                                                                                 |
|------------------|---------------------------------------------------------------------------------------------------------|
| **CSP**          | ./User/Vendor/MSFT/WindowsAI/[TurnOffWindowsCopilot](mdm/policy-csp-windowsai.md#turnoffwindowscopilot) |
| **Group policy** | User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button**    |

## Related articles

- [Welcome to Copilot in Windows](https://support.microsoft.com/windows/welcome-to-copilot-in-windows-675708af-8c16-4675-afeb-85a5a476ccb0)
