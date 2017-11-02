---
title: Windows Defender Application Guard (Windows 10)
description: Learn about Windows Defender Application Guard and how it helps to combat malicious content and malware out on the Internet.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: eross-msft
ms.author: lizross
ms.date: 08/11/2017
---

# Windows Defender Application Guard overview

**Applies to:**
- Windows 10 Enterprise edition, version 1709

The threat landscape is continually evolving. While hackers are busy developing new techniques to breach enterprise networks by compromising workstations, phishing schemes remain one of the top ways to lure employees into social engineering attacks.
 
Windows Defender Application Guard (Application Guard) is designed to help prevent old, and newly emerging attacks, to help keep employees productive. Using our unique hardware isolation approach, our goal is to destroy the playbook that attackers use by rendering current attack methods obsolete. 

## What is Application Guard and how does it work?
Designed for Windows 10 and Microsoft Edge, Application Guard helps to isolate enterprise-defined untrusted sites, protecting your company while your employees browse the Internet. As an enterprise administrator, you define what is among trusted web sites, cloud resources, and internal networks. Everything not on your list is considered untrusted.

If an employee goes to an untrusted site through either Microsoft Edge or Internet Explorer, Microsoft Edge opens the site in an isolated Hyper-V-enabled container, which is separate from the host operating system. This container isolation means that if the untrusted site turns out to be malicious, the host PC is protected, and the attacker can't get to your enterprise data. For example, this approach makes the isolated container anonymous, so an attacker can't get to your employee's enterprise credentials.

![Hardware isolation diagram](images/appguard-hardware-isolation.png)

### What types of devices should use Application Guard?
Application Guard has been created to target 3 types of enterprise systems:

- **Enterprise desktops.** These desktops are domain-joined and managed by your organization. Configuration management is primarily done through System Center Configuration Manager or Microsoft Intune. Employees typically have Standard User privileges and use a high-bandwidth, wired, corporate network.

- **Enterprise mobile laptops.** These laptops are domain-joined and managed by your organization. Configuration management is primarily done through System Center Configuration Manager or Microsoft Intune. Employees typically have Standard User privileges and use a high-bandwidth, wireless, corporate network.

- **Bring your own device (BYOD) mobile laptops.** These personally-owned laptops are not domain-joined, but are managed by your organization through tools like Microsoft Intune. The employee is typically an admin on the device and uses a high-bandwidth wireless corporate network while at work and a comparable personal network while at home.

## In this section
|Topic |Description |
|------|------------|
|[System requirements for Windows Defender Application Guard](reqs-wd-app-guard.md) |Specifies the pre-requisites necessary to install and use Application Guard.|
|[Prepare and install Windows Defender Application Guard](install-wd-app-guard.md) |Provides instructions about determining which mode to use, either Standalone or Enterprise-managed, and how to install Application Guard in your organization.|
|[Configure the Group Policy settings for Windows Defender Application Guard](configure-wd-app-guard.md) |Provides info about the available Group Policy and MDM settings.|
|[Testing scenarios using Windows Defender Application Guard in your business or organization](test-scenarios-wd-app-guard.md)|Provides a list of suggested testing scenarios that you can use to test Windows Defender Application Guard (Application Guard) in your organization.|
|[Frequently Asked Questions - Windows Defender Application Guard](faq-wd-app-guard.md)|Common questions and answers around the features and functionality of Application Guard.|