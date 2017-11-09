---
title: Frequently asked questions - Windows Defender Application Guard (Windows 10)
description: Learn about the commonly asked questions and answers for Windows Defender Application Guard.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: eross-msft
ms.author: lizross
ms.date: 08/11/2017
---

# Frequently asked questions - Windows Defender Application Guard 

**Applies to:**
- Windows 10 Enterpise edition, version 1709

Answering frequently asked questions about Windows Defender Application Guard (Application Guard) features, integration with the Windows operating system, and general configuration.

## Frequently Asked Questions

| | |
|---|----------------------------|
|**Q:** |Can I enable Application Guard on machines equipped with 4GB RAM?|
|**A:** |We recommend 8GB RAM for optimal performance but you may use the following registry values to enable Application Guard on machines that aren't meeting the recommended hardware configuration. |
||HKLM\software\Microsoft\Hvsi\SpecRequiredProcessorCount       - Default is 4 cores. |
||HKLM\software\Microsoft\Hvsi\SpecRequiredMemoryInGB            - Default is 8GB.|
||HKLM\software\Microsoft\Hvsi\SpecRequiredFreeDiskSpaceInGB - Default is 5GB.|
<br>

| | |
|---|----------------------------|
|**Q:** |Can employees download documents from the Application Guard Edge session onto host devices?|
|**A:** |It's not possible to download files from the isolated Application Guard container to the host PC. However, employees can use the **Print as PDF** or **Print as XPS** options and save those files to the host device.|
<br>

| | |
|---|----------------------------|
|**Q:** |Can employees copy and paste between the host device and the Application Guard Edge session?|
|**A:** |Depending on your organization's settings, employees can copy and paste images and text (.bmp) to and from the isolated container.|
<br>

| | |
|---|----------------------------|
|**Q:** |Why don't employees see their Favorites in the Application Guard Edge session?|
|**A:** |To help keep the Application Guard Edge session secure and isolated from the host device, we don't copy the Favorites stored in the Application Guard Edge session back to the host device.|
<br>

| | |
|---|----------------------------|
|**Q:** |Why aren’t employees able to see their Extensions in the Application Guard Edge session?|
|**A:** |Currently, the Application Guard Edge session doesn't support Extensions. However, we're closely monitoring your feedback about this.|
