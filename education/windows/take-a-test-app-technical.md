---
title: Take a Test app technical reference
description: List of policies and settings applied by the Take a Test app.
ms.date: 09/06/2024
ms.topic: reference
---

# Take a Test app technical reference

Take a Test is an application that locks down a device and displays an online assessment web page.

Whether you're a teacher or IT administrator, you can configure Take a Test to meet your testing needs. For high-stakes tests, the app creates a browser-based, locked-down environment. This environment means that students taking the tests that don't have copy/paste privileges, can't access to files and applications, and are free from distractions. For simple tests and quizzes, Take a Test can be configured to use the teacher's preferred assessment website to deliver digital assessments.

Assessment vendors can use Take a Test as a platform to lock down the operating system. Take a Test supports the [SBAC browser API standard](https://www.smarterapp.org/documents/SecureBrowserRequirementsSpecifications_0-3.pdf) for high stakes common core testing. For more information, see [Take a Test JavaScript API](/windows/uwp/apps-for-education/take-a-test-api).

## PC lock-down for assessment

 When the assessment page initiates lock-down, the student's desktop is locked and the app executes above the Windows lock screen. This provides a sandbox that ensures the student can only interact with the Take a Test app. After transitioning to the lock screen, Take a Test applies local MDM policies to further lock down the device. The whole process of going above the lock screen and applying policies is what defines lock-down. The lock-down process is atomic, which means that if any part of the lock-down operation fails, the app won't be above lock and won't have any of the policies applied.

When running above the lock screen:

- The app runs full screen with no chrome
- The hardware print screen button is disabled
- Depending on the parameter you set through the schema or dedicated account, content within the app will show up as black in screen capturing/sharing software
- System clipboard is cleared
- Web apps can query the processes currently running in the user's device
- Extended display shows up as black
- Autofill is disabled

## Mobile device management (MDM) policies

When Take a Test is running, the following MDM policies are applied to lock down the PC.

| Policy | Description | Value |
|---|---|---|
| AllowToasts | Disables toast notifications from being shown | 0 |
| AllowAppStoreAutoUpdate | Disables automatic updates for Store apps that are installed on the PC | 0 |
| AllowDeviceDiscovery | Disables UI for screen sharing | 0 |
| AllowInput Panel | Disables the onscreen keyboard, which disables autofill | 0 |
| AllowCortana | Disables Cortana functionality | 0 |
| AllowAutoupdate | Disables Windows Update from starting OS updates | 5 |

## Group Policy

To ensure Take a Test activates correctly, make sure the following Group Policy aren't configured on the PC.

| Functionality | Group Policy path | Policy |
| --- | --- | --- |
| Require Ctrl+Alt+Del | Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options | Interactive logon: Don't Require CTRL+ALT+DEL |
| Disable lock screen notifications | Computer Configuration\Administrative Templates\System\Logon | Turn off app notifications on the lock screen |
| Disable lock screen | Computer Configuration\Administrative Templates\Control Panel\Personalization | Don't display the lock screen |
| Disable UAC | Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options | User Account Control: Run all administrators in Admin Approval Mode |
| Disable local workstation | User Configuration\Administrative Templates\System\Ctrl+Alt+Del Options | Remove Lock Computer |

## Allowed functionality

When Take a Test is running, the following functionality is available to students:

- Assistive technology that is configured to run above the lock screen should run as expected
- Narrator is available through <kbd>Win</kbd>+<kbd>Enter</kbd>
- Magnifier is available through <kbd>Win</kbd>+<kbd>+</kbd>
- The student can press <kbd>Alt</kbd>+<kbd>Tab</kbd> when locked down. This key press results in the student being able to switch between the following elements:
    - Take a Test
    - Assistive technology that might be running
    - Lock screen (not available if student is using a dedicated test account)

    > [!NOTE]
    > The app will exit if the student signs in to an account from the lock screen.
    > Progress made in the test may be lost or invalidated.
- The student can exit the test by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd>

## Permissive mode

This mode enables students who need access to other apps, like accessibility tools, to use the apps.

When permissive mode is triggered in lock-down mode, Take a Test transitions from lock-down mode to running windows mode on the user's desktop. The student can then run allowed apps during the test.

When running tests in this mode, keep the following points in mind:
- Permissive mode isn't supported in kiosk mode (dedicated test account)
- Permissive mode can be triggered from the web app running within Take a Test. Alternatively, you can create a link or shortcut without "#enforcelockdown" and it launches in permissive mode

## Troubleshoot Take a Test with the event viewer

You can use the Event Viewer to view Take a Test events and errors. Take a Test logs events when it receives a lock-down request, device enrollment completes, lock-down policies are successfully applied, and more.

To enable viewing events in the Event Viewer:

1. Open the Event Viewer
1. Navigate to **Applications and Services Logs** > **Microsoft** > **Windows** > **Management-SecureAssessment**
1. Select **Operational** > **Enable Log**

To save the event logs:

1. Select **Operational** > **Save All Events As…**

## Learn more

[Take a Test API](/windows/uwp/apps-for-education/take-a-test-api)
