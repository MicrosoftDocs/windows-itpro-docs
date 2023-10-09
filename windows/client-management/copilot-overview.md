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

**Bing Chat Enterprise:**
1. By default, Bing Chat Enterprise is enabled for users with one of the following licenses:
   -  Microsoft 365 E3 or E5
   - Microsoft 365 A3 or A5 for faculty
   - Business Standard
   - Business Premium
1. Verify that users have the license by signing into the [Microsoft 365 admin center](https://admin.microsoft.com/).
1. In the admin enter, select  **Users** > **Active users** and verify that they have one of the licenses listed above. 
1. To verify that Bing Chat Enterprise is enabled for the user, select the user's **Display name** to open the flyout menu. 
1. In the flyout, select the **Licenses & apps** tab, then expand the **Apps** list.
1. Verify that **Bing Chat Enterprise** is enabled for the user.
 


### Enable Copilot in Windows for Windows 11, version 22H2 clients

Copilot in Windows isn't enabled by default for manged Windows 11, version 22H2 devices because it's behind a [temporary enterprise control](/windows/whats-new/temporary-enterprise-feature-control). For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business. 

To enable Copilot in Windows for managed Windows 11, version 22H2 devices, use the following instructions:

**GPOs/CSPs to set**

### Windows 11 clients with the 2023 annual update installed (coming soon)


One a managed device installs the 2023 annual update, the Copilot in Windows user experience is enabled by default. Organizations that aren't ready to use Copilot in Windows can disable it until they are ready by using either of the following permanent controls: 

- **CSP**: ./User/Vendor/MSFT/WindowsAI/[TurnOffWindowsCopilot](/windows/client-management/mdm/policy-csp-windowsai#turnoffwindowscopilot)
- **Group Policy**: User Configuration\Administrative Templates\Windows Components\Windows Copilot\\**Turn off Windows Copilot**