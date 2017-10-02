---
title: Reset devices with Windows Automatic Redeployment
description: Gives an overview of Windows Automatic Redeployment and how you can enable and use it in your schools.
keywords: Windows Automatic Redeployment, Windows 10, education
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: high
author: CelesteDG
ms.author: celested
ms.date: 10/17/2017
---

# Reset devices with Windows Automatic Redeployment 
**Applies to:**

-   Windows 10 

IT admins or technical teachers can use Windows Automatic Redeployment to quickly remove personal files, apps, and settings, and reset Windows 10 devices from the lock screen any time and apply original settings and management enrollment (Azure Active Directory and device management) so the devices are ready to use. With Windows Automatic Redeployment, devices are returned to a fully configured or known IT-approved state.

To enable Windows Automatic Redeployment in Windows 10, version 1709 (Fall Creators Update), you must:

1. Enable the policy for the feature.
2. Trigger a reset for each device.

## How to enable Windows Automatic Redeployment
**DisableAutomaticReDeploymentCredentials** is a policy that enables or disables the visibility of the credentials for Windows Automatic Redeployment. It is a policy node in the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialproviders), **CredentialProviders/DisableAutomaticReDeploymentCredentials**. By default, this policy is set to 1 (True)

You can set the policy using one of these methods:

1. Windows Configuration Designer
    
    You can use Windows Configuration Designer to create a provisioning package and set the **Runtime settings > Policies > CredentialProviders > DisableAutomaticReDeploymentCredentials** setting.

2. MDM provider, such as Intune for Education
    **Namrata - Is this statement about Intune for Education, correct? I couldn't actually verify it in the latest I4E builds**
    - Intune for Education automatically sets this policy in the **All devices** group policy configuration.
    - If you're using an MDM provider other than Intune for Education, check your MDM provider documentation on how to set this policy. If your MDM provider doesn't explicitly support this policy, you can manually set this policy if your MDM provider allows specific OMA-URIs to be manually set.

        For example, in Intune, create a new configuration policy and add an OMA-URI. 
        - OMA-URI:  ./Vendor/MSFT/Policy/Config/CredentialProviders/DisableAutomaticReDeploymentCredentials
        - Data type:  Boolean
        - Value:  1

3. Set up School PCs app

    In the Set up School PCs app, you can... TBD. 

    For more info, see [Use Set up School PCs app](use-set-up-school-pcs-app.md).


## How to trigger Windows Automatic Redeployment
Windows Automatic Redeployment is a two-step process: trigger it and then authenticate. Once you've done these two steps, you can let the process execution and once it's done, the device is again ready for use.

**To trigger Windows Automatic Redeployment**

- From the Windows device lock screen, enter the keystroke: **![Windows key](images/windows_glyph.png) + CTRL + R**. 

    This will open up a custom login screen for Windows Automatic Redeployment. The screen serves two purposes:
    1. Confirm/verify that the end user has the right to trigger Windows Automatic Redeployment
    2. Notify the user in case a provisioning package, created using Windows Configuration Designer or Set up School PCs, will be used as part of the process.

    Once the user enters their credentials, no additional input is required.


## Related topics

[Set up Windows devices for education](set-up-windows-10.md)





