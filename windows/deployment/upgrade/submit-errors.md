---
title: Submit Windows 10 upgrade errors using Feedback Hub
ms.reviewer: 
manager: laurawi
ms.author: lomayor
description: Submit Windows 10 upgrade errors for diagnosis using feedback hub
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, feedback
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: lomayor
ms.localizationpriority: medium
ms.topic: article
---

# Submit Windows 10 upgrade errors using Feedback Hub

**Applies to**
-   Windows 10

>[!NOTE]
>This is a 100 level topic (basic).<br>
>See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.

## In this topic

This topic describes how to submit problems with a Windows 10 upgrade to Microsoft using the Windows 10 Feedback Hub.

## About the Feedback Hub

The Feedback Hub app lets you tell Microsoft about any problems you run in to while using Windows 10 and send suggestions to help us improve your Windows experience. Previously, you could only use the Feedback Hub if you were in the Windows Insider Program. Now anyone can use this tool.  You can download the Feedback Hub app from the Microsoft Store [here](https://www.microsoft.com/en-us/store/p/feedback-hub/9nblggh4r32n?SilentAuth=1&wa=wsignin1.0).

The Feedback Hub requires Windows 10 or Windows 10 mobile. If you are having problems upgrading from an older version of Windows to Windows 10, you can use the Feedback Hub to submit this information, but you must collect the log files from the legacy operating system and then attach these files to your feedback using a device that is running Windows 10. If you are upgrading to Windows 10 from a previous verion of Windows 10, the Feedback Hub will collect log files automatically.

## Submit feedback

To submit feedback about a failed Windows 10 upgrade, click the following link: [Feedback Hub](feedback-hub://?referrer=resolveUpgradeErrorsPage&tabid=2&contextid=81&newFeedback=true&feedbackType=2&topic=submit-errors.md) 

The Feedback Hub will open.

- Under **Tell us about it**, and then under **Summarize your issue**, type **Upgrade failing**.
- Under **Give us more detail**, provide additional information about the failed upgrade, such as:
    - When did the failure occur?
        - Were there any reboots?
        - How many times did the system reboot?
    - How did the upgrade fail?
        - Were any error codes visible?
        - Did the computer fail to a blue screen?
        - Did the computer automatically roll back or did it hang, requiring you to power cycle it before it rolled back?
- Additional details
    - What type of security software is installed?
    - Is the computer up to date with latest drivers and firmware?
    - Are there any external devices connected? 
- If you used the link above, the category and subcategory will be automatically selected. If it is not selected, choose **Install and Update** and **Windows Installation**. 

You can attach a screenshot or file if desired. This is optional, but can be extremely helpful when diagnosing your upgrade issue. The location of these files is described here: [Windows Setup log files and event logs](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-log-files-and-event-logs).

Click **Submit** to send your feedback.

See the following example:

![feedback example](../images/feedback.png) 

After you click Submit, that's all you need to do. Microsoft will receive your feedback and begin analyzing the issue.  You can check on your feedback periodically to see what solutions have been provided.

## Link to your feedback

After your feedback is submitted, you can email or post links to it by opening the Feedback Hub, clicking My feedback at the top, clicking the feedback item you submitted, clicking **Share**, then copying the short link that is displayed.

![share](../images/share.jpg) 

## Related topics

[Windows 10 release information](https://technet.microsoft.com/windows/release-info.aspx)

