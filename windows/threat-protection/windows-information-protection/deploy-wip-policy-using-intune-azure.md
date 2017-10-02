---
title: Deploy your Windows Information Protection (WIP) policy using the Azure portal for Microsoft Intune (Windows 10)
description: After you’ve created your Windows Information Protection (WIP) policy, you'll need to deploy it to your organization's enrolled devices.
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection, Intune
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
ms.localizationpriority: medium
---

# Deploy your Windows Information Protection (WIP) policy using the Azure portal for Microsoft Intune

**Applies to:**

- Windows 10, version 1607 and later
- Windows 10 Mobile, version 1607 and later (except Microsoft Azure Rights Management, which is only available on the desktop)

After you’ve created your Windows Information Protection (WIP) policy, you'll need to deploy it to your organization's enrolled devices. Enrollment can be done for business or personal devices, allowing the devices to use your managed apps and to sync with your managed content and information.

**To deploy your WIP policy**

1.  On the **App policy** pane, click your newly-created policy, click **User groups** from the menu that appears, and then click **Add user group**.

    A list of user groups, made up of all of the security groups in your Azure Active Directory, appear in the **Add user group** pane.

2. Choose the group you want your policy to apply to, and then click **Select** to deploy the policy.

    The policy is deployed to the selected users' devices.

    ![Microsoft Intune: Pick your user groups that should get the policy when it's deployed](images/wip-azure-add-user-groups.png)


>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).

## Related topics
- [Create a Windows Information Protection (WIP) policy using Microsoft Intune](create-wip-policy-using-intune.md)

- [Associate and deploy your Windows Information Protection (WIP) and VPN policies by using Microsoft Intune](create-vpn-and-wip-policy-using-intune.md)

- [General guidance and best practices for Windows Information Protection (WIP)](guidance-and-best-practices-wip.md)
