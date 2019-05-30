---
title: Take a Test app technical reference
description: The policies and settings applied by the Take a Test app.
keywords: take a test, test taking, school, policies
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: mjcaparas
ms.author: macapara
ms.date: 11/28/2017
---

# Take a Test app technical reference 
**Applies to:**

-   Windows 10 



Take a Test is an app that locks down the PC and displays an online assessment web page.   

Whether you are a teacher or IT administrator, you can easily configure Take a Test to meet your testing needs. For high-stakes tests, the app creates a browser-based, locked-down environment for more secure online assessments. This means that students taking the tests that don’t have copy/paste privileges, can’t access to files and applications, and are free from distractions. For simple tests and quizzes, Take a Test can be configured to use the teacher’s preferred assessment website to deliver digital assessments

Assessment vendors can use Take a Test as a platform to lock down the operating system. Take a Test supports the [SBAC browser API standard](https://www.smarterapp.org/documents/SecureBrowserRequirementsSpecifications_0-3.pdf) for high stakes common core testing. For more information, see [Take a Test Javascript API](https://docs.microsoft.com/windows/uwp/apps-for-education/take-a-test-api).

## PC lockdown for assessment

 When the assessment page initiates lock down, the student’s desktop will be locked and the app will be launched above the Windows lock screen to provide a sandbox that ensures the student can only interact with the Take a Test app . After transitioning to the lock screen, Take a Test will apply local MDM policies to further lock down the device. The whole process of going above the lock screen and applying policies is what defines lockdown. The lockdown process is atomic, which means that if any part of the lockdown operation fails, the app will not be above lock and won't have any of the policies applied.  

When running above the lock screen:
- The app runs full screen with no chrome 
- The hardware print screen button is disabled 
- Depending on the parameter you set through the schema or dedicated account, content within the app will show up as black in screen capturing/sharing software 
- System clipboard is cleared 
- Web apps can query the processes currently running in the user’s device
- Extended display shows up as black 
- Auto-fill is disabled

## Mobile device management (MDM) policies

When Take a Test is running, the following MDM policies are applied to lock down the PC.

| Policy | Description | Value |
|---|---|---|
| AllowToasts | Disables toast notifications from being shown | 0 |
| AllowAppStoreAutoUpdate | Disables automatic updates for Microsoft Store apps that are installed on the PC | 0 |
| AllowDeviceDiscovery | Disables UI for screen sharing | 0 |
| AllowInput Panel | Disables the onscreen keyboard which will disable auto-fill | 0 |
| AllowCortana | Disables Cortana functionality | 0 |
| AllowAutoupdate | Disables Windows Update from starting OS updates | 5 |

## Group Policy

To ensure Take a Test activates correctly, make sure the following Group Policy are not configured on the PC.

| Functionality | Group Policy path | Policy |
| --- | --- | --- |
| Require Ctrl+Alt+Del | Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options | Interactive logon: Do not Require CTRL+ALT+DEL |
| Disable lock screen notifications | Computer Configuration\Administrative Templates\System\Logon | Turn off app notifications on the lock screen |
| Disable lock screen | Computer Configuration\Administrative Templates\Control Panel\Personalization | Do not display the lock screen |
| Disable UAC | Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options | User Account Control: Run all administrators in Admin Approval Mode |
| Disable local workstation | User Configuration\Administrative Templates\System\Ctrl+Alt+Del Options | Remove Lock Computer |

## Allowed functionality

When Take a Test is running, the following functionality is available to students:

- Assistive technology that is configured to run above the lock screen should run as expected 
- Narrator is available through Windows key + Enter 
- Magnifier is available through Windows key + "+" key 

    - Full screen mode is compatible  

- The student can press Alt+Tab when locked down. This results in the student being able to switch between the following:

    - Take a Test 
    - Assistive technology that may be running 
    - Lock screen (not available if student is using a dedicated test account)

        > [!NOTE] 
        > The app will exit if the student signs in to an account from the lock screen. Progress made in the test may be lost or invalidated. 

- The student can exit the test by pressing one of the following key combinations: 

    - Ctrl+Alt+Del 

        On Windows 10 Enterprise or Windows 10 Education versions, IT admins can choose to block this functionality by configuring a [keyboard filter](https://docs.microsoft.com/windows-hardware/customize/enterprise/keyboardfilter).

    - Alt+F4 (Take a Test will restart if the student is using a dedicated test account)

        > [!NOTE]
        > Alt+F4 is disabled in Windows 10, version 1703 (Creators Update) and later.

## Permissive mode

Starting with Windows 10, version 1709 (Fall Creators Update), assessments can now run in permissive mode. This mode enables students who need access to other apps, like accessibility tools, to use the apps.

When permissive mode is triggered in lockdown mode, Take a Test transitions from lockdown mode to running windows mode on the user's desktop. The student can then run allowed apps during the test.

When running tests in this mode, keep the following in mind:
- Permissive mode is not supported in kiosk mode (dedicated test account).
- Permissive mode can be triggered from the web app running within Take a Test. Alternatively, you can create a link or shortcut without "#enforcelockdown" and it will launch in permissive mode.

See [Secure Browser API Specification](https://github.com/SmarterApp/SB_BIRT/blob/master/irp/doc/req/SecureBrowserAPIspecification.md) for more info.

## Learn more

[Take a Test API](https://msdn.microsoft.com/windows/uwp/apps-for-education/take-a-test-api)

