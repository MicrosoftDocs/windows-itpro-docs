---
title: Use Set up School PCs app
description: Learn how the Set up School PCs app works and how to use it.
keywords: ["shared cart", "shared PC", "school"]
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: library
author: jdeckerMS
---

# Use the Set up School PCs app
**Applies to:**

-   Windows 10 Insider Preview 


> <span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. ]</span>

Teachers and IT administrators can use the **Set up School PCs** app to quickly set up computers for students. A computer set up using the app is tailored to provide students with the tools they need for learning while removing apps and features that they don't need.

![Run app, turn on PC, insert USB key](images/app1.jpg)

## What does this app do?

The Set up School PCs app helps you set up new computers running Windows 10, version 1607. Some benefits of using this app to set up your students' PCs:
* A computer set up this way is tailored to provide students with the tools they need for learning while removing apps and features that they don't need. 
    * Places tiles for OneNote, Office 365 web apps, and Microsoft Classroom on the Start menu
    * Installs OneDrive for cloud-based documents and places it on the Start menu and task bar 
    * Sets Microsoft Edge as the default browser
    * Uninstalls apps not specific to education, such as Solitaire and Sports
    * Turns off Offers and tips
    * Prevents students from adding personal Microsoft accounts to the computer
* Significantly improves how fast a student's first sign-in happens.
* The app connects the PCs to your school’s cloud so IT can manage them.
* Windows 10 automatically manages accounts no matter how many students use the PC.
* Keeps computers up-to-date without interfering with class time using Windows Update and maintenance hours (by default, 12 AM).
* Customizes the sign-in screen to support students with IDs and temporary users.
* Automatically manages account profiles on shared computers to maintain performance
* Locks down the computer to prevent mischievous activity:
    * Prevents students from installing apps
    * Prevents students from removing the computer from the school's device management system
    * Prevents students from removing the Set up School PCs settings


## Tips for success

* **Run the app at work**: For the best results, run the **Set up School PCs** app on your work device connected to your school's network. That way the app can gather accurate information about your wireless networks and cloud subscriptions.
* **Apply to new computers**: The setup file that the **Set up School PCs** app creates should be used on new computers that haven't been set up for accounts yet. If you apply the setup file to a computer that has already been set up, existing accounts and data might be lost.
> **Warning**: Only use the setup file on computers that you want to configure and lock down for students. After you apply the setup file to a computer, the computer must be reset to remove the settings.
* **Turn on student PCs and stay on first screen**: The computer must be on this screen when you insert the USB key.

![The first screen to set up a new PC](images/oobe.jpg)

If you have gone past this screen, you may have to reset your PC to start over.  To reset your PC after you have completed the first run experience, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.
* **Use more than one USB key**: If you are setting up multiple PCs, you can set them up at the same time.  Just run the **Set up School PCs** app again and save the same settings to another key. That way you can run set up on more than one PC at once.  Create three keys and you can run it on three PCs at once, etc. 
* **Start fresh**: If the PC has already been set up and you want to return to the first-run-experience to apply a new package, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.
* **Keep it clean**:  We strongly recommend that IT avoid changes to policies unless absolutely necessary, as any changes can impair performance and sign-in time.

## Set up School PCs app step-by-step

The setup file on your USB drive is named SetupSchoolPCs.ppkg, which is a provisioning package. A provisioning package is a method for applying settings to Windows 10. When Windows 10 refers to "package", it means your setup file, and when it refers to "provisioning", it means applying the setup file to the computer.

1. Start with a computer on the first-run setup screen. 

    ![The first screen to set up a new PC](images/oobe.jpg)

2. Insert the USB drive. Windows Setup will recognize the drive and ask you if you want to set up the device. Select Set up.

    ![Set up device?](images/setupmsg.jpg)

3. The next screen asks you to select a provisioning source. Select **Removable Media** and tap **Next**.

    ![Provision this device](images/prov.jpg)

4. Read and accept the Microsoft Software License Terms. Your last step is to sign in. Use your Azure AD or Office 365 account and password. 

    ![Sign in](images/signinprov.jpg)
    
That's it! The computer is now ready for students.

## Learn more

See [The Set up School PCs app technical reference](set-up-school-pcs-technical.md) for prerequisites and provisioning details. 

