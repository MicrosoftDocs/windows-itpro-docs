---
title: Smart Card Events (Windows 10)
description: This topic for the IT professional and smart card developer describes events that are related to smart card deployment and development.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
---

# Smart Card Events

Applies To: Windows 10, Windows Server 2016

This topic for the IT professional and smart card developer describes events that are related to smart card deployment and development.

A number of events can be used to monitor smart card activities on a computer, including installation, use, and errors. The following sections describe the events and information that can be used to manage smart cards in an organization.

-   [Smart card reader name](#smart-card-reader-name)

-   [Smart card warning events](#smart-card-warning-events)

-   [Smart card error events](#smart-card-error-events)

-   [Smart card Plug and Play events](#smart-card-plug-and-play-events)

## Smart card reader name

The Smart Card resource manager does not use the device name from Device Manager to describe a smart card reader. Instead, the name is constructed from three device attributes that are queried directly from the smart card reader driver.

The following three attributes are used to construct the smart card reader name:

-   Vendor name

-   Interface device type

-   Device unit

The smart card reader device name is constructed in the form &lt;*VendorName*&gt; &lt;*Type*&gt; &lt;*DeviceUnit*&gt;. For example 'Contoso Smart Card Reader 0' is constructed from the following information:

-   Vendor name: Contoso

-   Interface device type: Smart Card Reader

-   Device unit: 0

## Smart card warning events

> **Note**&nbsp;&nbsp;IOCTL in the following table refers to input and output control.

| **Event ID** | **Warning Message**                 | **Description**                  |
|--------------|---------|--------------------------------------------------------------------------------------------|
| 620          | Smart Card Resource Manager was unable to cancel IOCTL %3 for reader '%2': %1. The reader may no longer be responding. If this error persists, your smart card or reader may not be functioning correctly. %n%nCommand Header: %4 | This occurs if the resource manager attempts to cancel a command to the smart card reader when the smart card service is shutting down or after a smart card is removed from the smart card reader and the command could not to be canceled. This can leave the smart card reader in an unusable state until it is removed from the computer or the computer is restarted.<br><br>%1 = Windows error code<br>%2 = Smart card reader name<br>%3 = IOCTL being canceled<br>%4 = First 4 bytes of the command that was sent to the smart card |
| 619          | Smart Card Reader '%2' has not responded to IOCTL %3 in %1 seconds. If this error persists, your smart card or reader may not be functioning correctly. %n%nCommand Header: %4              | This occurs when a reader has not responded to an IOCTL after an unusually long period of time. Currently, this error is sent after a reader does not respond for 150 seconds. This can leave the smart card reader in an unusable state until it is removed from the computer or the computer is restarted.<br><br>%1 = Number of seconds the IOCTL has been waiting<br>%2 = Smart card reader name<br>%3 = IOCTL sent<br>%4 = First 4 bytes of the command that was sent to the smart card         |

## Smart card error events

| **Event ID** | **Error Message**  | **Description**          |
|--------------|--------------------------------------------|-------------------------------------------------------------------------------|
| 202          | Failed to initialize Server Application                  | An error occurred, and the service cannot initialize properly. Restarting the computer may resolve the issue.           |
| 203          | Server Control has no memory for reader reference object.                   | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.    |
| 204          | Server Control failed to create shutdown event: %1       | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 205          | Reader object has duplicate name: %1  | There are two smart card readers that have the same name. Remove the smart card reader that is causing this error message.<br>%1 = Name of the smart card reader that is duplicated               |
| 206          | Failed to create global reader change event.             | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.    |
| 401          | Reader shutdown exception from eject smart card command  | A smart card reader could not eject a smart card while the smart card reader was shutting down.      |
| 406          | Reader object cannot Identify Device  | A smart card reader did not properly respond to a request for information about the device, which is required for constructing the smart card reader name. The smart card reader will not be recognized by the service until it is removed from the computer and reinserted or until the computer is restarted.       |
| 502          | Initialization of Service Status Critical Section failed | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.    |
| 504          | Resource Manager cannot create shutdown event flag:  %1  | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 506          | Smart Card Resource Manager failed to register service:  %1                 | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 506          | Smart Card Resource Manager received unexpected exception from PnP event %1 | An attempt to add a Plug and Play reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name             |
| 507          | No memory available for Service Status Critical Section  | There is not enough system memory available. This prevents the service from managing the status. Restarting the computer may resolve the issue.               |
| 508          | Smart Card Resource Manager received unexpected exception from PnP event %1 | An attempt to add a Plug and Play reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name             |
| 509          | Smart Card Resource Manager received unexpected exception from PnP event %1 | An attempt to add a Plug and Play reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name             |
| 510          | Smart Card Resource Manager received NULL handle from PnP event %1          | An attempt to add a Plug and Play smart card reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name  |
| 511          | Smart Card Resource Manager received unexpected exception from PnP event %1 | An attempt to add a Plug and Play reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name             |
| 512          | Smart Card Resource Manager received NULL handle from PnP event %1          | An attempt to add a Plug and Play smart card reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name  |
| 513          | Smart Card Resource Manager received unexpected exception from PnP event %1 | An attempt to add a Plug and Play reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name             |
| 514          | Smart Card Resource Manager failed to add reader %2: %1  | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code<br>%2 = Smart card reader name                  |
| 515          | Smart Card Resource Manager failed to declare state:  %1 | This is an internal unrecoverable error that indicates a failure in the smart card service. The smart card service may not operate properly. Restarting the service or computer may resolve this issue.<br>%1 = Windows error code      |
| 516          | Smart Card Resource Manager Failed to declare shutdown:  %1                 | This is an internal, unrecoverable error that indicates a failure in the smart card service. The smart card service may not be able to stop. Restarting the computer may resolve this issue.<br>%1 = Windows error code                 |
| 517          | Smart Card Resource Manager received unexpected exception attempting to add reader %1          | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Smart card reader name         |
| 521          | Smart Card Resource Manager received NULL handle from PnP event %1          | An attempt to add a Plug and Play smart card reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name  |
| 523          | Smart Card Resource Manager received NULL handle from PnP event %1          | An attempt to add a Plug and Play smart card reader failed. The device may already be in use or may be defective. To resolve this error message, try to add the device again or restart the computer.<br>%1 = The affected handle name  |
| 602          | WDM Reader driver initialization cannot open reader device:  %1             | The service cannot open a communication channel with the smart card reader. You cannot use the smart card reader until the issue is resolved.<br>%1 = Windows error code       |
| 603          | WDM Reader driver initialization has no memory available to control device %1                  | There is not enough system memory available. This prevents the service from managing the smart card reader that was added. Restarting the computer may resolve the issue.<br>%1 = Name of affected reader            |
| 604          | Server control cannot set reader removal event:  %1      | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 605          | Reader object failed to create overlapped event:  %1     | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 606          | Reader object failed to create removal event:  %1        | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 607          | Reader object failed to start monitor thread:  %1        | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 608          | Reader monitor failed to create power down timer: %1     | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 609          | Reader monitor failed to create overlapped event:  %1    | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 610          | Smart Card Reader '%2' rejected IOCTL %3: %1  If this error persists, your smart card or reader may not be functioning correctly.%n%nCommand Header: %4 | The reader cannot successfully transmit the indicated IOCTL to the smart card. This can indicate hardware failure, but this error can also occur if a smart card or smart card reader is removed from the system while an operation is in progress.<br>%1 = Windows error code<br>%2 = Name of the smart card reader<br>%3 = IOCTL that was sent<br>%4 = First 4 bytes of the command sent to the smart card |
| 611          | Smart Card Reader initialization failed                  | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve this issue.   |
| 612          | Reader insertion monitor error retry threshold reached:  %1                 | This occurs when a smart card reader fails several times to respond properly to the IOCTL, which indicates whether a smart card is present in the reader. The smart card reader is marked as defective, and it is not recognized by the service until it is removed from the computer and reinserted or until the computer is restarted.<br>%1 = Windows error code          |
| 615          | Reader removal monitor error retry threshold reached:  %1                   | This occurs when a smart card reader fails several times to respond properly to the IOCTL, which indicates whether a smart card is present in the reader. The smart card reader is marked as defective, and it is not recognized by the service until it is removed from the computer and reinserted or until the computer is restarted.<br>%1 = Windows error code          |
| 616          | Reader monitor '%2' received uncaught error code:  %1    | This occurs when a smart card reader fails several times to respond properly to the IOCTL, which indicates whether a smart card is present in the reader. The smart card reader is marked as defective, and it is not recognized by the service until it is removed from the computer and reinserted or until the computer is restarted.<br>%1 = Windows error code<br>%2 = Reader name       |
| 617          | Reader monitor '%1' exception -- exiting thread          | An unknown error occurred while monitoring a smart card reader for smart card insertions and removals. The smart card reader is marked as defective, and it is not recognized by the service until it is removed from the computer and reinserted or until the computer is restarted.<br>%1 = Smart card reader name                   |
| 618          | Smart Card Resource Manager encountered an unrecoverable internal error.    | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.    |
| 621          | Server Control failed to access start event: %1          | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |
| 622          | Server Control failed to access stop event: %1           | This is an internal, unrecoverable error that indicates a failure in the smart card service. The most common cause is limited computer resources. Restarting the computer may resolve the issue.<br>%1 = Windows error code             |

## Smart card Plug and Play events

| **Event ID** | **Event type** | **Event Message**              | **Description**         |
|--------------|----------------|-----------------------------------------------------------------------------------------|----------------|
| 1000         | Error          | Could not get device ID for smart card in reader %1. The return code is %2.             | Smart card Plug and Play could not obtain the device ID for the smart card. This information is required to determine the correct driver. The smart card may be defective.<br>%1 = Smart card reader name<br>%2 = Windows error code |
| 1001         | Information    | Software successfully installed for smart card in reader %1. The smart card name is %2. | Smart card Plug and Play successfully installed a minidriver for the inserted card.<br>%1 = Smart card reader name<br>%2 = Name of new smart card device |

## See also

[Smart Card Technical Reference](smart-card-windows-smart-card-technical-reference.md)
