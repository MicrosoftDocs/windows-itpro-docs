---
title: Microsoft Edge - Security and privacy management
description: Microsoft Edge helps to defend from increasingly sophisticated and prevalent web-based attacks against Windows.  While most websites are safe, some sites have been designed to steal personal information or gain access to your system’s resources. 
ms.author: pashort
author: shortpatti
ms.date: 07/25/2018
---

# Security and privacy management
>*Supported versions: Microsoft Edge on Windows 10*

Microsoft Edge helps to defend from increasingly sophisticated and prevalent web-based attacks against Windows.  While most websites are safe, some sites are malicious in nature, like stealing personal information or gain access to your system’s resources. By no longer supporting VBScript, JScript, VML, Browser Helper Objects, Toolbars, ActiveX controls, and Internet Explorer document modes, Microsoft Edge significantly reduces attacks making the browser more secure.  


| | |
|---|---|
| **Windows Hello** | Authenticates the user and the website with asymmetric cryptography. |
| **Microsoft SmartScreen** | Defends against phishing by performing reputation checks on sites visited and blocking any site that is thought to be a phishing site. SmartScreen also helps to defend against installing malicious software or file downloads, even from trusted sites. |
| **Certificate Reputation system** | Collects data about certificates in use, detecting new certificates and flagging fraudulent certificates automatically. |
| **Microsoft EdgeHTML** | Defends against hacking through the following security standards features:<ul><li>Support for the W3C standard for Content Security Policy (CSP), which helps web developers defend their sites against cross-site scripting attacks.</li><li>Support for the HTTP Strict Transport Security (HSTS) feature, which is IETF-standard compliant, and helps to ensure that connections to sites are always secure.</li></ul> |
| **Code integrity and image loading restrictions** | Prevents malicious DLLs from loading or injecting into the content processes. Only signed images are allowed to load in Microsoft Edge. Binaries on remote devices (such as UNC or WebDAV) can&#39;t load. |
| **Memory corruption mitigations** | Defends against memory corruption weaknesses and vulnerabilities with the use of [CWE-416: Use After Free](http://cwe.mitre.org/data/definitions/416.html) (UAF). |
| **Memory Garbage Collector (MemGC) mitigation** | Replaces Memory Protector and helps to defend the browser from UAF vulnerabilities by freeing memory from the programmer and automating it, only freeing memory when the automation detects that there are no more references left pointing to a given block of memory. |
| **Control Flow Guard** | Compiles checks around code that performs indirect jumps based on a pointer, restricting those jumps to only going to function entry points with known addresses. Control Flow Guard is a Microsoft Visual Studio technology. |


## Configure cookies
[!INCLUDE [configure-cookies-include](../includes/configure-cookies-include.md)]

## Configure Password Manager
[!INCLUDE [configure-password-manager-include](../includes/configure-password-manager-include.md)]

## Configure Windows Defender SmartScreen
[!INCLUDE [configure-windows-defender-smartscreen-include](../includes/configure-windows-defender-smartscreen-include.md)]

## Prevent bypassing Windows Defender SmartScreen prompts for files 
[!INCLUDE [prevent-bypassing-win-defender-files-include](../includes/prevent-bypassing-win-defender-files-include.md)]

## Prevent bypassing Windows Defender SmartScreen prompts for sites 
[!INCLUDE [prevent-bypassing-win-defender-sites-include](../includes/prevent-bypassing-win-defender-sites-include.md)]

## Prevent certificate error overrides 
[!INCLUDE [prevent-certificate-error-overrides-include](../includes/prevent-certificate-error-overrides-include.md)]

## Prevent using Localhost IP address for WebRTC
[!INCLUDE [prevent-localhost-address-for-webrtc-include](../includes/prevent-localhost-address-for-webrtc-include.md)]


