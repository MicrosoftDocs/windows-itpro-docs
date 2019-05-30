---
title: Software developer FAQ
description: This page provides answers to common questions we receive from software developers
keywords: wdsi, software, developer, faq, dispute, false-positive, classify, installer, software, bundler, blocking
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: levinec
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance  
ms.topic: article
---

# Software developer FAQ

This page provides answers to common questions we receive from software developers. For general guidance about submitting malware or incorrectly detected files, read the submission guide.

## Does Microsoft accept files for a known list or false-positive prevention program?

No. We do not accept these requests from software developers. Signing your program's files in a consistent manner, with a digital certificate issued by a trusted root authority, helps our research team quickly identify the source of a program and apply previously gained knowledge. In some cases, this might result in your program being quickly added to the known list or, far less frequently, in adding your digital certificate to a list of trusted publishers.

## How do I dispute the detection of my program?

Submit the file in question as a software developer. Wait until your submission has a final determination.

If you're not satisfied with our determination of the submission, use the developer contact form provided with the submission results to reach Microsoft. We will use the information you provide to investigate further if necessary.

We encourage all software vendors and developers to read about how Microsoft identifies malware and unwanted software. 

## Why is Microsoft asking for a copy of my program?

This can help us with our analysis. Participants of the Microsoft Active Protection Service (MAPS) may occasionally receive these requests. The requests will stop once our systems have received and processed the file.

## Why does Microsoft classify my installer as a software bundler?

It contains instructions to offer a program classified as unwanted software. You can review the criteria we use to check applications for behaviors that are considered unwanted.

## Why is the Windows Firewall blocking my program?

This is not related to Windows Defender Antivirus and other Microsoft antimalware. You can find out more about Windows Firewall from the Microsoft Developer Network.

## Why does the Windows Defender SmartScreen say my program is not commonly downloaded?

This is not related to Windows Defender Antivirus and other Microsoft antimalware. You can find out more from the SmartScreen website.
