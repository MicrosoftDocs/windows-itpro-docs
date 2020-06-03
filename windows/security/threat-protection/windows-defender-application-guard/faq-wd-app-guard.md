---
title: FAQ - Microsoft Defender Application Guard (Windows 10)
description: Learn about the commonly asked questions and answers for Microsoft Defender Application Guard.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 06/02/2020
ms.reviewer: 
manager: dansimp
ms.custom: asr
---

# Frequently asked questions - Microsoft Defender Application Guard 

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Answering frequently asked questions about Microsoft Defender Application Guard (Application Guard) features, integration with the Windows operating system, and general configuration.

## Frequently Asked Questions

### Can I enable Application Guard on machines equipped with 4GB RAM?                                                                   |
We recommend 8GB RAM for optimal performance but you may use the following registry DWORD values to enable Application Guard on machines that aren't meeting the recommended hardware configuration.

`HKLM\software\Microsoft\Hvsi\SpecRequiredProcessorCount` (Default is 4 cores.)                                                   

`HKLM\software\Microsoft\Hvsi\SpecRequiredMemoryInGB` (Default is 8GB.)

`HKLM\software\Microsoft\Hvsi\SpecRequiredFreeDiskSpaceInGB` (Default is 5GB.)

### Can employees download documents from the Application Guard Edge session onto host devices? 

In Windows 10 Enterprise edition 1803, users will be able to download documents from the isolated Application Guard container to the host PC. This is managed by policy.

In Windows 10 Enterprise edition 1709 or Windows 10 Professional edition 1803, it is not possible to download files from the isolated Application Guard container to the host PC. However, employees can use the **Print as PDF** or **Print as XPS** options and save those files to the host device. 

### Can employees copy and paste between the host device and the Application Guard Edge session? 

Depending on your organization's settings, employees can copy and paste images (.bmp) and text to and from the isolated container. 

### Why don't employees see their Favorites in the Application Guard Edge session?

To help keep the Application Guard Edge session secure and isolated from the host device, we don't copy the Favorites stored in the Application Guard Edge session back to the host device. 

### Why aren’t employees able to see their Extensions in the Application Guard Edge session?

Currently, the Application Guard Edge session doesn't support Extensions. However, we're closely monitoring your feedback about this. 

### How do I configure Windows Defender Application Guard to work with my network proxy (IP-Literal Addresses)? 

Windows Defender Application Guard requires proxies to have a symbolic name, not just an IP address. IP-Literal proxy settings such as `192.168.1.4:81` can be annotated as `itproxy:81` or using a record such as `P19216810010` for a proxy with an IP address of `192.168.100.10`. This applies to Windows 10 Enterprise edition 1709 or higher. These would be for the proxy policies under Network Isolation in Group Policy or Intune. 

### Which Input Method Editors (IME) in 19H1 are not supported? 

The following Input Method Editors (IME) introduced in Windows 10, version 1903 are currently not supported in Windows Defender Application Guard.
- Vietnam Telex keyboard
- Vietnam number key-based keyboard
- Hindi phonetic keyboard
- Bangla phonetic keyboard
- Marathi phonetic keyboard
- Telugu phonetic keyboard
- Tamil phonetic keyboard
- Kannada phonetic keyboard
- Malayalam phonetic keyboard
- Gujarati phonetic keyboard
- Odia phonetic keyboard
- Punjabi phonetic keyboard

### I enabled the hardware acceleration policy on my Windows 10 Enterprise, version 1803 deployment. Why are my users still only getting CPU rendering? 

This feature is currently experimental-only and is not functional without an additional regkey provided by Microsoft. If you would like to evaluate this feature on a deployment of Windows 10 Enterprise, version 1803, please contact Microsoft and we’ll work with you to enable the feature.

### What is the WDAGUtilityAccount local account? 

This account is part of Application Guard beginning with Windows 10 version 1709 (Fall Creators Update). This account remains disabled until Application Guard is enabled on your device. This item is integrated to the OS and is not considered as a threat/virus/malware.

### How do I trust a subdomain in my site list?                          

To trust a subdomain, you must precede your domain with two dots, for example: `..contoso.com` will ensure `mail.contoso.com` or `news.contoso.com` are trusted. The first dot represents the strings for the subdomain name (mail or news), the second dot recognizes the start of the domain name (`contoso.com`). This prevents sites such as `fakesitecontoso.com` from being trusted.

### Are there differences between using Application Guard on Windows Pro vs Windows Enterprise? 

When using Windows Pro or Windows Enterprise, you have access to using Application Guard's Standalone Mode. However, when using Windows Enterprise, you have access to Application Guard's Enterprise-Managed Mode. This mode has some extra features that the Standalone Mode does not. For more information, see [Prepare to install Windows Defender Application Guard](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-guard/install-wd-app-guard). 

### Is there a size limit to the domain lists that I need to configure?

Yes, both the Enterprise Resource domains hosted in the cloud and the Domains categorized as both work and personal have a 16383B limit.

### Why does my encryption driver break Windows Defender Application Guard?


Windows Defender Application Guard accesses files from a VHD mounted on the host that needs to be written during setup. If an encryption driver prevents a VHD from being mounted or from being written to, WDAG will not work and result in an error message ("0x80070013 ERROR_WRITE_PROTECT"). 

### Why do the Network Isolation policies in Group Policy and CSP look different?

There is not a one-to-one mapping among all the Network Isolation policies between CSP and GP. Mandatary network isolation policies to deploy WDAG are different between CSP and GP.

Mandatory network isolation GP policy to deploy WDAG: "DomainSubnets or CloudResources"
Mandatory network isolation CSP policy to deploy WDAG: "EnterpriseCloudResources or (EnterpriseIpRange and EnterpriseNetworkDomainNames)"
For EnterpriseNetworkDomainNames, there is no mapped CSP policy.

Windows Defender Application Guard accesses files from a VHD mounted on the host that needs to be written during setup. If an encryption driver prevents a VHD from being mounted or from being written to, WDAG will not work and result in an error message (`0x80070013 ERROR_WRITE_PROTECT`). 

### Why did Application Guard stop working after I turned off hyperthreading?

If hyperthreading is disabled (because of an update applied through a KB article or through BIOS settings), there is a possibility Application Guard no longer meets the minimum requirements. 

