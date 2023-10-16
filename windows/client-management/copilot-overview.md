---
title: Copilot in Windows Overview
description: Learn about managing Copilot in Windows for commercial environments. 
ms.topic: overview
ms.date: 10/26/2023
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 22H2 or later</a>
---

# What is Copilot in Windows?

>**Looking for consumer information?** See [Welcome to Copilot in Windows](https://support.microsoft.com/windows/welcome-to-copilot-in-windows-675708af-8c16-4675-afeb-85a5a476ccb0).

Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop. Copilot in Windows appears as a side bar docked on the Windows desktop. It's designed to be an assistant that can help your users get things done in Windows. Copilot in Windows is a bit different from [Bing Chat in the Microsoft Edge sidebar](https://www.microsoft.com/edge/features/bing-chat), which provides assistance in the browser, since it can also perform actions such as changing Windows settings or performing common tasks in Windows. However, both user experiences, Copilot in Windows and Bing Chat in the Microsoft Edge sidebar, can share the same underlying chat provider platform. It's important for organizations to properly configure the chat provider platform that Copilot in Windows uses, since users can possibly pass sensitive information into the chat provider.

At a high level, configuring Copilot in Windows for your organization involves the following steps:

1. Understand the [available chat provider platforms for Copilot in Windows](#chat-provider-platforms-for-copilot-in-windows)
1. [Configure the chat provider platform](#configure-the-chat-provider-platform-that-copilot-in-windows-uses) used by Copilot in Windows
1. Ensure the [Copilot in Windows user experience](#ensure-the-copilot-in-windows-user-experience-is-enabled) is enabled
1. Verify [other settings that might impact Copilot in Windows](#other-settings-that-might-impact-copilot-in-windows-and-its-underlying-chat-provider) and its underlying chat provider

Organizations that aren't ready to use Copilot in Windows can disable it until they're ready with the **Turn off Windows Copilot** policy. This policy setting allows you to turn off Copilot in Windows. If you enable this policy setting, users can't use Copilot. The Copilot icon doesn't appear on the taskbar either. If you disable or don't configure this policy setting, users can use Copilot when it's available to them.

| &nbsp; | Setting  |
|---|---|
| **CSP** | ./User/Vendor/MSFT/WindowsAI/[TurnOffWindowsCopilot](mdm/policy-csp-windowsai.md#turnoffwindowscopilot) |
| **Group policy** | User Configuration > Administrative Templates > Windows Components > Windows Copilot > **Turn off Windows Copilot** |


## Chat provider platforms for Copilot in Windows

Copilot in Windows can use either Bing Chat or Bing Chat Enterprise as its chat provider platform. The chat provider platform is the underlying service that Copilot in Windows uses to communicate with the user. The chat provider platform that Copilot in Windows uses is important because users can pass sensitive information into the chat provider. Each chat provider platform has different privacy and security protections.

**Bing Chat**: 

[Bing Chat](https://www.microsoft.com/bing/do-more-with-ai/what-is-bing-chat-and-how-can-you-use-it) is a consumer experience and doesn't offer commercial data protection. Users in your organization get consumer Bing Chat without extra commercial protections. The following privacy and security protections apply for Bing Chat:
   - [Copilot in Windows: Your data and privacy](https://support.microsoft.com/windows/3e265e82-fc76-4d0a-afc0-4a0de528b73a)
   - The privacy statement for using Bing Chat follows the [Microsoft privacy statement](https://privacy.microsoft.com/privacystatement) including the product specific guidance in the Microsoft privacy statement for **Bing** under the **Search, Microsoft Edge, and artificial intelligence** section.

**Bing Chat Enterprise**:

[Bing Chat Enterprise](/bing-chat-enterprise/overview) is intended for commercial use scenarios. The following privacy and security protections apply for Bing Chat Enterprise:

- With [Bing Chat Enterprise](/bing-chat-enterprise/overview), user and organizational data is protected, chat data isn't saved, Microsoft has no eyes-on access, and your data isn't used to train the underlying large language models. Because of this protection, chat history, 3rd-party plugins, and the Bing mobile app for iOS or Android aren't currently supported. Review the Bing Chat Enterprise [privacy statement](/bing-chat-enterprise/privacy-and-protections).
- Bing chat enterprise is available, at no additional cost, for customers who are licensed for Microsoft 365 E3 or E5, A3 or A5 for faculty, Business Standard, or Business Premium.
  > [!Note]
  > Bing Chat Enterprise doesn't have access to Microsoft Graph, unlike [Microsoft 365 Copilot](/microsoft-365-copilot/microsoft-365-copilot-overview) which is used in Microsoft 365 apps. This means that Bing Chat Enterprise can't access Microsoft 365 Apps data, such as email, calendar, or files.

## Configure the chat provider platform that Copilot in Windows uses

Configuring the correct chat provider platform for Copilot in Windows is important because users can pass sensitive information into the chat provider. Each chat provider platform has different privacy and security protections.

### Bing Chat as the chat provider platform

Bing Chat is used as the default chat provider platform for Copilot in Windows when any of the following conditions occur:

- Bing Chat Enterprise isn't configured for the user
- The user isn't assigned a license that includes Bing Chat Enterprise
- Bing Chat Enterprise is [turned off](/bing-chat-enterprise/manage)
- The user isn't signed in with a Microsoft Entra account that's licensed for Bing Chat Enterprise

### Bing Chat Enterprise as the chat provider platform 

Bing Chat Enterprise (recommended for commercial environments), is used as the chat provider platform for Copilot in Windows when all of the following conditions occur:

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. In the admin center, select  **Users** > **Active users** and verify that users are assigned a license that includes Bing Chat Enterprise. Bing Chat Enterprise is included and enabled by default for users that are assigned one of the following licenses:
   - Microsoft 365 E3 or E5
   - Microsoft 365 A3 or A5 for faculty
   - Business Standard
   - Business Premium
1. To verify that Bing Chat Enterprise is enabled for the user, select the user's **Display name** to open the flyout menu. 
1. In the flyout, select the **Licenses & apps** tab, then expand the **Apps** list.
1. Verify that **Bing Chat Enterprise** is enabled for the user.

   > [!Note]
   > If you previously disabled Bing Chat Enterprise using the URL, `https://aka.ms/TurnOffBCE`, see [Manage Bing Chat Enterprise](/bing-chat-enterprise/manage) for verifying that Bing Chat Enterprise is enabled for your users.

```http
*would be nice to have a Graph query that lists users that do/do not have BCE app enabled*
*licensedetails does output BCE, so its a matter of just getting the query right*
**powershell or http preferably**
Ex output from my lab: GET https://graph.microsoft.com/v1.0/me/licenseDetails
{
    "servicePlanId": "0d0c0d31-fae7-41f2-b909-eaf4d7f26dba",
    "servicePlanName": "Bing_Chat_Enterprise",
    "provisioningStatus": "Success",
    "appliesTo": "User"
},
https://learn.microsoft.com/graph/api/resources/licensedetails
```

When Bing Chat Enterprise is the chat provider platform, the user experience clearly states that **Your personal and company data are protected in this chat**. There is also a shield emblem labeled **Protected** at the top of the Copilot in Windows sidebar and the provider is listed under the Copilot logo when the sidebar is first opened. The following image shows the message that's displayed when Bing Chat Enterprise is the chat provider platform for Copilot in Windows:

:::image type="content" source="images/bing-chat-enterprise-chat-provider.png" alt-text="Screenshot of the Copilot in Windows user experience when Bing Chat Enterprise is the chat provider." lightbox="images/bing-chat-enterprise-chat-provider.png":::

## Ensure the Copilot in Windows user experience is enabled

Once you've configured the chat provider platform that Copilot in Windows uses, you need to ensure that the Copilot in Windows user experience is enabled. The Copilot in Windows user experience is enabled by default for managed Windows 11, version 22H2 devices. 
### Enable the Copilot in Windows user experience for Windows 11, version 22H2 clients

Copilot in Windows isn't enabled by default for manged Windows 11, version 22H2 devices because it's behind a [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control). For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

To enable Copilot in Windows for managed Windows 11, version 22H2 devices, you need to turn off temporary enterprise control for these devices. Since disabling [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control) can be impactful, you should test this change before deploying it broadly. To enable Copilot in Windows for managed Windows 11, version 22H2 devices, use the following instructions:

1. Verify that the user accounts have the correct chat provider platform configured for Copilot in Windows. For more information, see the [Configure the chat provider platform that Copilot in Windows uses](#configure-the-chat-provider-platform-that-copilot-in-windows-uses) section.
1. Apply a policy to disable temporary enterprise control. The following polices apply to Windows 11, version 22H2 with [KB5022845](https://support.microsoft.com/en-us/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later:
   - **Group Policy:** Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience\\**Enable features introduced via servicing that are off by default**

    - **CSP**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowTemporaryEnterpriseFeatureControl](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowtemporaryenterprisefeaturecontrol)
       - In the Intune [settings catalog](/mem/intune/configuration/settings-catalog), this setting is named **Allow Temporary Enterprise Feature Control** under the **Windows Update for Business** category.
1. Copilot in Windows will be initially deployed to devices using a controlled feature rollout (CFR). Depending on how soon you start deploying Copilot in Windows, you might also need to [enable optional updates](/windows/deployment/update/waas-configure-wufb#enable-optional-updates) with one of the following policies:
   - **Group Policy:** Computer Configuration\Administrative Templates\Windows Components\Windows Update\Windows Update for Business\\**Allow updates to Windows optional features**
   - **CSP**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowOptionalUpdates](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowoptionalupdates)
      - In the Intune [settings catalog](/mem/intune/configuration/settings-catalog), this setting is named **Allow optional updates** under the **Windows Update for Business** category.
 
   These policies of optional updates apply to Windows 11, version 22H2 with [KB5029351](https://support.microsoft.com/help/5029351) and later. When setting policy for [optional updates](/windows/deployment/update/waas-configure-wufb#enable-optional-updates), ensure you select one of the following options that includes CFRs:
    - Automatically receive optional updates (including CFRs)
      - This selection places devices into an early CFR phase
    - Users can select which optional updates to receive

1. Managed Windows 11, version 22H2 devices will display Copilot in Windows when the CFR is enabled for the device. CFRs are enabled for devices in phases, sometimes called waves.

### Enable the Copilot in Windows user experience for Windows 11 clients with the 2023 annual update (coming soon)

One a managed device installs the upcoming 2023 annual update, likely to be called version 23H2, the [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control) for Copilot in Windows will be removed. This means that Copilot in Windows will be enabled by default for these devices.

While the user experience for Copilot in Windows is enabled by default, you still need to verify that the the correct chat provider platform configured for Copilot in Windows. While every effort has been made to ensure that Bing Chat Enterprise is the default chat provider for commercial organizations, it's still possible that Bing Chat might still be used if the configuration is incorrect, or if other settings impact Copilot in Windows. For more information, see: 
- [Configure the chat provider platform that Copilot in Windows uses](#configure-the-chat-provider-platform-that-copilot-in-windows-uses)
- [Other settings that might impact Copilot in Windows and its underlying chat provider](#other-settings-that-might-impact-copilot-in-windows-and-its-underlying-chat-provider)

Organizations that aren't ready to use Copilot in Windows can disable it until they're ready by using either of the following permanent controls:

- **CSP**: ./User/Vendor/MSFT/WindowsAI/[TurnOffWindowsCopilot](/windows/client-management/mdm/policy-csp-windowsai#turnoffwindowscopilot)
- **Group Policy**: User Configuration\Administrative Templates\Windows Components\Windows Copilot\\**Turn off Windows Copilot**

## Other settings that might impact Copilot in Windows and its underlying chat provider

Copilot in Windows and [Bing Chat in the Microsoft Edge sidebar](https://www.microsoft.com/edge/features/bing-chat), can share the same underlying chat provider platform. This also means that some setting which affect Bing Chat, Bing Chat Enterprise, and the Microsoft Edge sidebar can also affect Copilot in Windows.

The following settings might impact Copilot in Windows and its underlying chat provider: