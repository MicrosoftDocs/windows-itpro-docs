---
title: Copilot in Windows Overview
description: Learn about Copilot in Windows.
ms.topic: overview
ms.date: 10/26/2023
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 22H2 or later</a>
---

# What is Copilot in Windows?

>**Looking for consumer information?** See [Welcome to Copilot in Windows](https://support.microsoft.com/windows/welcome-to-copilot-in-windows-675708af-8c16-4675-afeb-85a5a476ccb0).

Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop. Copilot in Windows appears as a side bar on the Windows desktop, docked to the right. It's designed to be an assistant that can help your users get things done in Windows. Copilot in Windows is a bit different from [Bing Chat in the Microsoft Edge sidebar](https://www.microsoft.com/edge/features/bing-chat), which provides assistance in the browser, since it can also perform actions such as changing Windows settings or performing common tasks in Windows. However, both user experiences, Copilot in Windows and Bing Chat in the Microsoft Edge sidebar, can share the same underlying chat provider platform. It's important for organizations to properly configure the chat provider platform that Copilot in Windows uses, since users can possibly pass sensitive information into the chat provider.


## Chat provider platforms for Copilot in Windows

Copilot in Windows uses one of the following chat provider platforms, dependant on your organization's configuration:

- [Bing Chat Enterprise](/bing-chat-enterprise/overview), which is intended for business use scenarios
    - Bing chat enterprise is available, at no additional cost, for customers who are licensed for Microsoft 365 E3 or E5, A3 or A5 for faculty, Business Standard, or Business Premium.
    - With Bing Chat Enterprise, user and organizational data is protected, chat data isn't saved, Microsoft has no eyes-on access, and your data isn't used to train the underlying large language models. Because of this protection, chat history, 3rd-party plugins, and the Bing mobile app for iOS or Android aren't currently supported.
- [Bing Chat](https://www.microsoft.com/bing/do-more-with-ai/what-is-bing-chat-and-how-can-you-use-it), which is intended for consumer use scenarios

## How to enable Copilot in Windows

1. [Configure the chat provider](#configure-the-chat-provider-platform-that-copilot-in-windows-uses) platform that Copilot in Windows uses:
   - [Bing Chat Enterprise](/bing-chat-enterprise/overview) (highly recommended for business environments)
   - Bing Chat (default, intended for consumer environments)

1. Ensure the Copilot in Windows user experience is enabled:
   - Windows 11, version 22H2 clients
   - Windows 11 clients with the 2023 annual update installed (coming soon)


### Configure the chat provider platform that Copilot in Windows uses

Configuring the correct chat provider platform for Copilot in Windows is important because users can pass sensitive information into the chat provider. Each chat provider platform has different privacy and security protections.

#### Bing Chat as the chat provider platform

Bing Chat is used as the default chat provider platform for Copilot in Windows when any of the following conditions occur:

- Bing Chat Enterprise isn't configured for the user
- Bing Chat Enterprise is [turned off](/bing-chat-enterprise/manage)
- The user isn't signed in with a Microsoft Entra account that's licensed for Bing Chat Enterprise

The Bing Chat is a consumer experience and doesn't offer commercial data protection. Users in your organization get consumer Bing Chat without these extra protections. The following privacy and security protections apply for Bing Chat:

- [Copilot in Windows: Your data and privacy](https://support.microsoft.com/windows/3e265e82-fc76-4d0a-afc0-4a0de528b73a)
- The privacy statement for using Bing Chat follows the [Microsoft privacy statement](https://privacy.microsoft.com/privacystatement) including the product specific guidance in the Microsoft privacy statement for **Bing** under the **Search, Microsoft Edge, and artificial intelligence** section.

#### Bing Chat Enterprise as the chat provider platform (recommended for business environments)

1. Review the Bing Chat Enterprise [privacy statement](https://learn.microsoft.com/bing-chat-enterprise/privacy-and-protections).
1. By default, Bing Chat Enterprise is enabled for users that are assigned one of the following licenses:
   -  Microsoft 365 E3 or E5
   - Microsoft 365 A3 or A5 for faculty
   - Business Standard
   - Business Premium
1. Verify that users have the license by signing into the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. In the admin center, select  **Users** > **Active users** and verify that users have one of the licenses listed above. 
1. To verify that Bing Chat Enterprise is enabled for the user, select the user's **Display name** to open the flyout menu. 
1. In the flyout, select the **Licenses & apps** tab, then expand the **Apps** list.
1. Verify that **Bing Chat Enterprise** is enabled for the user.

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

### Enable Copilot in Windows for Windows 11, version 22H2 clients

Copilot in Windows isn't enabled by default for manged Windows 11, version 22H2 devices because it's behind a [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control). For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

To enable Copilot in Windows for managed Windows 11, version 22H2 devices, you'll need to turn off temporary enterprise control for these devices. Since disabling [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control) can be impactful, you should test this change before deploying it broadly. To enable Copilot in Windows for managed Windows 11, version 22H2 devices, use the following instructions:

1. Verify that the users accounts have the correct chat provider platform configured for Copilot in Windows. For more information, see the [Configure the chat provider platform that Copilot in Windows uses](#configure-the-chat-provider-platform-that-copilot-in-windows-uses) section.
1. Apply a policy to disable temporary enterprise control. The following polices apply to Windows 11, version 22H2 with [KB5022845](https://support.microsoft.com/en-us/topic/february-14-2023-kb5022845-os-build-22621-1265-90a807f4-d2e8-486e-8a43-d09e66319f38) and later:
   - **Group Policy:** Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage end user experience\\**Enable features introduced via servicing that are off by default**

    - **CSP**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowTemporaryEnterpriseFeatureControl](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowtemporaryenterprisefeaturecontrol)
       - In the Intune [settings catalog](/mem/intune/configuration/settings-catalog), this setting is named **Allow Temporary Enterprise Feature Control** under the **Windows Update for Business** category.
1. Depending on how soon you start deploying Copilot in Windows, you may also need to also enable optional updates with one of the following policies: 
 Enable optional updates for Windows 11, version 22H2 and later
   - **Group Policy:** Computer Configuration\Administrative Templates\Windows Components\Windows Update\Windows Update for Business\\**Allow updates to Windows optional features**
   - **CSP**: ./Device/Vendor/MSFT/Policy/Config/Update/[AllowOptionalUpdates](/windows/client-management/mdm/policy-csp-update?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#allowoptionalupdates)
      - In the Intune [settings catalog](/mem/intune/configuration/settings-catalog), this setting is named **Allow optional updates** under the **Windows Update for Business** category.
      > [!NOTE]
      > Copilot in Windows will be initially deployed to devices using a controlled feature rollout (CFR). When setting the policy for optional updates, ensure you select an option that includes CFRs. For more information, see [Enable optional updates](/windows/deployment/update/waas-configure-wufb#enable-optional-updates)

### Windows 11 clients with the 2023 annual update installed (coming soon)


One a managed device installs the 2023 annual update, the Copilot in Windows user experience is enabled by default. Organizations that aren't ready to use Copilot in Windows can disable it until they are ready by using either of the following permanent controls: 

- **CSP**: ./User/Vendor/MSFT/WindowsAI/[TurnOffWindowsCopilot](/windows/client-management/mdm/policy-csp-windowsai#turnoffwindowscopilot)
- **Group Policy**: User Configuration\Administrative Templates\Windows Components\Windows Copilot\\**Turn off Windows Copilot**