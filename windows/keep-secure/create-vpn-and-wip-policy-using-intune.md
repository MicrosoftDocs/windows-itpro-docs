---
title: Create and deploy a VPN policy for Windows Information Protection (WIP) using Microsoft Intune (Windows 10)
description: After you've created and deployed your Windows Information Protection (WIP) policy, you can use Microsoft Intune to create and deploy your Virtual Private Network (VPN) policy, linking it to your WIP policy.
ms.assetid: d0eaba4f-6d7d-4ae4-8044-64680a40cf6b
keywords: WIP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
localizationpriority: high
---

# Create and deploy a VPN policy for Windows Information Protection (WIP) using Microsoft Intune
**Applies to:**

-   Windows 10, version 1703
-   Windows 10 Mobile, version 1703

After you've created and deployed your Windows Information Protection (WIP) policy, you can use Microsoft Intune to create and deploy your Virtual Private Network (VPN) policy, linking it to your WIP policy.

## Create your VPN policy using Microsoft Intune
Follow these steps to create the VPN policy you want to use with WIP.

**To create your VPN policy**

1.  Open the Microsoft Azure Intune mobile application management console, click **Device configuration**, and then click **Create Profile**.

    ![Microsoft Azure Intune, Create a new policy using the the Azure portal](images/wip-azure-vpn-device-policy.png)

2.  In the **Create Profile** pane, type *Contoso_VPN_Win10* into the **Name** box, add an optional description for your policy into the **Description** box, select **Windows 10 and later** from the **Platform** dropdown box, select **Custom** from the **Profile type** dropdown box, and then click **Configure**.

    ![Microsoft Azure Intune, Create a new policy using the Create Profile pane](images/wip-azure-vpn-configure-policy.png)

3. In the **Custom OMA-URI Settings** pane, click **Add**.

4. In the **Add Row** pane, type:

    - **Name.** Type _EDPModeID_ as the name.
    
    - **Description.** Type an optional description for your setting.
    
    - **OMA-URI.** Type _./Vendor/MSFT/VPNv2/<VPNProfileName>/EDPModeId_ into the box.

    - **Data type.** Select **String** from the dropdown box
    
    - **Value.** Your fully-qualified domain that should be used by the OMA-URI setting. For example, _corp.contoso.com_.

    ![Microsoft Azure Intune, Add your OMA-URI settings](images/wip-azure-vpn-custom-omauri.png)

5. Click **OK** to save your setting info in the **Add Row** pane, and then click **OK** in the **Custom OMA-URI Settings** pane to save the setting with your policy.

6. Click **Create** to create the policy, including your OMA_URI info.

## Deploy your VPN policy using Microsoft Intune
After you’ve created your VPN policy, you'll need to deploy it to the same group you deployed your Windows Information Protection (WIP) policy.

**To deploy your Custom VPN policy**

1.  On the **App policy** pane, click your newly-created policy, click **User groups** from the menu that appears, and then click **Add user group**.

    A list of user groups, made up of all of the security groups in your Azure Active Directory, appear in the **Add user group** pane.

2. Choose the group you want your policy to apply to, and then click **Select** to deploy the policy.

    The policy is deployed to the selected users' devices.

    ![Microsoft Intune: Pick your user groups that should get the policy when it's deployed](images/wip-azure-add-user-groups.png)

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).





