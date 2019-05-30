---
title: DeviceFormFactor (Windows 10)
description: This section describes the DeviceFormFactor setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
---

# DeviceFormFactor (Windows Configuration Designer reference)

Use to identify the form factor of the device.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| DeviceForm | X  | X | X |  |  |

Specifies the device form factor running Windows 10. Generally, the device form is set by the original equipment manufacturer (OEM), however you might want to change the device form based on its usage in your organization.

DeviceForm supports the following features or components:

- Cortana and Bing use the DeviceForm value to determine the accuracy of specific signals, such as location (GPS versus Wi-Fi versus reverse IP address lookup).
- Windows 10 features, such as Bluetooth and camera, may require DeviceForm to be accurately configured for full functionality.

Select the appropriate form from the dropdown menu.

| Device form | Description |
| --- | --- |
| Phone | A typical smartphone combines cellular connectivity, a touch screen, rechargeable power source, and other components into a single chassis. | 
| LargeScreen | Microsoft Surface Hub |
| HMD | (Head-mounted display) A holographic computer that is completely untethered - no wires, phones, or connection to a PC needed. |
| IndustryHandheld | A device screen less than 7” diagonal designed for industrial solutions. May or may not have a cellular stack.  |
| IndustryTablet | A device with an integrated screen greater than 7” diagonal and no attached keyboard designed for industrial solutions as opposed to consumer personal computer. May or may not have a cellular stack. |
| Banking | A machine at a bank branch or another location that enables customers to perform basic banking activities including withdrawing money and checking one's bank balance. |
| BuildingAutomation | A controller for industrial environments that can include the scheduling and automatic operation of certain systems such as conferencing, heating and air conditioning, and lighting. |
| DigitalSignage | A computer or playback device that's connected to a large digital screen and displays video or multimedia content for informational or advertising purposes. |
| Gaming | A device that's used for playing a game. It can be mechanical, electronic, or electromechanical equipment. |
| HomeAutomation | A controller that can include the scheduling and automatic operation of certain systems including heating and air conditioning, security, and lighting. |
| Industrial Automation | Computers that are used to automate manufacturing systems such as controlling an assembly line where each station is occupied by industrial robots.  |
| Tablet | A device with an integrated screen that's less than 18". It combines a touch screen, rechargeable power source, and other components into a single chassis with an optional attachable keyboard. |
| Kiosk | An unattended structure that can include a keyboard and touch screen and provides a user interface to display interactive information and allow users to get more information. |
| MakerBoard | A  low-cost and compact development board that's used for prototyping any number IoT-related things. |
| Medical | Devices built specifically to provide medical staff with information about the health and well-being of a patient. |
| Networking | A device or software that determines where messages, packets, and other signals will go next. |
| POS | (Point of Service) An electronic cash register or self-service checkout. |
| Printing | A printer, copy machine, or a combination of both. |
| ThinClient | A device that connects to a server to perform computing tasks as opposed to running apps locally. |
| Toy | A device used solely for enjoyment or entertainment. |
| Vending | A machine that dispenses items in exchange for payment in the form of coin, currency, or credit/debit card. |
| IndustryOther |A device that doesn't fit into any of the previous categories.  |
| Desktop | A desktop PC form factor traditional comes in an upright tower or small desktop chassis and does not have an integrated screen. |
| Notebook | A notebook is a portable clamshell device with an attached keyboard that cannot be removed. |
| Convertible | A convertible device is an evolution of the traditional notebook where the keyboard can be swiveled, rotated or flipped, but not completely removed. It is a blend between a traditional notebook and tablet, also called a 2-in-1. |
| Detachable | A detachable device is an evolution of the traditional notebook where the keyboard can be completely removed. It is a blend between a traditional notebook and tablet, also called a 2-in-1. |
| AIO | An All-in-One (AIO) device is an evolution of the traditional desktop with an attached display. |
| Stick | A device that turns your TV into a Windows computer. Plug the stick into the HDMI slot on the TV and connect a USB or Bluetooth keyboard or mouse. |
| Puck | A small-size PC that users can use to plug in a monitor and keyboard. |
 



 
