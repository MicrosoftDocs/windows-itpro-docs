---
title: Improve visual quality and comfort
description: Calibrating your IPD (interpupillary distance) can improve the quality of your visuals. Both HoloLens and Windows Mixed Reality immersive headsets offer ways to customize IPD.
author: Teresa-Motiv
ms.author: xerxesb
ms.date: 9/13/2019
ms.topic: article
keywords: calibration, comfort, visuals, quality, ipd
ms.prod: hololens
ms.sitesec: library
author: Teresa-Motiv
ms.localizationpriority: high
ms.reviewer: 
manager: jarrettr
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Improve visual quality and comfort

HoloLens 2 and HoloLens (1st gen) both work better when they're calibrated to your unique eyes.

While both devices need to calibrate for the best hologram viewing experience, they use different calibration technologies and techniques.  Jump to [HoloLens 2 calibration](#calibrating-your-hololens-2) or [HoloLens (1st gen) calibration](#calibrating-your-hololens-1st-gen).

## Calibrating your HoloLens 2

HoloLens 2 uses eye-tracking technology to improve your experience seeing and interacting with the virtual environment. Calibrating the HoloLens 2 ensures that it can accurately track your eyes (and the eyes of anyone else who uses the device). It also helps with user comfort, hologram alignment, and hand tracking. After calibration, holograms will appear correctly even as the visor shifts on your head.

HoloLens 2 prompts a user to calibrate the device under the following circumstances:

- The user is using the device for the first time
- The user previously opted out of the calibration process
- The calibration process did not succeed the last time the user used the device
- The user has deleted their calibration profiles
- The device is taken off and put back on and any of the above circumstances apply 


![Calibration prompt](./images/07-et-adjust-for-your-eyes.png)

During this process, you'll look at a set of targets (gems). It's fine if you blink during calibration, but try to stay focused on the gems instead of other objects in the room.  This allows HoloLens to learn about your eye position to render your holographic world.

![Calibration prompt](./images/07-et-hold-head-still.png)

![Calibration prompt](./images/08-et-gems.png)

![Calibration prompt](./images/09-et-adjusting.png)

If calibration was successful, you'll see a success screen.  If not, read more about diagnosing calibration failures [here](#troubleshooting-hololens-2-calibration).

![Calibration prompt](./images/10-et-success.png)

### Calibration when sharing a device or session

Multiple users can share a HoloLens 2 device, without a need for each person to go through device setup. When a new user puts the device on their head for the first time, HoloLens 2 automatically prompts the user to calibrate visuals. When a user that has previously calibrated visuals puts the device on their head, the display seamlessly adjusts for quality and a comfortable viewing experience.  

### Manually starting the calibration process

1. Use the start gesture to open the [**Start** menu](hololens2-basic-usage.md#start-gesture).
1. If the Settings app isn't pinned to **Start**, select **All Apps**.
1. Select **Settings**, and then select **System** > **Calibration** > **Eye Calibration** > **Run eye calibration**.

   ![The Settings app, showing the Run eye calibration option](./images/C-Settings.Calibration.png)

### Troubleshooting HoloLens 2 calibration

Calibration should work for most people, but there are cases where calibration fails.
  
Some potential reasons for calibration failure include:

- Getting distracted and not following the calibration targets
- Dirty or scratched device visor or device visor not positioned properly
- Dirty or scratched glasses
- Certain types of contact lenses and glasses (colored contact lenses, some toric contact lenses, IR blocking glasses, some high prescription glasses, sunglasses, or similar)
- More-pronounced makeup and some eyelash extensions
- Hair or thick eyeglass frames if they are blocking the device from seeing your eyes
- Certain eye physiology, eye conditions or eye surgery such as narrow eyes, long eyelashes, amblyopia, nystagmus, some cases of LASIK or other eye surgeries

If calibration is unsuccessful try:

- Cleaning your device visor
- Cleaning your glasses
- Pushing your device visor as close to your eyes as possible
- Moving objects in your visor out of the way (such as hair)
- Turning on a light in your room or moving out of direct sunlight

If you followed all guidelines and calibration is still failing, you can disable the calibration prompt in Settings. Please also let us know by filing feedback in [Feedback Hub](hololens-feedback.md).

Note that setting IPD is not applicable for Hololens 2, since eye positions are computed by the system. 

### Calibration data and security

Calibration information is stored locally on the device and is not associated with any account information. There is no record of who has used the device without calibration. This mean new users will get prompted to calibrate visuals when they use the device for the first time, as well as users who opted out of calibration previously or if calibration was unsuccessful.

The device can locally store up to 50 calibration profiles. After this number is reached, the device automatically deletes the oldest unused profile.

Calibration information can always be deleted from the device in **Settings** > **Privacy** > **Eye tracker**.  

### Disable calibration

You can also disable the calibration prompt by following these steps:

1. Select **Settings** > **System** > **Calibration**.
1. Turn off **When a new person uses this HoloLens, automatically ask to run eye calibration**.

> [!IMPORTANT]
> This setting may adversely affect hologram rendering quality and comfort.  When you turn off this setting, features that depend on eye tracking (such as text scrolling) no longer work in immersive applications.

### HoloLens 2 eye-tracking technology

The device uses its eye-tracking technology to improve display quality, and to ensure that all holograms are positioned accurately and comfortable to view in 3D. Because it uses the eyes as landmarks, the device can adjust itself for every user and tune its visuals as the headset shifts slightly throughout use.  All adjustments happen on the fly without a need for manual tuning.
> [!NOTE]
> Setting the IPD is not applicable for Hololens 2, since eye positions are computed by the system.

HoloLens applications use eye tracking to track where you are looking in real time. This is the main capability developers can leverage to enable a whole new level of context, human understanding and interactions within the Holographic experience. Developers don’t need to do anything to leverage this capability.

## Calibrating your HoloLens (1st gen)

HoloLens (1st gen) adjusts hologram display according to the your [interpupillary distance](https://en.wikipedia.org/wiki/Interpupillary_distance) (IPD). If the IPD is not accurate, holograms may appear unstable or at an incorrect distance. You can improve the quality of your visuals by calibrating the device to your interpupillary distance (IPD).

When you set up your Hololens (1st gen) device, it prompts to calibrate your visuals after Cortana introduces herself. It's recommended that you complete the calibration step during this setup phase. However you can skip it by waiting until Cortana prompts you and then saying "Skip."

During the calibration process, HoloLens asks you to align your finger with a series of six targets per eye. HoloLens uses this process to set the IPD correctly for your eyes.

![IPD finger-alignment screen at second step](./images/ipd-finger-alignment-300px.jpg)

### Manually start the calibration process

If you need to update the calibration or if a new user needs to adjust it, you can manually run the Calibration app at any time. The Calibration app is installed by default. You can access it by using eihter the **Start** menu or the Settings app.

To use the **Start** menu to run the Calibration app, follow these steps:

1. Use the [bloom](hololens1-basic-usage.md) gesture to open the **Start** menu.
1. To view all apps, select **+**.
1. Select **Calibration**.

![Accessing the calibration app from the shell](./images/calibration-shell.png)

![The calibration app displayed as a Live Cube after being launched](./images/calibration-livecube-200px.png)

To use the Settings app to run the Calibration app, follow these steps:

1. Use the [bloom](hololens1-basic-usage.md) gesture to open the **Start** menu.
1. If **Settings** isn't pinned to **Start**, select **+** to view all apps.
1. Select **Settings**.
1. Select **System** > **Utilities** > **Open Calibration**.

![Launching the calibration app from the settings app](./images/calibration-settings-500px.jpg)

## Immersive headsets

Some immersive headsets provide the ability to customize the IPD setting. To change the IPD for your headset, open the Settings app and select **Mixed reality** > **Headset display**, and then move the slider control. You’ll see the changes in real time in your headset. If you know your IPD, maybe from a visit to the optometrist, you can enter it directly as well.

You can also adjust this setting on your PC by selecting **Settings** > **Mixed reality** > **Headset display**.

If your headset does not support IPD customization, this setting will be disabled.
