---
title: Insider preview for Microsoft HoloLens
description: It's simple to get started with Insider builds and to provide valuable feedback for our next major operating system update for HoloLens.
ms.prod: hololens
ms.sitesec: library
author: scooley
ms.author: scooley
ms.topic: article
ms.custom: 
- CI 111456
- CSSTroubleshooting
ms.localizationpriority: medium
audience: ITPro
ms.date: 4/14/2020
ms.reviewer: 
manager: laurawi
appliesto:
- HoloLens 2
---

# Insider preview for Microsoft HoloLens

Welcome to the latest Insider Preview builds for HoloLens!  It's simple to get started and provide valuable feedback for our next major operating system update for HoloLens.

## Start receiving Insider builds

On a HoloLens 2 device go to **Settings** -> **Update & Security** -> **Windows Insider Program** and select **Get started**. Link the account you used to register as a Windows Insider.

Then, select **Active development of Windows**, choose whether you'd like to receive **Fast** or **Slow** builds, and review the program terms.

Select **Confirm -> Restart Now** to finish up. After your device has rebooted, go to **Settings -> Update & Security -> Check for updates** to get the latest build.

## Stop receiving Insider builds

If you no longer want to receive Insider builds of Windows Holographic, you can opt out when your HoloLens is running a production build, or you can [recover your device](hololens-recovery.md) using the Advanced Recovery Companion to recover your device to a non-Insider version of Windows Holographic.

To verify that your HoloLens is running a production build:

1. Go to **Settings > System > About**, and find the build number.
1. [See the release notes for production build numbers.](hololens-release-notes.md)

To opt out of Insider builds:

1. On a HoloLens running a production build, go to **Settings > Update & Security > Windows Insider Program**, and select **Stop Insider builds**.
1. Follow the instructions to opt out your device.

## Provide feedback and report issues

Please use [the Feedback Hub app](hololens-feedback.md) on your HoloLens to provide feedback and report issues. Using Feedback Hub ensures that all necessary diagnostics information is included to help our engineers quickly debug and resolve the problem.  Issues with the Chinese and Japanese version of HoloLens should be reported the same way.

> [!NOTE]
> Be sure to accept the prompt that asks whether you'd like Feedback Hub to access your Documents folder (select **Yes** when prompted).

## Note for developers

You are welcome and encouraged to try developing your applications using Insider builds of HoloLens.  Check out the [HoloLens Developer Documentation](https://developer.microsoft.com/windows/mixed-reality/development) to get started. Those same instructions work with Insider builds of HoloLens.  You can use the same builds of Unity and Visual Studio that you're already using for HoloLens development.


## Windows Insider Release Notes

HoloLens 2 Windows Insider builds are full of new features and improvements.  Sign up for Windows Insider Fast or Slow flights to test them out!
Here's a quick summary of what's new:

- Support for FIDO2 Security Keys to enable secure and easy authentication for shared devices
- Seamlessly apply a provisioning package from a USB drive to your HoloLens
- Use a provisioning packages to enroll your HoloLens to your Mobile Device Management system
- Use Windows Autopilot to set up and pre-configure new devices, quickly getting them ready for productive use. To participate in the program you'll need to meet a few requirements. While the program is in preview mode you'll need to be using Microsoft Intune. You'll need to use a tenant that is flighted for HoloLens. Lastly you'll need to have installed an insider preview buildon your HoloLens 2. To praticipate in the preview of this new program send a note to hlappreview@microsoft.com to join the preview.
- Dark Mode - HoloLens customers can now choose the default mode for apps that support both color schemes! Based on customer feedback, with this update we are setting the default app mode to "dark," but you can easily change this setting at any time.
- Support for additional system voice commands
- An updated Cortana app with a focus on productivity
- Hand Tracking improvements to reduce the tendency to close the index finger when pointing. This should make button pressing and 2D slate usage feel more accurate
- Performance and stability improvements across the product
- More information in settings on HoloLens about the policy pushed to the device

Once you've had a chance to explore these new capabilities, use the Feedback Hub app to let us know what you think. Feedback you provide in the Feedback Hub goes directly to our engineers.

### FIDO 2 support
Many of you share a HoloLens with lots of people in a work or school environment.  Whether devices are shared between students in a classroom or they're checked out from a device locker, it's important to be able to change users quickly and easily without typing long user names and passwords.  FIDO lets anyone in your organization (AAD tenant) seamlessly sign in to HoloLens without entering a username or password.

Read the [passwordless security docs](https://docs.microsoft.com/azure/active-directory/authentication/howto-authentication-passwordless-security-key) to get started.

### Provisioning package updates
Provisioning packages let you set HoloLens configuration through a config file rather than going through the HoloLens out of box experience.  Previously, provisioning packages had to be copied onto HoloLens' internal memory, now they can be on a USB drive so they're easier to re-use on multiple HoloLens and so more people can provision HoloLens in parallel.

1. To try it out, download the latest version of the Windows Configuration Designer from the Windows store onto your PC.  
1. Select **Provision HoloLens Devices** > Select **Provision HoloLens 2 devices**
1. Build your configuration profile and, when you're done, copy all files created to a USB-C storage device.
1. Plug it into any freshly flashed HoloLens and press **Volume down + Power** to apply your provisioning package.

### System voice commands
You can now can access these commands with your voice:
- "Restart device"
- "Shutdown device"
- "Brightness up"
- "Brightness down"
- "Volume up"
- "Volume down"
- "What is my IP address?"
- "Take a picture"
- "Take a video" / "Stop recording"

If you're running your system with a different language, please try the appropriate commands in that language.

### Cortana updates
The updated app integrates with Microsoft 365, currently in English (United States) only, to help you get more done across your devices. On HoloLens 2, Cortana will no longer support certain device-specific commands like adjusting the volume or restarting the device, which are now supported with the new system voice commands above. Learn more about the new Cortana app and its direction on our blog [here](https://blogs.windows.com/windowsexperience/2020/02/28/cortana-in-the-upcoming-windows-10-release-focused-on-your-productivity-with-enhanced-security-and-privacy/). 

There's currently an issue we're investigating that requires you to launch the app once after booting the device in order to use the "Hey Cortana" keyword activation, and if you updated from a 18362 build, you may see an app tile for the previous version of the Cortana app in Start that no longer works. 

### Dark mode
Many Windows apps support both dark and light modes, and now HoloLens customers can choose the default mode for apps that support both. Once updated, the default app mode will be "dark," but can be changed easily. Navigate to **Settings > System > Colors to find "Choose your default app mode."**
Here are some of the in-box apps that support Dark mode!
- Settings
- Microsoft Store
- Mail
- Calendar
- File Explorer
- Feedback Hub
- OneDrive
- Photos
- 3D Viewer
- Movies & TV

### Windows Autopilot for HoloLens 2

This Autopilot program supports Autopilot self-deploying mode to provision HoloLens 2 devices as shared devices under your tenant. Self-deploying mode leverages the device's preinstalled OEM image and drivers during the provisioning process. A user can provision the device without putting the device on and going through the Out-of-the-box Experience (OOBE).

When a user starts the Autopilot self-deploying process, the process completes the following steps:
1. Join the device to Azure Active Directory (Azure AD). 
2. Use Azure AD to enroll the device in Microsoft Intune (or another MDM service).
3. Download the device-targeted policies, certificates, and networking profiles.
4. Provision the device.
5. Present the sign-in screen to the user.

For full information about Autopilot, see [Windows Autopilot for HoloLens 2 evaluation guide](hololens2-autopilot.md).

### FFU download and flash directions
To test with a flight signed ffu, you first have to flight unlock your device prior to flashing the flight signed ffu.
1. On PC
    1. Download ffu to your PC from: [https://aka.ms/hololenspreviewdownload](https://aka.ms/hololenspreviewdownload)
    1. Install ARC (Advanced Recovery Companion) from the Microsoft Store: [https://www.microsoft.com/store/productId/9P74Z35SFRS8](https://www.microsoft.com/store/productId/9P74Z35SFRS8) 
1. On HoloLens - Flight Unlock: Open **Settings** > **Update & Security** > **Windows Insider Program** then sign up, reboot device
1. Flash FFU - Now you can flash the flight signed FFU using ARC 
