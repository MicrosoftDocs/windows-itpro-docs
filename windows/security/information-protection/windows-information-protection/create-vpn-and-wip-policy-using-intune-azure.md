---
title: Associate and deploy a VPN policy for Windows Information Protection (WIP) using the Azure portal for Microsoft Intune 
description: After you've created and deployed your Windows Information Protection (WIP) policy, use Microsoft Intune to link it to your Virtual Private Network (VPN) policy
ms.prod: windows-client
ms.localizationpriority: medium
author: aczechowski
ms.author: aaroncz
manager: dougeby
ms.topic: conceptual
ms.date: 02/26/2019
ms.reviewer: 
ms.technology: itpro-security
---

# Associate and deploy a VPN policy for Windows Information Protection (WIP) using Microsoft Intune

**Applies to:**

- Windows 10, version 1607 and later

After you've created and deployed your Windows Information Protection (WIP) policy, you can use Microsoft Intune to associate and deploy your Virtual Private Network (VPN) policy, linking it to your WIP policy.
 
## Associate your WIP policy to your VPN policy using Intune

To associate your WIP policy with your organization's existing VPN policy, use the following steps:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** > **Configuration profiles** > **Create profile**.
3. Enter the following properties:

    - **Platform**: Select **Windows 10 and later**
    - **Profile**: Select **Templates** > **Custom**.

4. Select **Create**.
5. In **Basics**, enter the following properties:

    - **Name**: Enter a descriptive name for the profile. Name your profiles so you can easily identify them later. 
    - **Description**: Enter a description for the profile. This setting is optional, but recommended.

6. Select **Next**.
7. In **Configuration settings**, enter the following properties:

    - **Name**: Enter a name for your setting. For example, enter `EDPModeID`.
    - **OMA-URI**: Enter `./Vendor/MSFT/VPNv2/YourVPNProfileName/EDPModeId`.
    - **Data type**: Select `String`.
    - **Value**: Type your fully qualified domain that should be used by the OMA-URI setting. For example, enter `corp.contoso.com`.

    For more information on these settings, see [Use custom settings for Windows devices in Intune](/mem/intune/configuration/custom-settings-windows-10).

8. Select **Next**, and continue configuring the policy. For the specific steps and recommendations, see [Create a profile with custom settings in Intune](/mem/intune/configuration/custom-settings-configure).

## Deploy your VPN policy using Microsoft Intune

After you've created your VPN policy, you'll need to deploy it to the same group you deployed your Windows Information Protection (WIP) policy.

1.  On the **App policy** blade, select your newly created policy, select **User groups** from the menu that appears, and then select **Add user group**.

    A list of user groups, made up of all of the security groups in your Azure Active Directory, appear in the **Add user group** blade.

2. Choose the group you want your policy to apply to, and then select **Select** to deploy the policy.

    The policy is deployed to the selected users' devices.

    ![Microsoft Intune: Pick your user groups that should get the policy when it's deployed.](images/wip-azure-add-user-groups.png)

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
