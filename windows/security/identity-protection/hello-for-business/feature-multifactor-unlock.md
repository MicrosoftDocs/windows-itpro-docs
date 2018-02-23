---
title: Multifactor Unlock
description: Multifactor Unlock
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust, device, registration, unlock, multi, factor, multifactor, multi-factor
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 02/23/2018
---
# Multifactor Unlock

**Requirements:**
* Windows Hello for Business deployment (Hybrid or On-premises)
* Hybird Azure AD joined (Hybrid deployments)
* Domain Joined (on-premises deployments) 
* Windows 10, version 1709
* Bluetooth, Bluetooth capable smartphone - optional

Windows, today, natively only supports the use of a single credential (password, PIN, fingerprint, face, etc.) for unlocking a device. Therefore, if any of those credentials are compromised (shoulder surfed), an attacker could gain access to the system.

Windows 10 offers Multifactor device unlock by extending Windows Hello with trusted signals, administrators can configure Windows 10 to request a combination of factors and trusted signals to unlock their devices. 

Which organizations can take advanage of Multifactor unlock? Those who:
* Have expressed that PINs alone do not meet their security needs.
* Want to prevent Information Workers from sharing credentials.
* Want their orgs to comply with regulatory two-factor authentication policy.
* Want to retain the familiar Windows logon UX and not settle for a custom solution.
 
You enable multifactor unlock using Group Policy.  The **Configure device unlock factors** policy setting is located under **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**.

The policy setting has three components:
* First unlock factor credential provider
* Second unlock factor credential provider 
* Signal rules for device unlock 

## The Basics: How it works

First unlock factor credential provider and Second unlock credential provider are repsonsible for the bulk of the configuration.  Each of these components contains a globally unqiue identifier (GUID) that represents a different Windows credential provider.  With the policy setting enabled, users unlock the device using at least one credenital provider from each category before Windows allows the user to proceed to their desktop.

The credenital providers included in the default policy settings are:

|Credential Provider| GUID|
|:------------------|:----:|
|PIN | \{D6886603-9D2F-4EB2-B667-1971041FA96B}|  
|Fingerprint | \{BEC09223-B018-416D-A0AC-523971B639F5}|
|Facial Recognition | \{8AF662BF-65A0-4D0A-A540-A338A999D36F}|
|Trusted Signal | \{27FBDB57-B613-4AF2-9D7E-4FA7A66C21AD}|

The default credential providers for the **First unlock factor credential provider** include:
* PIN
* Fingerprint
* Facial Recongition

The default credential providers for the **Second unlock factor credential provider** include:
* Trusted Signal
* PIN

The **Signal rules for device unlock** setting contains the rules the Trusted Signal credential provider uses to satisfy unlocking the device. 

The default signal rules for the policy setting include the proximity of any paired bluetooth smartphone.

To successfully reach their desktop, the user must satisfy one credential provider from each category.  The order in which the user satisfies each credential provider does not matter.  Therefore, using the default policy setting a user can provide:
* PIN and Fingerprint
* PIN and Facial Recognition
* Fingerprint and PIN
* Facial Recognition and Trusted Signal (bluetooth paired smartphone)

>[!IMPORTANT]
> * PIN **must** be in at least one of the groups
> * Trusted signals **must** be combined with another credential provider
> * You cannot use the same unlock factor to satisfy both categories. Therefore, if you include any credential provider in both categories, it means it can be used to satisfy either category, but not both.

## Configuring Multifactor Unlock

>[!IMPORTANT]
>Once the you deploy multifactor unlock policies, users are not be able to unlock their devices if they do not have the required factors. The fall back options are to use passwords or smart cards (both of which could be disabled as needed).

### How to configure Multifactor Unlock policy settings

You need a Windows 10, version 1709 workstation to run the Group Policy Management Console, which provides the latest Windows Hello for Business  Group Policy settings, which includes muiltifactor unlock. To run the Group Policy Management Console, you need to install the Remote Server Administration Tools for Windows 10. You can download these tools from the [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=45520). Install the Remote Server Administration Tools for Windows 10 on a computer running Windows 10, version 1709.

Alternatively, you can create copy the .ADMX and .ADML files from a Windows 10, version 1703 to their respective language folder on a Windows Server or you can create a Group Policy Central Store and copy them their respective language folder. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](https://support.microsoft.com/help/3087759/how-to-create-and-manage-the-central-store-for-group-policy-administrative-templates-in-windows) for more information.

#### Create the Multifactor Unlock Group Policy object

The Group Policy object contains the policy settings needed to trigger Windows Hello for Business provisioning and to ensure Windows Hello for Business authentication certificates are automatically renewed.
1. Start the **Group Policy Management Console** (gpmc.msc)
2. Expand the domain and select the **Group Policy Object** node in the navigation pane.
3. Right-click **Group Policy object** and select **New**.
4. Type *Multifactor Unlock* in the name box and click **OK**.
5. In the content pane, right-click the **Multifactor Unlock** Group Policy object and click **Edit**.
6. In the navigation pane, expand **Policies** under **Computer Configuration**.
7. Expand **Administrative Templates > Windows Component**, and select **Windows Hello for Business**.<br>
![Group Policy Editor](images/multifactorUnlock/gpme.png)
8. In the content pane, double-click **Configure device unlock factors**. Click **Enable**.  The **Options** section populates the policy setting with default values.

