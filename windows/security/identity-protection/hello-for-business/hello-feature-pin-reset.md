---
title: Pin Reset
description: Pin Reset
keywords: identity, PIN, Hello, passport, WHFB, hybrid, cert-trust, device, reset
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 09/09/2019
ms.reviewer: 
---

# PIN reset

**Applies to:**

- Windows 10, version 1709 or later

## Hybrid Deployments

**Requirements:**

- Azure Active Directory
- Hybrid Windows Hello for Business deployment
- Azure AD registered, Azure AD joined, and Hybrid Azure AD joined
- Windows 10, version 1709 or later, **Enterprise Edition**

The Microsoft PIN reset services enables you to help users recover who have forgotten their PIN.  Using Group Policy, Microsoft Intune or a compatible MDM, you can configure Windows 10 devices to securely use the Microsoft PIN reset service that enables users to reset their forgotten PIN through settings or above the lock screen without requiring re-enrollment.

>[!IMPORTANT]
> The Microsoft PIN Reset service only works with Windows 10, version 1709 or later **Enterprise Edition**.  The feature does not work with the **Pro** edition.]

### Onboarding the Microsoft PIN reset service to your Intune tenant

Before you can remotely reset PINs, you must on-board the Microsoft PIN reset service to your Azure Active Directory tenant, and configure devices you manage.

### Connect Azure Active Directory with the PIN reset service

1. Visit [Microsoft PIN Reset Service Integration website](https://login.windows.net/common/oauth2/authorize?response_type=code&client_id=b8456c59-1230-44c7-a4a2-99b085333e84&resource=https%3A%2F%2Fgraph.windows.net&redirect_uri=https%3A%2F%2Fcred.microsoft.com&state=e9191523-6c2f-4f1d-a4f9-c36f26f89df0&prompt=admin_consent), and sign in using the tenant administrator account you use to manage your Azure Active Directory tenant.
2. After you log in, click **Accept** to give consent for the PIN reset service to access your account.<br>
![PIN reset service application in Azure](images/pinreset/pin-reset-service-home-screen.png)<br>
3. In the Azure portal, you can verify that the Microsoft PIN reset service is integrated from the **Enterprise applications** blade. Filter to application status "Enabled" and both Microsoft Pin Reset Service Production and Microsoft Pin Reset Client Production will show up in your tenant.<br>
![PIN reset service permissions page](images/pinreset/pin-reset-service-application.png)

### Configure Windows devices to use PIN reset using Group Policy

You configure Windows 10 to use the Microsoft PIN Reset service using the computer configuration portion of a Group Policy object. 

1. Using the Group Policy Management Console (GPMC), scope a domain-based Group Policy to computer accounts in Active Directory.
2. Edit the Group Policy object from step 1.
3. Enable the **Use PIN Recovery** policy setting located under **Computer Configuration->Administrative Templates->Windows Components->Windows Hello for Business**.
4. Close the Group Policy Management Editor to save the Group Policy object.  Close the GPMC. 

### Configure Windows devices to use PIN reset using Microsoft Intune

To configure PIN reset on Windows devices you manage, use an [Intune Windows 10 custom device policy](https://docs.microsoft.com/intune/custom-settings-windows-10) to enable the feature. Configure the policy using the following Windows policy configuration service provider (CSP):

#### Create a PIN Reset Device configuration profile using Microsoft Intune

1. Sign-in to [Azure Portal](https://portal.azure.com) using a tenant administrator account. 
2. You need your tenant ID to complete the following task.  You can discovery your tenant ID viewing the **Properties** of your Azure Active Directory from the Azure Portal. It will be listed under Directory ID. You can also use the following command in a command Window on any Azure AD joined or hybrid Azure AD joined computer.</br>

    ```
    dsregcmd /status | findstr -snip "tenantid"
    ```

1. Navigate to the Microsoft Intune blade. Click **Device configuration**. Click **Profiles**. Click **Create profile**.
1. Type **Use PIN Recovery** in the **Name** field. Select **Windows 10 and later** from the **Platform** list.  Select **Custom** from the **Profile type** list.
1. In the **Custom OMA-URI Settings** blade, Click **Add**.
1. In the **Add Row** blade, type **PIN Reset Settings** in the **Name** field. In the **OMA-URI** field, type **./Device/Vendor/MSFT/PassportForWork/*tenant ID*/Policies/EnablePinRecovery** where <b>*tenant ID*</b> is your Azure Active Directory tenant ID from step 2.
1. Select **Boolean** from the **Data type** list and select **True** from the **Value** list.
1. Click **OK** to save the row configuration. Click **OK** to close the <strong>Custom OMA-URI Settings blade.  Click **Create</strong> to save the profile.
 
#### Assign the PIN Reset Device configuration profile using Microsoft Intune

1. Sign-in to [Azure Portal](https://portal.azure.com) using a tenant administrator account. 
2. Navigate to the Microsoft Intune blade. Click **Device configuration**. Click **Profiles**. From the list of device configuration profiles, click the profile that contains the PIN reset configuration.
3. In the device configuration profile, click **Assignments**.
4. Use the **Include** and/or **Exclude** tabs to target the device configuration profile to select groups.

## On-premises Deployments

**Requirements**

* Active Directory
* On-premises Windows Hello for Business deployment
* Reset from settings - Windows 10, version 1703, Professional
* Reset above Lock - Windows 10, version 1709, Professional

On-premises deployments provide users with the ability to reset forgotten PINs either through the settings page or from above the user's lock screen.  Users must know or be provided their password for authentication, must perform a second factor of authentication, and then re-provision Windows Hello for Business.

>[!IMPORTANT]
>Users must have corporate network connectivity to domain controllers and the federation service to reset their PINs.

### Reset PIN from Settings

1. Sign-in to Windows 10, version 1703 or later using an alternate credential.
2. Open **Settings**, click **Accounts**, click **Sign-in options**.
3. Under **PIN**, click **I forgot my PIN** and follow the instructions.

#### Reset PIN above the Lock Screen

 1. On Windows 10, version 1709, click **I forgot my PIN** from the Windows Sign-in
 2. Enter your password and press enter.
 3. Follow the instructions provided by the provisioning process
 4. When finished, unlock your desktop using your newly created PIN.

>[!NOTE]
> Visit the [Windows Hello for Business Videos](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-videos.md) page and watch the [Windows Hello for Business forgotten PIN user experience](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-videos#windows-hello-for-business-forgotten-pin-user-experience) video.

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
