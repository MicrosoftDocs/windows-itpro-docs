---
title: Enable conditional access to better protect users, devices, and data
description: Enable conditional access to prevent applications from running if a device is considered at risk and an application is determined to be non-compliant.
keywords: conditional access, block applications, security level, intune,
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/24/2018
---

# Enable conditional access to better protect users, devices, and data 

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-conditionalaccess-abovefoldlink)

Conditional access is a capability that helps you better protect your users and enterprise information by making sure that only secure devices have access to applications.

With conditional access, you can control access to enterprise information based on the risk level of a device. This helps keep trusted users on trusted devices using trusted applications.

You can define security conditions under which devices and applications can run and access information from your network by enforcing policies to stop applications from running until a device returns to a compliant state. 

The implementation of conditional access in Windows Defender ATP is based on Microsoft Intune (Intune) device compliance policies and Azure Active Directory (Azure AD) conditional access policies. 

The compliance policy is used with conditional access to allow only devices that fulfill one or more device compliance policy rules to access applications. 

## Understand the conditional access flow
Conditional access is put in place so that when a threat is seen on a device, access to sensitive content is blocked until the threat is remediated. 

The flow begins with machines being seen to have a low, medium, or high risk. These risk determinations are then sent to Intune. 

Depending on how you configure policies in Intune, conditional access can be set up so that when certain conditions are met, the policy is applied.

For example, you can configure Intune to apply conditional access on devices that have a high risk.

In Intune, a device compliance policy is used in conjunction with Azure AD conditional access to block access to applications. In parallel, an automated investigation and remediation process is launched.

 A user can still use the device while the automated investigation and remediation is taking place, but access to enterprise data is blocked until the threat is fully remediated. 

To resolve the risk found on a device, you'll need to return the device to a compliant state. A device returns to a compliant state when there is no risk seen on it. 

There are three ways to address a risk:
1. Use Manual or automated remediation.
2. Resolve active alerts on the machine. This will remove the risk from the machine.
3. You can remove the machine from the active policies and consequently, conditional access will not be applied on the machine. 

Manual remediation requires a secops admin to investigate an alert and address the risk seen on the device. The automated remediation is configured through configuration settings provided in the following section, [Configure conditional access](#configure-conditional-access).

When the risk is removed either through manual or automated remediation, the device returns to a compliant state and access to applications is granted.

The following example sequence of events explains conditional access in action:

1. A user opens a malicious file and Windows Defender ATP flags the device as high risk.
2. The high risk assessment is passed along to Intune. In parallel, an automated investigation is initiated to remediate the identified threat. A manual remediation can also be done to remediate the identified threat.
3. Based on the policy created in Intune, the device is marked as not compliant. The assessment is then communicated to Azure AD by the Intune conditional access policy. In Azure AD, the corresponding policy is applied to block access to applications.
4. The manual or automated investigation and remediation is completed and the threat is removed. Windows Defender ATP sees that there is no risk on the device and Intune assesses the device to be in a compliant state. Azure AD applies the policy which allows access to applications.
5. Users can now access applications.



 ## Configure conditional access
This section guides you through all the steps you need to take to properly implement conditional access.

### Before you begin
>[!WARNING] 
>It's important to note that Azure AD registered devices is not supported in this scenario.</br>
>Only Intune enrolled devices are supported.

You need to make sure that all your devices are enrolled in Intune. You can use any of the following options to enroll devices in Intune:


- IT Admin: For more information on how to enabling auto-enrollment, see [Windows Enrollment](https://docs.microsoft.com/intune/windows-enroll#enable-windows-10-automatic-enrollment)
- End-user: For more information on how to enroll your Windows 10 device in Intune, see [Enroll your Windows 10 device in Intune](https://docs.microsoft.com/intune-user-help/enroll-your-w10-device-access-work-or-school)
- End-user alternative: For more information on joining an Azure AD domain, see [Set up Azure Active Directory joined devices](https://docs.microsoft.com/en-us/azure/active-directory/device-management-azuread-joined-devices-setup).



There are steps you'll need to take in the Windows Defender ATP portal, the Intune portal, and Azure AD portal.

> [!NOTE] 
> You'll need a Microsoft Intune environment, with Intune managed and Azure AD joined Windows 10 devices.

Take the following steps to enable conditional access:
- Step 1: Turn on the Microsoft Intune connection from the Windows Defender ATP portal
- Step 2: Turn on the Windows Defender ATP integration in Intune
- Step 3: Create the compliance policy in Intune
- Step 4: Assign the policy 
- Step 5: Create an Azure AD conditional access policy


### Step 1: Turn on the Microsoft Intune connection
1. In the navigation pane, select **Settings** > **General** > **Advanced features** > **Microsoft Intune connection**.
2. Toggle the Microsoft Intune setting to **On**.
3. Click **Save preferences**.


### Step 2: Turn on the Windows Defender ATP integration in Intune
1. Sign in to the [Azure portal](https://portal.azure.com).
2. Select **Device compliance** > **Windows Defender ATP**.
3. Set **Connect Windows 10.0.15063+ devices to Windows Defender Advanced Threat Protection** to **On**.
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
2. Select **Device compliance** > **Policies**> select your Windows Defender ATP compliance policy.
3. Select **Assignments**.
4. Include or exclude your Azure AD groups to assign them the policy.
5. To deploy the policy to the groups, select **Save**. The user devices targeted by the policy are evaluated for compliance.

### Step 5: Create an Azure AD conditional access policy
1. In the [Azure portal](https://portal.azure.com), open **Azure Active Directory** > **Conditional access** > **New policy**.
2. Enter a policy **Name**, and select **Users and groups**. Use the Include or Exclude options to add your groups for the policy, and select **Done**.
3. Select **Cloud apps**, and choose which apps to protect. For example, choose **Select apps**, and select **Office 365 SharePoint Online** and **Office 365 Exchange Online**. Select **Done** to save your changes.

4. Select **Conditions** > **Client apps** to apply the policy to apps and browsers. For example, select **Yes**, and then enable **Browser** and **Mobile apps and desktop clients**. Select **Done** to save your changes.

5. Select **Grant** to apply conditional access based on device compliance. For example, select **Grant access** > **Require device to be marked as compliant**. Choose **Select** to save your changes.

6. Select **Enable policy**, and then **Create** to save your changes.

For more information, see [Enable Windows Defender ATP with conditional access in Intune](https://docs.microsoft.com/intune/advanced-threat-protection).

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-conditionalaccess-belowfoldlink)

## Related topic
- [Configure advanced features in Windows Defender ATP](advanced-features-windows-defender-advanced-threat-protection.md)



