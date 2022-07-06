---
title: Un-enroll your tenant
description:  This article explains what this means for your organization and what actions you must take. 
ms.date: 07/11/2022
ms.prod: w11
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Un-enroll your tenant

If you're looking to unenroll your tenant from Windows Autopatch, this article details what this means for your organization and what actions you must take.

> [!IMPORTANT]
> You must be a Global Administrator to unenroll your tenant.

Un-enrolling from Windows Autopatch requires manual actions from both you and from the Windows Autopatch Service Engineering Team. The Windows Autopatch Service Engineering Team will:  

- Remove Windows Autopatch access to your tenant.
- Deregister your devices from the Windows Autopatch service. Deregistering your devices from Windows Autopatch will not remove your devices from Intune, Azure AD or Configuration Manager. The Windows Autopatch Service Engineering Team follows the same process and principles as laid out in Deregister a device.
- Delete all data that we have stored in the Windows Autopatch data storage.

> [!NOTE]
> We will **not** delete any of your customer or Intune data.

## Microsoft's responsibilities during un-enrollment

| Responsibility | Description |
| ----- | ----- |
| Windows Autopatch data | Windows Autopatch will delete user data that is within the Windows Autopatch service. We won’t make changes to any other data. For more information about how data is used in Windows Autopatch, see [Privacy](../references/windows-autopatch-privacy.md). |
| Windows Autopatch cloud service accounts | Windows Autopatch will remove the cloud service accounts created during the enrollment process. The accounts are: MsAdmin, MsAdminInt and MsTest. |
| Conditional access policy | Windows Autopatch will remove the Modern Workplace – Secure Workstation conditional access policy. |
| Microsoft Endpoint Manager roles | Windows Autopatch will remove the Modern Workplace Intune Admin role. |

## Your responsibilities after un-enrolling your tenant

| Responsibility | Description |
| ----- | ----- |
| Licenses | You're responsible for business continuity after unenrolling from Windows Autopatch. This includes responsibility for licensing renewals and reassignment as deemed appropriate. |
| Data | Windows Autopatch will not make changes to your data. |
| Updates | After the Windows Autopatch service is unenrolled, we’ll no longer provide updates to your devices.  You must ensure that your devices continue to receive updates through your own policies to ensure they are secure and up to date. |
| Optional Windows Autopatch configuration | Windows Autopatch won’t remove the configuration policies used to enable updates on your devices.  You can take the responsibilities for these policies following tenant unenrollment.  If you don’t wish to use these policies for your devices after unenrollment, you may safely delete them. |

## Un-enroll from Windows Autopatch

**To un-enroll from Windows Autopatch:**

1. [Submit a support request](windows-autopatch-support-request.md) and request to unenroll from the Windows Autopatch service.
1. The Windows Autopatch Service Engineering Team will communicate with your IT Administrator to confirm your intent to un-enroll from the service.  
1. You will have 14 days to review and confirm the communication sent by the Windows Autopatch Service Engineering Team.
1. The Windows Autopatch Service Engineering Team can proceed sooner than 14 days if your confirmation arrives sooner.
1. The Windows Autopatch Service Engineering Team will proceed with the removal of all items listed under [Microsoft responsibilities during un-enrollment](#microsofts-responsibilities-during-un-enrollment).
1. The Windows Autopatch Service Engineering Team will inform you when un-enrollment is complete.
1. You’re responsible for the items listed under [Your responsibilities after un-enrolling your tenant](#your-responsibilities-after-un-enrolling-your-tenant).
