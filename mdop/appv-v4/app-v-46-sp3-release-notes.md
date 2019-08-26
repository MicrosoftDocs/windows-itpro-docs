---
title: App-V 4.6 SP3 Release Notes
description: App-V 4.6 SP3 Release Notes
author: dansimp
ms.assetid: 206fadeb-59cc-47b4-836f-191ab1c27ff8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# App-V 4.6 SP3 Release Notes


To search these Release Notes, press CTRL+F.

Read these Release Notes thoroughly before you install the Microsoft Application Virtualization (App-V) Management System. These Release Notes contain information that helps you successfully install Application Virtualization (App-V) 4.6 SP3. This document contains information that is not available in the product documentation. If there is a difference between these Release Notes and other App-V documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## Protect Against Security Vulnerabilities and Viruses


To help protect against security vulnerabilities and viruses, it is important to install the latest available security updates for any new software being installed. For more information, see the [Microsoft Security website](https://go.microsoft.com/fwlink/?LinkId=3482) (https://go.microsoft.com/fwlink/?LinkId=3482).

## Known Issues with Application Virtualization 4.6 SP3


This section provides the most up-to-date information about issues with Microsoft Application Virtualization (App-V) 4.6 SP3. These issues do not appear in the product documentation and in some cases might contradict existing product documentation. When it is possible, these issues will be addressed in later releases.

### Unable to open hyperlinks using Internet Explorer 11 on Microsoft Windows 8.1 within the Virtual Environment

Attempting to open hyperlinks from within a virtual environment will fail on Windows 8.1 using Internet Explorer 11. This is because Internet Explorer 11 now ships with the Enhanced Protection Mode (EPM) enabled by default and this causes App-V to be unable to access required registry keys, files and communication port objects.

WORKAROUND: Disable EPM in Internet Explorer 11 before opening an App-V package. This will allow you to open Internet Explorer from within the virtual environment.

## Related topics


[About Microsoft Application Virtualization 4.6 SP3](about-microsoft-application-virtualization-46-sp3.md)

 

 





