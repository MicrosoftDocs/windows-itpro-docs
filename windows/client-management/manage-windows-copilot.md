---
title: Manage Copilot in Windows
description: Learn how to manage Copilot in Windows for commercial environments using MDM and group policy. Learn about the chat providers available to Copilot in Windows.
ms.topic: how-to
ms.subservice: windows-copilot
ms.date: 06/13/2024
ms.author: mstewart
author: mestew
ms.collection:
  - windows-copilot
  - magic-ai-copilot
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 22H2 or later</a>
---

# Manage Copilot in Windows
<!--8445848-->

>**Looking for consumer information?** See [Welcome to Copilot in Windows](https://support.microsoft.com/windows/welcome-to-copilot-in-windows-675708af-8c16-4675-afeb-85a5a476ccb0).

> [!Note]
> - This article and the [TurnOffWindowsCopilot](mdm/policy-csp-windowsai.md#turnoffwindowscopilot) policy isn't for the [new Copilot experience](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/evolving-copilot-in-windows-for-your-workforce/ba-p/4141999) that's in some [Windows Insider builds](https://blogs.windows.com/windows-insider/2024/05/22/releasing-windows-11-version-24h2-to-the-release-preview-channel/) and that will be gradually rolling out to Windows 11 and Windows 10 devices. <!--9048085-->

Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop. Copilot in Windows appears as a side bar docked on the Windows desktop and is designed to help users get things done in Windows. Copilot in Windows can perform common tasks in Windows like changing Windows settings, which makes it different from the browser-based [Copilot in Edge](/copilot/edge). However, both user experiences, Copilot in Windows and Copilot in Edge, can share the same underlying chat provider platform. It's important for organizations to properly configure the chat provider platform that Copilot in Windows uses, since it's possible for users to copy and paste sensitive information into the chat.


## Configure Copilot in Windows for commercial environments

At a high level, managing and configuring Copilot in Windows for your organization involves the following steps:

> [!Note]
> - Copilot in Windows is currently available as a preview. We will continue to experiment with new ideas and methods using your feedback.
> - Copilot in Windows (in preview) is available in select global markets and will be rolled out to additional markets over time. [Learn more](https://www.microsoft.com/windows/copilot-ai-features#faq). <!--8737645-->

1. Understand the [available chat provider platforms for Copilot in Windows](#chat-provider-platforms-for-copilot-in-windows)
1. [Configure the chat provider platform](#configure-the-chat-provider-platform-that-copilot-in-windows-uses) used by Copilot in Windows
1. Ensure the [Copilot in Windows user experience](#ensure-the-copilot-in-windows-user-experience-is-enabled) is enabled
1. Verify [other settings that might affect Copilot in Windows](#other-settings-that-might-affect-copilot-in-windows-and-its-underlying-chat-provider) and its underlying chat provider

Organizations that aren't ready to use Copilot in Windows can disable it until they're ready with the **Turn off Windows Copilot** policy. This policy setting allows you to turn off Copilot in Windows. If you enable this policy setting, users can't use Copilot in Windows and the icon doesn't appear on the taskbar either. If you disable or don't configure this policy setting, users can use Copilot in Windows when it's available to them.

| &nbsp; | Setting  |
|---|---|
| **CSP** | ./User/Vendor/MSFT/Policy/Config/WindowsAI/[TurnOffWindowsCopilot](mdm/policy-csp-windowsai.md#turnoffwindowscopilot) |
| **Group policy** | User Configuration > Administrative Templates > Windows Components > Windows Copilot > **Turn off Windows Copilot** |


## Chat provider platforms for Copilot in Windows

Copilot in Windows can use either Microsoft Copilot, Copilot with commercial data protection, or Copilot with Graph-grounded chat as its chat provider platform. The chat provider platform is the underlying service that Copilot in Windows uses to communicate with the user. The chat provider platform is important because it's possible for users to copy and paste sensitive information into the chat. Each chat provider platform has different privacy and security protections.

### Copilot

Copilot is a consumer experience and has a daily limit on the number of chat queries per user when not signed in with a Microsoft account. It doesn't offer the same data protection as Copilot with commercial data protection.

- [Copilot in Windows: Your data and privacy](https://support.microsoft.com/windows/3e265e82-fc76-4d0a-afc0-4a0de528b73a)
- The privacy statement for using Copilot follows the [Microsoft privacy statement](https://privacy.microsoft.com/privacystatement) including the product specific guidance in the Microsoft privacy statement for **Bing** under the **Search, Microsoft Edge, and artificial intelligence** section.

  > [!Note]
  > Copilot doesn't have access to Microsoft 365 Apps data, such as email, calendar, or files using Microsoft Graph, unlike [Microsoft Copilot with Graph-grounded chat](#microsoft-copilot-with-graph-grounded-chat).

### Copilot with commercial data protection

[Copilot with commercial data protection](/copilot/overview) is intended for commercial use scenarios and offers commercial data protection. The following privacy and security protections apply for Copilot with commercial data protection:

- User and organizational data is protected, chat data isn't saved, and your data isn't used to train the underlying large language models (LLMs). Because of this protection, chat history, 3rd-party plugins, and the Bing app for iOS or Android aren't currently supported. Copilot with commercial data protection is accessible from mobile browsers, including Edge mobile on iOS and Android. Review the Copilot with commercial data protection [privacy statement](/copilot/privacy-and-protections).
- Copilot with commercial data protection is available, at no additional cost, for the following licenses:
   - Microsoft 365 E3 or E5
   - Microsoft 365 F3 <!--8681080, 8681034-->
   - Microsoft 365 A1, A3, or A5 <!--8681034-->
       - Copilot with commercial data protection is limited to faculty and higher education students over 18 years of age
   - Office 365 A1, A3, or A5 <!--8681034-->
       - Copilot with commercial data protection is limited to faculty and higher education students over 18 years of age
   - Microsoft 365 Business Standard
   - Microsoft 365 Business Premium

  > [!Note]
  > Copilot with commercial data protection doesn't have access to Microsoft 365 Apps data, such as email, calendar, or files using Microsoft Graph, unlike [Microsoft Copilot with Graph-grounded chat](#microsoft-copilot-with-graph-grounded-chat).

### Microsoft Copilot with Graph-grounded chat
<!---8639813-->
Copilot with Graph-grounded chat enables you to use your work content and context in Copilot for Windows. With Graph-grounded chat, you can draft content and get answers to questions, all securely grounded in your Microsoft Graph data such as user documents, emails, calendar, chats, meetings, and contacts. When you use the **Work** toggle in Copilot in Windows to query Graph-grounded chat, the following high-level privacy and security protections apply:

- Prompts, responses, and data accessed through Microsoft Graph aren't used to train foundational LLMs.
- It only surfaces organizational data to which individual users have at least view permissions.
- The information contained within your prompts, the data retrieved, and the generated responses remain within your tenant's service boundary. For more information about privacy and security for Graph-grounded chat, see [Data, Privacy, and Security for Microsoft Copilot for Microsoft 365](/microsoft-365-copilot/microsoft-365-copilot-privacy)
- Copilot with Graph-grounded chat is part of Copilot for Microsoft 365. Copilot for Microsoft 365 is an add-on plan. For more information about prerequisites and license requirements, see [Microsoft Copilot for Microsoft 365 requirements](/microsoft-365-copilot/microsoft-365-copilot-requirements#license-requirements).

## Configure the chat provider platform that Copilot in Windows uses

Configuring the correct chat provider platform for Copilot in Windows is important because it's possible for users to copy and paste sensitive information into the chat. Each chat provider platform has different privacy and security protections. Once you select the chat provider platform that you want to use for Copilot in Windows, ensure it's configured for your organization's users. The following sections describe how to configure the chat provider platform that Copilot in Windows uses.

### Microsoft Copilot as the chat provider platform

Copilot is used as the default chat provider platform for Copilot in Windows when any of the following conditions occur:

- Commercial data protection isn't configured for the user.
- Commercial data protection is [turned off](/copilot/manage).
- The user isn't assigned a license that includes Copilot with commercial data protection.
- The user isn't signed in with a Microsoft Entra account that's licensed for Copilot with commercial data protection.

### Copilot with commercial data protection as the chat provider platform (recommended for commercial environments)

To verify that Copilot with commercial data protection is enabled for the user as the chat provider platform for Copilot in Windows, use the following instructions:

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. In the admin center, select  **Users** > **Active users** and verify that users are assigned a license that includes **Copilot**. Copilot with commercial data protection is included and enabled by default for users that are assigned one of the following licenses:
   - Microsoft 365 E3 or E5
   - Microsoft 365 F3 <!--8681080, 8681034-->
   - Microsoft 365 A1, A3, or A5 
     - Copilot with commercial data protection is limited to faculty and higher education students over 18 years of age <!--8681034-->
   - Office 365 A1, A3, or A5 <!--8681034-->
      - Copilot with commercial data protection is limited to faculty and higher education students over 18 years of age <!--8681034-->
   - Microsoft 365 Business Standard
   - Microsoft 365 Business Premium
1. To verify that commercial data protection is enabled for the user, select the user's **Display name** to open the flyout menu.
1. In the flyout, select the **Licenses & apps** tab, then expand the **Apps** list.
1. Verify that **Copilot** is enabled for the user.
1. If you prefer to view a user's licenses from the [Azure portal](https://portal.azure.com), you'll find it under **Microsoft Entra ID** > **Users**. Select the user's name, then **Licenses**. Select a  license that includes **Copilot**, and verify that it's listed as **On**. If you previously disabled Copilot with commercial data protection (formerly Bing Chat Enterprise), see [Manage Copilot](/copilot/manage) for verifying that commercial data protection is enabled for your users.
1. Copilot with commercial data protection is used as the chat provider platform for users when the following conditions are met:
   - Users have an eligible license, commercial data protection in Copilot is enabled, and the [Copilot in Windows user experience is enabled](#enable-the-copilot-in-windows-user-experience-for-windows-11-version-22h2-clients).
   - Users are signed in with their Microsoft Entra ID (work accounts)
      - Users can sign into Windows with their Microsoft Entra ID
      - For Active Directory users on Windows 11, a Microsoft Entra ID in the Web Account Manager (WAM) authentication broker can be used. Entra IDs in Microsoft Edge profiles and Microsoft 365 Apps would both be in WAM. <!--8470699-->

The following sample PowerShell script connects to Microsoft Graph and lists which users that have Copilot with commercial data protection enabled and disabled:

```powershell
# Install Microsoft Graph module
if (-not (Get-Module Microsoft.Graph.Users)) {
    Install-Module Microsoft.Graph.Users
}

# Connect to Microsoft Graph
Connect-MgGraph -Scopes 'User.Read.All'

# Get all users
$users = Get-MgUser -All -ConsistencyLevel eventual -Property Id, DisplayName, Mail, UserPrincipalName, AssignedPlans

# Users with Copilot with commercial data protection enabled
$users | Where-Object { $_.AssignedPlans -and $_.AssignedPlans.Service -eq "Bing" -and $_.AssignedPlans.CapabilityStatus -eq "Enabled" } | Format-Table

# Users without Copilot with commercial data protection enabled
$users | Where-Object { -not $_.AssignedPlans -or ($_.AssignedPlans.Service -eq "Bing" -and $_.AssignedPlans.CapabilityStatus -ne "Enabled") } | Format-Table
```

When Copilot with commercial data protection is the chat provider platform, the user experience clearly states that **Your personal and company data are protected in this chat**. There's also a shield symbol labeled **Protected** at the top of the Copilot in Windows sidebar and the provider is listed under the Copilot logo when the sidebar is first opened. The following image shows the message that's displayed in this scenario:

:::image type="content" source="images/copilot-commercial-data-protection-chat-provider.png" alt-text="Screenshot of the Copilot in Windows user experience when Copilot with commercial data protection is the chat provider." lightbox="images/copilot-commercial-data-protection-chat-provider.png":::


### Copilot with Graph-grounded chat as the chat provider platform 
<!---8639813-->

When users are assigned [Microsoft Copilot for Microsoft 365](/microsoft-365-copilot/microsoft-365-copilot-setup) licenses, they're automatically presented with a **Work** toggle in Copilot for Windows. When **Work** is selected, Copilot with Graph-grounded chat is the chat provider platform used by Copilot in Windows. When using Graph-grounded chat, user prompts can securely access Microsoft Graph content, such as emails, chats, and documents.  

:::image type="content" source="images/work-toggle-graph-grounded-chat.png" alt-text="Screenshot of the Copilot in Windows user experience when the work toggle is selected and the chart provider is Copilot with Graph-grounded chat." lightbox="images/work-toggle-graph-grounded-chat.png":::

## Ensure the Copilot in Windows user experience is enabled

Once you've configured the chat provider platform that Copilot in Windows uses, you need to ensure that the Copilot in Windows user experience is enabled. Ensuring the Copilot in Windows user experience is enabled varies by the Windows version.

### Enable the Copilot in Windows user experience for Windows 11, version 22H2 clients

Copilot in Windows isn't technically enabled by default for managed Windows 11, version 22H2 devices because it's behind a [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control). For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager, Microsoft Intune, and Windows Autopatch are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

To enable Copilot in Windows for managed Windows 11, version 22H2 devices, you need to enable features under temporary enterprise control for these devices. Since enabling features behind [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control) can be impactful, you should test this change before deploying it broadly. To enable Copilot in Windows for managed Windows 11, version 22H2 devices, use the following instructions:

1. Verify that the user accounts have the correct chat provider platform configured for Copilot in Windows. For more information, see the [Configure the chat provider platform that Copilot in Windows uses](#configure-the-chat-provider-platform-that-copilot-in-windows-uses) section.
1. Apply a policy to enable features under temporary enterprise control for managed clients. The following polices apply to Windows 11, version 22H2 with [KB5022845](https://support.microsoft.com/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later:
   - **Group Policy:** Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience\\**Enable features introduced via servicing that are off by default**

    - **CSP**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowTemporaryEnterpriseFeatureControl](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowtemporaryenterprisefeaturecontrol)
       - In the Intune [settings catalog](/mem/intune/configuration/settings-catalog), this setting is named **Allow Temporary Enterprise Feature Control** under the **Windows Update for Business** category.
     > [!Important]
     > For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager, Microsoft Intune, and Windows Autopatch are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

1. Copilot in Windows will be initially deployed to devices using a controlled feature rollout (CFR). Depending on how soon you start deploying Copilot in Windows, you might also need to [enable optional updates](/windows/deployment/update/waas-configure-wufb#enable-optional-updates) with one of the following policies:
   - **Group Policy:** Computer Configuration\Administrative Templates\Windows Components\Windows Update\Windows Update for Business\\**Allow updates to Windows optional features**
   - **CSP**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowOptionalUpdates](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowoptionalupdates)
      - In the Intune [settings catalog](/mem/intune/configuration/settings-catalog), this setting is named **Allow optional updates** under the **Windows Update for Business** category.

   The optional updates policy applies to Windows 11, version 22H2 with [KB5029351](https://support.microsoft.com/help/5029351) and later. When setting policy for [optional updates](/windows/deployment/update/waas-configure-wufb#enable-optional-updates), ensure you select one of the following options that includes CFRs:
    - Automatically receive optional updates (including CFRs)
      - This selection places devices into an early CFR phase
    - Users can select which optional updates to receive

1. Windows 11, version 22H2 devices display Copilot in Windows when the CFR is enabled for the device. CFRs are enabled for devices in phases, sometimes called waves.

### Enable the Copilot in Windows user experience for Windows 11, version 23H2 clients

Once a managed device installs the version 23H2 update, the [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control) for Copilot in Windows is removed. This means that Copilot in Windows is enabled by default for these devices.

While the user experience for Copilot in Windows is enabled by default, you still need to verify that the correct chat provider platform configured for Copilot in Windows. While every effort is made to ensure that Copilot with commercial data protection is the default chat provider for commercial organizations, it's still possible that Copilot might still be used if the configuration is incorrect, or if other settings are affecting Copilot in Windows. For more information, see:
- [Configure the chat provider platform that Copilot in Windows uses](#configure-the-chat-provider-platform-that-copilot-in-windows-uses)
- [Other settings that might affect Copilot in Windows and its underlying chat provider](#other-settings-that-might-affect-copilot-in-windows-and-its-underlying-chat-provider)

Organizations that aren't ready to use Copilot in Windows can disable it until they're ready by using the following policy:

- **CSP**: ./User/Vendor/MSFT/Policy/Config/WindowsAI/[TurnOffWindowsCopilot](mdm/policy-csp-windowsai.md#turnoffwindowscopilot)
- **Group Policy**: User Configuration\Administrative Templates\Windows Components\Windows Copilot\\**Turn off Windows Copilot**

## Other settings that might affect Copilot in Windows and its underlying chat provider

Copilot in Windows and [Copilot in Edge](/copilot/edge), can share the same underlying chat provider platform. This also means that some settings that affect Copilot, Copilot with commercial data protection, and Copilot in Edge can also affect Copilot in Windows. The following common settings might affect Copilot in Windows and its underlying chat provider:

### Bing settings

- If [SafeSearch](https://support.microsoft.com/topic/946059ed-992b-46a0-944a-28e8fb8f1814) is enabled for Bing, it can block chat providers for Copilot in Windows. The following network changes block the chat providers for Copilot in Windows and Edge:

   - Mapping `www.bing.com` to `strict.bing.com`
   - Mapping `edgeservices.bing.com` to `strict.bing.com`
   - Blocking `bing.com`

- If Copilot with commercial data protection is turned on for your organization, users can access it through Edge mobile when signed in with their work account. If you would like to remove the Bing Chat button from the Edge mobile interface, you can use an [Intune Mobile Application Management (MAM) policy for Microsoft Edge](/mem/intune/apps/manage-microsoft-edge) to remove it:

    | Key                                          | Value                                                                      |
    |:---------------------------------------------|:---------------------------------------------------------------------------|
    | com.microsoft.intune.mam.managedbrowser.Chat | **true** (default) shows the interface </br> **false** hides the interface |

### Microsoft Edge policies

- If [HubsSidebarEnabled](/deployedge/microsoft-edge-policies#hubssidebarenabled) is set to `disabled`, it blocks Copilot in Edge from being displayed.
- If [DiscoverPageContextEnabled](/deployedge/microsoft-edge-policies#discoverpagecontextenabled) is set to `disabled`, it blocks Copilot from reading the current webpage context. The chat providers need access to the current webpage context for providing page summarizations and sending user selected strings from the webpage into the chat provider.

### Search settings

- Setting [ConfigureSearchOnTaskbarMode](/windows/client-management/mdm/policy-csp-search#configuresearchontaskbarmode) to `Hide` might interfere with the Copilot in Windows user experience.
- Setting [AllowSearchHighlights](/windows/client-management/mdm/policy-csp-search#allowsearchhighlights) to `disabled` might interfere with the Copilot in Windows and the Copilot in Edge user experiences.

### Account settings

- The [AllowMicrosoftAccountConnection](/windows/client-management/mdm/policy-csp-accounts#allowmicrosoftaccountconnection) setting might allow users to use their personal Microsoft account with Copilot in Windows and Copilot in Edge.
- The [RestrictToEnterpriseDeviceAuthenticationOnly](/windows/client-management/mdm/policy-csp-accounts#restricttoenterprisedeviceauthenticationonly) setting might prevent access to chat providers since it blocks user authentication.

## Microsoft's commitment to responsible AI

Microsoft has been on a responsible AI journey since 2017, when we defined our principles and approach to ensuring this technology is used in a way that is driven by ethical principles that put people first. For more about our responsible AI journey, the ethical principles that guide us, and the tooling and capabilities we've created to assure that we develop AI technology responsibly, see [Responsible AI](https://www.microsoft.com/ai/responsible-ai).
