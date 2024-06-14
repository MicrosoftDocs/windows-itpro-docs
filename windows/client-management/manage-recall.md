---
title: Manage Recall for Windows clients
description: Learn how to manage Recall for commercial environments using MDM and group policy. Learn about Recall features.
ms.topic: how-to
ms.subservice: windows-copilot
ms.date: 06/13/2024
ms.author: mstewart
author: mestew
ms.collection:
  - windows-copilot
  - magic-ai-copilot
appliesto:
- ✅ <a href="https://www.microsoft.com/windows/business/devices/copilot-plus-pcs#copilot-plus-pcs" target="_blank">Copilot+ PCs</a>
---
---

# Manage Recall
<!--8908044-->
>**Looking for consumer information?** See [Retrace your steps with Recall](https://support.microsoft.com/windows/retrace-your-steps-with-recall-aa03f8a0-a78b-4b3e-b0a1-2eb8ac48701c).

Recall allows you to search across time to find the content you need. Just describe how you remember it, and Recall retrieves the moment you saw it. Recall takes snapshots of your screen and stores them in a timeline. Snapshots are taken every five seconds while content on the screen is different from the previous snapshot. Snapshots are locally stored and locally analyzed on your PC. Recall's analysis allows you to search for content, including both images and text, using natural language.

> [!NOTE]
> Recall is coming soon through a post-launch Windows update. See [aka.ms/copilotpluspcs](https://aka.ms/copilotpluspcs). 

When Recall opens the snapshot a user selected, it enables screenray, which runs on top of the saved snapshot. Screenray analyzes what's in the snapshot and allows users to interact with individual elements in the snapshot. For instance, users can copy text from the snapshot or send pictures from the snapshot to an app that supports `jpeg` files.

:::image type="content" source="images/8908044-recall.png" alt-text="Screenshot of Recall with search results displayed for a query about a restaurant that the user's friend sent them." lightbox="images/8908044-recall.png":::

## System requirements
Recall has the following minimum system requirements:

- A [Copilot+ PC](https://www.microsoft.com/windows/business/devices/copilot-plus-pcs#copilot-plus-pcs)
- 16 GB RAM
- 8 logical processors
- 256 GB storage capacity
  - To enable Recall, you need at least 50 GB of space free
  - Snapshot capture automatically pauses once the device has less than 25 GB of disk space

## Supported browsers

Users need a supported browser for Recall to [filter websites](#user-controlled-settings-for-recall) and to automatically filter private browsing activity. Supported browsers, and their capabilities include:

- **Microsoft Edge**: blocks websites and filters private browsing activity
- **Firefox**: blocks websites and filters private browsing activity
- **Opera**: blocks websites and filters private browsing activity
- **Google Chrome**: blocks websites and filters private browsing activity
- **Chromium based browsers** (124 or later): For Chromium-based browsers not listed above, filters private browsing activity only, doesn't block specific websites


## Configure policies for Recall

Organizations that aren't ready to use AI for historical analysis can disable it until they're ready with the **Turn off saving snapshots for Windows** policy. If snapshots were previously saved on a device, they'll be deleted when this policy is enabled. The following policy allows you to disable analysis of user content:

| &nbsp; | Setting  |
|---|---|
| **CSP** | ./User/Vendor/MSFT/Policy/Config/WindowsAI/[DisableAIDataAnalysis](mdm/policy-csp-windowsai.md#disableaidataanalysis) |
| **Group policy** | User Configuration > Administrative Templates > Windows Components > Windows AI > **Turn off saving snapshots for Windows** |

## Limitations

In two specific scenarios, Recall captures snapshots that include InPrivate windows, blocked apps, and blocked websites. If Recall gets launched, or the **Now** option is selected in Recall, then a snapshot is taken even when InPrivate windows, blocked apps, and blocked websites are displayed. However, Recall doesn't save these snapshots. If you choose to send the information from this snapshot to another app, a temp file is created in `C:\Users\[username]\AppData\Local\Temp` to share the content. The temporary file is deleted once the content is transferred over the app you selected to use.

## User controlled settings for Recall

The following options are user controlled in Recall from the **Settings** > **Privacy & Security** > **Recall & Snapshots** page:

- Website filtering
- App filtering
- Storage allocation
    - When the storage limit is reached, the oldest snapshots are deleted first.
- Deleting snapshots
    - Delete all snapshots
    - Delete snapshots within a specific time frame


### Storage allocation

The amount of disk space users can allocate to Recall varies depending on how much storage the device has. The following chart shows the storage space options for Recall:

| Device storage capacity | Storage allocation options for Recall |
|---|---|
| 256 GB | 25 GB (default), 10 GB |
| 512 GB | 75 GB (default), 50 GB, 25 GB |
| 1 TB, or more | 150 GB (default), 100 GB, 75 GB, 50 GB, 25 GB |


## Microsoft's commitment to responsible AI

Microsoft has been on a responsible AI journey since 2017, when we defined our principles and approach to ensuring this technology is used in a way that is driven by ethical principles that put people first. For more about our responsible AI journey, the ethical principles that guide us, and the tooling and capabilities we've created to assure that we develop AI technology responsibly, see [Responsible AI](https://www.microsoft.com/ai/responsible-ai).

Recall uses optical character recognition (OCR), local to the PC, to analyze snapshots and facilitate search. For more information about OCR, see [Transparency note and use cases for OCR](/legal/cognitive-services/computer-vision/ocr-transparency-note). For more information about privacy and security, see [Privacy and control over your Recall experience](https://support.microsoft.com/windows/privacy-and-control-over-your-recall-experience-d404f672-7647-41e5-886c-a3c59680af15).
