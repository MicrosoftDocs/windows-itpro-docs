---
title: Submit Windows upgrade errors using Feedback Hub
manager: aaroncz
ms.author: frankroj
description: Download the Feedback Hub app, and then submit Windows upgrade errors for diagnosis using feedback hub.
ms.service: windows-client
author: frankroj
ms.localizationpriority: medium
ms.topic: conceptual
ms.subservice: itpro-deploy
ms.date: 01/18/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Submit Windows upgrade errors using Feedback Hub

> [!NOTE]
>
> This article is a 100 level article (basic).
>
> See [Resolve Windows upgrade errors](resolve-windows-upgrade-errors.md) for a full list of articles in this section.

This article describes how to submit problems with a Windows upgrade to Microsoft using the Windows Feedback Hub.

## About the Feedback Hub

The Feedback Hub app allows reporting to Microsoft of any problems encountered while using Windows. It also allows sending suggestions to Microsoft on how to improve the Windows experience. Previously, the Feedback Hub could only be used through the Windows Insider Program. Now anyone can use this tool. The Feedback Hub app can be downloaded from the [Microsoft Store](https://www.microsoft.com/store/p/feedback-hub/9nblggh4r32n?SilentAuth=1&wa=wsignin1.0).

The Feedback Hub requires a currently supported version of Windows. The Feedback Hub can be used to submit information to Microsoft if problems are encountered while upgrading Windows. If upgrading to a currently supported version of Windows from a previous version that's Windows 10 or newer, the Feedback Hub automatically collects log files. For operating systems prior to Windows 10 that don't support the Feedback Hub, the log files must be manually collected. The log files can then be attached to the feedback item using a device that is running a currently supported version of Windows that supports the Feedback Hub.

## Submit feedback

To submit feedback about a failed Windows upgrade, open the [Feedback Hub](feedback-hub://?referrer=resolveUpgradeErrorsPage&tabid=2&contextid=81&newFeedback=true&feedbackType=2&topic=submit-errors.md).

In the Feedback Hub, fill out all four sections with as much detail as possible:

1. **Enter your feedback**
1. **Choose a category**
1. **Find similar feedback**
1. **Add more details**

Recommended information that can be included under the **Add more details** section include:

- When did the failure occur?
  - Were there any reboots?
  - How many times did the system reboot?
- How did the upgrade fail?
  - Were any error codes visible?
  - Did the computer fail to a blue screen?
  - Did the computer automatically rollback or did it hang, requiring the computer to be power cycled before it rolled back?
- What type of security software is installed?
- Is the computer up to date with latest drivers and firmware?
- Are there any external devices connected?

Using the **Attach a screenshot** and **Attach a file** options allows screenshots or files to be included as part of the feedback item. Attachments and screenshots are optional, but can be helpful when diagnosing the upgrade issue. For example, log files can be included as attachments to the feedback item. The location of the Windows upgrade log files is described in the article [Windows Setup log files and event logs](/windows-hardware/manufacture/desktop/windows-setup-log-files-and-event-logs).

Finally the **Recreate my problem** option can be used to potentially send additional data and logs for Microsoft to evaluate.

Once all the feedback items are completed, select the **Submit** button to send the feedback. Microsoft receives the feedback and begins analyzing the issue. The submitted feedback can be checked on periodically to see what solutions are provided.

## Link to the feedback

After the feedback is submitted, additional information and items can be added to the feedback item. To do so:

1. Open the [Feedback Hub](feedback-hub:).
1. At the top of the Feedback Hub, select **My feedback**.
1. Select the feedback item that was submitted.
1. Select **Share**.
1. Copy and then use the short link that is displayed.

:::image type="content" alt-text="Share example." source="../images/share.jpg":::

## Related articles
