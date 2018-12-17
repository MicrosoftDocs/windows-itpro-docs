---
title: Optimizing power management for Surface devices 
description: This topic explains best practice recommendations for maintaining optimal power settings on your Surface device. 
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: coveminer
ms.author: v-jokai
ms.topic: article
ms.date: 12/17/2018
---
#Optimizing power management for Surface devices 
This topic explains best practice recommendations for maintaining
optimal power settings on your Surface device.

  - [Windows performance power slider ](\\l)

  - [Modern Standby](#modern-standby)

  - [Connected standby for always-on computing](#connected-standby)

  - [Disconnected standby for longer battery
    life](#disconnected-standby)

  - [Changing hibernation timeout](#changing-hibernation-timeout)

  - [Changing settings in Advanced power
    options](#changing-settings-in-advanced-power-options)

  - [Changing settings in Group
    Policy](#changing-settings-in-group-policy)

# Using the Windows performance power slider

Surface devices running Windows 10 build 1709and later, provide an
option to directly control power consumption for the CPU and hardware
components. Power slider settings — consisting of four slider modes do
not change any of the power settings in the operating system
(configurable via advanced power options or via Group
Policy).

| Slider mode        | Description                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Battery Saver      | Helps conserve power, and prolong battery life, when the system is not connected to a power source. When battery saver is on, some Windows features are disabled, throttled, or behave differently. Screen brightness is also reduced. Battery Saver is only available when using battery power (DC). To learn more, see [Battery Saver](https://docs.microsoft.com/en-us/windows-hardware/design/component-guidelines/battery-saver). |
| Recommended        | Delivers longer battery life than the default settings on previous versions of Windows. In some cases, users will see this mode labeled **Better Battery**.                                                                                                                                                                                                                                                                            |
| Better Performance | Default slider mode that slightly favors performance over battery life and is appropriate for users who want to exchange power for better app performance.                                                                                                                                                                                                                                                                             |
| Best Performance   | Favors performance over power, designed for users requiring maximum performance and responsiveness without regard for battery power consumption.                                                                                                                                                                                                                                                                                       |

To learn more, see:

  - [Customize the Windows performance power
    slider](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/customize-power-slider)

  - [Battery
    saver.](https://docs.microsoft.com/en-us/windows-hardware/design/component-guidelines/battery-saver)

# Modern Standby

Surface is designed as a modern standby device, dynamically fine-tuning
power management of individual hardware components. Modern standby
enables an instant on experience like smartphones.

It consists of two modes:

  - [Connected Standby](#connected-standby)

  - [Disconnected Standby](#disconnected-standby)

# Connected Standby

In contrast to traditional sleep modes — ACPI Sleep (S3) and Hibernate
(S4) States — that shut off all system activity when the device screen
is off, Connected Standby maintains network connectivity and syncs with
the cloud.

For example, when you get email or your applications receive data over
the network, Connected Standby powers components only while actively
processing incoming data.

By managing power consumption directly at the individual hardware
component level, fine-tunes power consumption by waking up small
portions of the system for short time spans to handle background tasks
such as an incoming email or network traffic before returning to
(S0), also known as Deepest Runtime Idle Platform State (DRIPS). It is
the default power mode for Surface devices except for Surface Studio.

![A close up of electronics Description automatically
generated](media/image1.png)

**Figure 1.** Power management and core components in Surface Pro

To learn more, see:

  - [Modern
    Standby](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/modern-standby)

  - [Modern Standby Wake
    Sources](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/modern-standby-wake-sources)

# Disconnected Standby

Disconnected standby extends battery life by disabling Wi-Fi, Bluetooth,
and other network traffic when you close the lid on your Surface.

**To enable Disconnected Standby:**

1.  Click **PC settings** \> **System** \> **Power & sleep**.

2.  Under Network connection, for the setting **When my PC is asleep and
    on battery power, disconnect from the network**, select **Always**.

![A screenshot of a cell phone Description automatically
generated](media/image2.png)

Figure 2. Disconnected Standby

# Changing settings in Advanced power options

You can adjust settings for various preferences such as how long it
takes for the screen to turn off when you step away from the device or
what happens when you close the lid on your device – sleep (default) or
do nothing, hibernate, or shutdown. You can also adjust notification
settings that are triggered when battery power drops below a certain
threshold as shown below.

![A screenshot of a cell phone Description automatically
generated](media/image3.png)

Figure 3. Advanced Power Options

NOTE: In general, it’s recommended to leave the default settings
unchanged and avoid creating custom power plans. This is because Surface
uses an algorithm to intelligently manage power related components
including settings that are not configurable in the Power Options user
interface.

## Changing hibernation timeout

During Connected Standby, Surface devices consume an average of
approximately 1 percent of battery power per hour depending on the
network activity. By default, Surface devices are set to enter
hibernation after six hours.

Since Surface consumes almost no power during hibernation, you may wish
to reduce the timeout period to extend battery life.

To set hibernation timeout on your Surface device:

  - In the advanced Power Options dialog box, click **Sleep** \>
    **Hibernate** **after**\> and reduce the number of minutes as
    appropriate.

![A screenshot of a cell phone Description automatically
generated](media/image4.png)

Figure 4. Setting hibernation timeout

## Changing settings in Group Policy

To set hibernation timeout for multiple Surface devices via Group
Policy:

1.  Open the **Group Policy Editor** (gpedit.msc) and browse to:
    
      - Computer Configuration\\Administrative Templates\\System\\Power
        Management\\ Sleep Settings

2.  In the list of available settings, double-click **Specify the system
    hibernate timeout (on battery)** and specify the period of
    inactivity — in seconds — before Windows transitions the system to
    hibernate.

3.  Ensure the policy setting is scoped to take effect on the Surface
    devices you’re targeting. For example if all your managed Surface
    devices belong to a specific security group, use the Group Policy
    Management console to configure the policy setting appropriately.
    For more information, refer to Recommendations for managing Group
    Policy administrative template (.adm) files.

![A screenshot of a computer Description automatically
generated](media/image5.png)

Figure 5. Managing power settings in the Group Policy Editor

# Viewing supported power states

Powercfg is a command-line utility that is used from an elevated Windows
Command Prompt to control all configurable power system settings,
including hardware-specific configurations that are not configurable
through the Control Panel, on a per-user basis. It was first introduced
by Microsoft in Windows XP SP2 in 2003.

To check the supported power states, open an elevated command window and
enter the command:

  - powercfg /a

To learn more about managing power, see [Powercfg command line
options](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/powercfg-command-line-options).
