---
title: Take a Test app technical reference
description: The policies and settings applied by the Take a Test app.
keywords: ["shared cart", "shared PC", "school"]
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: library
author: jdeckerMS
---

# Take a Test app technical reference
**Applies to:**

-   Windows 10 Insider Preview 


> <span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. ]</span>

Take a Test is an app that locks down the PC and displays an online assessment web page.   

Whether you are a teacher or IT administrator, you can easily configure Take a Test to meet your testing needs. For high-stakes tests, the app creates a browser-based, locked-down environment for more secure online assessments. This means that students taking the tests that don’t have copy/paste privileges, can’t access to files and applications, and are free from distractions. For simple tests and quizzes, Take a Test can be configured to use the teacher’s preferred assessment website to deliver digital assessments

Assessment vendors can use Take a Test as a platform to lock down the operating system. Take a Test supports the [SBAC browser API standard](http://www.smarterapp.org/documents/SecureBrowserRequirementsSpecifications_0-3.pdf) for high stakes common core testing. (Link to Javascript API when available)

## PC lockdown for assessment

 When the assessment page initiates lock down, the user’s desktop will be locked and the app will be launched above the Windows lock screen to provide a sandbox that ensures the user can only interact with the Take a Test app . After transitioning to the lock screen, Take a Test will apply local MDM policies to further lock down the device. The whole process of going above the lock screen and applying policies is what defines lockdown. The whole lockdown process is atomic, which means that if any part of the lockdown operation fails, the app will not be above lock and won't have any of the policies applied.  

When running above the lock screen:
- The app runs full screen with no chrome 

- The hardware print screen button is disabled 

- Content within the app will show up as black in screen capturing/sharing software Copy/paste is disabled 

- Web apps can query the processes currently running in the user’s device

- Extended display shows up as black 

- Auto-fill is disabled

## Mobile device management (MDM) policies

When Take a Test is running, the following MDM policies are applied to lock down the PC.

| Policy | Description | Value |
|---|---|---|
| AllowToasts | Disables toast notifications from being shown | 0 |
| AllAppStoreAutoUpdate | Disables automatic updates for Windows Store apps that are installed on the PC | 0 |
| AllowDeviceDiscovery | Disables UI for screen sharing | 0 |
| AllowInput Panel | Disables the onscreen keyboard which will disable auto-fill | 0 |
| AllowCortana | Disables Cortana functionality | 0 |
| AllAutoupdate | Disables Windows Update from starting OS updates | 5 |

## Allowed functionality

When Take a Test is running, the following functionality is available to students:

- Assistive technology that is configured to run above the lock screen should run as expected 

- Narrator is available through Windows key + Enter 

- Magnifier is available through Windows key + "+" key 

- Full screen mode is compatible  

- The user can press Alt+Tab when locked down. This results in the user being able to switch between the following:

    - Take a Test 
    - Assistive technology that may be running 
    - Lock Screen
    > **Note** The app will exit if the user logs into an account from the lock screen. Progress made in the test may be lost or invalidated. 

- The user can exit the test by pressing one of the following key combinations: 

    - Ctrl+Alt+Del 

    - Alt+F4




