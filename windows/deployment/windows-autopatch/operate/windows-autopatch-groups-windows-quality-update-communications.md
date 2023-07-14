---
title: Windows quality update communications for Autopatch groups
description: This article explains Windows quality update communications for Autopatch groups
ms.date: 05/01/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Windows quality update communications: Windows Autopatch groups experience (public preview) 

> [!IMPORTANT]
> Windows Autopatch groups is in **public preview**. This feature is being actively developed and might not be complete. You can test and use these features in production environments and provide feedback.<p>The Windows Autopatch group experience only applies if you’ve opted-in to use Windows Autopatch groups.</p><br>**To opt-in to use Windows Autopatch groups:**<ol><li>Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and select **Devices** from the left navigation menu.</li><li>Under **Windows Autopatch**, select **Release Management**, then select **Autopatch groups (preview)**.</li><li>Review the **[Microsoft Privacy Statement](../overview/windows-autopatch-privacy.md)** and the **[Autopatch groups Public Preview Addendum](../references/windows-autopatch-groups-public-preview-addendum.md)**. If you agree, select the **I have reviewed and agree to the Autopatch groups Public Preview Addendum** checkbox. Then, select **Use preview** to test out Windows Autopatch groups and its bundled feature set. If the **Use preview** option is greyed out, ensure you meet all the [Autopatch group prerequisites](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#autopatch-groups-prerequisites).</li></ol>


There are three categories of communication that are sent out during a Windows quality and feature update:

- [Standard communications](#standard-communications)
- [Communications during release](#communications-during-release)
- [Incident communications](#incident-communications)

Communications are posted to, as appropriate for the type of communication, to the:

- Message center
- Service health dashboard
- Windows Autopatch messages section of the Microsoft Intune admin center

:::image type="content" source="../media/update-communications.png" alt-text="Update communications timeline" lightbox="../media/update-communications.png":::

## Standard communications

| Communication | Location | Timing | Description |
| ----- | ----- |  ----- | ----- |
| Release schedule | <ul><li>Messages blade</li><li>Email sent to your specified [admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li><ul> | At least seven days prior to the second Tuesday of the month| Notification of the planned release window for each ring. |
| Release start | Same as release schedule | The second Tuesday of every month. | Notification that the update is now being released into your environment. |
| Release summary | Same as release schedule | The fourth Tuesday of every month. | Informs you of the percentage of eligible devices that were patched during the release. |

### Opt out of receiving emails for standard communications

> [!IMPORTANT]
> This feature is in **public preview**. This feature is being actively developed and may not be complete. You can test and use these features in production environments and provide feedback.

If you don't want to receive standard communications for Windows Updates releases via email, you can choose to opt out.

**To opt out of receiving emails for standard communications:**

1. Go to the **[Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)**.
2. Go to **Windows Autopatch** > **Tenant administration** > select **Admin contacts**.
3. Select the admin contact you want to opt out for.
4. Select **Edit Contact**.
5. Clear the **Send me emails for Windows update releases and status** checkbox in the fly-in pane.
6. Select **Save** to apply the changes.

## Communications during release

The most common type of communication during a release is a customer advisory. Customer advisories are posted to both Message center and the Messages blade of the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) shortly after Autopatch becomes aware of the new information.

There are some circumstances where Autopatch will need to change the release schedule based on new information.

For example, new threat intelligence may require us to expedite a release, or we may pause due to user experience concerns. If the schedule of a quality update is changed, paused, resumed, or expedited, we'll inform you as quickly as possible so that you can adapt to the new information.

## Incident communications

Despite the best intentions, every service should plan for failure and success. When there's an incident, timely and transparent communication is key to building and maintaining your trust. If insufficient numbers of devices have been updated to meet the service level objective, devices will experience an interruption to productivity, and an incident will be raised. Microsoft will update the status of the incident at least once every 24 hours.
