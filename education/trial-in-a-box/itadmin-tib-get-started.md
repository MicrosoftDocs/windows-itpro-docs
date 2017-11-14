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

<!--
![Learn how to deploy and manage a cloud solution with MSES!](images/mses_getstarted_banner.png)
-->

**Applies to:**

-   Windows 10 S Fall Creators Update, Office 365 for Education, Microsoft Intune for Education, Microsoft Store for Education

Hello, IT administrators! In this guide we'll show you how you can quickly and easily try out Microsoft 365 Education, which consists of all the new and existing cloud services and tools that you need to try out a full IT cloud solution for your school.

## Try out Microsoft 365 Education in 5 easy steps

1. [Log in with your IT admin credentials](#log-in).
2. [Reset a password for a user in the Office 365 admin center](#reset-a-user-password).
3. [Go through Intune for Education express configuration](#go-through-intune-for-education-express-configuration).
4. [Buy an app from Microsoft Store for Education and deploy it to devices in your tenant](#buy-and-deploy-apps).
5. [Add a new settings for devices in your tenant](#add-new-settings).

![Deploy and manage a full cloud IT solution using Microsoft Education](images/m365edu_tib_itadminsteps.png)

> [!NOTE]
> To get the most out of Microsoft 365 Education, we've pre-configured your tenant for you so you don't need to set it up. We've also pre-populated the tenant with fictitious Student Information System (SIS) data so you can work with this as you follow the guide.

If you run into any problems while following the steps in this guide, or you have questions about Microsoft 365 Education, see [Microsoft 365 Education support](support-options.md).

### Log in
To get started with your Microsoft 365 Education Trial in a Box, log in with the account credentials included in your box.

1. Turn on the notebook, which you can designate as the IT admin device.
2. In the log in screen, enter your account details.

### Reset a user password
To reset a password for someone else in your school, follow these steps.

1. Go to the <a href="https://portal.office.com/adminportal/home" target="_blank">Office 365 admin center</a> and sign in with your Office 365 admin credentials.
2. In the admin center dashboard, select **Users > Edit a user**.

    ![Select edit a user in the admin dashboard](images/o365_users_password.png)

3. From the list of users, select the user whose password you want to reset amd then select **Reset password**.

    ![Select user and reset password](images/o365_users_resetpassword.png)

4. Choose whether you'd like an auto-generated password or enter a password for the user.

    ![Choose how you want to reset the password](images/o365_users_password_reset.png)

    > [!NOTE]
    > We recommend keeping the **Make this user change their password when they first sign in** option checked.

5. Select **Reset** to complete resetting the user's password.

### Go through Intune for Education express configuration
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

### Buy and deploy apps
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

### Add new settings
Update settings for all devices in your tenant by setting a custom lock screen image and a custom desktop image.

1. Go or log in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank">Intune for Education console</a>.
2. Select **Group > All Devices > Settings** and expand **Windows interface customizations**.
3. In **Choose folders that appear in the Start menu**, select **Documents** and **Downloads**.

    ![Available settings for customizing the Windows interface](images/i4e_groups_settings_wincustomizations.png)

## Other tasks
Looking for other IT admin tasks to try? See these instructions:
* [Verify correct device setup](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#verify-correct-device-setup) - See the steps and:
    * Confirm that the apps you bought from the Microsoft Store Education appear in the Windows Start screen's **Recently added** section.
    * Confirm that the folders you added, if you chose to customize the Windows interface from Intune for Education, appear on the Start menu.
* [Verify the device is Azure AD joined](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#verify-the-device-is-azure-ad-joined) - Confirm that your devices are being managed in Intune for Education.
* [Add more users](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#add-more-users) - Go to the Office 365 admin center to add more users.
* [Try the BYOD scenario](https://docs.microsoft.com/en-us/education/get-started/finish-setup-and-other-tasks#connect-other-devices-to-your-cloud-infrastructure) - Got your own device and want to try joining it to your Trial in a Box test tenant? Follow the steps here.

## Get more info
[Microsoft 365 Education Trial in a Box](index.md)
