---
title: Use Set up School PCs app
description: Learn how to use the Set up School PCs app and apply the provisioning package.
ms.topic: how-to
ms.date: 07/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Use the Set up School PCs app

IT administrators and technical teachers can use the **Set up School PCs** app to quickly set up Windows devices for students. During setup, student devices can be enrolled in Microsoft Intune, so that you can manage all the settings the app configures through Intune.

With Set up School PCs you can:

- Joins student devices to your organization's Microsoft Entra tenant
- Enable the optional Autopilot Reset feature, to return devices to a fully configured or known IT-approved state
- Use Windows Update and maintenance hours to keep student devices up-to-date, without interfering with class time
- Lock down student devices to prevent activity that aren't beneficial to their education

This article describes how to use the Set up School PCs app. To learn more about the app's functionality, review the [Technical reference for the Set up School PCs app](reference.md).

:::image type="content" source="images/splash-screen.png" alt-text="Screenshot of the SUSPCs splash screen." border="false":::

## Requirements

Before you begin, make sure that your devices and your school's network are configured with the following requirements:

- Microsoft Entra ID and Microsoft 365 licenses
- [Latest Set up School PCs app](https://apps.microsoft.com/detail/9NBLGGH4LS40)
- A NTFS-formatted USB drive that is at least 1 GB
- Student devices must either:
  - Be within range of the Wi-Fi network that you configured in the app
  - Have a wired Ethernet connection when you set them up

### Prepare existing PC account for new setup

Apply new packages to factory reset or new devices. If you apply it to a device that's already set up, you may lose the accounts and data.

If a device is already set up, and you want to apply a new package, reset the device to a clean state. To reset a device, follow these steps:

1. Open the **Settings** app on target device
1. Select **Update & Security** > **Recovery**
1. In the **Reset this PC** section, select **Get started**
1. Select **Remove everything**

Alternatively, you can also select **Start** > **Power** icon. Hold down <kbd>Shift</kbd> while selecting **Restart** to load the Windows boot user experience:

1. Select **Troubleshoot** > **Reset this PC**
1. Select **Remove everything**
1. If the option appears, select **Only the drive where Windows is installed**
1. Select **Just remove my files**
1. Select **Reset**

## Recommendations

This section offers recommendations to prepare you for the best possible setup experience.

### Run the same Windows build on the admin device and the student devices

We recommend you run the IT administrator or technical teacher's device on the same Windows build as the student devices.

### Student devices must meet OS requirements for the app

Check the OS requirements in the Set up School PCs app. We recommend using the latest Set up School PCs app along with the latest Windows images on the student devices.

To check the app's OS requirements, go to the Microsoft Store and locate the Set up School PCs app. In the app's description, go to **System Requirements** > **OS**.

### Use app on a PC that is connected to your school's network

We recommend that you run the Set up School PCs app on a computer that's connected to your school's network. That way the app can gather accurate information about your school's wireless networks and cloud subscriptions. If it's not connected, you need to enter the information manually.

>[!NOTE]
>Don't use the **Set up Schools PCs** app for devices that must connect to enterprise or open Wi-Fi networds that require the user to accept Terms of Use.

### Run app on an open network or network that requires a basic password

Don't use Set up School PCs over a certificate-based network, or one where you have to enter credentials in a browser. If you need to set up many devices over Wi-Fi, make sure that your network configuration can support it.

We recommend that you:

- Configure your DHCP so at least 200 IP addresses are available for your devices. Having available IP addresses allow you to set up many devices simultaneously
- Configure your IP addresses to expire after a short time, for example 30 minutes. IP addresses free up quickly so you can continue to set up devices without network issues.

>[!WARNING]
>Only use the provisioning package on devices that you want to configure and lock down for students. After you apply the provisioning package to a student device, the PC must be reset to remove the settings.

### Use an additional USB drive

To set up more than one PC at the same time, save the provisioning package to additional USB drives. Then plug the USBs in at the same time during setup.

### Limit changes to school-optimized settings

We strongly recommend that you avoid changing preset policies. Changes can slow down setup, performance, and the time it takes to sign in.

## Create the provisioning package

The **Set up School PCs** app guides you through the configuration choices for the student PCs.  To begin, open the app on your device and select **Get started**.

:::image type="content" source="images/landing-page.png" alt-text="Screenshot of the SUSPCs landing page." border="false":::

:::row:::
  :::column span="1":::
        ### Package name
    :::column-end:::
  :::column span="3":::
Type a unique name to help distinguish your school's provisioning packages. The name appears:

- On the local package folder
- In your tenant's Microsoft Entra account in the Azure portal

A package expiration date is also attached to the end of each package. For example, *Set_Up_School_PCs (Expires 1-1-2024)*. The expiration date is 180 days after you create your package.

After you select **Next**, you can no longer change the name in the app. To create a package with a different name, reopen the Set up School PCs app.

To change an existing package's name, right-click the package folder on your device and select **Rename**. This action doesn't change the name in Microsoft Entra ID. You can access to the [Microsoft Entra admin center](https://entra.microsoft.com) as at least a [User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator), and rename the package there.<br><br>
    :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::


### Connect your school's account
    :::column-end:::
  :::column span="3":::
1. Select how you want to sign in
    1. (Recommended) To enable student device to automatically connect and authenticate to Microsoft Entra ID, and management services like Microsoft Intune, select **Sign-in**. Then go to step 3
    1. To complete setup without signing in, select **Continue without account**. Student devices won't connect to your school's cloud services and their management will be more difficult later. Continue to [Select a wireless network](#select-a-wireless-network)
1. In the new window, select the account you want to use throughout setup.

    To add an account not listed:
    1. Select **Work or school account** > **Continue**.
    1. Type in the account username and select **Next**.
    1. Verify the user account and password, if prompted.

1. Select **Accept** to allow Set up School PCs to access your account throughout setup
1. When your account name appears on the page, select **Next** <br><br>
    :::column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Select a wireless network


    :::column-end:::
  :::column span="3":::
Add and save the wireless network profile that you want student devices to connect to. Only skip Wi-Fi setup if you have an Ethernet connection.

Select your organization's Wi-Fi network from the list of available wireless networks, or select **Add a wireless network** to manually configure it. Then select **Next**.<br><br>
    :::column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Configure device settings
    :::column-end:::
  :::column span="3":::
Select more settings to include in the provisioning package. To begin, select the operating system on your student PCs.

Setting selections vary based on the OS version you select.

The following table describes each setting and lists the applicable Windows 10 versions. To find out if a setting is available in your version of Windows 10, look for an *X* in the setting row and in the version column.

| Setting | What happens if I select it? | Note |
|--|--|--|
| Remove apps preinstalled by the device manufacturer | Uninstalls apps that came loaded on the computer by the device's manufacturer. | Adds about 30 minutes to the provisioning process. |
| Allow local storage (not recommended for shared devices) | Lets students save files to the Desktop and Documents folder on the Student PC. | Not recommended if the device are shared between different students. |
| Optimize device for a single student, instead of a shared cart or lab | Optimizes the device for use by a single student, rather than many students. | Recommended if the device are shared between different students. Single-optimized accounts are set to expire, and require a sign-in, 180 days after setup. This setting increases the maximum PC storage to 100% of the available disk space. In this case, student accounts aren't deleted unless the account has been inactive for 180 days. |
| Let guests sign in to these PCs | Allows guests to use student PCs without a school account. | Common to use within a public, shared space, such as a library. Also used when a student loses their password. Adds a **Guest** account to the PC sign-in screen that anyone can sign in to. |
| Enable Autopilot Reset | Lets you remotely reset a student's PC from the lock screen, apply the device's original settings, and enroll it in device management (Microsoft Entra ID and MDM). | WinRE must be enabled on the device. |
| Lock screen background | Change the default screen lock background to a custom image. | Select **Browse** to search for an image file on your computer. Accepted image formats are jpg, jpeg, and png. |

After you've made your selections, select **Next**.<br><br>
    :::column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Name devices
    :::column-end:::
  :::column span="3":::
Create a name to add as a prefix to each device. This name helps you recognize and manage this group of devices in Intune.

To make sure all device names are unique, Set up School PCs automatically appends `_%SERIAL%` to the name. For example, if you add *MATH4* as the prefix, the device names appear as *MATH4* followed by the device serial number.

To keep the default name for your devices, select **Continue with existing names**.<br><br>
    :::column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Select time zone
    :::column-end:::
  :::column span="3":::
> [!WARNING]
> If you are using the Autounattend.xml file to reimage your school PCs, do not specify a time zone in the file. If you set the time zone in the file *and* in this app, you will encounter an error.

Choose the time zone where your school's devices are used. This setting ensures that all PCs are provisioned in the same time zone. When you're done, select **Next**.<br><br>
    :::column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Change product key
    :::column-end:::
  :::column span="3":::
Optionally, type in a 25-digit product key to upgrade or change the edition of Windows on your student devices. If you don't have a product key, select **Continue without change**.<br><br>
    :::column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Set up the Take a Test app
    :::column-end:::
  :::column span="3":::

   Set up the Take a Test app to give online quizzes and high-stakes assessments. During assessments, Windows locks down the student devices so that students can't access anything else on the device.

1. Select **Yes** to create a Take a Test button on the sign-in screens of your students' devices

1. Select from the advanced settings. Available settings include:
    - Allow keyboard auto-suggestions: Allows app to suggest words as the student types on the device's keyboard
    - Allow teachers to monitor online tests: Enables screen capture in the Take a Test app
1. Enter the URL where the test is hosted. When students log in to the Take a Test account, they'll be able to select or enter the link to view the assessment
1. Select **Next**<br><br>
column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Choose backgrounds
    :::column-end:::
  :::column span="3":::

Upload custom images to replace the student devices' default desktop and lock screen backgrounds. Select **Browse** to search for an image file on your computer. Accepted image formats are jpg, jpeg, and png.

If you don't want to upload custom images or use the images that appear in the app, select **Continue without personalization**. This option doesn't apply any customizations, and instead uses the devices' default or preset images.<br><br>
    :::column-end:::
:::row-end:::


:::row:::
  :::column span="1":::
#### Summary
    :::column-end:::
  :::column span="3":::
Review all of the settings for accuracy and completeness

1. To make changes now, select any page along the left side of the window
2. When finished, select **Accept**

> [!NOTE]
> To make changes to a saved package, you have to start over.

<br><br>
    :::column-end:::
:::row-end:::

:::row:::
  :::column span="1":::

#### Save the package
    :::column-end:::
  :::column span="3":::
1. Insert a USB drive. The **Save** button lights up when your computer detects the USB
1. Choose your USB drive from the list and select **Save**
1. When the package is ready, you see the filename and package expiration date. You can also select **Add a USB** to save the same provisioning package to another USB drive. When you're done, remove the USB drive and select **Next**<br><br>
    :::column-end:::
:::row-end:::

## Run package - Get PCs ready

Complete each step on the **Get PCs ready** page to prepare student devices for set-up. Then select **Next**.

## Run package - Install package on PC

The provisioning package on your USB drive is named SetupSchoolPCs_<*devicename*>(Expires <*expiration date*>.ppkg. A provisioning package applies settings to Windows without reimaging the device.

When used in context of the Set up School PCs app, the word *package* refers to your provisioning package. The word *provisioning* refers to the act of installing the package on the student device. This section describes how to apply the settings to a device in your school.

> [!IMPORTANT]
> The devices must have a new or reset Windows image and must not already have been through first-run setup experience (which is referred to as *OOBE*). For instructions about how to reset a devices's image, see [Prepare existing PC account for new setup](#prepare-existing-pc-account-for-new-setup).

1. Start with the student device turned off or with the device on the first-run setup screen. If the device is past the account setup screen, reset the device to start over. To reset the it, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**
1. Insert the USB drive. Windows automatically recognizes and installs the package
1. When you receive the message that it's okay to remove the USB drive, remove it from the device. If there are more devices to set up, insert the USB drive into the next one
1. If you didn't set up the package with Microsoft Entra join, continue the Windows device setup experience. If you did configure the package with Microsoft Entra join, the device is ready for use and no further configurations are required

If successful, you'll see a setup complete message. The PCs start up on the lock screen, with your school's custom background. Upon first use, students and teachers can connect to your school's network and resources.
