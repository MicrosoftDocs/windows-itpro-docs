---
title: Updated Windows and Microsoft Copilot experience
description: Learn about changes to the Copilot in Windows experience for commercial environments and how to configure it for your organization.
ms.topic: overview
ms.subservice: windows-copilot
ms.date: 09/16/2024
ms.author: mstewart
author: mestew
ms.collection:
  - windows-copilot
  - magic-ai-copilot
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 22H2 or later</a>
---

# Updated Windows and Microsoft Copilot experience
<!--8445848, 9294806-->

>**Looking for consumer information?** See [Welcome to Copilot in Windows](https://support.microsoft.com/topic/675708af-8c16-4675-afeb-85a5a476ccb0).

## Enhanced data protection with enterprise data protection

The Copilot experience on Windows is changing to enhance data security, privacy, compliance, and simplify the user experience, for users signed in with a Microsoft Entra work or school account. [Microsoft Copilot will offer enterprise data protection](https://techcommunity.microsoft.com/t5/copilot-for-microsoft-365/updates-to-microsoft-copilot-to-bring-enterprise-data-protection/ba-p/4217152) at no additional cost and redirect users to a new simplified interface designed for work and education. [Enterprise data protection (EDP)](/copilot/microsoft-365/enterprise-data-protection) refers to controls and commitments, under the Data Protection Addendum and Product Terms, that apply to customer data for users of Copilot for Microsoft 365 and Microsoft Copilot. This means that security, privacy, compliance controls and commitments available for Copilot for Microsoft 365 will extend to Microsoft Copilot prompts and responses. Prompts and responses are protected by the same terms and commitments that are widely trusted by our customers - not only for Copilot for Microsoft 365, but also for emails in Exchange and files in SharePoint. This is an improvement on top of the previous commercial data protection (CDP) promise. This update is rolling out now. For more information, see the [Microsoft Copilot updates and enterprise data protection FAQ](/copilot/edpfaq).

> [!IMPORTANT]
> To streamline the user experience, updates to the Copilot entry points in Windows are being made for users. **Copilot in Windows (preview) will be removed from Windows**. The experience will slightly vary depending on whether your organization has already opted into using Copilot in Windows (preview) or not. 

## Copilot in Windows (preview) isn't enabled

If your organization hasn't enabled Copilot in Windows (preview), your existing preferences are respected. Neither the Microsoft Copilot app nor the Microsoft 365 app are pinned to the taskbar. To prepare for the eventual removal of the [Copilot in Windows policy](/windows/client-management/mdm/policy-csp-windowsai#turnoffwindowscopilot), admins should [set Microsoft Copilot pinning options](/copilot/microsoft-365/pin-copilot) in the Microsoft 365 admin center.

> [!NOTE]
> Although we won't be pinning any app to the taskbar by default, IT has the capability to use policies to enforce their preferred app pinning.

## Copilot in Windows (preview) is enabled

If you had previously activated Copilot in Windows (in preview) for your workforce, we want to thank you for your enthusiasm. To provide the best Copilot experience for your employees moving forward, and support greater efficiency and productivity, we won't automatically pin the Microsoft 365 app to the taskbar in Windows. Rather, we'll ensure that you have control over how you enable the Copilot experience within your organization.  Our focus remains on empowering IT to seamlessly manage AI experiences and adopt those experiences at a pace that suits your organizational needs.

If you have already activated Copilot in Windows (preview) - and want your users to have uninterrupted access to Copilot on the taskbar after the update - use the [configuration options](/windows/configuration/taskbar/?pivots=windows-11) to pin the Microsoft 365 app to the taskbar as Copilot in Windows (preview) icon will be removed from the taskbar.

## Users signing in to new PCs with Microsoft Entra accounts

For users signing in to new PCs with work or school accounts, the following experience occurs:

-	The Microsoft 365 app is pinned to the taskbar - this is the app comes preinstalled with Windows and includes convenient access to Office apps such as Word, PowerPoint, etc. 
-	Users that have the Microsoft 365 Copilot license will have Microsoft Copilot pinned by default inside the Microsoft 365 app. 
-	Within the Microsoft 365 app, the Microsoft Copilot icon is situated next to the home button.
    - Microsoft Copilot (`web` grounding chat) isn't the same as Microsoft 365 Copilot (`web` and `work` scope), which is a separate add-on license. 
    - Microsoft Copilot is available at no additional cost to customers with a Microsoft Entra account. Microsoft Copilot is the entry point for Copilot at work. While the Copilot chat experience helps users ground their conversations in web data, Microsoft 365 Copilot allows users to incorporate both web and work data they have access to into their conversations by switching between work and web modes in Business Chat. 
   - For users with the Microsoft 365 Copilot license, they can toggle between the web grounding-based chat capabilities of Microsoft Copilot and the work scoped chat capabilities of Microsoft 365 Copilot. 
-	Customers that don't have a license for Microsoft 365 Copilot are asked if they want to pin Microsoft Copilot to ensure they have easy access to Copilot. To set the default behavior, admins should [set Microsoft Copilot pinning options](/copilot/microsoft-365/pin-copilot) in the Microsoft 365 admin center. 
-	If admins elect not to pin Copilot and indicate that users may be asked, users will be asked to pin it themselves in the Microsoft 365 app, Outlook, and Teams. 
-	If admins elect not to pin Microsoft Copilot and indicate that users may not be asked, Microsoft Copilot won't be available via the Microsoft 365 app, Outlook, or Teams. Users will have access to Microsoft Copilot from <www.microsoft.com/copilot> unless that URL is blocked by the IT admin.
-	If the admins make no selection, users will be asked to pin Microsoft Copilot by themselves for easy access. 


## When will this happen?

The update to Microsoft Copilot to offer enterprise data protection is rolling out now.

The shift to the Microsoft 365 app as the entry point for Microsoft Copilot will align with the annual Windows 11 feature update release. Changes will be rolled out to managed PCs starting with the optional nonsecurity preview release on September 24, 2024, and following with the monthly security update release on October 8 for all supported versions of Windows 11. These changes will be applied to Windows 10 PCs the month after. This update is replacing the current Copilot in Windows experience.

> [!IMPORTANT]
> Want to get started? You can enable the Microsoft Copilot experience for your users now by using the [TurnOffWindowsCopilot](/windows/client-management/mdm/policy-csp-windowsai#turnoffwindowscopilot) policy and pin the Microsoft 365 app using the existing policies for taskbar pinning.


## Policy information

Admins should configure the [pinning options](/copilot/microsoft-365/pin-copilot) to enable access to Microsoft Copilot within the Microsoft 365 app in the Microsoft 365 admin center. 

The following policy to manage Copilot in Windows (preview) will be removed in the future:


| &nbsp; | Setting  |
|---|---|
| **CSP** | ./User/Vendor/MSFT/Policy/Config/WindowsAI/[TurnOffWindowsCopilot](mdm/policy-csp-windowsai.md#turnoffwindowscopilot) |
| **Group policy** | User Configuration > Administrative Templates > Windows Components > Windows Copilot > **Turn off Windows Copilot** |

