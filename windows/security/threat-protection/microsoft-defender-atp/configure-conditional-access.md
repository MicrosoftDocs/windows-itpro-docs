---
title: Configure Conditional Access in Microsoft Defender ATP
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 09/03/2018
---

# Configure Conditional Access in Microsoft Defender ATP
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

This section guides you through all the steps you need to take to properly implement Conditional Access.

### Before you begin
>[!WARNING] 
>It's important to note that Azure AD registered devices is not supported in this scenario.</br>
>Only Intune enrolled devices are supported.

You need to make sure that all your devices are enrolled in Intune. You can use any of the following options to enroll devices in Intune:


- IT Admin: For more information on how to enabling auto-enrollment, see [Windows Enrollment](https://docs.microsoft.com/intune/windows-enroll#enable-windows-10-automatic-enrollment)
- End-user: For more information on how to enroll your Windows 10 device in Intune, see [Enroll your Windows 10 device in Intune](https://docs.microsoft.com/intune-user-help/enroll-your-w10-device-access-work-or-school)
- End-user alternative: For more information on joining an Azure AD domain, see [Set up Azure Active Directory joined devices](https://docs.microsoft.com/azure/active-directory/device-management-azuread-joined-devices-setup).



There are steps you'll need to take in Microsoft Defender Security Center, the Intune portal, and Azure AD portal.

> [!NOTE] 
> You'll need a Microsoft Intune environment, with Intune managed and Azure AD joined Windows 10 devices.

Take the following steps to enable Conditional Access:
- Step 1: Turn on the Microsoft Intune connection from Microsoft Defender Security Center
- Step 2: Turn on the Microsoft Defender ATP integration in Intune
- Step 3: Create the compliance policy in Intune
- Step 4: Assign the policy 
- Step 5: Create an Azure AD Conditional Access policy


### Step 1: Turn on the Microsoft Intune connection
1. In the navigation pane, select **Settings** > **Advanced features** > **Microsoft Intune connection**.
2. Toggle the Microsoft Intune setting to **On**.
3. Click **Save preferences**.


### Step 2: Turn on the Microsoft Defender ATP integration in Intune
1. Sign in to the [Azure portal](https://portal.azure.com).
2. Select **Device compliance** > **Microsoft Defender ATP**.
3. Set **Connect Windows 10.0.15063+ devices to Microsoft Defender Advanced Threat Protection** to **On**.
4. Click **Save**.


### Step 3: Create the compliance policy in Intune
1. In the [Azure portal](https://portal.azure.com), select **All services**, filter on **Intune**, and select **Microsoft Intune**.
2. Select **Device compliance** > **Policies** > **Create policy**.
3. Enter a **Name** and **Description**.
4. In **Platform**, select **Windows 10 and later**.
5. In the **Device Health** settings, set **Require the device to be at or under the Device Threat Level** to your preferred level:

   - **Secured**: This level is the most secure. The device cannot have any existing threats and still access company resources. If any threats are found, the device is evaluated as noncompliant.
   - **Low**: The device is compliant if only low-level threats exist. Devices with medium or high threat levels are not compliant.
   - **Medium**: The device is compliant if the threats found on the device are low or medium. If high-level threats are detected, the device is determined as noncompliant.
   - **High**: This level is the least secure, and allows all threat levels. So devices that with high, medium or low threat levels are considered compliant.

6. Select **OK**, and **Create** to save your changes (and create the policy).

### Step 4: Assign the policy
1. In the [Azure portal](https://portal.azure.com), select **All services**, filter on **Intune**, and select **Microsoft Intune**.
2. Select **Device compliance** > **Policies**> select your Microsoft Defender ATP compliance policy.
3. Select **Assignments**.
4. Include or exclude your Azure AD groups to assign them the policy.
5. To deploy the policy to the groups, select **Save**. The user devices targeted by the policy are evaluated for compliance.

### Step 5: Create an Azure AD Conditional Access policy
1. In the [Azure portal](https://portal.azure.com), open **Azure Active Directory** > **Conditional Access** > **New policy**.
2. Enter a policy **Name**, and select **Users and groups**. Use the Include or Exclude options to add your groups for the policy, and select **Done**.
3. Select **Cloud apps**, and choose which apps to protect. For example, choose **Select apps**, and select **Office 365 SharePoint Online** and **Office 365 Exchange Online**. Select **Done** to save your changes.

4. Select **Conditions** > **Client apps** to apply the policy to apps and browsers. For example, select **Yes**, and then enable **Browser** and **Mobile apps and desktop clients**. Select **Done** to save your changes.

5. Select **Grant** to apply Conditional Access based on device compliance. For example, select **Grant access** > **Require device to be marked as compliant**. Choose **Select** to save your changes.

6. Select **Enable policy**, and then **Create** to save your changes.

For more information, see [Enable Microsoft Defender ATP with Conditional Access in Intune](https://docs.microsoft.com/intune/advanced-threat-protection).

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-conditionalaccess-belowfoldlink)
