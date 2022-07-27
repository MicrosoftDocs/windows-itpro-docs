---
title: Unenroll your tenant
description:  This article explains what unenrollment means for your organization and what actions you must take. 
ms.date: 07/27/2022
ms.prod: w11
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Unenroll your tenant

If you're looking to unenroll your tenant from Windows Autopatch, this article details what unenrollment means for your organization and what actions you must take.

> [!IMPORTANT]
> You must be a Global Administrator to unenroll your tenant.

Unenrolling from Windows Autopatch requires manual actions from both you and from the Windows Autopatch Service Engineering Team. The Windows Autopatch Service Engineering Team will:  

- Remove Windows Autopatch access to your tenant.
- Deregister your devices from the Windows Autopatch service. Deregistering your devices from Windows Autopatch won't remove your devices from Intune, Azure AD or Configuration Manager. The Windows Autopatch Service Engineering Team follows the same process and principles as laid out in [Deregister a device](/windows/deployment/windows-autopatch/operate/windows-autopatch-deregister-devices).
- Delete all data that we've stored in the Windows Autopatch data storage.

> [!NOTE]
> We will **not** delete any of your customer or Intune data.

## Microsoft's responsibilities during unenrollment

| Responsibility | Description |
| ----- | ----- |
| Windows Autopatch data | Windows Autopatch will delete user data that is within the Windows Autopatch service. We won’t make changes to any other data. For more information about how data is used in Windows Autopatch, see [Privacy](../references/windows-autopatch-privacy.md). |
| Deregistering devices | Windows Autopatch will deregister all devices previously registered with the service. Only the Windows Autopatch device record will be deleted. We will not delete Microsoft Intune and/or Azure Active Directory device records. For more information, see [Deregister a device](/windows/deployment/windows-autopatch/operate/windows-autopatch-deregister-devices). |

## Your responsibilities after unenrolling your tenant

| Responsibility | Description |
| ----- | ----- |
| Updates | After the Windows Autopatch service is unenrolled, we’ll no longer provide updates to your devices.  You must ensure that your devices continue to receive updates through your own policies to ensure they're secure and up to date. |
| Optional Windows Autopatch configuration | Windows Autopatch won’t remove the configuration policies or groups used to enable updates on your devices. You're responsible for these policies following tenant unenrollment. If you don’t wish to use these policies for your devices after unenrollment, you may safely delete them. |
| Windows Autopatch cloud service accounts | After unenrollment, you may safely remove the cloud service accounts created during the enrollment process. The accounts are:<ul><li>MsAdmin</li><li>MsAdminInt</li><li>MsTest</li></ul> |
| Conditional access policy | After unenrollment, you may safely remove the Modern Workplace – Secure Workstation conditional access policy. |
| Microsoft Endpoint Manager roles | After unenrollment, you may safely remove the Modern Workplace Intune Admin role. |

## Unenroll from Windows Autopatch

**To unenroll from Windows Autopatch:**

1. [Submit a support request](windows-autopatch-support-request.md) and request to unenroll from the Windows Autopatch service.
1. The Windows Autopatch Service Engineering Team will communicate with your IT Administrator to confirm your intent to unenroll from the service.  
    1. You'll have 14 days to review and confirm the communication sent by the Windows Autopatch Service Engineering Team.
    2. The Windows Autopatch Service Engineering Team can proceed sooner than 14 days if your confirmation arrives sooner.
1. The Windows Autopatch Service Engineering Team will proceed with the removal of all items listed under [Microsoft's responsibilities during unenrollment](#microsofts-responsibilities-during-unenrollment).
1. The Windows Autopatch Service Engineering Team will inform you when unenrollment is complete.
1. You’re responsible for the items listed under [Your responsibilities after unenrolling your tenant](#your-responsibilities-after-unenrolling-your-tenant).
