---
ms.date: 12/15/2023
ms.topic: include
---


## Enable Windows Hello for Business

To configure Windows Hello for Business using an account protection policy:

1. Sign in to the <a href="https://intune.microsoft.com" target="_blank"><b>Microsoft Intune admin center</b></a>
1. Select **Endpoint security** > **Account protection**
1. Select **+ Create Policy**
1. For **Platform**, select **Windows 10 and later** and for **Profile** select **Account protection**
1. Select **Create**
1. Specify a **Name** and, optionally, a **Description** > **Next**
1. Under **Block Windows Hello for Business**, select **Disabled** and multiple policies become available
    - These policies are optional to configure, but it's recommended to configure **Enable to use a Trusted Platform Module (TPM)** to **Yes**
    - For more information about these policies, see [Windows Hello for Business policy settings](../../policy-settings)
1. Under **Enable to certificate for on-premises resources**, select **Not configured**
1. Select **Next**
1. Optionally, add **scope tags** and select **Next**
1. Assign the policy to a security group that contains as members the devices or users that you want to configure > **Next**
1. Review the policy configuration and select **Create**

> [!TIP]
> If you want to enforce the use of digits for your Windows Hello for Business PIN, use the settings catalog and choose **Digits** or **Digits (User)** instead of using the Account protection template.

:::image type="content" source="../images/whfb-intune-account-protection-enable.png" alt-text="Screenshot of the enablement of Windows Hello for Business from Microsoft Intune admin center using an account protection policy." lightbox="../images/whfb-intune-account-protection-enable.png":::

Assign the policy to a security group that contains as members the devices or users that you want to configure.