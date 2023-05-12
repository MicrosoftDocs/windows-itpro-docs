---
title: Volume Activation for Windows 10
description: Learn how to use volume activation to deploy & activate Windows 10. Includes details for orgs that have used volume activation for earlier versions of Windows.
ms.reviewer: nganguly
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.localizationpriority: medium
ms.date: 11/07/2022
ms.topic: article
ms.technology: itpro-fundamentals
---

# Volume Activation for Windows 10

**Applies to:**

- Windows 10
- Windows 8.1
- Windows 8
- Windows 7
- Windows Server 2012 R2
- Windows Server 2012
- Windows Server 2008 R2

> [!TIP]
> Are you looking for volume licensing information?
>
> - [Download the Volume Licensing Reference Guide for Windows 10 Desktop Operating System](https://www.microsoft.com/download/details.aspx?id=11091)

> [!TIP]
> Are you looking for information on retail activation?
>
> - [Activate Windows](https://support.microsoft.com/help/12440/)
> - [Product activation for Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644)

This guide is designed to help organizations that are planning to use volume activation to deploy and activate Windows 10, including organizations that have used volume activation for earlier versions of Windows.

*Volume activation* is the process that Microsoft volume licensing customers use to automate and manage the activation of Windows operating systems, Microsoft Office, and other Microsoft products across large organizations. Volume licensing is available to customers who purchase software under various volume programs (such as [Open](https://www.microsoft.com/Licensing/licensing-programs/open-license) and [Select](https://www.microsoft.com/Licensing/licensing-programs/select)) and to participants in programs such as the [Microsoft Partner Program](https://partner.microsoft.com/) and [MSDN Subscriptions](https://visualstudio.microsoft.com/msdn-platforms/).

Volume activation is a configurable solution that helps automate and manage the product activation process on computers running Windows operating systems that have been licensed under a volume licensing program. Volume activation is also used with other software from Microsoft (most notably the Office suites) that are sold under volume licensing agreements and that support volume activation.

This guide provides information and step-by-step guidance to help you choose a volume activation method that suits your environment, and then to configure that solution successfully. This guide describes the volume activation features and the tools to manage volume activation.

Because most organizations won't immediately switch all computers to Windows 10, practical volume activation strategies must also take in to account how to work with the Windows 8.1, Windows 7, Windows Server 2012, and Windows Server 2008 R2 operating systems. This guide discusses how the new volume activation tools can support earlier operating systems, but it doesn't discuss the tools that are provided with earlier operating system versions.

Volume activation -and the need for activation itself- isn't new, and this guide doesn't review all of its concepts and history. You can find additional background in the appendices of this guide. For more information, see [Volume Activation Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831612(v=ws.11)).

If you would like additional information about planning a volume activation deployment specifically for Windows 7 and Windows Server 2008 R2, see the [Volume Activation Planning Guide for Windows 7](/previous-versions/tn-archive/dd878528(v=technet.10)).

To successfully plan and implement a volume activation strategy, you must:

- Learn about and understand product activation.

- Review and evaluate the available activation types or models.

- Consider the connectivity of the clients to be activated.

- Choose the method or methods to be used with each type of client.

- Determine the types and number of product keys you'll need.

- Determine the monitoring and reporting needs in your organization.

- Install and configure the tools required to support the methods selected.

Keep in mind that the method of activation doesn't change an organization's responsibility to the licensing requirements. You must ensure that all software used in your organization is properly licensed and activated in accordance with the terms of the licensing agreements in place.

## Related articles

- [Plan for volume activation](plan-for-volume-activation-client.md)
- [Activate using Key Management Service](activate-using-key-management-service-vamt.md)
- [Activate using Active Directory-based activation](activate-using-active-directory-based-activation-client.md)
- [Activate clients running Windows 10](activate-windows-10-clients-vamt.md)
- [Monitor activation](monitor-activation-client.md)
- [Use the Volume Activation Management Tool](use-the-volume-activation-management-tool-client.md)
- [Appendix: Information sent to Microsoft during activation](appendix-information-sent-to-microsoft-during-activation-client.md)
