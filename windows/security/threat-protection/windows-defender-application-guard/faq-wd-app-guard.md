---
title: Frequently asked questions - Windows Defender Application Guard (Windows 10)
description: Learn about the commonly asked questions and answers for Windows Defender Application Guard.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 03/28/2019
ms.reviewer: 
manager: dansimp

---

# Frequently asked questions - Windows Defender Application Guard 

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Answering frequently asked questions about Windows Defender Application Guard (Application Guard) features, integration with the Windows operating system, and general configuration.

## Frequently Asked Questions

| | |
|---|----------------------------|
|**Q:** |Can I enable Application Guard on machines equipped with 4GB RAM?|
|**A:** |We recommend 8GB RAM for optimal performance but you may use the following registry DWORD values to enable Application Guard on machines that aren't meeting the recommended hardware configuration. |
||HKLM\software\Microsoft\Hvsi\SpecRequiredProcessorCount       - Default is 4 cores. |
||HKLM\software\Microsoft\Hvsi\SpecRequiredMemoryInGB            - Default is 8GB.|
||HKLM\software\Microsoft\Hvsi\SpecRequiredFreeDiskSpaceInGB - Default is 5GB.|
<br>

| | |
|---|----------------------------|
|**Q:** |Can employees download documents from the Application Guard Edge session onto host devices?|
|**A:** |In Windows 10 Enterprise edition 1803, users will be able to download documents from the isolated Application Guard container to the host PC. This is managed by policy.<br><br>In Windows 10 Enterprise edition 1709 or Windows 10 Professional edition 1803, it is not possible to download files from the isolated Application Guard container to the host PC. However, employees can use the **Print as PDF** or **Print as XPS** options and save those files to the host device.|
<br>

| | |
|---|----------------------------|
|**Q:** |Can employees copy and paste between the host device and the Application Guard Edge session?|
|**A:** |Depending on your organization's settings, employees can copy and paste images (.bmp) and text to and from the isolated container.|
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
<br>

| | |
|---|----------------------------|
|**Q:** |How do I configure WDAG to work with my network proxy (IP-Literal Addresses)?|
|**A:** |WDAG requires proxies to have a symbolic name, not just an IP address. IP-Literal proxy settings such as “192.168.1.4:81” can be annotated as “itproxy:81” or using a record such as “P19216810010” for a proxy with an IP address of 192.168.100.10. This applies to Windows 10 Enterprise edition, 1709 or higher.|
<br>

| | |
|---|----------------------------|
|**Q:** |Which Input Method Editors (IME) in 19H1 are not supported?|
|**A:** |The following Input Method Editors (IME) introduced in Windows 10, version 1903 are currently not supported in WDAG.<br>Vietnam Telex keyboard<br>Vietnam number key-based keyboard<br>Hindi phonetic keyboard<br>Bangla phonetic keyboard<br>Marathi phonetic keyboard<br>Telugu phonetic keyboard<br>Tamil phonetic keyboard<br>Kannada phonetic keyboard<br>Malayalam phonetic keyboard<br>Gujarati phonetic keyboard<br>Odia phonetic keyboard<br>Punjabi phonetic keyboard|
<br>

| | |
|---|----------------------------|
|**Q:** |I enabled the hardware acceleration policy on my Windows 10 Enterprise, version 1803 deployment. Why are my users still only getting CPU rendering?|
|**A:** |This feature is currently experimental-only and is not functional without an additional regkey provided by Microsoft. If you would like to evaluate this feature on a deployment of Windows 10 Enterprise, version 1803, please contact Microsoft and we’ll work with you to enable the feature.|
<br>

| | |
|---|----------------------------|
|**Q:** |What is the WDAGUtilityAccount local account?|
|**A:** |This account is part of Application Guard beginning with Windows 10 version 1709 (Fall Creators Update). This account remains disabled until Application Guard is enabled on your device. This item is integrated to the OS and is not considered as a threat/virus/malware.|
<br>

| | |
|---|----------------------------|
|**Q:** |How do I trust a subdomain in my site list?|
|**A:** |To trust a subdomain, you must precede your domain with two dots, for example: ..contoso.com.|
<br>
