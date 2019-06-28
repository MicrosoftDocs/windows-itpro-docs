---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Prevent bypassing Windows Defender SmartScreen prompts for files -->
>*Supported versions: Microsoft Edge on Windows 10, version 1511 or later*<br>
>*Default setting:  Disabled or not configured (Allowed/turned off)*

[!INCLUDE [prevent-bypassing-windows-defender-prompts-for-files-shortdesc](../shortdesc/prevent-bypassing-windows-defender-prompts-for-files-shortdesc.md)]

### Supported values

|                Group Policy                 | MDM | Registry |                                            Description                                            |                 Most restricted                  |
|---------------------------------------------|:---:|:--------:|---------------------------------------------------------------------------------------------------|:------------------------------------------------:|
| Disabled or not configured<br>**(default)** |  0  |    0     | Allowed/turned off. Users can ignore the warning and continue to download the unverified file(s). |                                                  |
|                   Enabled                   |  1  |    1     |                                       Prevented/turned on.                                        | ![Most restricted value](../images/check-gn.png) |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent bypassing Windows Defender SmartScreen prompts for files
- **GP name:** PreventSmartScreenPromptOverrideForFiles
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[PreventSmartScreenPromptOverrideForFiles](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverrideforfiles)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter
- **Value name:** PreventOverrideAppRepUnknown
- **Value type:** REG_DWORD

<hr>
