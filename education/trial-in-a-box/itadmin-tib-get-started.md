---
title: Get started for IT admins
description: Try out Microsoft 365 Education to implement a full cloud infrastructure for your school, manage devices and apps, and configure and deploy policies to your Windows 10 devices.
keywords: education, Microsoft 365 Education, trial, full cloud IT solution, school, deploy, setup, manage, Windows 10, Intune for Education, Office 365 for Education, Microsoft Store for Education
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.topic: get-started
ms.localizationpriority: high
ms.pagetype: edu
author: CelesteDG
ms.author: celested
ms.date: 12/04/2017
---

# Get started for IT admins

**Applies to:**

-   Windows 10 S Fall Creators Update, Office 365 for Education, Microsoft Intune for Education, Microsoft Store for Education

Hello, IT administrators! In this guide we'll show you how you can quickly and easily try out Microsoft 365 Education, which consists of all the new and existing cloud services and tools that you need to try out a full IT cloud solution for your school.

## Try out Microsoft 365 Education in 5 easy steps

1. [Log in with your IT admin credentials](#log-in).
2. [Configure a new device with Set up School PCs](#configure-a-new-device-with-set-up-school-pcs)
3. [Go through Intune for Education express configuration](#go-through-intune-for-education-express-configuration).
4. [Buy an app from Microsoft Store for Education and deploy it to devices in your tenant](#buy-and-deploy-apps).
5. [Add new folders to all devices in your tenant](#add-new-folders-to-all-devices-in-your-tenant).

![Complete these 5 easy IT admin tasks](images/msedu_tib_adminsteps.png)

> [!NOTE]
> To get the most out of Microsoft 365 Education, we've pre-configured your tenant for you so you don't need to set it up. We've also pre-populated the tenant with fictitious Student Information System (SIS) data so you can work with this as you follow the guide.

If you run into any problems while following the steps in this guide, or you have questions about Microsoft Education, see [Microsoft 365 Education support](support-options.md).

## Log in
To try out the IT admin tasks, start by logging in as an IT admin.

1. Turn **Device A**.
2. In the log in screen, login in with the IT admin credentials included in your Trial in a Box.

## Configure a new device with Set up School PCs
Quickly set up **Device B** using the **Set up School PCs** app. A PC that's been set up using the app is tailored to provide students with the tools they need for learning while removing apps and features that they don't need.

### Download, install, and get ready

1. [Download the latest Set up School PCs app from the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4ls40).
2. Install the app on your work PC, or the Trial in a Box **Device A**.
3. Make sure you're connected to your school's network.
4. Use the USB drive that came in the Trial in a Box accessories box to save the provisioning package.

### Create the provisioning package

1. On **Device A**, launch the Set up School PCs app.

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
  * **Office 365 for Windows 10 S (Education Preview)** - These are perfect for the Trial in a Box PCs. If you try to install this app on other editions of Windows 10, setup will fail.
  * **Minecraft: Education Edition** - Don't select this. This is already provisioned as part of your tenant.
  * **Other apps fit for the classroom**

9. Make sure that all the settings you configured are correct in **Review package summary**. 

    To change any of the settings, select the page or section (such as **Sign-in** or **Settings**) to go back to that page and make your changes.

    ![Select the section or page name to make a change](images/suspc_review_summary.png)

10. Accept the summary and then insert a USB drive in **Device A**.
11. Select the drive and then **Save** to create the provisioning package. 

    > [!NOTE]
    > The provisioning package on your USB drive will be named SetUpSchoolPCs_*ABCDE* (Expires *MM-DD-YYYY*).ppkg, where **ABCDE* is the device name you added (if any), and **MM-DD-YYYY** is the month, day, and year when the package will expire.

12. Follow the instructions in the **Get the student PCs ready** page to start setting up **Device B**. 
13. Follow the instructions in the **Install the package** page to apply the provisioning package to **Device B**. For more guidance, you can follow the steps in [Apply the provisioning package](#apply-the-provisioning-package).

    Select **Create new package** if you need to create a new provisioning package. Otherwise, remove the USB drive.

### Apply the provisioning package
A provisioning package is a method for applying settings to Windows 10 without needing to reimage the device. When Windows 10 refers to a *package*, it means your provisioning package, and when it refers to *provisioning*, it means applying the provisioning package to the student PC.

**To set up Device B using the Set up School PCs provisioning package**

1. Start with **Device B** turned off or with the PC on the first-run setup screen. In Windows 10 S Fall Creators Update, the first-run setup screen says **Let's start with region. Is this right?**. 

    If the PC has passed the account setup screen, reset the PC to start over. To reset the PC, go to **Settings > Update & security > Recovery > Reset this PC**.

2. Insert the USB drive into **Device B**. Windows will recognize the drive and automatically install the provisioning package. 
3. You can remove the USB drive when you see the message that you can remove the removable media. You can then use the USB drive to start provisioning another student PC.

That's it! You're done. **Device B** is now ready to use. You can use the account details for one of the other users in your preconfigured tenant to test the device and the Microsoft 365 Education tools and services that are part of your 1-year trial.

You can complete the rest of the IT admin tasks using **Device A**.

## Go through Intune for Education express configuration
Intune for Education provides an **Express configuration** option so you can get going right away. We'll use that option here.

1. Log into the <a href="https://intuneeducation.portal.azure.com/" target="_blank">Intune for Education console</a>. 
2. On the Intune for Education dashboard, click **Launch Express Configuration** or select the **Express configuration**.

    ![Intune for Education dashboard](images/i4e_dashboard_expressconfig.png)

3. In the **Welcome to Intune for Education** screen, click **Get started** and follow the prompts until you get to the **Choose group** screen.
4. In the **Choose group** screen, select **All Users** so that all apps and settings that we select during express setup will apply to this group. 

  You can choose another group during this step, but note that your experience may vary from what we show in the guide.

5. In the **Choose apps** screen, you will see a selection of desktop (Win32) apps, Web apps, and Microsoft Store apps. 

    ![Choose apps you want to provision to the group](images/i4e_expressconfig_chooseapps.png)

6. Add or remove apps by clicking on them. A blue checkmark means the app is added and will be installed for all members of the group selected in the **Choose group** step.

    It's up to you to select the apps you choose to install. Just remember what they are so that later you can verify that the apps were installed correctly on the device.

    > [!TIP]
    > Web apps are pushed as links in the Windows Start menu under **All apps**. If you want apps to appear in Microsoft Edge browser tabs, use the **Homepages** setting for Microsoft Edge through **Express configuration** or **Manage Users and Devices**.

7. In the **Choose settings** screen, set the settings to apply to the group. Expand each settings group to see all the configurable settings.

    For example, set these settings:
    - In the **Basic device settings** group, change the **Block changing language settings** and **Block changing device region settings** to **Block**.
    - In the **Microsoft Edge settings** group, change the **Block pop-ups** setting to **Block**.

8. Click **Next** and review the list of apps and settings you selected to apply.
9. Click **Save** and then click **All done** to go back to the dashboard.

## Buy and deploy apps
The Microsoft Store for Education is where you can shop for more apps for your school.

1. In Intune for Education, select **Apps** and then in the **Store apps** section, select **+ New app** to go to the <a href="https://educationstore.microsoft.com" target="_blank">Microsoft Store for Education</a>.
2. Select **Sign in** and start shopping for apps for your school.

    ![Microsoft Store for Education site](images/msfe_portal.png)

3. Check some of the categories for suggested apps or search the Store for a free educational or reference app. Find ones that you haven't already installed during express configuration for Intune for Education. For example, these apps are free:
    - Duolingo - Learn Languages for Free
    - Khan Academy
    - My Study Life
    - Arduino IDE

4. Find or select the app you want to install and click **Get the app**.
5. In the app's Store page, click the **...** button and select **Add to private store**. 

    Repeat steps 3-5 to install another app or go to the next step.

6. Select **Manage > Products & services** to verify that the apps you purchased appear in your inventory.

    The apps will show up in your inventory along with the apps that Microsoft automatically provisioned for your education tenant.

    ![List of apps bought for the school](images/msfe_boughtapps.png)

    In the **Private store** column of the **Products & services** page, the status for some apps will indicate that it's "In private store" while others will say "Adding to private store" or "Not applicable". We won't go over this in the walkthrough, but you can learn more about this in <a href="https://docs.microsoft.com/microsoft-store/distribute-apps-from-your-private-store" target="_blank">Distribute apps using your private store</a>.

    > [!NOTE]  
    > Sync happens automatically, but it may take up to 36 hours for your organization's private store and 12 hours for Intune for Education to sync all your purchased apps.

## Add new folders to all devices in your tenant
Update settings for all devices in your tenant by adding the **Documents** and **Downloads** folders to all devices managed in Intune for Education.

1. Go or log in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank">Intune for Education console</a>.
2. Select **Group > All Devices > Settings** and expand **Windows interface customizations**.
3. In **Choose folders that appear in the Start menu**, select **Documents** and **Downloads**.

    ![Choose folders that appear in the Start menu](images/i4e_groups_alldevices_newfolders.png)

## Other tasks
Looking for other IT admin tasks to try? See these instructions:
* [Verify correct device setup](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#verify-correct-device-setup) - See the steps and:
    * Confirm that the apps you bought from the Microsoft Store Education appear in the Windows Start screen's **Recently added** section.
    * Confirm that the folders you added, if you chose to customize the Windows interface from Intune for Education, appear on the Start menu.
* [Verify the device is Azure AD joined](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#verify-the-device-is-azure-ad-joined) - Confirm that your devices are being managed in Intune for Education.
* [Add more users](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#add-more-users) - Go to the Office 365 admin center to add more users.
* [Try the BYOD scenario](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#connect-other-devices-to-your-cloud-infrastructure) - Got your own device and want to try joining it to your Trial in a Box test tenant? Follow the steps here.

## Get more info
[Microsoft Education Trial in a Box](index.md)
