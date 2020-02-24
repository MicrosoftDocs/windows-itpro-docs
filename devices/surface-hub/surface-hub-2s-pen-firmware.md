---
title: "Update pen firmware on Surface Hub 2S"
description: "This page describes how to update firmware for the Surface Hub 2 Pen."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
manager: laurawi
audience: Admin
ms.topic: article
ms.date: 02/24/2020
ms.localizationpriority: Medium
---

# Update pen firmware on Surface Hub 2S

You can update firmware on Surface Hub 2 pen from Windows Update or by downloading the firmware update to a separate PC. 

## Update firmware using Windows Update 

Surface Hub automatically installs updates through Windows Update for Business or WSUS and reboots the device if needed. By default, updates  occur during a daily maintenance window beginning at 3 a.m. Updated pen firmware is planned to be available from Windows Update on February 26 2020. 

1. Ensure the Surface Hub 2 pen is paired via Bluetooth to Surface Hub.

- To pair the pen press and hold the **top** (eraser) button until the white indicator LED light begins to blink. <br>
![Surface Hub 2 Pen](images/sh2-pen-1.png) <br>
- On Surface Hub, scan for new Bluetooth devices.
- Select the pen and complete the pairing process.

2. After the updated firmware is downloaded from Windows Update, press the **top** button to apply the update to the pen. It may take up to two hours to complete.

## Update firmware using a separate PC

You can update the firmware on Surface Hub 2 Pen from a separate PC running Windows 10. This method enables you to verify the pen firmware has successfully updated to the latest version.

1. Pair the Surface Hub 2 pen to your Bluetooth-capable PC.

- To pair the pen press and hold the **top** button until the white indicator LED light begins to blink. <br>
![Surface Hub 2 Pen](images/sh2-pen-1.png) <br>
- On the PC, scan for new Bluetooth devices.
- Select the pen and complete the pairing process.

2. Temporarily disconnect all other Bluetooth devices from the PC during the firmware update process.

3. Go to [Surface Hub Tools for IT](https://www.microsoft.com/en-us/download/details.aspx?id=52210) and download the Surface Hub 2 Pen Firmware Update Tool to your PC.
4. Run **PenCfu.exe.** The install progress is displayed in the tool. It may take several minutes to finish updating.

## Check firmware version of Surface Hub 2 Pen

1. Run **get_version.bat** and press the **top button** on the pen.
2. The tool will report the firmware version of the pen. Example:
    - Old firmware is 468.2727.368
    - New firmware is 468.2863.369

## Command line options

You can run Surface Hub 2 Pen Firmware Update Tool (PenCfu.exe) from the command line.

1. Pair the pen to your PC and click the **top** button on the pen.
2. Double click **PenCfu.exe** to initiate the firmware update. Note that the configuration file and the firmware image files must be stored in the same folder as the tool.
3. For additional options, run **PenCfu.exe -h** to display the available parameters, as listed in the following table.  
    - Example: PenCfu.exe -h
4. Enter **Ctrl+C** to safely shut down the tool.

 

| **Command**    | **Description**                                                                                                                                                                                                                                                                                                                                                                                |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| -h help        | Display tool command line interface help and exit.                                                                                                                                                                                                                                                                                                                                             |
| -v version     | Display tool version and exit.                                                                                                                                                                                                                                                                                                                                                                 |
| -l log-filter  | Set a filter level for the log file. Log messages have 4 possible levels: DEBUG (lowest), INFO, WARNING and ERROR (highest). Setting a log filter level filters log messages to only message with the same level or higher. For example, if the filter level is set to WARNING, only WARNING and ERROR messages will be logged. By default, this option is set to OFF, which disables logging. |
| -g get-version | If specified, the tool will only get the FW version of the connected pen that matches the configuration file that is stored in the same folder as the tool.                                                                                                                                                                                                                                    |

 
 

