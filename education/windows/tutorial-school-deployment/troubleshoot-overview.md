---
title: How to contact Microsoft Support
description: How to contact Microsoft Support for issues related to Intune and other Endpoint Manager services
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
#appliesto:
---

# How to contact Microsoft Support

Microsoft provides global technical, pre-sales, billing, and subscription support for cloud-based device management services. This support includes Microsoft Intune, Configuration Manager, Windows 365, and Microsoft Managed Desktop.

Follow these steps to obtain support in Microsoft Endpoint Manager:

- Sign in to the <a href="https://endpoint.microsoft.com" target="_blank"><b>Microsoft Endpoint Manager admin center</b></a>
- Select **Troubleshooting + support** > **Help and support**
    :::image type="content" source="images/advanced-support.png" alt-text="Screenshot that shows how to obtain support from Microsoft Endpoint Manager.":::
- Select the required support scenario: Configuration Manager, Intune, Co-management, or Windows 365
- Above **How can we help?**, select one of three icons to open different panes: *Find solutions*, *Contact support*, or *Service requests*
- In the **Find solutions** pane, use the text box to specify a few details about your issue. The console may offer suggestions based on what you've entered. Depending on the presence of specific keywords, the console provides help like:
  - Run diagnostics: start automated tests and investigations of your tenant from the console to reveal known issues. When you run a diagnostic, you may receive mitigation steps to help with resolution
  - View insights: find links to documentation that provides context and background specific to the product area or actions you've described
  - Recommended articles: browse suggested troubleshooting topics and other content related to your issue
- If needed, use the *Contact support* pane to file an online support ticket
  > [!IMPORTANT]
  > When opening a case, be sure to include as many details as possible in the *Description* field. Such information includes: timestamp and date, device ID, device model, serial number, OS version, and any other details relevant to the issue.
- To review your case history, select the **Service requests** pane. Active cases are at the top of the list, with closed issues also available for review

For more information, see [Microsoft Endpoint Manager support page][MEM-1]

## Autopilot motherboard replacement

Repairing Autopilot-enrolled devices can be complex, as OEM requirements must be balanced with Autopilot requirements. If a motherboard replacement is needed on an Autopilot device, we recommend the following process:

1. [Deregister the device](/mem/autopilot/autopilot-mbr) from Autopilot.
1. [Replace the motherboard](/mem/autopilot/autopilot-mbr).
1. [Capture a new device ID (4K HH)](/mem/autopilot/autopilot-mbr).
1. [Reregister the device](/mem/autopilot/autopilot-mbr) with Autopilot. **NOTE:** For DFCI management, the device must be reregistered by a partner or OEM. Self-registration of devices is not supported with DFCI management.
1. [Reset the device](/mem/autopilot/autopilot-mbr).
1. [Return the device](/mem/autopilot/autopilot-mbr).

For more information, see [Autopilot motherboard replacement scenario guidance](/mem/autopilot/autopilot-mbr).

<!-- Reference links in article -->
[MEM-1]: /mem/get-support