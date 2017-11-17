---
title: Configure new devices for your school
description: Learn how to quickly configure and set up new devices for your school using the Set up School PCs app
keywords: education, Microsoft 365 Education, school, configure, set up, student PCs, Set up School PCs
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.topic: article
ms.localizationpriority: high
ms.pagetype: edu
author: CelesteDG
ms.author: celested
ms.date: 12/04/2017
---

# Configure new devices for your school

**Applies to:**

-   Windows 10 S Fall Creators Update, Set up School PCs app

Quickly set up new PCs for students using the **Set up School PCs** app. A PC that's been set up using the app is tailored to provide students with the tools they need for learning while removing apps and features that they don't need.

## Download, install, and get ready

1. [Download the latest Set up School PCs app from the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4ls40).
2. Install the app on your work PC, or one of the the Windows 10 S devices from Trial in a Box that you're using as your admin device.
3. Make sure you're connected to your school's network.
4. Have a USB drive, 1 GB or larger, to save the provisioning package.

## Create the provisioning package

1. Launch the Set up School PCs app.

    ![Launch the Set up School PCs app](images/suspc_start.png)

2. Click **Get started**.
3. Select **Sign-in** to get the best option for setup and enable student PCs to automatically be connected to Office 365, Azure AD, and Intune for Education.
4. In **Let's get you signed in**, choose your Trial in a Box admin account. If you don't see it on the list, follow these steps:
    1. Select **Work or school account > Use another account** and then enter your Trial in a Box admin account email and password. 
    2. Click **Accept** to allow the app to set up school PCs.
5. Follow the instructions in the app to select your school's wireless network, or add one manually. 
6. Add a short name that Set up School PCs will use as a prefix to identify and easily manage the group of devices, apps, and other settings through Intune for Education.
  
    > [!NOTE]  
    > The name must be five (5) characters or less. Set up School PCs automatically appends `_%SERIAL%` to the prefix that you specify. `_%SERIAL%` ensures that all device names are unique. For example, if you add *Math4* as the prefix, the device names will be *Math4* followed by a random string of letters and numbers. 

6. In **Configure student PC settings**, you can specify other settings for the student PC.
  - **Remove apps pre-installed by the device manufacturer** installs only the base Windows 10 image.

      > [!NOTE]  
      > If you select this option, the provisioning process will take longer (about 30 minutes).

  - **Allow local storage (not recommended for shared devices)** lets students save files to the **Desktop** and **Documents** folder on the student PC. We don't recommend this option if the device will be part of a shared cart or lab.
  - **Optimize device for a single student, instead of a shared cart or lab** optimizes the device for use by a single student (1:1). Check this option if the device will not be part of a shared cart or lab.
    - Set up School PCs will change some account management logic so that it sets the expiration time for an account to 180 days (without requiring sign-in). 
    - This setting also increases the maximum storage to 100% of the available disk space. This prevents the student's account from being erased if the student stores a lot of files or data, or if the student doesn't use the PC over a prolonged period.
  - **Let guests sign-in to these PCs** allows guests to use student PCs without a school account. For example, if the device will be in a library and you want other users (like visiting students or teachers) to be able to use the device, select this option.

    > [!NOTE]
    > If you select this option, a **Guest** account button will be added in the PC's sign-in screen to allow anyone to use the PC.

  - **Enable Windows 10 Automatic Redeployment** enables the [Windows Automatic Redeployment](https://docs.microsoft.com/en-us/education/windows/windows-automatic-redeployment) feature.
  - **Lock screen background** shows the default backgroudn used for student PCs provisioned by Set up School PCs. Select **Browse** to change the default.

  ![Configure student PC settings](images/suspc_configure_pcsettings.png)

7. **Set up the Take a Test app** lets you set up the Take a Test app and use it for taking quizzes and high-stakes assessments by some providers like Smarter Balanced. Windows will also lock down the student PC so that students can't access anything else while taking the test.
  1. Specify if you want to create a Take a Test button on the students' sign-in screens.
  2. Select to allow keyboard text suggestions to appear and to allow teachers to monitor online tests. 

    > [!NOTE]
    > The Take a Test app doesn't provide monitoring capabilities, but it allows tools like AssistX ClassPolicy to see what is going on in the app.

  3. Enter the assessment URL. You can leave the URL blank so that students can enter one later. This enables teachers to use the the Take a Test account for daily quizzes or tests by having students manually enter a URL.

8. **Add recommended apps** lets you choose from a set of recommended Microsoft Store apps to provision. The recommended apps include the following:
  * **Office 365 for Windows 10 S (Education Preview)** - These are perfect for the Trial in a Box PCs. If you try to install this app on other editions of Windows, setup will fail.
  * **Minecraft: Education Edition** - Don't select this. This is already provisioned as part of your tenant.
  * **Other apps fit for the classroom**

9. Make sure that all the settings you configured are correct in **Review package summary**. 

    To change any of the settings, select the page or section (such as **Sign-in** or **Settings**) to go back to that page and make your changes.

    ![Select the section or page name to make a change](images/suspc_review_summary.png)

10. Accept the summary and then insert a USB drive.
11. Select the drive and then **Save** to create the provisioning package. 

    > [!NOTE]
    > The provisioning package on your USB drive will be named SetUpSchoolPCs_*ABCDE* (Expires *MM-DD-YYYY*).ppkg, where **ABCDE* is the device name you added (if any), and **MM-DD-YYYY** is the month, day, and year when the package will expire.

12. Follow the instructions in the **Get the student PCs ready** page to start setting up the student PCs. 
13. Follow the instructions in the **Install the package** page to apply the provisioning package to the student PCs. For more guidance, you can follow the steps in [Apply the provisioning package](#apply-the-provisioning-package).

    Select **Create new package** if you need to create a new provisioning package. Otherwise, remove the USB drive.

## Apply the provisioning package

A provisioning package is a method for applying settings to Windows 10 without needing to reimage the device. When Windows 10 refers to a *package*, it means your provisioning package, and when it refers to *provisioning*, it means applying the provisioning package to the student PC.

> [!NOTE]  
> The student PC must contain a new or reset image and the PC must not already have been through first-run setup (OOBE).

**To set up the student PC using the Set up School PCs provisioning package**

1. Start with the student PC turned off or with the PC on the first-run setup screen. In Windows 10 S Fall Creators Update, the first-run setup screen says **Let's start with region. Is this right?**. 

    If the PC has gone past the account setup screen, reset the PC to start over. To reset the PC, go to **Settings > Update & security > Recovery > Reset this PC**.

2. Insert the USB drive. Windows will recognize the drive and automatically install the provisioning package. 
3. You can remove the USB drive when you see the message that you can remove the removable media. You can then use the USB drive to start provisioning another student PC.

That's it! You're done. The PC is now ready to use. You can use the account details for one of the other users in your preconfigured tenant to test the device and the Microsoft 365 Education tools and services that are part of your 1-year trial.


