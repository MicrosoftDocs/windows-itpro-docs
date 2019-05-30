---
title: Use Set up School PCs app
description: Learn how to use the Set up School PCs app and apply the provisioning package.
keywords: shared cart, shared PC, school, Set up School PCs, overview, how to use
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: mjcaparas
ms.author: macapara
ms.date: 10/23/2018
---

# Use the Set up School PCs app  

IT administrators and technical teachers can use the **Set up School PCs** app to quickly set up Windows 10 PCs for students. The app configures PCs with the apps and features students need, and it removes the ones they don't need. During setup, if licensed in your tenant, the app enrolls each student PC into a mobile device management (MDM) provider, such as Intune for Education. You can then manage all the settings the app configures through the MDM.   

Set up School PCs also:  
* Joins each student PC to your organization's Office 365 and Azure Active Directory tenant.  
* Enables the optional Autopilot Reset feature, to return devices to a fully configured or known IT-approved state.  
* Utilizes Windows Update and maintenance hours to keeps student PCs up-to-date, without interfering with class time.
* Locks down the student PC to prevent activity that isn't beneficial to their education.  

This article describes how to fill out your school's information in the Set up School PCs app. To learn more about the app's functionality, start with the [Technical reference for the Set up School PCs app](set-up-school-pcs-technical.md).  

## Requirements    
Before you begin, make sure that you, your computer, and your school's network are configured with the following requirements.

* Office 365 and Azure Active Directory
* [Latest Set up School PCs app](https://www.microsoft.com/store/apps/9nblggh4ls40)  
* Permission to buy apps in Microsoft Store for Education
* Set up School PCs app has permission to access the Microsoft Store for Education
* A NTFS-formatted USB drive that is at least 1 GB, if not installing Office; and at least 8 GB, if installing Office
* Student PCs must either: 
    * Be within range of the Wi-Fi network that you configured in the app.
    * Have a wired Ethernet connection when you set them up.  

### Configure USB drive for additional space  
USB drives are, by default, FAT32-formatted, and are unable to save more than 4 GB of data. If you plan to install several apps, or large apps like Microsoft Office, you'll need more space. To create more space on the USB drive, reformat it to NTFS.  
1. Insert the USB drive into your computer.
2. Go to the **Start** > **This PC**.
3. In the **Devices and drives** section, find your USB drive. Right-click to see its options.
4. Select **Format** from the list to bring up the **Format drive name** window.
5. Set **File system** to **NTFS**.
6. Click **Start** to format the drive.

### Prepare existing PC account for new setup  
Apply new packages to factory reset or new PCs. If you apply it to a PC that's already set up, you may lose the accounts and data.

If a PC has already been set up, and you want to apply a new package, reset the PC to a clean state.

To begin, go to the **Settings** app on the appropriate PC.
1. Click **Update & Security** > **Recovery**. 
2. In the **Reset this PC** section, click **Get started**. 
3. Click **Remove everything**.

You can also go to **Start** > **Power** icon. Hold down the Shift key and click **Restart** to load the Windows boot user experience. From there, follow these steps: 
1. Click **Troubleshoot** and then choose **Reset this PC**.
2. Select **Remove everything**.
3. If the option appears, select **Only the drive where Windows is installed**.  
4. Click **Just remove my files**.
5. Click **Reset**.

## Recommendations  
This section offers recommendations to prepare you for the best possible setup experience.  
### Run the same Windows 10 build on the admin device and the student PCs  
We recommend you run the IT administrator or technical teacher's device on the same Windows 10 build as the student PCs.

### Student PCs should meet OS requirements for the app  
Check the OS requirements in the Set up School PCs app. We recommend using the latest Set up School PCs app along with the latest Windows 10 images on the student PCs.  

To check the app's OS requirements, go to the Microsoft Store and locate the Set up School PCs app. In the app's description, go to **System Requirements > OS**.

### Use app on a PC that is connected to your school's network  
We recommend that you run the Set up School PCs app on a computer that's connected to your school's network. That way the app can gather accurate information about your school's wireless networks and cloud subscriptions. If it's not connected, you'll need to enter the information manually.

 > [!NOTE]  
  > Don't use the **Set up Schools PCs** app for PCs that must connect to:
 >* Enterprise networks that require the user to accept Terms of Use.
 >* Open Wi-Fi networks that require the user to accept Terms of Use.

### Run app on an open network or network that requires a basic password  
Don't use Set up School PCs over a certification-based network, or one where you have to enter credentials in a browser. If you need to set up many devices over Wi-Fi, make sure that your network configuration can support it.

We recommend that you:  
* Configure your DHCP so at least 200 IP addresses are available for your devices. Having available IP addresses will allow you to set up many devices simultaneously.  
* Configure your IP addresses to expire after a short time--about 30 minutes. IP addresses will free up quickly so you can continue to set up devices without network issues.    

>> [!WARNING]
> Only use the provisioning package on PCs that you want to configure and lock down for students. After you apply the provisioning package to a student PC, the PC must be reset to remove the settings.  

### Use an additional USB drive  
To set up more than one PC at the same time, save the provisioning package to additional USB drives. Then plug the USBs in at the same time during setup. 

### Limit changes to school-optimized settings  

We strongly recommend that you avoid changing preset policies. Changes can slow down setup, performance, and the time it takes to sign in.  

## Create the provisioning package  

The **Set up School PCs** app guides you through the configuration choices for the student PCs.  To begin, open the app on your PC and click **Get started**.   
    
   ![Launch the Set up School PCs app](images/suspc_getstarted_050817.png)  

### Package name  
Type a unique name to help distinguish your school's provisioning packages. The name appears:  

* On the local package folder  
* In your tenant's Azure AD account in the Azure portal  

A package expiration date is also attached to the end of each package. For example, *Set_Up_School_PCs (Expires 4-16-2019)*. The expiration date is 180 days after you create your package.  

  ![Example screenshot of the Set up School PCs app, Name your package screen.](images/1810_Name_Your_Package_SUSPC.png)  

After you click **Next**, you can no longer change the name in the app. To create a package with a different name, reopen the Set up School PCs app.  

To change an existing package's name, right-click the package folder on your device and select **Rename**. This action does not change the name in Azure AD. If you have Global Admin permissions, you can go to Azure AD in the Azure portal, and rename the package there.  


### Sign in  

1. Select how you want to sign in.  
    a. (Recommended) To enable student PCs to automatically be connect to Office 365, Azure AD, and management services like Intune for Education, click **Sign-in**. Then go to step 3.  
    b. To complete setup without signing in, click **Continue without account**. Student PCs won't be connected to your school's cloud services and managing them will be more difficult later. Continue to [Wireless network](#wireless-network).  
2. In the new window, select the account you want to use throughout setup.  

    ![Sign-in screen showing the option to "Use this account" or use a different "Work or school account."](images/1810_choose_account_suspc.png)  

    To add an account not listed:  
    a. Click **Work or school account** > **Continue**.  
    b. Type in the account username and click **Next**.  
    c. Verify the user account and password, if prompted.  


3. Click **Accept** to allow Set up School PCs to access your account throughout setup.
2. When your account name appears on the page, as shown in the image below, click **Next.**

      ![Example screenshot of the Set up School PC app, Sign in screen, showing that the user's account name appears at the bottom of the page.](images/1810_Sign_In_SUSPC.png)  

### Wireless network
Add and save the wireless network profile that you want student PCs to connect to. Only skip Wi-Fi setup if you have an Ethernet connection.  

Select your school's Wi-Fi network from the list of available wireless networks, or click **Add a wireless network** to manually configure it. Then click **Next.**  

 ![Example screenshot of the Set up School PC app, Wireless network page with two Wi-Fi networks listed, one of which is selected.](images/1810_SUSPC_select_Wifi.png)  

### Device names
Create a short name to add as a prefix to each PC. This name will help you recognize and manage this specific group of devices in your mobile device manager. The name must be five (5) characters or less.  

To make sure all device names are unique, Set up School PCs automatically appends `_%SERIAL%` to the name. For example, if you add *Math4* as the prefix, the device names will appear as *Math4* followed by a random string of letters and numbers.   

To keep the default name for your devices, click **Continue with existing names**.

  !["Name these devices" screen with the device field filled in with example device name, "Grd8."](images/1810_name-devices_SUSPC.png)  



### Settings
Select additional settings to include in the provisioning package. To begin, select the operating system on your student PCs.  

![Screenshot of the Current OS version page with the Select OS version menu selected, showing 7 Windows 10 options. All other settings on page are unavailable to select.](images/1810_suspc_settings.png)  

Setting selections vary based on the OS version you select. The example screenshot below shows the settings that become available when you select **Windows 10 version 1703**. The option to **Enable Autopilot Reset** is not available for this version of Windows 10.  


![Example screenshot of the Current OS version page, with Windows 10 version 1803 selected. 4 available settings and 1 unavailable setting are shown, and none are selected.](images/1810_SUSPC_available_settings.png)  


> [!NOTE]
> The [**Time zone** setting](use-set-up-school-pcs-app.md#time-zone), shown in the sidebar of the screenshot above, is not made available to versions of Windows 10 in S mode. If you select a version in S mode, **Time zone** will become disabled.  

The following table describes each setting and lists the applicable Windows 10 versions. To find out if a setting is available in your version of Windows 10, look for an *X* in the setting row and in the version column.   

|Setting  |1703|1709|1803|1809|What happens if I select it? |Note|
|---------|---------|---------|---------|---------|---------|---------|
|Remove apps pre-installed by the device manufacturer |X|X|X|X| Uninstalls apps that came loaded on the computer by the device's manufacturer. |Adds about 30 minutes to the provisioning process.|
|Allow local storage (not recommended for shared devices)    |X|X|X|X| Lets students save files to the Desktop and Documents folder on the Student PC.         |Not recommended if the device will be part of a shared cart or lab.|
|Optimize device for a single student, instead of a shared cart or lab    |X|X|X|X|Optimizes the device for use by a single student, rather than many students.       |Recommended option only if the device is not shared with other students in the school. Single-optimized accounts are set to expire, and require a signin, 180 days after setup. This setting increases the maximum PC storage to 100% of the available disk space. In this case, student accounts aren't deleted unless the account has been inactive for 180 days. |
|Let guests sign in to these PCs     |X|X|X|X|Allows guests to use student PCs without a school account. |Common to use within a public, shared space, such as a library. Also used when a student loses their password. Adds a **Guest** account to the PC sign-in screen that anyone can sign in to.|
|Enable Autopilot Reset  |Not available|X|X|X|Lets you remotely reset a student’s PC from the lock screen, apply the device’s original settings, and enroll it in device management (Azure AD and MDM).  |Requires Windows 10, version 1709 and WinRE must be enabled on the PC. Setup will fail if both requirements aren't met.|
|Lock screen background|X|X|X|X|Change the default screen lock background to a custom image.|Click **Browse** to search for an image file on your computer. Accepted image formats are jpg, jpeg, and png.|   

After you've made your selections, click **Next**.   

### Time zone  

> [!WARNING]
> If you are using the Autounattend.xml file to reimage your school PCs, do not specify a time zone in the file. If you set the time zone in the file *and* in this app, you will encounter an error.

Choose the time zone where your school's PCs are used. This setting ensures that all PCs are provisioned in the same time zone. When you're done, click **Next**.  

![Choose PC time zone page with the time zone menu expanded to show all time zone selections.](images/1810_suspc_timezone.png)  

### Product key  
Optionally, type in a 25-digit product key to:
* Upgrade your current edition of Windows. For example, if you want to upgrade from Windows 10 Education to Windows 10 Education Pro, enter the product key for the Pro edition.
* Change the product key. If you want to associate student devices with a new or different Windows 10 product key, enter it now.  

![Example screenshot of the Set up School PC app, Product key screen, showing a value field, Next button, and Continue without change option.](images/1810_suspc_product_key.png)  

### Take a Test  
Set up the Take a Test app to give online quizzes and high-stakes assessments. During assessments, Windows locks down the student PC so that students can't access anything else on the device.  

1. Select **Yes** to create a Take a Test button on the sign-in screens of your students' PCs.    

    ![Set up Take a Test app page with "Yes" selected to create an app button. Page also has two checkboxes for additional settings and one text field for the assessment URL.](images/1810_SUSPC_Take_Test.png)   

2. Select from the advanced settings. Available settings inclue:  
    * Allow keyboard auto-suggestions: Allows app to suggest words as the student types on the PC's keyboard.  
    * Allow teachers to monitor online tests: Enables screen capture in the Take a Test app.  
3. Enter the URL where the test is hosted. When students log in to the Take a Test account, they'll be able to click or enter the link to view the assessment.  
4. Click **Next**. 

### Add apps  
Choose from Microsoft recommended apps and your school's own Microsoft Store inventory. The apps you select here are added to the provisioning package and installed on student PCs. After they're assigned, apps are pinned to the device's Start menu.  

If there aren't any apps in your Microsoft Store inventory, or you don't have the permissions to add apps, you'll need to contact your school admin for help. If you receive a message that you can't add the selected apps, click **Continue without apps**. Contact your school admin to get these apps later.  

After you've made your selections, click **Next**.  


  ![Example screenshots of the Add apps screen with selection of recommended apps and school inventory apps.](images/1812_Add_Apps_SUSPC.png)  

The following table lists the recommended apps you'll see.  

|App |Note |
|---------|---------|
|Office 365 for Windows 10 in S mode (Education Preview) | Setup is only successful on student PCs that run Windows 10 in S mode. The PC you running the Set up School PCs app is not required to have Windows 10 in S mode.        |
|Microsoft Whiteboard | None|
|Minecraft: Education Edition | Free trial|



### Personalization  
Upload custom images to replace the student devices' default desktop and lock screen backgrounds. Click **Browse** to search for an image file on your computer. Accepted image formats are jpg, jpeg, and png.  

If you don't want to upload custom images or use the images that appear in the app, click **Continue without personalization**. This option does not apply any customizations, and instead uses the devices' default or preset images.  

   ![Example image of the Set up School PCs app, Personalization screen, showing the default desktop and lock screen background photos, a Browse button under each photo, a blue Next button, and a Continue without personalization button.](images/1810_SUSPC_personalization.png)  


### Summary  
Review all of the settings for accuracy and completeness. Check carefully. To make changes to a saved package, you have to start over.
1. To make changes now, click any page along the left side of the window.  
2. When finished, click **Accept**.  

      ![Example image of the Summary screen, showing the user's configurations for Sign-in, Wireless network, Device names, Settings, Time zone, Take a Test. Accept button is available and the page contains three links on the right-hand side to help and support.](images/1810_SUSPC_summary.png)  

### Insert USB
1. Insert a USB drive. The **Save** button will light up when your computer detects the USB.  
2. Choose your USB drive from the list and click **Save**.

      ![Insert a USB drive now screen with USB drive selection highlighted. Save button is blue and active.](images/1810_SUSPC_USB.png)

3. When the package is ready, you'll see the filename and package expiration date. You can also click **Add a USB** to save the same provisioning package to another USB drive. When you're done, remove the USB drive and click **Next**. 

      ![Your provisioning package is ready screen with package filename and expiration date. Shows an active blue, Next button, and a gray Add a USB button.](images/1810_SUSPC_Package_ready.png)  

## Run package - Get PCs ready  
Complete each step on the **Get PCs ready** page to prepare student PCs for set-up. Then click **Next**.  
   
  ![Your provisioning package is ready! screen with 3 steps to get student PCs ready for setup. Save button is active.](images/suspc_runpackage_getpcsready.png)  

## Run package - Install package on PC

The provisioning package on your USB drive is named SetupSchoolPCs_<*devicename*>(Expires <*expiration date*>.ppkg. A provisioning package applies settings to Windows 10 without reimaging the device. 

When used in context of the Set up School PCs app, the word *package* refers to your provisioning package. The word *provisioning* refers to the act of installing the package on the student PC. This section describes how to apply the settings to a PC in your school.  

> [!IMPORTANT]
> The PC must have a new or reset Windows 10 image and must not already have been through first-run setup (also referred to as OOBE). For instructions about how to reset a computer's image, see [Prepare existing PC account for new setup](use-set-up-school-pcs-app.md#prepare-existing-pc-account-for-new-setup).  

1.  Start with the student PC turned off or with the PC on the first-run setup screen. In Windows 10 version 1803, the first-run setup screen reads, **Let's start with region. Is this right?** 

    If the PC has gone past the account setup screen, reset the PC to start over. To reset the PC, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.  

       ![Example screenshot of the first screen the Windows 10 PC setup for OOBE. United States is selected as the region and the Yes button is active.](images/win10_1703_oobe_firstscreen.png)  
  
2. Insert the USB drive. Windows automatically recognizes and installs the package.  
   
     ![Screen showing that the installation is automatically beginning, with a loading bar showing the status on the installation.](images/suspc_studentpcsetup_installingsetupfile.png)  
3. When you receive the message that it's okay to remove the USB drive, remove it from the PC. If there are more PCs to set up, insert the USB drive into the next PC.  

     ![Screen with message telling user to remove the USB drive.](images/suspc_setup_removemediamessage.png)  

4. If you didn't set up the package with Azure AD Join, continue the Windows device setup experience.  If you did configure the package with Azure AD Join, the computer is ready for use and no further configurations are required.  

      If successful, you'll see a setup complete message. The PCs start up on the lock screen, with your school's custom background. Upon first use, students and teachers can connect to your school's network and resources.


