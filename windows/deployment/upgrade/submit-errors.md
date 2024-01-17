---
title: Submit Windows upgrade errors using Feedback Hub
manager: aaroncz
ms.author: frankroj
description: Download the Feedback Hub app, and then submit Windows upgrade errors for diagnosis using feedback hub.
ms.prod: windows-client
author: frankroj
ms.localizationpriority: medium
ms.topic: article
ms.technology: itpro-deploy
ms.date: 01/17/2024
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

The Feedback Hub app lets you tell Microsoft about any problems you run in to while using Windows and send suggestions to help us improve your Windows experience. Previously, you could only use the Feedback Hub if you were in the Windows Insider Program. Now anyone can use this tool.  You can download the Feedback Hub app from the [Microsoft Store](https://www.microsoft.com/store/p/feedback-hub/9nblggh4r32n?SilentAuth=1&wa=wsignin1.0).

The Feedback Hub requires a currently supported version of Windows. If you're having problems upgrading from an older version of Windows to currently supported versions of Windows, you can use the Feedback Hub to submit this information. However, for operating systems prior to Windows 10 that don't support the Feedback Hub, the log files must be collected and then attached to the feedback using a device that is running a currently supported version of Windows. If you're upgrading to a currently supported version of Windows from a previous version that's Windows 10 or newer, the Feedback Hub collects log files automatically.

## Submit feedback

To submit feedback about a failed Windows upgrade, select the following link: [Feedback Hub](feedback-hub://?referrer=resolveUpgradeErrorsPage&tabid=2&contextid=81&newFeedback=true&feedbackType=2&topic=submit-errors.md)

The Feedback Hub opens:

- Under **Tell us about it**, and then under **Summarize your issue**, type **Upgrade failing**.
- Under **Give us more detail**, provide additional information about the failed upgrade, such as:
  - When did the failure occur?
    - Were there any reboots?
    - How many times did the system reboot?
  - How did the upgrade fail?
    - Were any error codes visible?
    - Did the computer fail to a blue screen?
    - Did the computer automatically rollback or did it hang, requiring you to power cycle it before it rolled back?
- Additional details
  - What type of security software is installed?
  - Is the computer up to date with latest drivers and firmware?
  - Are there any external devices connected?
- If the link was used, the category and subcategory are automatically selected. If it isn't selected, choose **Install and Update** and **Windows Installation**.

You can attach a screenshot or file if desired. Attachments are optional, but can be helpful when diagnosing your upgrade issue. The location of these files is described here: [Windows Setup log files and event logs](/windows-hardware/manufacture/desktop/windows-setup-log-files-and-event-logs).

Select **Submit** to send your feedback.

See the following example:

![feedback example.](../images/feedback.png)

After you select Submit, that's all that needs to be done. Microsoft receives your feedback and begins analyzing the issue. The submitted feedback can be checked on periodically to see what solutions are provided.

## Link to the feedback

After the feedback is submitted, you can email or post links to it by opening the Feedback Hub, clicking My feedback at the top, clicking the feedback item you submitted, clicking **Share**, then copying the short link that is displayed.

![share.](../images/share.jpg)

## Related articles
