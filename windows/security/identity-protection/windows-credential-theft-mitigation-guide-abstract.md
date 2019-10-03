---
title: Windows 10 Credential Theft Mitigation Guide Abstract (Windows 10)
description: Provides a summary of the Windows 10 credential theft mitigation guide.
ms.assetid: 821ddc1a-f401-4732-82a7-40d1fff5a78a
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
---

# Windows 10 Credential Theft Mitigation Guide Abstract

**Applies to**
-   Windows 10

This topic provides a summary of the Windows 10 credential theft mitigation guide, which can be downloaded from the [Microsoft Download Center](https://download.microsoft.com/download/C/1/4/C14579CA-E564-4743-8B51-61C0882662AC/Windows%2010%20credential%20theft%20mitigation%20guide.docx).
This guide explains how credential theft attacks occur and the strategies and countermeasures you can implement to mitigate them, following these security stages:

- Identify high-value assets
- Protect against known and unknown threats
- Detect pass-the-hash and related attacks
- Respond to suspicious activity
- Recover from a breach

![Security stages](images/security-stages.png)

## Attacks that steal credentials

Learn about the different types of attacks that are used to steal credentials, and the factors that can place your organization at risk.
The types of attacks that are covered include:

- Pass the hash
- Kerberos pass the ticket
- Kerberos golden ticket and silver ticket
- Key loggers
- Shoulder surfing

## Credential protection strategies

This part of the guide helps you consider the mindset of the attacker, with prescriptive guidance about how to prioritize high-value accounts and computers.
You'll learn how to architect a defense against credential theft:

- Establish a containment model for account privileges
- Harden and restrict administrative hosts
- Ensure that security configurations and best practices are implemented

## Technical countermeasures for credential theft

Objectives and expected outcomes are covered for each of these countermeasures:

- Use Windows 10 with Credential Guard
- Restrict and protect high-privilege domain accounts
- Restrict and protect local accounts with administrative privileges
- Restrict inbound network traffic

Many other countermeasures are also covered, such as using Microsoft Passport and Windows Hello, or multifactor authentication.

## Detecting credential attacks

This sections covers how to detect the use of stolen credentials and how to collect computer events to help you detect credential theft.

## Responding to suspicious activity

Learn Microsoft's recommendations for responding to incidents, including how to recover control of compromised accounts, how to investigate attacks, and how to recover from a breach.


