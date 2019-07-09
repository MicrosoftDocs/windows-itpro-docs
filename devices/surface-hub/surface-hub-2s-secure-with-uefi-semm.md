---
title: "Secure and manage Surface Hub 2S with SEMM"
description: "Learn more about securing Surface Hub 2S with SEMM."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.date: 06/20/2019
ms.localizationpriority: Normal
---

# Secure and manage Surface Hub 2S with SEMM and UEFI

New in Surface Hub 2S, you can use SEMM to manage the UEFI setting of the device.
Use the Microsoft Surface UEFI Configurator to control the following components:

- Wired LAN
- Cameras
- Bluetooth
- Wi-Fi
- Occupancy sensor

Use the Microsoft Surface UEFI Configurator to turn on or off the following UEFI settings:

- Boot

    - IPv6 for PXE Boot
    - Alternate Boot
    - Boot Order Lock
    - USB Boot
- UEFI Front Page

    - Devices
    - Boot
    - Date/Time

## Create UEFI configuration image

Unlike other Surface devices, you cannot use an MSI file or a Win PE image to apply these settings on Surface Hub 2S. Instead, you need to create a USB image to load into the device. To create a Surface Hub 2S UEFI configuration image, download and install the latest version of the Microsoft Surface UEFI Configurator from the [Surface Tools for IT](https://www.microsoft.com/download/details.aspx?id=46703) page in the Microsoft Download Center. For more information about using UEFI and SEMM, see [Microsoft Surface Enterprise Management Mode](https://docs.microsoft.com/surface/surface-enterprise-management-mode).

## To configure UEFI on Surface Hub 2S

1. Start the UEFI Configurator and on the first screen, choose **Configuration Package**.<br><br>
![* Start the UEFI Configurator and choose Configuration Package*](images/sh2-uefi1.png) <br> <br>
2. To add the certificate to your package, you must have a valid certificate with the private key in a .pfx file format to sign and protect the package. Select **+ Certificate Protection.** <br>
![* Select + Certificate Protection *](images/sh2-uefi2.png) <br><br>
3. Enter the certificate’s private key’s password.<br>
![* Enter the certificate’s private key’s password *](images/sh2-uefi3.png) <br><br>
4. After importing the private key, continue creating the package.<br>
![* Continue creating the package *](images/sh2-uefi4.png) <br><br>
5. Choose **Hub** and **Surface Hub 2S** as the target for the UEFI configuration package.<br>
![* Choose Hub and Surface Hub 2S as the target for the UEFI configuration package *](images/sh2-uefi5.png) <br><br>
6. Choose the components and settings you want to activate or deactivate on Surface Hub 2S.<br>
![* Choose the components and settings you want to activate or deactivate *](images/sh2-uefi6.png) <br><br>
7. Use the USB option to export the file.<br>
![* Use the USB option to export the file *](images/sh2-uefi8.png) <br><br>
8. Insert and choose the USB drive you’d like to use for this package. The USB drive will be formatted and you lose any information you have on it.<br>
![* Insert and choose the USB drive for your package  *](images/sh2-uefi9.png) <br><br>
9. Upon successful creation of the package, the Configurator will display the last two characters of your certificate’s thumbprint. You need these characters when you import to the configuration to Surface Hub 2S.<br>
![* Successful configuration of package *](images/sh2-uefi10.png) <br>

## To boot into UEFI

Turn off Surface Hub 2S. Press and hold the **Volume Up** button and press the **Power** Button. Keep holding the Volume Up button until the UEFI menu appears.
