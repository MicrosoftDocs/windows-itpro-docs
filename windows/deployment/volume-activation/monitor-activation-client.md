---
title: Monitor activation
ms.reviewer: nganguly
manager: aaroncz
ms.author: frankroj
description: Understand the most common methods to monitor the success of the activation process for a computer running Windows.
ms.service: windows-client
author: frankroj
ms.localizationpriority: medium
ms.topic: conceptual
ms.subservice: itpro-fundamentals
ms.date: 03/29/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2022</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2019</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016</a>
---

# Monitor activation

> [!TIP]
>
> Looking for information on retail activation?
>
> - [Activate Windows](https://support.microsoft.com/help/12440/).
> - [Product activation for Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644).

The success of the activation process for a computer running Windows can be monitored in several ways. The most popular methods include:

- Using the Volume Licensing Service Center website to track use of MAK keys.

- Using the `Slmgr /dlv` command on a client computer or on the KMS host. For a full list of options, see [Slmgr.vbs options for obtaining volume activation information](/windows-server/get-started/activation-slmgr-vbs-options).

- Using Windows Management Instrumentation (WMI) to view licensing status. WMI makes licensing status available to non-Microsoft or custom tools that can access WMI. Windows PowerShell can also be used to access WMI information.

- Most licensing actions and events are recorded in the Event log (ex: Application Log events 12288-12290).

- Microsoft System Center Operations Manager and the KMS Management Pack can provide insight and information to users of System Center Operations Manager.

- See [Troubleshooting activation error codes](/windows-server/get-started/activation-error-codes) for information about troubleshooting procedures for Multiple Activation Key (MAK) or the Key Management Service (KMS).

- The Volume Activation Management Tool (VAMT) provides a single site from which to manage and monitor volume activations. This feature is explained in the next section.

## Related content

- [Volume Activation for Windows](volume-activation-windows.md).
